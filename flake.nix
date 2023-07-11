{
  inputs.nixpkgs.url = nixos/nixpkgs;
  outputs = { nixpkgs, ... }: {

    defaultPackage.x86_64-linux = pkgs.mkDerivation {
      name = "firmware";
      buildInputs = [ pkgs.podman.override ];
    };
  };
}

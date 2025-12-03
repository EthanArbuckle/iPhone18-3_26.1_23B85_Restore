@interface MAAIRBMobileAssetAssetSelector
- (MAAIRBMobileAssetAssetSelector)init;
- (MAAIRBMobileAssetAssetSelector)initWithAssetType:(id)type assetSpecifier:(id)specifier assetVersion:(id)version;
@end

@implementation MAAIRBMobileAssetAssetSelector

- (MAAIRBMobileAssetAssetSelector)initWithAssetType:(id)type assetSpecifier:(id)specifier assetVersion:(id)version
{
  if (type)
  {
    sub_303948();
    if (specifier)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!version)
    {
      return sub_250E2C();
    }

    goto LABEL_4;
  }

  if (!specifier)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_303948();
  if (version)
  {
LABEL_4:
    sub_303948();
  }

  return sub_250E2C();
}

- (MAAIRBMobileAssetAssetSelector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
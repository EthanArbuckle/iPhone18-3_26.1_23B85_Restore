@interface MAAIRBMobileAssetAssetSelector
- (MAAIRBMobileAssetAssetSelector)init;
- (MAAIRBMobileAssetAssetSelector)initWithAssetType:(id)a3 assetSpecifier:(id)a4 assetVersion:(id)a5;
@end

@implementation MAAIRBMobileAssetAssetSelector

- (MAAIRBMobileAssetAssetSelector)initWithAssetType:(id)a3 assetSpecifier:(id)a4 assetVersion:(id)a5
{
  if (a3)
  {
    sub_303948();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (!a5)
    {
      return sub_250E2C();
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_303948();
  if (a5)
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
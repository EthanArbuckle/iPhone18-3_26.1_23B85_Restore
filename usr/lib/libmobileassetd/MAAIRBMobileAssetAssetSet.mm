@interface MAAIRBMobileAssetAssetSet
- (MAAIRBMobileAssetAssetSet)init;
- (MAAIRBMobileAssetAssetSet)initWithAssetSetIdentifier:(id)a3;
@end

@implementation MAAIRBMobileAssetAssetSet

- (MAAIRBMobileAssetAssetSet)initWithAssetSetIdentifier:(id)a3
{
  if (a3)
  {
    sub_303948();
  }

  v7 = sub_3036D8();
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_3036C8();
  sub_250C9C(v6, (self + OBJC_IVAR___MAAIRBMobileAssetAssetSet_nativeObject));
  v5.receiver = self;
  v5.super_class = MAAIRBMobileAssetAssetSet;
  return [(MAAIRBMobileAssetAssetSet *)&v5 init];
}

- (MAAIRBMobileAssetAssetSet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
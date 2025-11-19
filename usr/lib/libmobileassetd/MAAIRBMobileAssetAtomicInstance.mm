@interface MAAIRBMobileAssetAtomicInstance
- (MAAIRBMobileAssetAtomicInstance)init;
- (MAAIRBMobileAssetAtomicInstance)initWithAssetSet:(id)a3 atomicInstanceId:(id)a4;
@end

@implementation MAAIRBMobileAssetAtomicInstance

- (MAAIRBMobileAssetAtomicInstance)initWithAssetSet:(id)a3 atomicInstanceId:(id)a4
{
  if (a4)
  {
    sub_303948();
  }

  v5 = a3;
  v6 = sub_252810(v5);

  return v6;
}

- (MAAIRBMobileAssetAtomicInstance)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
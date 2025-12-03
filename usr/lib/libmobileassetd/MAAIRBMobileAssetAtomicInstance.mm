@interface MAAIRBMobileAssetAtomicInstance
- (MAAIRBMobileAssetAtomicInstance)init;
- (MAAIRBMobileAssetAtomicInstance)initWithAssetSet:(id)set atomicInstanceId:(id)id;
@end

@implementation MAAIRBMobileAssetAtomicInstance

- (MAAIRBMobileAssetAtomicInstance)initWithAssetSet:(id)set atomicInstanceId:(id)id
{
  if (id)
  {
    sub_303948();
  }

  setCopy = set;
  v6 = sub_252810(setCopy);

  return v6;
}

- (MAAIRBMobileAssetAtomicInstance)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
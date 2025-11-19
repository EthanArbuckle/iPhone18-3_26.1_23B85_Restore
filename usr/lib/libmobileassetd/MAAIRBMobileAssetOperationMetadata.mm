@interface MAAIRBMobileAssetOperationMetadata
- (MAAIRBMobileAssetOperationMetadata)init;
- (MAAIRBMobileAssetOperationMetadata)initWithCode:(int64_t)a3 name:(id)a4;
@end

@implementation MAAIRBMobileAssetOperationMetadata

- (MAAIRBMobileAssetOperationMetadata)initWithCode:(int64_t)a3 name:(id)a4
{
  if (a4)
  {
    sub_303948();
  }

  v8 = sub_303658();
  __swift_allocate_boxed_opaque_existential_0(v7);
  sub_303648();
  sub_250C9C(v7, (self + OBJC_IVAR___MAAIRBMobileAssetOperationMetadata_nativeObject));
  v6.receiver = self;
  v6.super_class = MAAIRBMobileAssetOperationMetadata;
  return [(MAAIRBMobileAssetOperationMetadata *)&v6 init];
}

- (MAAIRBMobileAssetOperationMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
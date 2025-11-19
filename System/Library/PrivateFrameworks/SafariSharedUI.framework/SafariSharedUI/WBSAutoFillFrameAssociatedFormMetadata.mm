@interface WBSAutoFillFrameAssociatedFormMetadata
- (NSString)description;
- (WBSAutoFillFrameAssociatedFormMetadata)init;
- (WBSAutoFillFrameAssociatedFormMetadata)initWithFrameInfo:(id)a3 formMetadata:(id)a4;
@end

@implementation WBSAutoFillFrameAssociatedFormMetadata

- (WBSAutoFillFrameAssociatedFormMetadata)initWithFrameInfo:(id)a3 formMetadata:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___WBSAutoFillFrameAssociatedFormMetadata_frameInfo) = a3;
  *(&self->super.isa + OBJC_IVAR___WBSAutoFillFrameAssociatedFormMetadata_formMetadata) = a4;
  v8.receiver = self;
  v8.super_class = WBSAutoFillFrameAssociatedFormMetadata;
  v5 = a3;
  v6 = a4;
  return [(WBSAutoFillFrameAssociatedFormMetadata *)&v8 init];
}

- (NSString)description
{
  v2 = self;
  WBSAutoFillFrameAssociatedFormMetadata.description.getter();

  v3 = sub_1C6A74780();

  return v3;
}

- (WBSAutoFillFrameAssociatedFormMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
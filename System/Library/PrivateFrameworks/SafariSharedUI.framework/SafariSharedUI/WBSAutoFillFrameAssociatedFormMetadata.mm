@interface WBSAutoFillFrameAssociatedFormMetadata
- (NSString)description;
- (WBSAutoFillFrameAssociatedFormMetadata)init;
- (WBSAutoFillFrameAssociatedFormMetadata)initWithFrameInfo:(id)info formMetadata:(id)metadata;
@end

@implementation WBSAutoFillFrameAssociatedFormMetadata

- (WBSAutoFillFrameAssociatedFormMetadata)initWithFrameInfo:(id)info formMetadata:(id)metadata
{
  *(&self->super.isa + OBJC_IVAR___WBSAutoFillFrameAssociatedFormMetadata_frameInfo) = info;
  *(&self->super.isa + OBJC_IVAR___WBSAutoFillFrameAssociatedFormMetadata_formMetadata) = metadata;
  v8.receiver = self;
  v8.super_class = WBSAutoFillFrameAssociatedFormMetadata;
  infoCopy = info;
  metadataCopy = metadata;
  return [(WBSAutoFillFrameAssociatedFormMetadata *)&v8 init];
}

- (NSString)description
{
  selfCopy = self;
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
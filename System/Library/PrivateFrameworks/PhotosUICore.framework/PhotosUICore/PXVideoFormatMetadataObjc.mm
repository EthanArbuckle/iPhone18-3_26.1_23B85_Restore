@interface PXVideoFormatMetadataObjc
- (PXVideoFormatMetadataObjc)initWithMetadata:(id)metadata;
@end

@implementation PXVideoFormatMetadataObjc

- (PXVideoFormatMetadataObjc)initWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7.receiver = self;
  v7.super_class = PXVideoFormatMetadataObjc;
  v5 = [(PXVideoFormatMetadataObjc *)&v7 init];
  if (v5)
  {
    v5->_isProResLog = [metadataCopy isProResLog];
  }

  return v5;
}

@end
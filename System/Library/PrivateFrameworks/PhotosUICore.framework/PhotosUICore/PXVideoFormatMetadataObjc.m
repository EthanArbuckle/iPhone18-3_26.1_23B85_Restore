@interface PXVideoFormatMetadataObjc
- (PXVideoFormatMetadataObjc)initWithMetadata:(id)a3;
@end

@implementation PXVideoFormatMetadataObjc

- (PXVideoFormatMetadataObjc)initWithMetadata:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PXVideoFormatMetadataObjc;
  v5 = [(PXVideoFormatMetadataObjc *)&v7 init];
  if (v5)
  {
    v5->_isProResLog = [v4 isProResLog];
  }

  return v5;
}

@end
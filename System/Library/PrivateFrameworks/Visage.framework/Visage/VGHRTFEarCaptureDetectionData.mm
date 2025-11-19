@interface VGHRTFEarCaptureDetectionData
- (CGRect)boundingBox;
- (id)initEmpty;
@end

@implementation VGHRTFEarCaptureDetectionData

- (id)initEmpty
{
  v6.receiver = self;
  v6.super_class = VGHRTFEarCaptureDetectionData;
  v2 = [(VGHRTFEarCaptureDetectionData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
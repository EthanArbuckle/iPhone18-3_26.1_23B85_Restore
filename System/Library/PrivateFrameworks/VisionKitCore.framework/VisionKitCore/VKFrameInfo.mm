@interface VKFrameInfo
- (CGAffineTransform)imageToLayerTransform;
- (CGAffineTransform)visionToCroppedImageTransform;
- (CGAffineTransform)visionToLayerTransform;
- (CGRect)regionOfInterest;
- (CGSize)dimensions;
- (void)setImageToLayerTransform:(CGAffineTransform *)transform;
- (void)setVisionToCroppedImageTransform:(CGAffineTransform *)transform;
- (void)setVisionToLayerTransform:(CGAffineTransform *)transform;
@end

@implementation VKFrameInfo

- (CGSize)dimensions
{
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)regionOfInterest
{
  x = self->_regionOfInterest.origin.x;
  y = self->_regionOfInterest.origin.y;
  width = self->_regionOfInterest.size.width;
  height = self->_regionOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)visionToLayerTransform
{
  v3 = *&self[1].ty;
  *&retstr->a = *&self[1].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].b;
  return self;
}

- (void)setVisionToLayerTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_visionToLayerTransform.tx = *&transform->tx;
  *&self->_visionToLayerTransform.c = v4;
  *&self->_visionToLayerTransform.a = v3;
}

- (CGAffineTransform)visionToCroppedImageTransform
{
  v3 = *&self[2].ty;
  *&retstr->a = *&self[2].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].b;
  return self;
}

- (void)setVisionToCroppedImageTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_visionToCroppedImageTransform.tx = *&transform->tx;
  *&self->_visionToCroppedImageTransform.c = v4;
  *&self->_visionToCroppedImageTransform.a = v3;
}

- (CGAffineTransform)imageToLayerTransform
{
  v3 = *&self[3].ty;
  *&retstr->a = *&self[3].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].b;
  return self;
}

- (void)setImageToLayerTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_imageToLayerTransform.tx = *&transform->tx;
  *&self->_imageToLayerTransform.c = v4;
  *&self->_imageToLayerTransform.a = v3;
}

@end
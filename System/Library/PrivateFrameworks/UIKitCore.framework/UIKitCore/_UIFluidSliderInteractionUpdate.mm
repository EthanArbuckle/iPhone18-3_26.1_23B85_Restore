@interface _UIFluidSliderInteractionUpdate
- (CGAffineTransform)trackTransform;
- (CGRect)barFrame;
- (CGRect)trackBounds;
- (void)setTrackTransform:(CGAffineTransform *)transform;
@end

@implementation _UIFluidSliderInteractionUpdate

- (CGRect)trackBounds
{
  x = self->_trackBounds.origin.x;
  y = self->_trackBounds.origin.y;
  width = self->_trackBounds.size.width;
  height = self->_trackBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)trackTransform
{
  v3 = *&self[2].tx;
  *&retstr->a = *&self[2].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].a;
  return self;
}

- (CGRect)barFrame
{
  x = self->_barFrame.origin.x;
  y = self->_barFrame.origin.y;
  width = self->_barFrame.size.width;
  height = self->_barFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTrackTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_trackTransform.c = *&transform->c;
  *&self->_trackTransform.tx = v4;
  *&self->_trackTransform.a = v3;
}

@end
@interface _UIVectorTextLayoutInfo
- (CGAffineTransform)coordinateAdjustment;
- (double)scale;
- (void)dealloc;
- (void)setCoordinateAdjustment:(CGAffineTransform *)adjustment;
- (void)setFrame:(__CTFrame *)frame;
@end

@implementation _UIVectorTextLayoutInfo

- (void)setFrame:(__CTFrame *)frame
{
  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
  }

  self->_frame = frame;
  if (frame)
  {

    CFRetain(frame);
  }
}

- (double)scale
{
  parameters = [(_UIVectorTextLayoutInfo *)self parameters];
  traitCollection = [parameters traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  result = 1.0;
  if (v5 >= 1.0)
  {
    return v5;
  }

  return result;
}

- (void)dealloc
{
  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
    self->_frame = 0;
  }

  v4.receiver = self;
  v4.super_class = _UIVectorTextLayoutInfo;
  [(_UIVectorTextLayoutInfo *)&v4 dealloc];
}

- (CGAffineTransform)coordinateAdjustment
{
  v3 = *&self->ty;
  *&retstr->a = *&self->d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].b;
  return self;
}

- (void)setCoordinateAdjustment:(CGAffineTransform *)adjustment
{
  v3 = *&adjustment->a;
  v4 = *&adjustment->c;
  *&self->_coordinateAdjustment.tx = *&adjustment->tx;
  *&self->_coordinateAdjustment.c = v4;
  *&self->_coordinateAdjustment.a = v3;
}

@end
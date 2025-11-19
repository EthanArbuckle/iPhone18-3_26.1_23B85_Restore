@interface _UIVectorTextLayoutInfo
- (CGAffineTransform)coordinateAdjustment;
- (double)scale;
- (void)dealloc;
- (void)setCoordinateAdjustment:(CGAffineTransform *)a3;
- (void)setFrame:(__CTFrame *)a3;
@end

@implementation _UIVectorTextLayoutInfo

- (void)setFrame:(__CTFrame *)a3
{
  frame = self->_frame;
  if (frame)
  {
    CFRelease(frame);
  }

  self->_frame = a3;
  if (a3)
  {

    CFRetain(a3);
  }
}

- (double)scale
{
  v2 = [(_UIVectorTextLayoutInfo *)self parameters];
  v3 = [v2 traitCollection];
  [v3 displayScale];
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

- (void)setCoordinateAdjustment:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->c;
  *&self->_coordinateAdjustment.tx = *&a3->tx;
  *&self->_coordinateAdjustment.c = v4;
  *&self->_coordinateAdjustment.a = v3;
}

@end
@interface TSCHChartPieLabel
- (CGAffineTransform)transform;
- (CGRect)erasableFrame;
- (CGRect)erasableFrameInCombinedLabelSpace;
- (CGRect)rect;
- (CGRect)rectInCombinedLabelSpace;
- (CGSize)size;
- (TSCHChartPieLabel)initWithRect:(CGRect)rect erasableFrame:(CGRect)frame size:(CGSize)size transform:(CGAffineTransform *)transform title:(id)title;
- (void)concatenateTransformWithCGAffineTransform:(CGAffineTransform *)transform;
@end

@implementation TSCHChartPieLabel

- (CGRect)rectInCombinedLabelSpace
{
  rect = self->_rect;
  v2 = *&self->_transform.c;
  *&v3.a = *&self->_transform.a;
  *&v3.c = v2;
  *&v3.tx = *&self->_transform.tx;
  return CGRectApplyAffineTransform(rect, &v3);
}

- (CGRect)erasableFrameInCombinedLabelSpace
{
  erasableFrame = self->_erasableFrame;
  v2 = *&self->_transform.c;
  *&v3.a = *&self->_transform.a;
  *&v3.c = v2;
  *&v3.tx = *&self->_transform.tx;
  return CGRectApplyAffineTransform(erasableFrame, &v3);
}

- (TSCHChartPieLabel)initWithRect:(CGRect)rect erasableFrame:(CGRect)frame size:(CGSize)size transform:(CGAffineTransform *)transform title:(id)title
{
  width = size.width;
  height = frame.size.height;
  v9 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12 = rect.size.height;
  v13 = rect.size.width;
  v14 = rect.origin.y;
  v15 = rect.origin.x;
  v17 = *&size.height;
  v27.receiver = self;
  v27.super_class = TSCHChartPieLabel;
  v18 = [(TSCHChartPieLabel *)&v27 init];
  v20 = v18;
  if (v18)
  {
    *(v18 + 1) = v15;
    *(v18 + 2) = v14;
    *(v18 + 3) = v13;
    *(v18 + 4) = v12;
    *(v18 + 5) = x;
    *(v18 + 6) = y;
    *(v18 + 7) = v9;
    *(v18 + 8) = height;
    *(v18 + 9) = v28;
    *(v18 + 10) = v29;
    v21 = **&width;
    v22 = *(*&width + 16);
    v23 = *(*&width + 32);
    *(v18 + 120) = v23;
    *(v18 + 104) = v22;
    *(v18 + 88) = v21;
    v24 = objc_msgSend_copy(v17, v19, *&v21, *&v22, *&v23);
    title = v20->_title;
    v20->_title = v24;
  }

  return v20;
}

- (void)concatenateTransformWithCGAffineTransform:(CGAffineTransform *)transform
{
  v4 = *&self->_transform.c;
  *&t1.a = *&self->_transform.a;
  *&t1.c = v4;
  *&t1.tx = *&self->_transform.tx;
  v5 = *&transform->c;
  *&v7.a = *&transform->a;
  *&v7.c = v5;
  *&v7.tx = *&transform->tx;
  CGAffineTransformConcat(&v9, &t1, &v7);
  v6 = *&v9.c;
  *&self->_transform.a = *&v9.a;
  *&self->_transform.c = v6;
  *&self->_transform.tx = *&v9.tx;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)erasableFrame
{
  x = self->_erasableFrame.origin.x;
  y = self->_erasableFrame.origin.y;
  width = self->_erasableFrame.size.width;
  height = self->_erasableFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = *&self[2].b;
  *&retstr->a = *&self[1].ty;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].d;
  return self;
}

@end
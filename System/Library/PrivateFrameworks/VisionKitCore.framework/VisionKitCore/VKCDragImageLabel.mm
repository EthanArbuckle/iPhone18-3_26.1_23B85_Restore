@interface VKCDragImageLabel
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)customEdgeInsets;
- (void)drawTextInRect:(CGRect)rect;
@end

@implementation VKCDragImageLabel

- (void)drawTextInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(VKCDragImageLabel *)self customEdgeInsets];
  v12.receiver = self;
  v12.super_class = VKCDragImageLabel;
  [(VKCDragImageLabel *)&v12 drawTextInRect:x + v11, y + v8, width - (v11 + v9), height - (v8 + v10)];
}

- (CGSize)intrinsicContentSize
{
  v14.receiver = self;
  v14.super_class = VKCDragImageLabel;
  [(VKCDragImageLabel *)&v14 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [(VKCDragImageLabel *)self customEdgeInsets];
  v9 = v4 + v7 + v8;
  v12 = v6 + v10 + v11;
  v13 = v9;
  result.height = v12;
  result.width = v13;
  return result;
}

- (UIEdgeInsets)customEdgeInsets
{
  top = self->_customEdgeInsets.top;
  left = self->_customEdgeInsets.left;
  bottom = self->_customEdgeInsets.bottom;
  right = self->_customEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
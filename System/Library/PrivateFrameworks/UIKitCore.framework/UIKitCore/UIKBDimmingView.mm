@interface UIKBDimmingView
- (UIKBDimmingView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation UIKBDimmingView

- (UIKBDimmingView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIKBDimmingView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setUserInteractionEnabled:0];
    [(UIView *)v4 setOpaque:0];
    v5 = v4;
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v9);
  if ([(UIKBTree *)self->_keyplane isSplit]&& ![(UIKBScreenTraits *)self->_screenTraits centerFilled])
  {
    v10 = [(UIView *)self _clipCornersOfView:self];
    [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-left"];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(UIKBTree *)self->_keyplane frameForKeylayoutName:@"split-right"];
    UIKBClipTwoPieceBackground(v9, v10 | 0xC, x, y, width, height, v12, v14, v16, height, v17, v18, v19, height);
  }

  v20 = +[UIColor blackColor];
  [v20 set];

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGContextFillRect(v9, v22);

  CGContextRestoreGState(v9);
}

@end
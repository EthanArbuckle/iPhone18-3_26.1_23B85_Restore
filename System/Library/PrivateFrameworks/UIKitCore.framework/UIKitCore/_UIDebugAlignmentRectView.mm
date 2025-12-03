@interface _UIDebugAlignmentRectView
- (_UIDebugAlignmentRectView)initWithFrame:(CGRect)frame baselineOffset:(double)offset;
- (void)drawRect:(CGRect)rect;
@end

@implementation _UIDebugAlignmentRectView

- (_UIDebugAlignmentRectView)initWithFrame:(CGRect)frame baselineOffset:(double)offset
{
  v8.receiver = self;
  v8.super_class = _UIDebugAlignmentRectView;
  v5 = [(UIView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_baselineOffset = offset;
    [(UIView *)v5 setAutoresizingMask:18];
    [(UIView *)v6 setUserInteractionEnabled:0];
  }

  return v6;
}

- (void)drawRect:(CGRect)rect
{
  [+[UIColor colorWithRed:green:blue:alpha:](UIColor set:1.0];
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  UIRectFrameUsingOperation(1, v4, v6, v8, v10);
  if (self->_baselineOffset > 0.0)
  {
    [(UIScreen *)[(UIWindow *)[(UIView *)self window] screen] scale];
    v13 = v7 + v11 - self->_baselineOffset - 1.0 / v12;

    UIRectFillUsingOperation(1, v5, v13, v9, 1.0 / v12);
  }
}

@end
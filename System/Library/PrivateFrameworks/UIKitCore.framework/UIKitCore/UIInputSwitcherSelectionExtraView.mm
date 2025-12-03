@interface UIInputSwitcherSelectionExtraView
- (CGRect)keyRect;
- (UIInputSwitcherSelectionExtraView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setFrame:(CGRect)frame;
@end

@implementation UIInputSwitcherSelectionExtraView

- (UIInputSwitcherSelectionExtraView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIInputSwitcherSelectionExtraView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    [(UIView *)v4 setUserInteractionEnabled:0];
    v5 = v4;
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = UIInputSwitcherSelectionExtraView;
  [(UIView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height + 80.0];
}

- (void)drawRect:(CGRect)rect
{
  [(UIView *)self bounds:rect.origin.x];
  v5 = v4;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v7);
  menu = [(UIInputSwitcherSelectionExtraView *)self menu];
  containerView = [menu containerView];
  [(UIInputSwitcherSelectionExtraView *)self keyRect];
  [containerView convertRect:self toView:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  menu2 = [(UIInputSwitcherSelectionExtraView *)self menu];
  table = [menu2 table];
  isScrollEnabled = [table isScrollEnabled];

  v21 = v11 + 0.0;
  v22 = v13 + -4.0;
  if (isScrollEnabled)
  {
    v17 = v17 + 4.0;
    v13 = v13 + -4.0;
    v11 = v11 + 0.0;
  }

  v23 = [(UIView *)self _inheritedRenderConfig:v21];
  if ([v23 colorAdaptiveBackground])
  {
    v24 = 24.0;
  }

  else
  {
    v24 = 8.0;
  }

  menu3 = [(UIInputSwitcherSelectionExtraView *)self menu];
  table2 = [menu3 table];
  [table2 frame];
  v28 = v27;

  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v15;
  v38.size.height = v17;
  v39.size.height = CGRectGetMaxY(v38) - v28;
  v39.origin.x = v24;
  v39.origin.y = v28;
  v39.size.width = v5 - (v24 + v24);
  v40 = CGRectInset(v39, -6.0, 0.0);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  menu4 = [(UIInputSwitcherSelectionExtraView *)self menu];
  PopupPath = UIInputSwitcherCreatePopupPath([menu4 usesStraightLeftEdge], 1, -[UIInputSwitcherSelectionExtraView roundedCorners](self, "roundedCorners"), -[UIView _keyboardOrientation](self, "_keyboardOrientation"), x, y, width, height, v11, v13, v15, v17);

  CGContextAddPath(v7, PopupPath);
  v35 = +[UIColor systemBlueColor];
  cGColor = [v35 CGColor];

  CGContextSetFillColorWithColor(v7, cGColor);
  CGContextFillPath(v7);
  CGContextRestoreGState(v7);

  CGPathRelease(PopupPath);
}

- (CGRect)keyRect
{
  x = self->_keyRect.origin.x;
  y = self->_keyRect.origin.y;
  width = self->_keyRect.size.width;
  height = self->_keyRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
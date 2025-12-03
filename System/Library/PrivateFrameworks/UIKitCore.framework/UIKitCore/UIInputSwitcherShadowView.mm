@interface UIInputSwitcherShadowView
- (CGRect)keyRect;
- (UIInputSwitcherShadowView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation UIInputSwitcherShadowView

- (UIInputSwitcherShadowView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = UIInputSwitcherShadowView;
  v3 = [(UIView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setOpaque:0];
    v5 = MEMORY[0x1E695DEC8];
    v6 = [UIColor colorWithRed:0.999 green:0.999 blue:0.999 alpha:1.0];
    v7 = [UIColor colorWithRed:0.999 green:0.999 blue:0.999 alpha:1.0];
    v8 = [v5 arrayWithObjects:{v6, v7, 0}];
    m_gradientColors = v4->m_gradientColors;
    v4->m_gradientColors = v8;

    v10 = [[_UIBackdropView alloc] initWithStyle:2050];
    [(UIInputSwitcherShadowView *)v4 setBlurView:v10];
    blurView = [(UIInputSwitcherShadowView *)v4 blurView];
    inputSettings = [blurView inputSettings];
    [inputSettings setFilterMaskAlpha:1.0];

    blurView2 = [(UIInputSwitcherShadowView *)v4 blurView];
    inputSettings2 = [blurView2 inputSettings];
    [inputSettings2 setBlurRadius:2.0];

    blurView3 = [(UIInputSwitcherShadowView *)v4 blurView];
    inputSettings3 = [blurView3 inputSettings];
    [inputSettings3 setGrayscaleTintLevel:0.17];

    blurView4 = [(UIInputSwitcherShadowView *)v4 blurView];
    inputSettings4 = [blurView4 inputSettings];
    [inputSettings4 setGrayscaleTintAlpha:0.87];

    v19 = v4;
  }

  return v4;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  menu = [(UIInputSwitcherShadowView *)self menu];
  mode = [menu mode];

  if (mode)
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v13 = CGRectInset(v12, -6.0, -6.0);
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
  }

  if ([(UIInputSwitcherShadowView *)self mode]== 1)
  {
    v10 = height + 10.0;
  }

  else
  {
    v10 = height;
  }

  v11.receiver = self;
  v11.super_class = UIInputSwitcherShadowView;
  [(UIView *)&v11 setFrame:x, y, width, v10];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = UIInputSwitcherShadowView;
  [(UIView *)&v11 layoutSubviews];
  m_mode = self->m_mode;
  blurView = [(UIInputSwitcherShadowView *)self blurView];
  maskForShadowViewBlurredBackground = blurView;
  if (m_mode)
  {
    [blurView removeFromSuperview];
  }

  else
  {
    [(UIView *)self addSubview:blurView];

    menu = [(UIInputSwitcherShadowView *)self menu];
    maskForShadowViewBlurredBackground = [menu maskForShadowViewBlurredBackground];

    blurView2 = [(UIInputSwitcherShadowView *)self blurView];
    inputSettings = [blurView2 inputSettings];
    [inputSettings setFilterMaskImage:maskForShadowViewBlurredBackground];

    blurView3 = [(UIInputSwitcherShadowView *)self blurView];
    inputSettings2 = [blurView3 inputSettings];
    [inputSettings2 setGrayscaleTintMaskImage:maskForShadowViewBlurredBackground];
  }
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(UIView *)self _keyboardOrientation:rect.origin.x];
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  if ([(UIInputSwitcherShadowView *)self mode]== 1)
  {
    menu = [(UIInputSwitcherShadowView *)self menu];
    containerView = [menu containerView];
    [(UIInputSwitcherShadowView *)self keyRect];
    [containerView convertRect:self toView:?];
    v18 = v17;
    v20 = *&v19;
    v51 = v6;
    v52 = v19;
    v22 = v21;
    v24 = v23;

    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v50 = v26;

    _inheritedRenderConfig = [(UIView *)self _inheritedRenderConfig];
    [_inheritedRenderConfig colorAdaptiveBackground];

    CGContextSaveGState(v14);
    menu2 = [(UIInputSwitcherShadowView *)self menu];
    usesStraightLeftEdge = [menu2 usesStraightLeftEdge];
    v30 = v6;
    v31 = v24;
    PopupPath = UIInputSwitcherCreatePopupPath(usesStraightLeftEdge, 0, -1, v4, v30, v8, v10, v12 + -16.0, v18, v20, v22, v24);

    CGContextAddPath(v14, PopupPath);
    v33 = [UIColor colorWithWhite:1.0 alpha:0.3];
    cGColor = [v33 CGColor];

    CGContextSetFillColorWithColor(v14, cGColor);
    v35 = [UIColor colorWithWhite:0.0 alpha:0.2];
    cGColor2 = [v35 CGColor];

    if (v50 <= 1.0)
    {
      v37 = 3.0;
    }

    else
    {
      v37 = 1.5;
    }

    v55.width = -v37;
    v55.height = 0.0;
    CGContextSetShadowWithColor(v14, v55, v37, cGColor2);
    CGContextFillPath(v14);
    CGContextRestoreGState(v14);
    CGContextSaveGState(v14);
    CGContextAddPath(v14, PopupPath);
    CGContextSetFillColorWithColor(v14, cGColor);
    v56.height = 0.0;
    v56.width = v37;
    CGContextSetShadowWithColor(v14, v56, v37, cGColor2);
    CGContextFillPath(v14);
    CGContextRestoreGState(v14);
    CGContextSaveGState(v14);
    CGContextAddPath(v14, PopupPath);
    CGContextSetFillColorWithColor(v14, cGColor);
    v57.width = 0.0;
    v57.height = v37;
    CGContextSetShadowWithColor(v14, v57, v37, cGColor2);
    CGContextFillPath(v14);
    CGContextRestoreGState(v14);
    CGContextSaveGState(v14);
    menu3 = [(UIInputSwitcherShadowView *)self menu];
    v39 = UIInputSwitcherCreatePopupPath([menu3 usesStraightLeftEdge], 0, -1, v4, v51, v8, v10, v12 + -16.0, v18, *&v52, v22, v31);

    v40 = [UIColor colorWithWhite:0.0 alpha:0.2];
    cGColor3 = [v40 CGColor];

    CGContextAddPath(v14, v39);
    CGContextSetStrokeColorWithColor(v14, cGColor3);
    CGContextSetLineWidth(v14, 0.5);
    CGContextStrokePath(v14);
    CGPathRelease(v39);
    CGContextRestoreGState(v14);
    CGContextSaveGState(v14);
    CGContextAddPath(v14, PopupPath);
    CGContextClip(v14);
    gradientColors = [(UIInputSwitcherShadowView *)self gradientColors];
    v53 = [gradientColors objectAtIndex:0];

    gradientColors2 = [(UIInputSwitcherShadowView *)self gradientColors];
    v44 = [gradientColors2 objectAtIndex:1];

    v45 = v53;
    v46 = UIKBCreateTwoColorLinearGradient([v53 CGColor], objc_msgSend(v44, "CGColor"));
    [(UIView *)self bounds];
    if (v46)
    {
      v58.y = v48 + v49;
      v58.x = v47;
      CGContextDrawLinearGradient(v14, v46, *&v47, v58, 0);
    }

    CGGradientRelease(v46);
    CGContextRestoreGState(v14);
    CGPathRelease(PopupPath);
  }
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
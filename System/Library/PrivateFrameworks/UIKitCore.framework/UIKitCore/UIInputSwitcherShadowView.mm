@interface UIInputSwitcherShadowView
- (CGRect)keyRect;
- (UIInputSwitcherShadowView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
@end

@implementation UIInputSwitcherShadowView

- (UIInputSwitcherShadowView)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = UIInputSwitcherShadowView;
  v3 = [(UIView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v11 = [(UIInputSwitcherShadowView *)v4 blurView];
    v12 = [v11 inputSettings];
    [v12 setFilterMaskAlpha:1.0];

    v13 = [(UIInputSwitcherShadowView *)v4 blurView];
    v14 = [v13 inputSettings];
    [v14 setBlurRadius:2.0];

    v15 = [(UIInputSwitcherShadowView *)v4 blurView];
    v16 = [v15 inputSettings];
    [v16 setGrayscaleTintLevel:0.17];

    v17 = [(UIInputSwitcherShadowView *)v4 blurView];
    v18 = [v17 inputSettings];
    [v18 setGrayscaleTintAlpha:0.87];

    v19 = v4;
  }

  return v4;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIInputSwitcherShadowView *)self menu];
  v9 = [v8 mode];

  if (v9)
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
  v4 = [(UIInputSwitcherShadowView *)self blurView];
  v5 = v4;
  if (m_mode)
  {
    [v4 removeFromSuperview];
  }

  else
  {
    [(UIView *)self addSubview:v4];

    v6 = [(UIInputSwitcherShadowView *)self menu];
    v5 = [v6 maskForShadowViewBlurredBackground];

    v7 = [(UIInputSwitcherShadowView *)self blurView];
    v8 = [v7 inputSettings];
    [v8 setFilterMaskImage:v5];

    v9 = [(UIInputSwitcherShadowView *)self blurView];
    v10 = [v9 inputSettings];
    [v10 setGrayscaleTintMaskImage:v5];
  }
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(UIView *)self _keyboardOrientation:a3.origin.x];
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
    v15 = [(UIInputSwitcherShadowView *)self menu];
    v16 = [v15 containerView];
    [(UIInputSwitcherShadowView *)self keyRect];
    [v16 convertRect:self toView:?];
    v18 = v17;
    v20 = *&v19;
    v51 = v6;
    v52 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [objc_opt_self() mainScreen];
    [v25 scale];
    v50 = v26;

    v27 = [(UIView *)self _inheritedRenderConfig];
    [v27 colorAdaptiveBackground];

    CGContextSaveGState(v14);
    v28 = [(UIInputSwitcherShadowView *)self menu];
    v29 = [v28 usesStraightLeftEdge];
    v30 = v6;
    v31 = v24;
    PopupPath = UIInputSwitcherCreatePopupPath(v29, 0, -1, v4, v30, v8, v10, v12 + -16.0, v18, v20, v22, v24);

    CGContextAddPath(v14, PopupPath);
    v33 = [UIColor colorWithWhite:1.0 alpha:0.3];
    v34 = [v33 CGColor];

    CGContextSetFillColorWithColor(v14, v34);
    v35 = [UIColor colorWithWhite:0.0 alpha:0.2];
    v36 = [v35 CGColor];

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
    CGContextSetShadowWithColor(v14, v55, v37, v36);
    CGContextFillPath(v14);
    CGContextRestoreGState(v14);
    CGContextSaveGState(v14);
    CGContextAddPath(v14, PopupPath);
    CGContextSetFillColorWithColor(v14, v34);
    v56.height = 0.0;
    v56.width = v37;
    CGContextSetShadowWithColor(v14, v56, v37, v36);
    CGContextFillPath(v14);
    CGContextRestoreGState(v14);
    CGContextSaveGState(v14);
    CGContextAddPath(v14, PopupPath);
    CGContextSetFillColorWithColor(v14, v34);
    v57.width = 0.0;
    v57.height = v37;
    CGContextSetShadowWithColor(v14, v57, v37, v36);
    CGContextFillPath(v14);
    CGContextRestoreGState(v14);
    CGContextSaveGState(v14);
    v38 = [(UIInputSwitcherShadowView *)self menu];
    v39 = UIInputSwitcherCreatePopupPath([v38 usesStraightLeftEdge], 0, -1, v4, v51, v8, v10, v12 + -16.0, v18, *&v52, v22, v31);

    v40 = [UIColor colorWithWhite:0.0 alpha:0.2];
    v41 = [v40 CGColor];

    CGContextAddPath(v14, v39);
    CGContextSetStrokeColorWithColor(v14, v41);
    CGContextSetLineWidth(v14, 0.5);
    CGContextStrokePath(v14);
    CGPathRelease(v39);
    CGContextRestoreGState(v14);
    CGContextSaveGState(v14);
    CGContextAddPath(v14, PopupPath);
    CGContextClip(v14);
    v42 = [(UIInputSwitcherShadowView *)self gradientColors];
    v53 = [v42 objectAtIndex:0];

    v43 = [(UIInputSwitcherShadowView *)self gradientColors];
    v44 = [v43 objectAtIndex:1];

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
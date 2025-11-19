@interface UIRoundedRectButton
- (UIRoundedRectButton)initWithFrame:(CGRect)a3 fillColor:(id)a4;
- (id)_contentBackgroundColor;
- (void)_invalidatePaths;
- (void)_updateState;
- (void)drawRect:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTintColor:(id)a3;
@end

@implementation UIRoundedRectButton

- (UIRoundedRectButton)initWithFrame:(CGRect)a3 fillColor:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = UIRoundedRectButton;
  v11 = [(UIButton *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_fillColor, a4);
  }

  return v12;
}

- (id)_contentBackgroundColor
{
  fillColor = self->_fillColor;
  if (fillColor)
  {
    v3 = fillColor;
  }

  else
  {
    v3 = +[UIColor whiteColor];
  }

  return v3;
}

- (void)_updateState
{
  if ([(UIRoundedRectButton *)self _canDrawContent])
  {

    [(UIView *)self setNeedsDisplay];
  }

  else
  {
    v4 = [(UIButton *)self _visualProvider];
    v3 = [v4 _setupBackgroundView];
  }
}

- (void)_invalidatePaths
{
  fillPath = self->_fillPath;
  if (fillPath)
  {
    self->_fillPath = 0;
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIRoundedRectButton *)self _invalidatePaths];
  v8.receiver = self;
  v8.super_class = UIRoundedRectButton;
  [(UIButton *)&v8 setFrame:x, y, width, height];
  [(UIRoundedRectButton *)self _updateState];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIRoundedRectButton *)self _invalidatePaths];
  v8.receiver = self;
  v8.super_class = UIRoundedRectButton;
  [(UIButton *)&v8 setBounds:x, y, width, height];
  [(UIRoundedRectButton *)self _updateState];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIRoundedRectButton;
  [(UIButton *)&v4 setHighlighted:a3];
  [(UIRoundedRectButton *)self _updateState];
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self tintColor];

  if (v5 != v4)
  {
    v6.receiver = self;
    v6.super_class = UIRoundedRectButton;
    [(UIButton *)&v6 setTintColor:v4];
    if ([(UIControl *)self isHighlighted]|| ![(UIRoundedRectButton *)self _canDrawContent])
    {
      [(UIRoundedRectButton *)self _updateState];
    }
  }
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!_MergedGlobals_33_0)
  {
    v8 = +[UIColor tableBackgroundColor];
    v9 = _MergedGlobals_33_0;
    _MergedGlobals_33_0 = v8;

    v10 = [[UIColor alloc] initWithWhite:0.6 alpha:0.94];
    v11 = qword_1ED497E88;
    qword_1ED497E88 = v10;

    v12 = +[UIColor tableSelectionColor];
    v13 = qword_1ED497E90;
    qword_1ED497E90 = v12;

    v14 = [[UIColor alloc] initWithRed:0.17 green:0.26 blue:0.37 alpha:0.94];
    v15 = qword_1ED497E98;
    qword_1ED497E98 = v14;

    v16 = [[UIColor alloc] initWithRed:0.17 green:0.26 blue:0.37 alpha:0.75];
    v17 = qword_1ED497EA0;
    qword_1ED497EA0 = v16;
  }

  [(UIView *)self bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = +[UIDevice currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if ((v27 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (![(UIView *)self clearsContextBeforeDrawing])
    {
      ContextStack = GetContextStack(0);
      if (*ContextStack < 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      CGContextClearRect(v29, v58);
    }

    v25 = v25 + -1.0;
  }

  v59.origin.x = v19;
  v59.origin.y = v21;
  v59.size.width = v23;
  v59.size.height = v25;
  if (!CGRectEqualToRect(v59, *ymmword_1ED497EB0))
  {
    v30 = qword_1ED497EA8;
    qword_1ED497EA8 = 0;
  }

  if (!qword_1ED497EA8)
  {
    *ymmword_1ED497EB0 = v19;
    *&ymmword_1ED497EB0[8] = v21;
    *&ymmword_1ED497EB0[16] = v23;
    *&ymmword_1ED497EB0[24] = v25;
    v60.origin.x = v19;
    v60.origin.y = v21;
    v60.size.width = v23;
    v60.size.height = v25;
    v61 = CGRectInset(v60, 0.5, 0.5);
    v31 = [UIBezierPath roundedRectBezierPath:-1 withRoundedCorners:v61.origin.x withCornerRadius:v61.origin.y, v61.size.width, v61.size.height, 4.5];
    v32 = qword_1ED497EA8;
    qword_1ED497EA8 = v31;
  }

  v33 = +[UIDevice currentDevice];
  v34 = [v33 userInterfaceIdiom];

  if ((v34 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v62.origin.y = v21 + 1.0;
    v62.origin.x = v19;
    v62.size.width = v23;
    v62.size.height = v25;
    v63 = CGRectInset(v62, 0.5, 0.5);
    v35 = [UIBezierPath roundedRectBezierPath:-1 withRoundedCorners:v63.origin.x withCornerRadius:v63.origin.y, v63.size.width, v63.size.height, 4.5];
    v36 = +[UIColor tableShadowColor];
    [v36 set];

    [v35 stroke];
  }

  fillColor = self->_fillColor;
  if (!fillColor)
  {
    fillColor = _MergedGlobals_33_0;
  }

  v56 = fillColor;
  if ([(UIControl *)self isHighlighted])
  {
    v38 = +[UIDevice currentDevice];
    v39 = [v38 userInterfaceIdiom];

    if ((v39 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      [(UIColor *)v56 set];
      [qword_1ED497EA8 fill];
      v40 = GetContextStack(0);
      if (*v40 < 1)
      {
        v41 = 0;
      }

      else
      {
        v41 = v40[3 * (*v40 - 1) + 1];
      }

      CGContextSaveGState(v41);
    }

    else
    {
      v41 = 0;
    }

    [qword_1ED497EA8 clip];
    v42 = [(UIView *)self tintColor];
    v43 = v42;
    if (v42)
    {
      [v42 set];
      v44 = GetContextStack(0);
      if (*v44 < 1)
      {
        v45 = 0;
      }

      else
      {
        v45 = v44[3 * (*v44 - 1) + 1];
      }

      v64.origin.x = v19;
      v64.origin.y = v21;
      v64.size.width = v23;
      v64.size.height = v25;
      CGContextFillRect(v45, v64);
    }

    v46 = +[UIDevice currentDevice];
    v47 = [v46 userInterfaceIdiom];

    if ((v47 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      CGContextRestoreGState(v41);
    }
  }

  else
  {
    [(UIColor *)v56 set];
    [qword_1ED497EA8 fill];
  }

  v48 = +[UIDevice currentDevice];
  v49 = [v48 userInterfaceIdiom];

  if ((v49 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v65.origin.y = v21 + 1.0;
    v65.size.height = v25 + -1.0;
    v65.origin.x = v19;
    v65.size.width = v23;
    v66 = CGRectInset(v65, 0.5, 0.5);
    v50 = [UIBezierPath roundedRectBezierPath:-1 withRoundedCorners:v66.origin.x withCornerRadius:v66.origin.y, v66.size.width, v66.size.height, 4.5];
    v51 = +[UIColor tableGroupedTopShadowColor];
    [v51 set];

    [v50 stroke];
  }

  if ([(UIControl *)self isHighlighted])
  {
    v52 = +[UIDevice currentDevice];
    v53 = [v52 userInterfaceIdiom];

    if ((v53 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v54 = qword_1ED497EA0;
    }

    else
    {
      v54 = qword_1ED497E98;
    }
  }

  else
  {
    if ([(UIButton *)self _buttonType]== 113)
    {
      v55 = +[UIColor tableSeparatorDarkColor];
      [v55 set];

      goto LABEL_44;
    }

    v54 = qword_1ED497E88;
  }

  [v54 set];
LABEL_44:
  [qword_1ED497EA8 stroke];
}

@end
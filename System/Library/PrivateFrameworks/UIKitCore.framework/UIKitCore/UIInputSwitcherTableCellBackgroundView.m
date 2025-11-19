@interface UIInputSwitcherTableCellBackgroundView
- (void)drawRect:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation UIInputSwitcherTableCellBackgroundView

- (void)drawRect:(CGRect)a3
{
  [(UIView *)self bounds:a3.origin.x];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v13);
  v14 = [objc_opt_self() mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = 1.0 / v16;
  if (![(UIInputSwitcherTableCellBackgroundView *)self roundedCorners])
  {
    height = height - v17;
    y = y + v17;
  }

  v18 = [(UIView *)self _inheritedRenderConfig];
  v19 = 24.0;
  if (([v18 colorAdaptiveBackground] & 1) == 0)
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v19 = 6.0;
    }

    else
    {
      v19 = 8.0;
    }
  }

  if (width >= 80.0)
  {
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectInset(v38, 10.0, 0.0);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
  }

  else
  {
    v19 = 20.0;
  }

  if ([(UIInputSwitcherTableCellBackgroundView *)self roundedCorners])
  {
    UIKBAddRoundedRect(v13, [(UIInputSwitcherTableCellBackgroundView *)self roundedCorners], x, y, width, height, v19);
    CGContextClip(v13);
  }

  if (!_MergedGlobals_23_3[0])
  {
    v20 = [(UIView *)self _inheritedRenderConfig];
    if ([v20 colorAdaptiveBackground])
    {
      +[UIColor tertiarySystemFillColor];
    }

    else
    {
      +[UIColor systemBlueColor];
    }
    v21 = ;
    v22 = _MergedGlobals_23_3[0];
    _MergedGlobals_23_3[0] = v21;
  }

  if ([(UIInputSwitcherTableCellBackgroundView *)self isSelected])
  {
    [_MergedGlobals_23_3[0] set];
  }

  else
  {
    if (![(UIInputSwitcherTableCellBackgroundView *)self drawsOpaque])
    {
      goto LABEL_28;
    }

    v23 = [(UIView *)self _inheritedRenderConfig];
    if ([v23 colorAdaptiveBackground])
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v24 = ;
    [v24 set];
  }

  UIRectFillUsingOperation(1, x, y, width, height);
LABEL_28:
  if (!qword_1ED49AFC0)
  {
    v25 = [UIColor colorWithWhite:0.839215686 alpha:1.0];
    v26 = qword_1ED49AFC0;
    qword_1ED49AFC0 = v25;
  }

  if (!qword_1ED49AFC8)
  {
    objc_storeStrong(&qword_1ED49AFC8, _MergedGlobals_23_3[0]);
  }

  if (!qword_1ED49AFD0)
  {
    objc_storeStrong(&qword_1ED49AFD0, _MergedGlobals_23_3[0]);
  }

  if (!qword_1ED49AFD8)
  {
    v27 = [UIColor colorWithWhite:0.839215686 alpha:1.0];
    v28 = qword_1ED49AFD8;
    qword_1ED49AFD8 = v27;
  }

  if (!qword_1ED49AFE0)
  {
    objc_storeStrong(&qword_1ED49AFE0, _MergedGlobals_23_3[0]);
  }

  if (!qword_1ED49AFE8)
  {
    v29 = [[UIColor alloc] initWithWhite:0.8 alpha:0.5];
    v30 = qword_1ED49AFE8;
    qword_1ED49AFE8 = v29;
  }

  if ([(UIInputSwitcherTableCellBackgroundView *)self usesDarkTheme])
  {
    if (qword_1ED49AFF0)
    {
      goto LABEL_46;
    }

    v31 = [[UIColor alloc] initWithRed:1.0 green:1.0 blue:1.0 alpha:0.15];
    v32 = qword_1ED49AFF0;
    qword_1ED49AFF0 = v31;
  }

  else
  {
    if (qword_1ED49AFF8)
    {
      goto LABEL_46;
    }

    v33 = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.15];
    v32 = qword_1ED49AFF8;
    qword_1ED49AFF8 = v33;
  }

LABEL_46:
  if ([(UIInputSwitcherTableCellBackgroundView *)self drawsBorder])
  {
    if ([(UIInputSwitcherTableCellBackgroundView *)self isSelected])
    {
      v34 = qword_1ED49AFC8;
    }

    else
    {
      v35 = [(UIInputSwitcherTableCellBackgroundView *)self usesDarkTheme];
      v36 = 8;
      if (v35)
      {
        v36 = 7;
      }

      v34 = _MergedGlobals_23_3[v36];
    }

    [v34 set];
    UIRectFillUsingOperation(1, x, 0.0, width, v17);
  }

  CGContextRestoreGState(v13);
}

- (void)setSelected:(BOOL)a3
{
  if (self->_selected != a3)
  {
    self->_selected = a3;
    [(UIView *)self setNeedsDisplay];
  }
}

@end
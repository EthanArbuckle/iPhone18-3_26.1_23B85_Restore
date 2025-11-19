@interface UIStatusBarThermalColorItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (id)_color;
- (id)contentsImage;
@end

@implementation UIStatusBarThermalColorItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = *(v5 + 2268);
  v7 = *(v5 + 2272) & 1;
  thermalColor = self->_thermalColor;
  result = v6 != thermalColor;
  if (v6 != thermalColor)
  {
    self->_thermalColor = v6;
  }

  if (v7 != self->_sunlightMode)
  {
    self->_sunlightMode = v7;
    return 1;
  }

  return result;
}

- (id)contentsImage
{
  [(UIView *)self bounds];
  v4 = (v3 + -10.0) * 0.5;
  [(UIStatusBarItemView *)self shadowPadding];
  v6 = v5;
  v7 = v5 + v5 + 10.0;
  [(UIStatusBarItemView *)self beginImageContextWithMinimumWidth:v7];
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  v10 = floor(v4);
  CGContextSaveGState(v9);
  CGContextTranslateCTM(v9, v6, 0.0);
  v11 = [(UIStatusBarThermalColorItemView *)self _color];
  [v11 set];

  if (self->_sunlightMode)
  {
    v12 = GetContextStack(0);
    if (*v12 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12[3 * (*v12 - 1) + 1];
    }

    CGContextSetLineWidth(v13, 3.0);
    UIRectFrameUsingOperation(1, 0.0, v10, 10.0, 10.0);
  }

  else
  {
    UIRectFillUsingOperation(1, 0.0, v10, 10.0, 10.0);
  }

  v14 = [(UIStatusBarItemView *)self imageFromImageContextClippedToWidth:v7];
  CGContextRestoreGState(v9);
  [(UIStatusBarItemView *)self endImageContext];
  v15 = [_UILegibilityImageSet imageFromImage:v14 withShadowImage:0];

  return v15;
}

- (id)_color
{
  v3 = 0;
  thermalColor = self->_thermalColor;
  if (thermalColor > 3)
  {
    switch(thermalColor)
    {
      case 6:
        v3 = +[UIColor whiteColor];
        break;
      case 5:
        v3 = +[UIColor blueColor];
        break;
      case 4:
        v3 = +[UIColor purpleColor];
        break;
    }
  }

  else
  {
    switch(thermalColor)
    {
      case 1:
        v3 = +[UIColor yellowColor];
        break;
      case 2:
        v3 = +[UIColor orangeColor];
        break;
      case 3:
        v3 = +[UIColor redColor];
        break;
    }
  }

  return v3;
}

@end
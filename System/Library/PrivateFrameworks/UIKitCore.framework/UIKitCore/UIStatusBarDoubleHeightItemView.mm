@interface UIStatusBarDoubleHeightItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (id)contentsImage;
@end

@implementation UIStatusBarDoubleHeightItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  doubleHeightStatus = [data doubleHeightStatus];
  v6 = [doubleHeightStatus isEqualToString:self->_contentsString];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_contentsString, doubleHeightStatus);
    textFont = [(UIStatusBarItemView *)self textFont];
    [(NSString *)self->_contentsString _legacy_sizeWithFont:textFont];
    self->_letterSpacing = 0.0;
    self->_ellipsize = 0;
    if (v8 > 320.0)
    {
      while (1)
      {
        letterSpacing = self->_letterSpacing;
        if (letterSpacing < -1.0)
        {
          break;
        }

        self->_letterSpacing = letterSpacing + -0.25;
        [(NSString *)self->_contentsString sizeWithFont:textFont forWidth:5 lineBreakMode:3.40282347e38 letterSpacing:?];
        if (v10 <= 320.0)
        {
          letterSpacing = self->_letterSpacing;
          break;
        }
      }

      if (letterSpacing < -1.0)
      {
        self->_letterSpacing = 0.0;
        self->_ellipsize = 1;
      }
    }
  }

  return v6 ^ 1;
}

- (id)contentsImage
{
  if ([(NSString *)self->_contentsString length])
  {
    if (self->_ellipsize)
    {
      v3 = 320.0;
    }

    else
    {
      v3 = 1.79769313e308;
    }

    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    contentsString = self->_contentsString;
    letterSpacing = self->_letterSpacing;
    textAlignment = [(UIStatusBarItemView *)self textAlignment];
    textStyle = [(UIStatusBarItemView *)self textStyle];
    legibilityStyle = [(UIStatusBarItemView *)self legibilityStyle];
    [(UIStatusBarItemView *)self legibilityStrength];
    v11 = [foregroundStyle imageWithText:contentsString ofItemType:23 forWidth:5 lineBreakMode:textAlignment letterSpacing:textStyle textAlignment:legibilityStyle style:v3 withLegibilityStyle:letterSpacing legibilityStrength:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
@interface UIStatusBarDoubleHeightItemView
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (id)contentsImage;
@end

@implementation UIStatusBarDoubleHeightItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 doubleHeightStatus];
  v6 = [v5 isEqualToString:self->_contentsString];
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_contentsString, v5);
    v7 = [(UIStatusBarItemView *)self textFont];
    [(NSString *)self->_contentsString _legacy_sizeWithFont:v7];
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
        [(NSString *)self->_contentsString sizeWithFont:v7 forWidth:5 lineBreakMode:3.40282347e38 letterSpacing:?];
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

    v4 = [(UIStatusBarItemView *)self foregroundStyle];
    contentsString = self->_contentsString;
    letterSpacing = self->_letterSpacing;
    v7 = [(UIStatusBarItemView *)self textAlignment];
    v8 = [(UIStatusBarItemView *)self textStyle];
    v9 = [(UIStatusBarItemView *)self legibilityStyle];
    [(UIStatusBarItemView *)self legibilityStrength];
    v11 = [v4 imageWithText:contentsString ofItemType:23 forWidth:5 lineBreakMode:v7 letterSpacing:v8 textAlignment:v9 style:v3 withLegibilityStyle:letterSpacing legibilityStrength:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end
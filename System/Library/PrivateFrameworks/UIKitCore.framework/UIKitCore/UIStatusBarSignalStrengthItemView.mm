@interface UIStatusBarSignalStrengthItemView
- (BOOL)_updateWithRaw:(int)a3 bars:(int)a4 enableRSSI:(BOOL)a5 showFailure:(BOOL)a6 useSmallBars:(BOOL)a7;
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)extraLeftPadding;
- (double)extraRightPadding;
- (id)_signalStrengthBarsImageName;
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation UIStatusBarSignalStrengthItemView

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = *(v5 + 432);
  v7 = *(v5 + 440);
  if (v7 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = (*(v5 + 2529) >> 1) & 1;
  v10 = *(v5 + 2072) == 6;
  v11 = *(v5 + 5);

  return [(UIStatusBarSignalStrengthItemView *)self _updateWithRaw:v6 bars:v8 enableRSSI:v9 showFailure:v10 useSmallBars:v11];
}

- (BOOL)_updateWithRaw:(int)a3 bars:(int)a4 enableRSSI:(BOOL)a5 showFailure:(BOOL)a6 useSmallBars:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  if (self->_enableRSSI == a5)
  {
    v12 = 0;
  }

  else
  {
    self->_enableRSSI = a5;
    v12 = self->_showRSSI != a5;
    self->_showRSSI = a5;
    [(UIView *)self setUserInteractionEnabled:self->_enableRSSI];
  }

  if (self->_signalStrengthRaw != a3)
  {
    self->_signalStrengthRaw = a3;
    v12 = self->_showRSSI || v12;
  }

  if (self->_signalStrengthBars != a4)
  {
    self->_signalStrengthBars = a4;
    LOBYTE(v12) = !self->_showRSSI || v12;
  }

  if (self->_showFailure != v8)
  {
    self->_showFailure = v8;
    LOBYTE(v12) = 1;
  }

  if (self->_useSmallBars != v7)
  {
    self->_useSmallBars = v7;
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (id)_signalStrengthBarsImageName
{
  signalStrengthBars = self->_signalStrengthBars;
  if ((signalStrengthBars & 0x80000000) != 0)
  {
    v5 = @"Bars_NoSim";
  }

  else
  {
    if (self->_useSmallBars)
    {
      v4 = @"%d_Bars-DualSIM-card";
    }

    else
    {
      v4 = @"%d_Bars";
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:v4, signalStrengthBars];
  }

  return v5;
}

- (id)contentsImage
{
  if (self->_showFailure)
  {
    v3 = [(UIStatusBarItemView *)self imageWithShadowNamed:@"CellularFailure"];
  }

  else
  {
    if (self->_showRSSI)
    {
      v4 = [(UIStatusBarSignalStrengthItemView *)self _stringForRSSI];
      v3 = [(UIStatusBarItemView *)self imageWithText:v4];
    }

    else
    {
      v4 = [(UIStatusBarSignalStrengthItemView *)self _signalStrengthBarsImageName];
      v3 = [(UIStatusBarItemView *)self imageWithShadowNamed:v4];
      if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
      {
        v5 = [v3 imageSetWithOrientation:4];

        v3 = v5;
      }
    }
  }

  return v3;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_enableRSSI)
  {
    self->_showRSSI ^= 1u;
    [(UIStatusBarItemView *)self updateContentsAndWidth];
    if (v8 != 0.0)
    {
      v9 = v8;
      v10 = [(UIStatusBarItemView *)self layoutManager];
      [v10 itemView:self sizeChangedBy:v9];
    }
  }

  v11.receiver = self;
  v11.super_class = UIStatusBarSignalStrengthItemView;
  [(UIResponder *)&v11 touchesEnded:v6 withEvent:v7];
}

- (double)extraRightPadding
{
  v3 = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [v3 usesVerticalLayout];

  if (v4)
  {
    [(UIStatusBarItemView *)&v12 extraRightPadding:v10.receiver];
  }

  else
  {
    v6 = [(UIStatusBarItemView *)self layoutManager];
    v7 = [v6 foregroundView];
    v8 = [v7 isShowingBreadcrumb];

    if (v8)
    {
      [(UIStatusBarItemView *)&v11 extraRightPadding:v10.receiver];
    }

    else if (_UIDeviceNativeUserInterfaceIdiom() == 1)
    {
      [(UIStatusBarItemView *)&v10 extraRightPadding:self];
    }

    else
    {
      [(UIStatusBarItemView *)self standardPadding];
      return -floor(v9 * 0.5);
    }
  }

  return result;
}

- (double)extraLeftPadding
{
  v3.receiver = self;
  v3.super_class = UIStatusBarSignalStrengthItemView;
  [(UIStatusBarItemView *)&v3 extraRightPadding];
  return result;
}

- (id)accessibilityHUDRepresentation
{
  if (self->_showFailure)
  {
    v3 = @"CellularFailure";
  }

  else
  {
    v3 = [(UIStatusBarSignalStrengthItemView *)self _signalStrengthBarsImageName];
  }

  v4 = [(UIStatusBarItemView *)self foregroundStyle];
  v5 = [v4 accessibilityHUDImageNamed:v3];

  v6 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v5 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];

  return v6;
}

@end
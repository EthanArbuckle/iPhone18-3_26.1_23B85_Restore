@interface UIStatusBarSignalStrengthItemView
- (BOOL)_updateWithRaw:(int)raw bars:(int)bars enableRSSI:(BOOL)i showFailure:(BOOL)failure useSmallBars:(BOOL)smallBars;
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (double)extraLeftPadding;
- (double)extraRightPadding;
- (id)_signalStrengthBarsImageName;
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation UIStatusBarSignalStrengthItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  rawData = [data rawData];
  v6 = *(rawData + 432);
  v7 = *(rawData + 440);
  if (v7 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = v7;
  }

  v9 = (*(rawData + 2529) >> 1) & 1;
  v10 = *(rawData + 2072) == 6;
  v11 = *(rawData + 5);

  return [(UIStatusBarSignalStrengthItemView *)self _updateWithRaw:v6 bars:v8 enableRSSI:v9 showFailure:v10 useSmallBars:v11];
}

- (BOOL)_updateWithRaw:(int)raw bars:(int)bars enableRSSI:(BOOL)i showFailure:(BOOL)failure useSmallBars:(BOOL)smallBars
{
  smallBarsCopy = smallBars;
  failureCopy = failure;
  if (self->_enableRSSI == i)
  {
    v12 = 0;
  }

  else
  {
    self->_enableRSSI = i;
    v12 = self->_showRSSI != i;
    self->_showRSSI = i;
    [(UIView *)self setUserInteractionEnabled:self->_enableRSSI];
  }

  if (self->_signalStrengthRaw != raw)
  {
    self->_signalStrengthRaw = raw;
    v12 = self->_showRSSI || v12;
  }

  if (self->_signalStrengthBars != bars)
  {
    self->_signalStrengthBars = bars;
    LOBYTE(v12) = !self->_showRSSI || v12;
  }

  if (self->_showFailure != failureCopy)
  {
    self->_showFailure = failureCopy;
    LOBYTE(v12) = 1;
  }

  if (self->_useSmallBars != smallBarsCopy)
  {
    self->_useSmallBars = smallBarsCopy;
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (id)_signalStrengthBarsImageName
{
  signalStrengthBars = self->_signalStrengthBars;
  if ((signalStrengthBars & 0x80000000) != 0)
  {
    signalStrengthBars = @"Bars_NoSim";
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

    signalStrengthBars = [MEMORY[0x1E696AEC0] stringWithFormat:v4, signalStrengthBars];
  }

  return signalStrengthBars;
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
      _stringForRSSI = [(UIStatusBarSignalStrengthItemView *)self _stringForRSSI];
      v3 = [(UIStatusBarItemView *)self imageWithText:_stringForRSSI];
    }

    else
    {
      _stringForRSSI = [(UIStatusBarSignalStrengthItemView *)self _signalStrengthBarsImageName];
      v3 = [(UIStatusBarItemView *)self imageWithShadowNamed:_stringForRSSI];
      if ([(UIStatusBarItemView *)self _shouldReverseLayoutDirection])
      {
        v5 = [v3 imageSetWithOrientation:4];

        v3 = v5;
      }
    }
  }

  return v3;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  if (self->_enableRSSI)
  {
    self->_showRSSI ^= 1u;
    [(UIStatusBarItemView *)self updateContentsAndWidth];
    if (v8 != 0.0)
    {
      v9 = v8;
      layoutManager = [(UIStatusBarItemView *)self layoutManager];
      [layoutManager itemView:self sizeChangedBy:v9];
    }
  }

  v11.receiver = self;
  v11.super_class = UIStatusBarSignalStrengthItemView;
  [(UIResponder *)&v11 touchesEnded:endedCopy withEvent:eventCopy];
}

- (double)extraRightPadding
{
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  usesVerticalLayout = [foregroundStyle usesVerticalLayout];

  if (usesVerticalLayout)
  {
    [(UIStatusBarItemView *)&v12 extraRightPadding:v10.receiver];
  }

  else
  {
    layoutManager = [(UIStatusBarItemView *)self layoutManager];
    foregroundView = [layoutManager foregroundView];
    isShowingBreadcrumb = [foregroundView isShowingBreadcrumb];

    if (isShowingBreadcrumb)
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
    _signalStrengthBarsImageName = @"CellularFailure";
  }

  else
  {
    _signalStrengthBarsImageName = [(UIStatusBarSignalStrengthItemView *)self _signalStrengthBarsImageName];
  }

  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  v5 = [foregroundStyle accessibilityHUDImageNamed:_signalStrengthBarsImageName];

  v6 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v5 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];

  return v6;
}

@end
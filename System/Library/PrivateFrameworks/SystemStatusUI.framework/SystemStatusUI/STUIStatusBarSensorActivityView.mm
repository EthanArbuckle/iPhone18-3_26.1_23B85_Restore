@interface STUIStatusBarSensorActivityView
- (BOOL)configurePortalViewIfNeededForTargetScreen:(id)screen;
- (CGSize)intrinsicContentSize;
- (void)applyStyleAttributes:(id)attributes;
- (void)configureSensorViewWithoutPortalIfNeededForTargetScreen:(id)screen;
- (void)layoutSubviews;
@end

@implementation STUIStatusBarSensorActivityView

- (void)configureSensorViewWithoutPortalIfNeededForTargetScreen:(id)screen
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = [STUIStatusBar sensorActivityIndicatorForScreen:screen];
  sensorActivityView = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
  v6 = sensorActivityView;
  if (v4)
  {

    if (v6 != v4)
    {
      sensorActivityView2 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
      [sensorActivityView2 removeFromSuperview];
    }

    [(STUIStatusBarSensorActivityView *)self setSensorActivityView:v4];
    sensorActivityView3 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
    [sensorActivityView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(STUIStatusBarSensorActivityView *)self addSubview:v4];
    v18 = MEMORY[0x277CCAAD0];
    sensorActivityView4 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
    centerXAnchor = [sensorActivityView4 centerXAnchor];
    centerXAnchor2 = [(STUIStatusBarSensorActivityView *)self centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v20[0] = v11;
    sensorActivityView5 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
    centerYAnchor = [sensorActivityView5 centerYAnchor];
    centerYAnchor2 = [(STUIStatusBarSensorActivityView *)self centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v18 activateConstraints:v16];

    [(STUIStatusBarSensorActivityView *)self invalidateIntrinsicContentSize];
  }

  else
  {

    if (v6)
    {
      sensorActivityView6 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
      [sensorActivityView6 removeFromSuperview];

      [(STUIStatusBarSensorActivityView *)self setSensorActivityView:0];
    }
  }
}

- (void)layoutSubviews
{
  _screen = [(STUIStatusBarSensorActivityView *)self _screen];
  v4 = _screen;
  if (self->_portalView)
  {
    v5 = _screen == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v15 = _screen;
    v6 = [STUIStatusBar sensorActivityIndicatorForScreen:_screen];
    v7 = v6;
    if (v6)
    {
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      if (self->_iconSize)
      {
        [STUIStatusBarBatteryView _statusBarIntrinsicContentSizeForIconSize:?];
      }

      UIRoundToViewScale();
      v13 = v12;
      UIRoundToViewScale();
      [(_UIPortalView *)self->_portalView setFrame:v13, v14, v9, v11];
    }

    v4 = v15;
  }

  MEMORY[0x2821F96F8](_screen, v4);
}

- (BOOL)configurePortalViewIfNeededForTargetScreen:(id)screen
{
  v4 = [STUIStatusBar sensorActivityIndicatorForScreen:screen];
  portalView = self->_portalView;
  if (v4)
  {
    if (portalView)
    {
      [(_UIPortalView *)portalView setSourceView:v4];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D76180]) initWithSourceView:v4];
      v8 = self->_portalView;
      self->_portalView = v7;

      [(_UIPortalView *)self->_portalView setName:@"STUIStatusBarSensorActivityView.portal"];
      [(_UIPortalView *)self->_portalView setMatchesAlpha:0];
      [(STUIStatusBarSensorActivityView *)self addSubview:self->_portalView];
    }

    [(STUIStatusBarSensorActivityView *)self setNeedsLayout];
  }

  else if (portalView)
  {
    [(_UIPortalView *)portalView removeFromSuperview];
    v6 = self->_portalView;
    self->_portalView = 0;

    [(STUIStatusBarSensorActivityView *)self invalidateIntrinsicContentSize];
  }

  return v4 != 0;
}

- (void)applyStyleAttributes:(id)attributes
{
  iconSize = [attributes iconSize];
  iconSize = self->_iconSize;
  [(STUIStatusBarSensorActivityView *)self setIconSize:iconSize];
  if (self->_portalView)
  {
    v6 = iconSize == iconSize;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    [(STUIStatusBarSensorActivityView *)self invalidateIntrinsicContentSize];

    [(STUIStatusBarSensorActivityView *)self setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  if (self->_portalView)
  {
    [STUIStatusBarBatteryView _statusBarIntrinsicContentSizeForIconSize:self->_iconSize];
    v3 = 7.0;
  }

  else
  {
    sensorActivityView = self->_sensorActivityView;
    if (sensorActivityView)
    {
      [(UIView *)sensorActivityView bounds];
      v3 = v5;
      v2 = v6;
    }

    else
    {
      v3 = *MEMORY[0x277CBF3A8];
      v2 = *(MEMORY[0x277CBF3A8] + 8);
    }
  }

  result.height = v2;
  result.width = v3;
  return result;
}

@end
@interface STUIStatusBarSensorActivityView
- (BOOL)configurePortalViewIfNeededForTargetScreen:(id)a3;
- (CGSize)intrinsicContentSize;
- (void)applyStyleAttributes:(id)a3;
- (void)configureSensorViewWithoutPortalIfNeededForTargetScreen:(id)a3;
- (void)layoutSubviews;
@end

@implementation STUIStatusBarSensorActivityView

- (void)configureSensorViewWithoutPortalIfNeededForTargetScreen:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = [STUIStatusBar sensorActivityIndicatorForScreen:a3];
  v5 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
  v6 = v5;
  if (v4)
  {

    if (v6 != v4)
    {
      v7 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
      [v7 removeFromSuperview];
    }

    [(STUIStatusBarSensorActivityView *)self setSensorActivityView:v4];
    v8 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(STUIStatusBarSensorActivityView *)self addSubview:v4];
    v18 = MEMORY[0x277CCAAD0];
    v19 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
    v9 = [v19 centerXAnchor];
    v10 = [(STUIStatusBarSensorActivityView *)self centerXAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v20[0] = v11;
    v12 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
    v13 = [v12 centerYAnchor];
    v14 = [(STUIStatusBarSensorActivityView *)self centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v18 activateConstraints:v16];

    [(STUIStatusBarSensorActivityView *)self invalidateIntrinsicContentSize];
  }

  else
  {

    if (v6)
    {
      v17 = [(STUIStatusBarSensorActivityView *)self sensorActivityView];
      [v17 removeFromSuperview];

      [(STUIStatusBarSensorActivityView *)self setSensorActivityView:0];
    }
  }
}

- (void)layoutSubviews
{
  v3 = [(STUIStatusBarSensorActivityView *)self _screen];
  v4 = v3;
  if (self->_portalView)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v15 = v3;
    v6 = [STUIStatusBar sensorActivityIndicatorForScreen:v3];
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

  MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)configurePortalViewIfNeededForTargetScreen:(id)a3
{
  v4 = [STUIStatusBar sensorActivityIndicatorForScreen:a3];
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

- (void)applyStyleAttributes:(id)a3
{
  v4 = [a3 iconSize];
  iconSize = self->_iconSize;
  [(STUIStatusBarSensorActivityView *)self setIconSize:v4];
  if (self->_portalView)
  {
    v6 = iconSize == v4;
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
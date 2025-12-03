@interface _UIStatusBarSensorActivityView
- (CGSize)intrinsicContentSize;
- (void)applyStyleAttributes:(id)attributes;
- (void)configurePortalViewIfNeededForTargetScreen:(id)screen;
- (void)configureSensorViewWithoutPortalIfNeededForTargetScreen:(id)screen;
- (void)layoutSubviews;
@end

@implementation _UIStatusBarSensorActivityView

- (void)configureSensorViewWithoutPortalIfNeededForTargetScreen:(id)screen
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = [_UIStatusBar sensorActivityIndicatorForScreen:screen];
  sensorActivityView = [(_UIStatusBarSensorActivityView *)self sensorActivityView];
  v6 = sensorActivityView;
  if (v4)
  {

    if (v6 != v4)
    {
      sensorActivityView2 = [(_UIStatusBarSensorActivityView *)self sensorActivityView];
      [sensorActivityView2 removeFromSuperview];
    }

    [(_UIStatusBarSensorActivityView *)self setSensorActivityView:v4];
    sensorActivityView3 = [(_UIStatusBarSensorActivityView *)self sensorActivityView];
    [sensorActivityView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(UIView *)self addSubview:v4];
    v18 = MEMORY[0x1E69977A0];
    sensorActivityView4 = [(_UIStatusBarSensorActivityView *)self sensorActivityView];
    centerXAnchor = [sensorActivityView4 centerXAnchor];
    centerXAnchor2 = [(UIView *)self centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v20[0] = v11;
    sensorActivityView5 = [(_UIStatusBarSensorActivityView *)self sensorActivityView];
    centerYAnchor = [sensorActivityView5 centerYAnchor];
    centerYAnchor2 = [(UIView *)self centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v20[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    [v18 activateConstraints:v16];

    [(UIView *)self invalidateIntrinsicContentSize];
  }

  else
  {

    if (v6)
    {
      sensorActivityView6 = [(_UIStatusBarSensorActivityView *)self sensorActivityView];
      [sensorActivityView6 removeFromSuperview];

      [(_UIStatusBarSensorActivityView *)self setSensorActivityView:0];
    }
  }
}

- (void)layoutSubviews
{
  _screen = [(UIView *)self _screen];
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
    v6 = [_UIStatusBar sensorActivityIndicatorForScreen:_screen];
    v7 = v6;
    if (v6)
    {
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      if (self->_iconSize)
      {
        [_UIStatusBarBatteryView _statusBarIntrinsicContentSizeForIconSize:?];
      }

      UIRoundToViewScale(self);
      v13 = v12;
      UIRoundToViewScale(self);
      [(_UIPortalView *)self->_portalView setFrame:v13, v14, v9, v11];
    }

    v4 = v15;
  }
}

- (void)configurePortalViewIfNeededForTargetScreen:(id)screen
{
  v4 = [_UIStatusBar sensorActivityIndicatorForScreen:screen];
  portalView = self->_portalView;
  if (v4)
  {
    v9 = v4;
    if (portalView)
    {
      [(_UIPortalView *)portalView setSourceView:v4];
    }

    else
    {
      v7 = [[_UIPortalView alloc] initWithSourceView:v4];
      v8 = self->_portalView;
      self->_portalView = v7;

      [(_UIPortalView *)self->_portalView setName:@"_UIStatusBarSensorActivityView.portal"];
      [(_UIPortalView *)self->_portalView setMatchesAlpha:0];
      [(UIView *)self addSubview:self->_portalView];
    }

    [(UIView *)self setNeedsLayout];
  }

  else
  {
    if (!portalView)
    {
      goto LABEL_9;
    }

    v9 = 0;
    [(UIView *)portalView removeFromSuperview];
    v6 = self->_portalView;
    self->_portalView = 0;

    [(UIView *)self invalidateIntrinsicContentSize];
  }

  v4 = v9;
LABEL_9:
}

- (void)applyStyleAttributes:(id)attributes
{
  iconSize = [attributes iconSize];
  iconSize = self->_iconSize;
  [(_UIStatusBarSensorActivityView *)self setIconSize:iconSize];
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
    [(UIView *)self invalidateIntrinsicContentSize];

    [(UIView *)self setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  if (self->_portalView)
  {
    [_UIStatusBarBatteryView _statusBarIntrinsicContentSizeForIconSize:self->_iconSize];
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
      v3 = *MEMORY[0x1E695F060];
      v2 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  result.height = v2;
  result.width = v3;
  return result;
}

@end
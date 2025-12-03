@interface _UIStatusBarSensorActivityItem
- (_UIStatusBarSensorActivityView)sensorActivityIndicator;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_create_sensorActivityIndicator;
@end

@implementation _UIStatusBarSensorActivityItem

- (_UIStatusBarSensorActivityView)sensorActivityIndicator
{
  sensorActivityIndicator = self->_sensorActivityIndicator;
  if (!sensorActivityIndicator)
  {
    [(_UIStatusBarSensorActivityItem *)self _create_sensorActivityIndicator];
    sensorActivityIndicator = self->_sensorActivityIndicator;
  }

  return sensorActivityIndicator;
}

- (void)_create_sensorActivityIndicator
{
  v3 = [_UIStatusBarSensorActivityView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  sensorActivityIndicator = self->_sensorActivityIndicator;
  self->_sensorActivityIndicator = v4;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v18.receiver = self;
  v18.super_class = _UIStatusBarSensorActivityItem;
  updateCopy = update;
  v7 = [(_UIStatusBarItem *)&v18 applyUpdate:updateCopy toDisplayItem:item];
  dataChanged = [updateCopy dataChanged];

  if (dataChanged)
  {
    statusBar = [(_UIStatusBarItem *)self statusBar];
    visualProvider = [statusBar visualProvider];
    if (objc_opt_respondsToSelector())
    {
      statusBar2 = [(_UIStatusBarItem *)self statusBar];
      visualProvider2 = [statusBar2 visualProvider];
      showSensorActivityIndicatorWithoutPortalView = [visualProvider2 showSensorActivityIndicatorWithoutPortalView];

      if (showSensorActivityIndicatorWithoutPortalView)
      {
        sensorActivityIndicator = [(_UIStatusBarSensorActivityItem *)self sensorActivityIndicator];
        statusBar3 = [(_UIStatusBarItem *)self statusBar];
        _effectiveTargetScreen = [statusBar3 _effectiveTargetScreen];
        [sensorActivityIndicator configureSensorViewWithoutPortalIfNeededForTargetScreen:_effectiveTargetScreen];
LABEL_7:

        goto LABEL_8;
      }
    }

    else
    {
    }

    sensorActivityIndicator = [(_UIStatusBarSensorActivityItem *)self sensorActivityIndicator];
    statusBar3 = [(_UIStatusBarItem *)self statusBar];
    _effectiveTargetScreen = [statusBar3 _effectiveTargetScreen];
    [sensorActivityIndicator configurePortalViewIfNeededForTargetScreen:_effectiveTargetScreen];
    goto LABEL_7;
  }

LABEL_8:

  return v7;
}

@end
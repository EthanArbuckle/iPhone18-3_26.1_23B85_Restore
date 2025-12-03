@interface STUIStatusBarSensorActivityItem
- (STUIStatusBarSensorActivityView)sensorActivityIndicator;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (void)_create_sensorActivityIndicator;
@end

@implementation STUIStatusBarSensorActivityItem

- (STUIStatusBarSensorActivityView)sensorActivityIndicator
{
  sensorActivityIndicator = self->_sensorActivityIndicator;
  if (!sensorActivityIndicator)
  {
    [(STUIStatusBarSensorActivityItem *)self _create_sensorActivityIndicator];
    sensorActivityIndicator = self->_sensorActivityIndicator;
  }

  return sensorActivityIndicator;
}

- (void)_create_sensorActivityIndicator
{
  v3 = [STUIStatusBarSensorActivityView alloc];
  v4 = [(STUIStatusBarSensorActivityView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  sensorActivityIndicator = self->_sensorActivityIndicator;
  self->_sensorActivityIndicator = v4;

  MEMORY[0x2821F96F8](v4, sensorActivityIndicator);
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = STUIStatusBarSensorActivityItem;
  updateCopy = update;
  v8 = [(STUIStatusBarItem *)&v17 applyUpdate:updateCopy toDisplayItem:itemCopy];
  dataChanged = [updateCopy dataChanged];

  if (dataChanged)
  {
    statusBar = [(STUIStatusBarItem *)self statusBar];
    _showSensorActivityIndicatorWithoutPortalView = [statusBar _showSensorActivityIndicatorWithoutPortalView];

    sensorActivityIndicator = [(STUIStatusBarSensorActivityItem *)self sensorActivityIndicator];
    statusBar2 = [(STUIStatusBarItem *)self statusBar];
    _effectiveTargetScreen = [statusBar2 _effectiveTargetScreen];
    if (_showSensorActivityIndicatorWithoutPortalView)
    {
      [sensorActivityIndicator configureSensorViewWithoutPortalIfNeededForTargetScreen:_effectiveTargetScreen];
    }

    else
    {
      if ([sensorActivityIndicator configurePortalViewIfNeededForTargetScreen:_effectiveTargetScreen])
      {
        isEnabled = [itemCopy isEnabled];
      }

      else
      {
        isEnabled = 0;
      }

      [itemCopy setEnabled:isEnabled];
    }
  }

  return v8;
}

@end
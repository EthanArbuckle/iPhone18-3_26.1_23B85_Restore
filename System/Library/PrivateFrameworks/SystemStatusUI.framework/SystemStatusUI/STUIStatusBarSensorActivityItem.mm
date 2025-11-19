@interface STUIStatusBarSensorActivityItem
- (STUIStatusBarSensorActivityView)sensorActivityIndicator;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
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

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a4;
  v17.receiver = self;
  v17.super_class = STUIStatusBarSensorActivityItem;
  v7 = a3;
  v8 = [(STUIStatusBarItem *)&v17 applyUpdate:v7 toDisplayItem:v6];
  v9 = [v7 dataChanged];

  if (v9)
  {
    v10 = [(STUIStatusBarItem *)self statusBar];
    v11 = [v10 _showSensorActivityIndicatorWithoutPortalView];

    v12 = [(STUIStatusBarSensorActivityItem *)self sensorActivityIndicator];
    v13 = [(STUIStatusBarItem *)self statusBar];
    v14 = [v13 _effectiveTargetScreen];
    if (v11)
    {
      [v12 configureSensorViewWithoutPortalIfNeededForTargetScreen:v14];
    }

    else
    {
      if ([v12 configurePortalViewIfNeededForTargetScreen:v14])
      {
        v15 = [v6 isEnabled];
      }

      else
      {
        v15 = 0;
      }

      [v6 setEnabled:v15];
    }
  }

  return v8;
}

@end
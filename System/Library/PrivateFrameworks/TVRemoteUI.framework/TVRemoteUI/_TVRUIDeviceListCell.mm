@interface _TVRUIDeviceListCell
- (_TVRUIDeviceListCell)initWithFrame:(CGRect)frame;
- (void)configureCellWithStyleProvider:(id)provider device:(id)device;
@end

@implementation _TVRUIDeviceListCell

- (_TVRUIDeviceListCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIDeviceListCell;
  v3 = [(_TVRUIDeviceListCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIDeviceListCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)configureCellWithStyleProvider:(id)provider device:(id)device
{
  providerCopy = provider;
  deviceCopy = device;
  styleProvider = self->_styleProvider;
  self->_styleProvider = providerCopy;
  v9 = providerCopy;

  device = self->_device;
  self->_device = deviceCopy;

  [(_TVRUIDeviceListCell *)self _updateContentFromCurrentState];
}

@end
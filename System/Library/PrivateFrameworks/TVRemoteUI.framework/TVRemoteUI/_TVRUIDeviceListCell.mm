@interface _TVRUIDeviceListCell
- (_TVRUIDeviceListCell)initWithFrame:(CGRect)a3;
- (void)configureCellWithStyleProvider:(id)a3 device:(id)a4;
@end

@implementation _TVRUIDeviceListCell

- (_TVRUIDeviceListCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIDeviceListCell;
  v3 = [(_TVRUIDeviceListCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIDeviceListCell *)v3 _configureHierarchy];
  }

  return v4;
}

- (void)configureCellWithStyleProvider:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  styleProvider = self->_styleProvider;
  self->_styleProvider = v6;
  v9 = v6;

  device = self->_device;
  self->_device = v7;

  [(_TVRUIDeviceListCell *)self _updateContentFromCurrentState];
}

@end
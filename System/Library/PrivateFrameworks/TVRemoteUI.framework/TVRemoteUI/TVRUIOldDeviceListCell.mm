@interface TVRUIOldDeviceListCell
- (TVRUIOldDeviceListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_applyFilterForDevice:(id)device;
- (void)layoutSubviews;
- (void)setDevice:(id)device;
@end

@implementation TVRUIOldDeviceListCell

- (TVRUIOldDeviceListCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = TVRUIOldDeviceListCell;
  v4 = [(TVRUIOldDeviceListCell *)&v10 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(TVRUIOldDeviceListCell *)v4 setBackgroundColor:clearColor];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(TVRUIOldDeviceListCell *)v4 setTintColor:whiteColor];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = v4->_separator;
    v4->_separator = v7;

    [(TVRUIOldDeviceListCell *)v4 addSubview:v4->_separator];
  }

  return v4;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  if (self->_device != deviceCopy)
  {
    objc_storeStrong(&self->_device, device);
    imageView = [(TVRUIOldDeviceListCell *)self imageView];
    textLabel = [(TVRUIOldDeviceListCell *)self textLabel];
    name = [(TVRUIDevice *)deviceCopy name];
    [textLabel setText:name];

    model = [(TVRUIDevice *)deviceCopy model];
    styleProvider = [(TVRUIOldDeviceListCell *)self styleProvider];
    v10 = [styleProvider iconForDeviceModel:model];

    _imageThatSuppressesAccessibilityHairlineThickening = [v10 _imageThatSuppressesAccessibilityHairlineThickening];
    [imageView setImage:_imageThatSuppressesAccessibilityHairlineThickening];
    [imageView setContentMode:1];
  }

  [(TVRUIOldDeviceListCell *)self _applyFilterForDevice:deviceCopy];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = TVRUIOldDeviceListCell;
  [(TVRUIOldDeviceListCell *)&v20 layoutSubviews];
  textLabel = [(TVRUIOldDeviceListCell *)self textLabel];
  [textLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (self->_showSeparator)
  {
    v21.origin.x = v5;
    v21.origin.y = v7;
    v21.size.width = v9;
    v21.size.height = v11;
    MinX = CGRectGetMinX(v21);
    [(TVRUIOldDeviceListCell *)self bounds];
    v13 = CGRectGetHeight(v22) + -1.0;
    [(TVRUIOldDeviceListCell *)self bounds];
    Width = CGRectGetWidth(v23);
    v24.origin.x = v5;
    v24.origin.y = v7;
    v24.size.width = v9;
    v24.size.height = v11;
    v15 = Width - CGRectGetMinX(v24);
    styleProvider = [(TVRUIOldDeviceListCell *)self styleProvider];
    [styleProvider touchpadInsets];
    v18 = v15 - v17;

    v19 = 1.0;
  }

  else
  {
    MinX = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
  }

  [(UIView *)self->_separator setFrame:MinX, v13, v18, v19];
}

- (void)_applyFilterForDevice:(id)device
{
  deviceCopy = device;
  imageView = [(TVRUIOldDeviceListCell *)self imageView];
  textLabel = [(TVRUIOldDeviceListCell *)self textLabel];
  styleProvider = [(TVRUIOldDeviceListCell *)self styleProvider];
  fontForDeviceListRow = [styleProvider fontForDeviceListRow];
  [textLabel setFont:fontForDeviceListRow];

  separator = self->_separator;
  styleProvider2 = [(TVRUIOldDeviceListCell *)self styleProvider];
  cellSeparatorBackgroundColor = [styleProvider2 cellSeparatorBackgroundColor];
  [(UIView *)separator setBackgroundColor:cellSeparatorBackgroundColor];

  styleProvider3 = [(TVRUIOldDeviceListCell *)self styleProvider];
  cellBackgroundColor = [styleProvider3 cellBackgroundColor];
  [(TVRUIOldDeviceListCell *)self setBackgroundColor:cellBackgroundColor];

  LODWORD(styleProvider3) = [deviceCopy isConnected];
  if (styleProvider3)
  {
    [(TVRUIOldDeviceListCell *)self setAccessoryType:3];
    styleProvider4 = [(TVRUIOldDeviceListCell *)self styleProvider];
    colorForConnectedDevice = [styleProvider4 colorForConnectedDevice];
    [textLabel setTextColor:colorForConnectedDevice];

    styleProvider5 = [(TVRUIOldDeviceListCell *)self styleProvider];
    [styleProvider5 colorForConnectedDevice];
  }

  else
  {
    [(TVRUIOldDeviceListCell *)self setAccessoryType:0];
    styleProvider6 = [(TVRUIOldDeviceListCell *)self styleProvider];
    colorForDisconnectedDevice = [styleProvider6 colorForDisconnectedDevice];
    [textLabel setTextColor:colorForDisconnectedDevice];

    styleProvider5 = [(TVRUIOldDeviceListCell *)self styleProvider];
    [styleProvider5 colorForDisconnectedDevice];
  }
  v18 = ;
  [imageView setTintColor:v18];
}

@end
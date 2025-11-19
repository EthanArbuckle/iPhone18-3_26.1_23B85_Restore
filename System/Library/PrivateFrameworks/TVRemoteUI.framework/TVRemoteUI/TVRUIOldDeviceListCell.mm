@interface TVRUIOldDeviceListCell
- (TVRUIOldDeviceListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_applyFilterForDevice:(id)a3;
- (void)layoutSubviews;
- (void)setDevice:(id)a3;
@end

@implementation TVRUIOldDeviceListCell

- (TVRUIOldDeviceListCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = TVRUIOldDeviceListCell;
  v4 = [(TVRUIOldDeviceListCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D75348] clearColor];
    [(TVRUIOldDeviceListCell *)v4 setBackgroundColor:v5];

    v6 = [MEMORY[0x277D75348] whiteColor];
    [(TVRUIOldDeviceListCell *)v4 setTintColor:v6];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = v4->_separator;
    v4->_separator = v7;

    [(TVRUIOldDeviceListCell *)v4 addSubview:v4->_separator];
  }

  return v4;
}

- (void)setDevice:(id)a3
{
  v12 = a3;
  if (self->_device != v12)
  {
    objc_storeStrong(&self->_device, a3);
    v5 = [(TVRUIOldDeviceListCell *)self imageView];
    v6 = [(TVRUIOldDeviceListCell *)self textLabel];
    v7 = [(TVRUIDevice *)v12 name];
    [v6 setText:v7];

    v8 = [(TVRUIDevice *)v12 model];
    v9 = [(TVRUIOldDeviceListCell *)self styleProvider];
    v10 = [v9 iconForDeviceModel:v8];

    v11 = [v10 _imageThatSuppressesAccessibilityHairlineThickening];
    [v5 setImage:v11];
    [v5 setContentMode:1];
  }

  [(TVRUIOldDeviceListCell *)self _applyFilterForDevice:v12];
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = TVRUIOldDeviceListCell;
  [(TVRUIOldDeviceListCell *)&v20 layoutSubviews];
  v3 = [(TVRUIOldDeviceListCell *)self textLabel];
  [v3 frame];
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
    v16 = [(TVRUIOldDeviceListCell *)self styleProvider];
    [v16 touchpadInsets];
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

- (void)_applyFilterForDevice:(id)a3
{
  v4 = a3;
  v19 = [(TVRUIOldDeviceListCell *)self imageView];
  v5 = [(TVRUIOldDeviceListCell *)self textLabel];
  v6 = [(TVRUIOldDeviceListCell *)self styleProvider];
  v7 = [v6 fontForDeviceListRow];
  [v5 setFont:v7];

  separator = self->_separator;
  v9 = [(TVRUIOldDeviceListCell *)self styleProvider];
  v10 = [v9 cellSeparatorBackgroundColor];
  [(UIView *)separator setBackgroundColor:v10];

  v11 = [(TVRUIOldDeviceListCell *)self styleProvider];
  v12 = [v11 cellBackgroundColor];
  [(TVRUIOldDeviceListCell *)self setBackgroundColor:v12];

  LODWORD(v11) = [v4 isConnected];
  if (v11)
  {
    [(TVRUIOldDeviceListCell *)self setAccessoryType:3];
    v13 = [(TVRUIOldDeviceListCell *)self styleProvider];
    v14 = [v13 colorForConnectedDevice];
    [v5 setTextColor:v14];

    v15 = [(TVRUIOldDeviceListCell *)self styleProvider];
    [v15 colorForConnectedDevice];
  }

  else
  {
    [(TVRUIOldDeviceListCell *)self setAccessoryType:0];
    v16 = [(TVRUIOldDeviceListCell *)self styleProvider];
    v17 = [v16 colorForDisconnectedDevice];
    [v5 setTextColor:v17];

    v15 = [(TVRUIOldDeviceListCell *)self styleProvider];
    [v15 colorForDisconnectedDevice];
  }
  v18 = ;
  [v19 setTintColor:v18];
}

@end
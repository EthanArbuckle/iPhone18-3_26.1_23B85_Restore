@interface TSDeviceInfoCell
- (TSDeviceInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation TSDeviceInfoCell

- (TSDeviceInfoCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v9.receiver = self;
  v9.super_class = TSDeviceInfoCell;
  v4 = [(TSDeviceInfoCell *)&v9 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(TSDeviceInfoCell *)v4 contentView];
    v7 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v6 setBackgroundColor:v7];
  }

  return v5;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = TSDeviceInfoCell;
  [(TSDeviceInfoCell *)&v16 layoutSubviews];
  v3 = [(TSDeviceInfoCell *)self contentView];
  [v3 bounds];
  v5 = v4 * 0.5;

  v6 = [(TSDeviceInfoCell *)self contentView];
  [v6 bounds];
  v8 = v7 * 0.5;

  v9 = [(TSDeviceInfoCell *)self imageView];
  [v9 frame];
  v11 = v10;

  v12 = [(TSDeviceInfoCell *)self imageView];
  [v12 frame];
  v14 = v13;

  v15 = [(TSDeviceInfoCell *)self imageView];
  [v15 setFrame:{round(v5 - v11 * 0.5), round(v8 - v14 * 0.5), v11, v14}];
}

@end
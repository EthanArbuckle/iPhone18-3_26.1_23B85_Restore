@interface TSDeviceInfoCell
- (TSDeviceInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation TSDeviceInfoCell

- (TSDeviceInfoCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = TSDeviceInfoCell;
  v4 = [(TSDeviceInfoCell *)&v9 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(TSDeviceInfoCell *)v4 contentView];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [contentView setBackgroundColor:systemBackgroundColor];
  }

  return v5;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = TSDeviceInfoCell;
  [(TSDeviceInfoCell *)&v16 layoutSubviews];
  contentView = [(TSDeviceInfoCell *)self contentView];
  [contentView bounds];
  v5 = v4 * 0.5;

  contentView2 = [(TSDeviceInfoCell *)self contentView];
  [contentView2 bounds];
  v8 = v7 * 0.5;

  imageView = [(TSDeviceInfoCell *)self imageView];
  [imageView frame];
  v11 = v10;

  imageView2 = [(TSDeviceInfoCell *)self imageView];
  [imageView2 frame];
  v14 = v13;

  imageView3 = [(TSDeviceInfoCell *)self imageView];
  [imageView3 setFrame:{round(v5 - v11 * 0.5), round(v8 - v14 * 0.5), v11, v14}];
}

@end
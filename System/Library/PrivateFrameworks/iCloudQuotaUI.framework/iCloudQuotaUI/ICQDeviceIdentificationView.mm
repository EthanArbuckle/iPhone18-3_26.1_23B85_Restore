@interface ICQDeviceIdentificationView
+ (void)initialize;
- (ICQDeviceIdentificationView)initWithFrame:(CGRect)frame deviceName:(id)name deviceIdentifier:(id)identifier imageURL:(id)l isCurrentDevice:(BOOL)device;
- (void)layoutSubviews;
- (void)loadImageForDeviceIdentifier:(id)identifier URL:(id)l;
- (void)setDeviceImage:(id)image;
- (void)setFrame:(CGRect)frame;
- (void)sizeToFit;
@end

@implementation ICQDeviceIdentificationView

+ (void)initialize
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  v4 = 20.0;
  if (sf_isiPad)
  {
    v4 = 25.0;
  }

  v5 = 3.0;
  if (sf_isiPad)
  {
    v5 = 10.0;
  }

  kTopMargin = *&v4;
  kBottomMargin = 0x4014000000000000;
  kImageTextPadding = *&v5;
}

- (ICQDeviceIdentificationView)initWithFrame:(CGRect)frame deviceName:(id)name deviceIdentifier:(id)identifier imageURL:(id)l isCurrentDevice:(BOOL)device
{
  deviceCopy = device;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  nameCopy = name;
  identifierCopy = identifier;
  lCopy = l;
  v43.receiver = self;
  v43.super_class = ICQDeviceIdentificationView;
  height = [(ICQDeviceIdentificationView *)&v43 initWithFrame:x, y, width, height];
  if (height)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(ICQDeviceIdentificationView *)height setBackgroundColor:clearColor];

    *&height->_topMargin = kTopMargin;
    *&height->_bottomMargin = kBottomMargin;
    height->_leftExtraMargin = 0.0;
    *&height->_imageTextPadding = kImageTextPadding;
    v20 = objc_alloc_init(MEMORY[0x277D755E8]);
    deviceImageView = height->_deviceImageView;
    height->_deviceImageView = v20;

    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    deviceNameLabel = height->_deviceNameLabel;
    height->_deviceNameLabel = v22;

    v24 = height->_deviceNameLabel;
    v25 = [MEMORY[0x277D74300] boldSystemFontOfSize:18.0];
    [(UILabel *)v24 setFont:v25];

    [(UILabel *)height->_deviceNameLabel setText:nameCopy];
    v26 = height->_deviceNameLabel;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v26 setTextColor:labelColor];

    v28 = height->_deviceNameLabel;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v28 setBackgroundColor:clearColor2];

    [(UILabel *)height->_deviceNameLabel setLineBreakMode:4];
    [(UILabel *)height->_deviceNameLabel setNumberOfLines:2];
    [(ICQDeviceIdentificationView *)height addSubview:height->_deviceNameLabel];
    if (deviceCopy)
    {
      v30 = objc_alloc_init(MEMORY[0x277D756B8]);
      deviceModelLabel = height->_deviceModelLabel;
      height->_deviceModelLabel = v30;

      v32 = height->_deviceModelLabel;
      v33 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
      [(UILabel *)v32 setFont:v33];

      v34 = height->_deviceModelLabel;
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v36 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"THIS_DEVICE"];
      v37 = [v35 localizedStringForKey:v36 value:&stru_28844FC60 table:@"Backup"];
      [(UILabel *)v34 setText:v37];

      v38 = height->_deviceModelLabel;
      labelColor2 = [MEMORY[0x277D75348] labelColor];
      [(UILabel *)v38 setTextColor:labelColor2];

      v40 = height->_deviceModelLabel;
      clearColor3 = [MEMORY[0x277D75348] clearColor];
      [(UILabel *)v40 setBackgroundColor:clearColor3];

      [(ICQDeviceIdentificationView *)height addSubview:height->_deviceModelLabel];
    }

    [(ICQDeviceIdentificationView *)height loadImageForDeviceIdentifier:identifierCopy URL:lCopy];
    [(ICQDeviceIdentificationView *)height addSubview:height->_deviceImageView];
  }

  return height;
}

- (void)sizeToFit
{
  [(ICQDeviceIdentificationView *)self bounds];

  [(ICQDeviceIdentificationView *)self setBounds:?];
}

- (void)setFrame:(CGRect)frame
{
  if (frame.origin.x == 0.0)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = ICQDeviceIdentificationView;
    [(ICQDeviceIdentificationView *)&v5 setFrame:?];
  }
}

- (void)loadImageForDeviceIdentifier:(id)identifier URL:(id)l
{
  lCopy = l;
  lowercaseString = [identifier lowercaseString];
  if (lowercaseString)
  {
    v8 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v9 = [v8 objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v12 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v13 = bundleIdentifier;
  }

  else
  {
    v13 = &stru_28844FC60;
  }

  v14 = [v9 stringByAppendingPathComponent:v13];

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"deviceImage_%@.png", lowercaseString];
  v16 = [v14 stringByAppendingPathComponent:v15];

  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ICQDeviceIdentificationView_loadImageForDeviceIdentifier_URL___block_invoke;
  block[3] = &unk_27A65BFD0;
  v22 = v16;
  v23 = lCopy;
  selfCopy = self;
  v25 = v14;
  v18 = v14;
  v19 = lCopy;
  v20 = v16;
  dispatch_async(v17, block);
}

void __64__ICQDeviceIdentificationView_loadImageForDeviceIdentifier_URL___block_invoke(void *a1)
{
  if (a1[4] && ([MEMORY[0x277CBEA90] dataWithContentsOfFile:?], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a1[5]];
    v4 = 1;
  }

  v5 = [MEMORY[0x277D755B8] imageWithData:v3];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __64__ICQDeviceIdentificationView_loadImageForDeviceIdentifier_URL___block_invoke_2;
  v11 = &unk_27A65A708;
  v12 = a1[6];
  v6 = v5;
  v13 = v6;
  dispatch_async(MEMORY[0x277D85CD0], &v8);
  if (v4)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
    [v7 createDirectoryAtPath:a1[7] withIntermediateDirectories:1 attributes:0 error:{0, v8, v9, v10, v11, v12}];
    [v3 writeToFile:a1[4] atomically:0];
  }
}

- (void)setDeviceImage:(id)image
{
  [(UIImageView *)self->_deviceImageView setImage:image];

  [(ICQDeviceIdentificationView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  PSTableViewSideInset();
  v4 = v3;
  if ([MEMORY[0x277D7F3E0] isSolariumFeatureFlagEnabled])
  {
    superview = [(ICQDeviceIdentificationView *)self superview];
    [superview layoutMargins];
    v4 = v6;

    self->_leftExtraMargin = 0.0;
  }

  [(ICQDeviceIdentificationView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  _shouldReverseLayoutDirection = [(ICQDeviceIdentificationView *)self _shouldReverseLayoutDirection];
  v16 = v4 + self->_leftExtraMargin;
  rect = v10;
  if (_shouldReverseLayoutDirection)
  {
    v43.origin.x = v8;
    v43.origin.y = v10;
    v43.size.width = v12;
    v43.size.height = v14;
    v16 = CGRectGetWidth(v43) + -60.0 - v16 - self->_leftExtraMargin;
  }

  [(UIImageView *)self->_deviceImageView setFrame:v16, self->_topMargin, 60.0, 60.0];
  v17 = *(MEMORY[0x277CBF3A0] + 8);
  v18 = v4 + self->_leftExtraMargin + 60.0 + self->_imageTextPadding;
  v19 = v12 - v18;
  v39 = v8;
  if (_shouldReverseLayoutDirection)
  {
    v44.origin.x = v8;
    v44.origin.y = v10;
    v44.size.width = v12;
    v44.size.height = v14;
    Width = CGRectGetWidth(v44);
    v45.origin.x = v18;
    v45.origin.y = v17;
    v45.size.width = v12 - v18;
    v45.size.height = 1.79769313e308;
    v21 = Width - CGRectGetWidth(v45);
    v46.origin.x = v18;
    v46.origin.y = v17;
    v46.size.width = v12 - v18;
    v46.size.height = 1.79769313e308;
    v18 = v21 - CGRectGetMinX(v46);
  }

  v47.origin.x = v18;
  v47.origin.y = v17;
  v47.size.width = v19;
  v47.size.height = 1.79769313e308;
  v22 = CGRectGetWidth(v47);
  [(UILabel *)self->_deviceNameLabel sizeThatFits:v19, 1.79769313e308];
  v24 = v23;
  v26 = v25;
  if (_shouldReverseLayoutDirection)
  {
    v48.origin.x = v18;
    v48.origin.y = v17;
    v48.size.width = v24;
    v48.size.height = v26;
    v18 = v18 + v22 - CGRectGetWidth(v48);
  }

  deviceModelLabel = self->_deviceModelLabel;
  v28 = v26;
  if (deviceModelLabel)
  {
    [(UILabel *)deviceModelLabel sizeToFit];
    [(UILabel *)self->_deviceModelLabel bounds];
    v28 = v26 + v29;
  }

  v30 = self->_topMargin + (60.0 - v28) * 0.5;
  v31 = floorf(v30);
  [(UILabel *)self->_deviceNameLabel setFrame:v18, v31, v24, v26, *&v39];
  v32 = self->_deviceModelLabel;
  if (v32)
  {
    [(UILabel *)v32 bounds];
    v34 = v33;
    v36 = v35;
    v37 = self->_imageTextPadding + v4 + self->_leftExtraMargin + 60.0;
    if (_shouldReverseLayoutDirection)
    {
      v49.origin.x = v40;
      v49.origin.y = rect;
      v49.size.width = v12;
      v49.size.height = v14;
      v37 = CGRectGetWidth(v49) - v34 - v37;
    }

    v38 = self->_deviceModelLabel;

    [(UILabel *)v38 setFrame:v37, v26 + v31, v34, v36];
  }
}

@end
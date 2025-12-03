@interface _TVRUIAppInfoCell
- (_TVRUIAppInfoCell)initWithFrame:(CGRect)frame;
- (_TVRUIAppLaunchDelegate)delegate;
- (void)configureHierarchy;
- (void)prepareForReuse;
- (void)setAppInfo:(id)info;
@end

@implementation _TVRUIAppInfoCell

- (_TVRUIAppInfoCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _TVRUIAppInfoCell;
  v3 = [(_TVRUIAppInfoCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVRUIAppInfoCell *)v3 configureHierarchy];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _TVRUIAppInfoCell;
  [(_TVRUIAppInfoCell *)&v3 prepareForReuse];
  [(_TVRUIAppInfoCell *)self setAppInfo:0];
}

- (void)setAppInfo:(id)info
{
  objc_storeStrong(&self->_appInfo, info);
  infoCopy = info;
  v6 = MEMORY[0x277D755B8];
  imageData = [infoCopy imageData];
  v7 = [v6 imageWithData:imageData];

  imageView = [(_TVRUIAppInfoCell *)self imageView];
  [imageView setImage:v7];
}

- (void)configureHierarchy
{
  v18[4] = *MEMORY[0x277D85DE8];
  contentView = [(_TVRUIAppInfoCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v3 setContentMode:2];
  [v3 _setContinuousCornerRadius:12.0];
  [v3 setClipsToBounds:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setUserInteractionEnabled:1];
  [contentView addSubview:v3];
  topAnchor = [v3 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v18[0] = v14;
  leadingAnchor = [v3 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v4 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v18[1] = v4;
  trailingAnchor = [v3 trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v7 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v18[2] = v7;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v18[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v11];
  [(_TVRUIAppInfoCell *)self setImageView:v3];
}

- (_TVRUIAppLaunchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface _TVRUIAppInfoCell
- (_TVRUIAppInfoCell)initWithFrame:(CGRect)a3;
- (_TVRUIAppLaunchDelegate)delegate;
- (void)configureHierarchy;
- (void)prepareForReuse;
- (void)setAppInfo:(id)a3;
@end

@implementation _TVRUIAppInfoCell

- (_TVRUIAppInfoCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _TVRUIAppInfoCell;
  v3 = [(_TVRUIAppInfoCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setAppInfo:(id)a3
{
  objc_storeStrong(&self->_appInfo, a3);
  v5 = a3;
  v6 = MEMORY[0x277D755B8];
  v9 = [v5 imageData];
  v7 = [v6 imageWithData:v9];

  v8 = [(_TVRUIAppInfoCell *)self imageView];
  [v8 setImage:v7];
}

- (void)configureHierarchy
{
  v18[4] = *MEMORY[0x277D85DE8];
  v2 = [(_TVRUIAppInfoCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  [v3 setContentMode:2];
  [v3 _setContinuousCornerRadius:12.0];
  [v3 setClipsToBounds:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setUserInteractionEnabled:1];
  [v2 addSubview:v3];
  v16 = [v3 topAnchor];
  v15 = [v2 topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v18[0] = v14;
  v13 = [v3 leadingAnchor];
  v12 = [v2 leadingAnchor];
  v4 = [v13 constraintEqualToAnchor:v12];
  v18[1] = v4;
  v5 = [v3 trailingAnchor];
  v6 = [v2 trailingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v18[2] = v7;
  v8 = [v3 bottomAnchor];
  v9 = [v2 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
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
@interface DBSNativeDisplayIconView
- (DBSNativeDisplayIconView)initWithFrame:(CGRect)frame displayName:(id)name;
- (void)setIsCurrentDisplayLocation:(BOOL)location;
@end

@implementation DBSNativeDisplayIconView

- (DBSNativeDisplayIconView)initWithFrame:(CGRect)frame displayName:(id)name
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  nameCopy = name;
  v31.receiver = self;
  v31.super_class = DBSNativeDisplayIconView;
  height = [(DBSNativeDisplayIconView *)&v31 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(DBSNativeDisplayIconView *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = objc_alloc_init(MEMORY[0x277D755E8]);
    [(DBSNativeDisplayIconView *)v11 addSubview:v12];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = MEMORY[0x277CCAAD0];
    v14 = _NSDictionaryOfVariableBindings(&cfstr_Imageview.isa, v12, 0);
    v15 = [v13 constraintsWithVisualFormat:@"H:|[imageView]|" options:0 metrics:0 views:v14];
    [v13 activateConstraints:v15];

    v16 = MEMORY[0x277CCAAD0];
    v17 = _NSDictionaryOfVariableBindings(&cfstr_Imageview.isa, v12, 0);
    v18 = [v16 constraintsWithVisualFormat:@"V:|[imageView]|" options:0 metrics:0 views:v17];
    [v16 activateConstraints:v18];

    [v12 setContentMode:2];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [v12 setTintColor:systemBackgroundColor];

    [(DBSNativeDisplayIconView *)v11 setImageView:v12];
    imageView = [(DBSNativeDisplayIconView *)v11 imageView];
    [imageView setHidden:1];

    v21 = [DBSDisplayNameLabel alloc];
    v22 = [(DBSDisplayNameLabel *)v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(DBSDisplayNameLabel *)v22 setText:nameCopy];
    [(DBSNativeDisplayIconView *)v11 addSubview:v22];
    [(DBSDisplayNameLabel *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [(DBSDisplayNameLabel *)v22 centerXAnchor];
    centerXAnchor2 = [(DBSNativeDisplayIconView *)v11 centerXAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v25 setActive:1];

    centerYAnchor = [(DBSDisplayNameLabel *)v22 centerYAnchor];
    centerYAnchor2 = [(DBSNativeDisplayIconView *)v11 centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v28 setActive:1];

    [(DBSNativeDisplayIconView *)v11 setNameField:v22];
    nameField = [(DBSNativeDisplayIconView *)v11 nameField];
    [nameField setHidden:1];
  }

  return v11;
}

- (void)setIsCurrentDisplayLocation:(BOOL)location
{
  locationCopy = location;
  v5 = MEMORY[0x277D75348];
  v6 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  if (locationCopy)
  {
    v7 = @"CurrentNativeDisplayIconBackground";
  }

  else
  {
    v7 = @"NativeDisplayIconBackground";
  }

  v8 = [v5 colorNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];
  [(DBSNativeDisplayIconView *)self setBackgroundColor:v8];

  nameField = [(DBSNativeDisplayIconView *)self nameField];
  [nameField setHidden:!locationCopy];

  imageView = [(DBSNativeDisplayIconView *)self imageView];
  [imageView setHidden:!locationCopy];

  layer = [(DBSNativeDisplayIconView *)self layer];
  [layer setMasksToBounds:1];

  layer2 = [(DBSNativeDisplayIconView *)self layer];
  [layer2 setCornerRadius:5.0];

  layer3 = [(DBSNativeDisplayIconView *)self layer];
  [layer3 setBorderWidth:1.0];

  v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
  v14 = v17;
  cGColor = [v17 CGColor];
  layer4 = [(DBSNativeDisplayIconView *)self layer];
  [layer4 setBorderColor:cGColor];
}

@end
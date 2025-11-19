@interface DBSNativeDisplayIconView
- (DBSNativeDisplayIconView)initWithFrame:(CGRect)a3 displayName:(id)a4;
- (void)setIsCurrentDisplayLocation:(BOOL)a3;
@end

@implementation DBSNativeDisplayIconView

- (DBSNativeDisplayIconView)initWithFrame:(CGRect)a3 displayName:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v31.receiver = self;
  v31.super_class = DBSNativeDisplayIconView;
  v10 = [(DBSNativeDisplayIconView *)&v31 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(DBSNativeDisplayIconView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
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
    v19 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v12 setTintColor:v19];

    [(DBSNativeDisplayIconView *)v11 setImageView:v12];
    v20 = [(DBSNativeDisplayIconView *)v11 imageView];
    [v20 setHidden:1];

    v21 = [DBSDisplayNameLabel alloc];
    v22 = [(DBSDisplayNameLabel *)v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(DBSDisplayNameLabel *)v22 setText:v9];
    [(DBSNativeDisplayIconView *)v11 addSubview:v22];
    [(DBSDisplayNameLabel *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(DBSDisplayNameLabel *)v22 centerXAnchor];
    v24 = [(DBSNativeDisplayIconView *)v11 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [(DBSDisplayNameLabel *)v22 centerYAnchor];
    v27 = [(DBSNativeDisplayIconView *)v11 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    [(DBSNativeDisplayIconView *)v11 setNameField:v22];
    v29 = [(DBSNativeDisplayIconView *)v11 nameField];
    [v29 setHidden:1];
  }

  return v11;
}

- (void)setIsCurrentDisplayLocation:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277D75348];
  v6 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  if (v3)
  {
    v7 = @"CurrentNativeDisplayIconBackground";
  }

  else
  {
    v7 = @"NativeDisplayIconBackground";
  }

  v8 = [v5 colorNamed:v7 inBundle:v6 compatibleWithTraitCollection:0];
  [(DBSNativeDisplayIconView *)self setBackgroundColor:v8];

  v9 = [(DBSNativeDisplayIconView *)self nameField];
  [v9 setHidden:!v3];

  v10 = [(DBSNativeDisplayIconView *)self imageView];
  [v10 setHidden:!v3];

  v11 = [(DBSNativeDisplayIconView *)self layer];
  [v11 setMasksToBounds:1];

  v12 = [(DBSNativeDisplayIconView *)self layer];
  [v12 setCornerRadius:5.0];

  v13 = [(DBSNativeDisplayIconView *)self layer];
  [v13 setBorderWidth:1.0];

  v17 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.1];
  v14 = v17;
  v15 = [v17 CGColor];
  v16 = [(DBSNativeDisplayIconView *)self layer];
  [v16 setBorderColor:v15];
}

@end
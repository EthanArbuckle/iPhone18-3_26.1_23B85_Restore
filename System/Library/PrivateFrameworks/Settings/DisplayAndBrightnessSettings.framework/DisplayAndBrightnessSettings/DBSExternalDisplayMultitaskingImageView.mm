@interface DBSExternalDisplayMultitaskingImageView
- (DBSExternalDisplayMultitaskingImageView)initWithImageName:(id)a3 height:(double)a4;
- (id)_imageNameWithUserInterfaceStyle;
- (void)_userInterfaceStyleDidChange;
@end

@implementation DBSExternalDisplayMultitaskingImageView

- (DBSExternalDisplayMultitaskingImageView)initWithImageName:(id)a3 height:(double)a4
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36.receiver = self;
  v36.super_class = DBSExternalDisplayMultitaskingImageView;
  v8 = [(DBSExternalDisplayMultitaskingImageView *)&v36 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, a3);
    v10 = MEMORY[0x277D755B8];
    v11 = [(DBSExternalDisplayMultitaskingImageView *)v9 _imageNameWithUserInterfaceStyle];
    v12 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v13 = [v10 imageNamed:v11 inBundle:v12 compatibleWithTraitCollection:0];
    [(DBSExternalDisplayMultitaskingImageView *)v9 setImage:v13];

    [(DBSExternalDisplayMultitaskingImageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [(DBSExternalDisplayMultitaskingImageView *)v9 heightAnchor];
    v15 = [v14 constraintEqualToConstant:a4];
    [v15 setActive:1];

    v16 = [(DBSExternalDisplayMultitaskingImageView *)v9 image];
    [v16 size];
    v18 = a4 / v17;

    v19 = [(DBSExternalDisplayMultitaskingImageView *)v9 image];
    [v19 size];
    v21 = v18 * v20;

    v22 = [(DBSExternalDisplayMultitaskingImageView *)v9 widthAnchor];
    v23 = [v22 constraintEqualToConstant:v21];
    [v23 setActive:1];

    [(DBSExternalDisplayMultitaskingImageView *)v9 setContentMode:1];
    v24 = [MEMORY[0x277D75348] systemBlackColor];
    [(DBSExternalDisplayMultitaskingImageView *)v9 setBackgroundColor:v24];

    v25 = [(DBSExternalDisplayMultitaskingImageView *)v9 layer];
    [v25 setCornerRadius:10.0];

    v26 = [(DBSExternalDisplayMultitaskingImageView *)v9 layer];
    [v26 setMasksToBounds:1];

    v27 = [MEMORY[0x277D75348] blackColor];
    v28 = [v27 colorWithAlphaComponent:0.1];
    v29 = [v28 CGColor];
    v30 = [(DBSExternalDisplayMultitaskingImageView *)v9 layer];
    [v30 setBorderColor:v29];

    v31 = [(DBSExternalDisplayMultitaskingImageView *)v9 layer];
    [v31 setBorderWidth:1.0];

    v32 = objc_opt_self();
    v37[0] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v34 = [(DBSExternalDisplayMultitaskingImageView *)v9 registerForTraitChanges:v33 withTarget:v9 action:sel__userInterfaceStyleDidChange];
  }

  return v9;
}

- (void)_userInterfaceStyleDidChange
{
  v3 = MEMORY[0x277D755B8];
  v6 = [(DBSExternalDisplayMultitaskingImageView *)self _imageNameWithUserInterfaceStyle];
  v4 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v5 = [v3 imageNamed:v6 inBundle:v4 compatibleWithTraitCollection:0];
  [(DBSExternalDisplayMultitaskingImageView *)self setImage:v5];
}

- (id)_imageNameWithUserInterfaceStyle
{
  v3 = [(DBSExternalDisplayMultitaskingImageView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 <= 2)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", self->_name, off_2784595F8[v4]];
  }

  return v5;
}

@end
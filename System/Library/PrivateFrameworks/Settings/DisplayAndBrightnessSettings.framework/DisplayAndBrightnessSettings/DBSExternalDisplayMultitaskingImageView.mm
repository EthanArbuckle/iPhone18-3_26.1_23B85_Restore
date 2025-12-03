@interface DBSExternalDisplayMultitaskingImageView
- (DBSExternalDisplayMultitaskingImageView)initWithImageName:(id)name height:(double)height;
- (id)_imageNameWithUserInterfaceStyle;
- (void)_userInterfaceStyleDidChange;
@end

@implementation DBSExternalDisplayMultitaskingImageView

- (DBSExternalDisplayMultitaskingImageView)initWithImageName:(id)name height:(double)height
{
  v37[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v36.receiver = self;
  v36.super_class = DBSExternalDisplayMultitaskingImageView;
  v8 = [(DBSExternalDisplayMultitaskingImageView *)&v36 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_name, name);
    v10 = MEMORY[0x277D755B8];
    _imageNameWithUserInterfaceStyle = [(DBSExternalDisplayMultitaskingImageView *)v9 _imageNameWithUserInterfaceStyle];
    v12 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
    v13 = [v10 imageNamed:_imageNameWithUserInterfaceStyle inBundle:v12 compatibleWithTraitCollection:0];
    [(DBSExternalDisplayMultitaskingImageView *)v9 setImage:v13];

    [(DBSExternalDisplayMultitaskingImageView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    heightAnchor = [(DBSExternalDisplayMultitaskingImageView *)v9 heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:height];
    [v15 setActive:1];

    image = [(DBSExternalDisplayMultitaskingImageView *)v9 image];
    [image size];
    v18 = height / v17;

    image2 = [(DBSExternalDisplayMultitaskingImageView *)v9 image];
    [image2 size];
    v21 = v18 * v20;

    widthAnchor = [(DBSExternalDisplayMultitaskingImageView *)v9 widthAnchor];
    v23 = [widthAnchor constraintEqualToConstant:v21];
    [v23 setActive:1];

    [(DBSExternalDisplayMultitaskingImageView *)v9 setContentMode:1];
    systemBlackColor = [MEMORY[0x277D75348] systemBlackColor];
    [(DBSExternalDisplayMultitaskingImageView *)v9 setBackgroundColor:systemBlackColor];

    layer = [(DBSExternalDisplayMultitaskingImageView *)v9 layer];
    [layer setCornerRadius:10.0];

    layer2 = [(DBSExternalDisplayMultitaskingImageView *)v9 layer];
    [layer2 setMasksToBounds:1];

    blackColor = [MEMORY[0x277D75348] blackColor];
    v28 = [blackColor colorWithAlphaComponent:0.1];
    cGColor = [v28 CGColor];
    layer3 = [(DBSExternalDisplayMultitaskingImageView *)v9 layer];
    [layer3 setBorderColor:cGColor];

    layer4 = [(DBSExternalDisplayMultitaskingImageView *)v9 layer];
    [layer4 setBorderWidth:1.0];

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
  _imageNameWithUserInterfaceStyle = [(DBSExternalDisplayMultitaskingImageView *)self _imageNameWithUserInterfaceStyle];
  v4 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v5 = [v3 imageNamed:_imageNameWithUserInterfaceStyle inBundle:v4 compatibleWithTraitCollection:0];
  [(DBSExternalDisplayMultitaskingImageView *)self setImage:v5];
}

- (id)_imageNameWithUserInterfaceStyle
{
  traitCollection = [(DBSExternalDisplayMultitaskingImageView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle <= 2)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", self->_name, off_2784595F8[userInterfaceStyle]];
  }

  return v5;
}

@end
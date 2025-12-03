@interface PKIdentityHeroViewConfiguration
- (PKIdentityHeroViewConfiguration)initWithImage:(id)image title:(id)title subtitle:(id)subtitle primaryButtonTitle:(id)buttonTitle secondaryButtonTitle:(id)secondaryButtonTitle;
@end

@implementation PKIdentityHeroViewConfiguration

- (PKIdentityHeroViewConfiguration)initWithImage:(id)image title:(id)title subtitle:(id)subtitle primaryButtonTitle:(id)buttonTitle secondaryButtonTitle:(id)secondaryButtonTitle
{
  imageCopy = image;
  titleCopy = title;
  subtitleCopy = subtitle;
  buttonTitleCopy = buttonTitle;
  secondaryButtonTitleCopy = secondaryButtonTitle;
  v21.receiver = self;
  v21.super_class = PKIdentityHeroViewConfiguration;
  v16 = [(PKIdentityHeroViewConfiguration *)&v21 init];
  v17 = v16;
  if (v16)
  {
    if (imageCopy && titleCopy && subtitleCopy && buttonTitleCopy)
    {
      objc_storeStrong(&v16->_image, image);
      objc_storeStrong(&v17->_title, title);
      objc_storeStrong(&v17->_subtitle, subtitle);
      objc_storeStrong(&v17->_primaryButtonTitle, buttonTitle);
      objc_storeStrong(&v17->_secondaryButtonTitle, secondaryButtonTitle);
    }

    else
    {

      v17 = 0;
    }
  }

  return v17;
}

@end
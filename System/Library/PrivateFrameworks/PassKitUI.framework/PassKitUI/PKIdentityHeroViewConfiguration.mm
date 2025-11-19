@interface PKIdentityHeroViewConfiguration
- (PKIdentityHeroViewConfiguration)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 primaryButtonTitle:(id)a6 secondaryButtonTitle:(id)a7;
@end

@implementation PKIdentityHeroViewConfiguration

- (PKIdentityHeroViewConfiguration)initWithImage:(id)a3 title:(id)a4 subtitle:(id)a5 primaryButtonTitle:(id)a6 secondaryButtonTitle:(id)a7
{
  v13 = a3;
  v20 = a4;
  v14 = a5;
  v15 = a6;
  v19 = a7;
  v21.receiver = self;
  v21.super_class = PKIdentityHeroViewConfiguration;
  v16 = [(PKIdentityHeroViewConfiguration *)&v21 init];
  v17 = v16;
  if (v16)
  {
    if (v13 && v20 && v14 && v15)
    {
      objc_storeStrong(&v16->_image, a3);
      objc_storeStrong(&v17->_title, a4);
      objc_storeStrong(&v17->_subtitle, a5);
      objc_storeStrong(&v17->_primaryButtonTitle, a6);
      objc_storeStrong(&v17->_secondaryButtonTitle, a7);
    }

    else
    {

      v17 = 0;
    }
  }

  return v17;
}

@end
@interface ICQInternetPrivacyBannerModel
- (BOOL)isEqual:(id)a3;
- (ICQInternetPrivacyBannerModel)initWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 status:(unint64_t)a6 networkName:(id)a7;
@end

@implementation ICQInternetPrivacyBannerModel

- (ICQInternetPrivacyBannerModel)initWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 status:(unint64_t)a6 networkName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = ICQInternetPrivacyBannerModel;
  v17 = [(ICQInternetPrivacyBannerModel *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    objc_storeStrong(&v18->_message, a4);
    objc_storeStrong(&v18->_buttonTitle, a5);
    v18->_status = a6;
    objc_storeStrong(&v18->_networkName, a7);
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ICQInternetPrivacyBannerModel *)self buttonTitle];

    if (v6)
    {
      v7 = [(ICQInternetPrivacyBannerModel *)self buttonTitle];
      v8 = [v5 buttonTitle];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v7 = [v5 buttonTitle];
      v9 = v7 == 0;
    }

    v11 = [(ICQInternetPrivacyBannerModel *)self networkName];

    if (v11)
    {
      v12 = [(ICQInternetPrivacyBannerModel *)self networkName];
      v13 = [v5 networkName];
      v14 = [v12 isEqual:v13];
    }

    else
    {
      v12 = [v5 networkName];
      v14 = v12 == 0;
    }

    if ((v9 & v14) == 1)
    {
      v15 = [(ICQInternetPrivacyBannerModel *)self title];
      v16 = [v5 title];
      if ([v15 isEqualToString:v16])
      {
        v17 = [(ICQInternetPrivacyBannerModel *)self message];
        v18 = [v5 message];
        if ([v17 isEqualToString:v18])
        {
          v19 = [(ICQInternetPrivacyBannerModel *)self status];
          v10 = v19 == [v5 status];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end
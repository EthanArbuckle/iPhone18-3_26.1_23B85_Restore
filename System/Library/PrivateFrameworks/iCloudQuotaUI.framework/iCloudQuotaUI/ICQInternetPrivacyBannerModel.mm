@interface ICQInternetPrivacyBannerModel
- (BOOL)isEqual:(id)equal;
- (ICQInternetPrivacyBannerModel)initWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle status:(unint64_t)status networkName:(id)name;
@end

@implementation ICQInternetPrivacyBannerModel

- (ICQInternetPrivacyBannerModel)initWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle status:(unint64_t)status networkName:(id)name
{
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = ICQInternetPrivacyBannerModel;
  v17 = [(ICQInternetPrivacyBannerModel *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v18->_message, message);
    objc_storeStrong(&v18->_buttonTitle, buttonTitle);
    v18->_status = status;
    objc_storeStrong(&v18->_networkName, name);
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    buttonTitle = [(ICQInternetPrivacyBannerModel *)self buttonTitle];

    if (buttonTitle)
    {
      buttonTitle2 = [(ICQInternetPrivacyBannerModel *)self buttonTitle];
      buttonTitle3 = [v5 buttonTitle];
      v9 = [buttonTitle2 isEqualToString:buttonTitle3];
    }

    else
    {
      buttonTitle2 = [v5 buttonTitle];
      v9 = buttonTitle2 == 0;
    }

    networkName = [(ICQInternetPrivacyBannerModel *)self networkName];

    if (networkName)
    {
      networkName2 = [(ICQInternetPrivacyBannerModel *)self networkName];
      networkName3 = [v5 networkName];
      v14 = [networkName2 isEqual:networkName3];
    }

    else
    {
      networkName2 = [v5 networkName];
      v14 = networkName2 == 0;
    }

    if ((v9 & v14) == 1)
    {
      title = [(ICQInternetPrivacyBannerModel *)self title];
      title2 = [v5 title];
      if ([title isEqualToString:title2])
      {
        message = [(ICQInternetPrivacyBannerModel *)self message];
        message2 = [v5 message];
        if ([message isEqualToString:message2])
        {
          status = [(ICQInternetPrivacyBannerModel *)self status];
          v10 = status == [v5 status];
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
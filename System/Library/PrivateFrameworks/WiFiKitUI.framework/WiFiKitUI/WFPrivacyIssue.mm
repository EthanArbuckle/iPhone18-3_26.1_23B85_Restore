@interface WFPrivacyIssue
+ (id)carrierNetworkIssue;
+ (id)dnsFilteredNetworkIssue;
+ (id)privateAddressDisabledByCarrierIssueWithCarrierName:(id)name;
+ (id)privateAddressDisabledByProfileIssueWithOrganizationName:(id)name profileName:(id)profileName profileUUID:(id)d;
+ (id)privateAddressDisabledBySystemIssue;
+ (id)privateAddressDisabledByUserIssue;
- (WFPrivacyIssue)initWithPrivacyType:(unint64_t)type organizationName:(id)name profileName:(id)profileName profileUUID:(id)d;
- (id)_descriptionForSubType:(unint64_t)type organizationName:(id)name profileName:(id)profileName;
- (id)_privateAddressTypeToString:(unint64_t)string;
- (id)_recommendationForSubType:(unint64_t)type organizationName:(id)name;
- (id)_titleForSubType:(unint64_t)type;
- (id)issueDescription;
- (id)issueRecommendation;
- (id)issueShortTitle;
- (id)issueTitle;
@end

@implementation WFPrivacyIssue

+ (id)privateAddressDisabledByUserIssue
{
  v2 = [[WFPrivacyIssue alloc] initWithPrivacyType:8 organizationName:0 profileName:0 profileUUID:0];

  return v2;
}

+ (id)privateAddressDisabledBySystemIssue
{
  v2 = [[WFPrivacyIssue alloc] initWithPrivacyType:1 organizationName:0 profileName:0 profileUUID:0];

  return v2;
}

+ (id)privateAddressDisabledByCarrierIssueWithCarrierName:(id)name
{
  nameCopy = name;
  v4 = [[WFPrivacyIssue alloc] initWithPrivacyType:2 organizationName:nameCopy profileName:0 profileUUID:0];

  return v4;
}

+ (id)privateAddressDisabledByProfileIssueWithOrganizationName:(id)name profileName:(id)profileName profileUUID:(id)d
{
  dCopy = d;
  profileNameCopy = profileName;
  nameCopy = name;
  v10 = [[WFPrivacyIssue alloc] initWithPrivacyType:4 organizationName:nameCopy profileName:profileNameCopy profileUUID:dCopy];

  return v10;
}

+ (id)carrierNetworkIssue
{
  v2 = [(WFHealthIssue *)[WFPrivacyIssue alloc] initWithType:512];

  return v2;
}

+ (id)dnsFilteredNetworkIssue
{
  v2 = [(WFHealthIssue *)[WFPrivacyIssue alloc] initWithType:1024];

  return v2;
}

- (WFPrivacyIssue)initWithPrivacyType:(unint64_t)type organizationName:(id)name profileName:(id)profileName profileUUID:(id)d
{
  nameCopy = name;
  profileNameCopy = profileName;
  v24.receiver = self;
  v24.super_class = WFPrivacyIssue;
  v11 = [(WFHealthIssue *)&v24 initWithType:0x2000];
  v12 = v11;
  if (v11)
  {
    v13 = [(WFPrivacyIssue *)v11 _titleForSubType:type];
    issueShortTitle = v12->_issueShortTitle;
    v12->_issueShortTitle = v13;

    v15 = [(WFPrivacyIssue *)v12 _titleForSubType:type];
    issueTitle = v12->_issueTitle;
    v12->_issueTitle = v15;

    v17 = [(WFPrivacyIssue *)v12 _descriptionForSubType:type organizationName:nameCopy profileName:profileNameCopy];
    issueDescription = v12->_issueDescription;
    v12->_issueDescription = v17;

    v19 = [(WFPrivacyIssue *)v12 _recommendationForSubType:type organizationName:nameCopy];
    issueRecommendation = v12->_issueRecommendation;
    v12->_issueRecommendation = v19;

    v21 = [(WFPrivacyIssue *)v12 _privateAddressTypeToString:type];
    typeString = v12->_typeString;
    v12->_typeString = v21;
  }

  return v12;
}

- (id)issueShortTitle
{
  issueShortTitle = self->_issueShortTitle;
  if (issueShortTitle)
  {
    issueShortTitle = issueShortTitle;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPrivacyIssue;
    issueShortTitle = [(WFHealthIssue *)&v5 issueShortTitle];
  }

  return issueShortTitle;
}

- (id)issueTitle
{
  issueTitle = self->_issueTitle;
  if (issueTitle)
  {
    issueTitle = issueTitle;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPrivacyIssue;
    issueTitle = [(WFHealthIssue *)&v5 issueTitle];
  }

  return issueTitle;
}

- (id)issueDescription
{
  issueDescription = self->_issueDescription;
  if (issueDescription)
  {
    issueDescription = issueDescription;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPrivacyIssue;
    issueDescription = [(WFHealthIssue *)&v5 issueDescription];
  }

  return issueDescription;
}

- (id)issueRecommendation
{
  issueRecommendation = self->_issueRecommendation;
  if (issueRecommendation)
  {
    issueRecommendation = issueRecommendation;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPrivacyIssue;
    issueRecommendation = [(WFHealthIssue *)&v5 issueRecommendation];
  }

  return issueRecommendation;
}

- (id)_titleForSubType:(unint64_t)type
{
  if (type == 1)
  {
    v3 = @"kWFLocPrivateAddressDisabledBySystemTitle";
  }

  else
  {
    v3 = @"kWFLocPrivateAddressDisabledByOthersTitle";
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

- (id)_descriptionForSubType:(unint64_t)type organizationName:(id)name profileName:(id)profileName
{
  nameCopy = name;
  profileNameCopy = profileName;
  v10 = profileNameCopy;
  v11 = 0;
  if (type > 3)
  {
    if (type == 4)
    {
      if (profileNameCopy && [profileNameCopy length])
      {
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        if ([(WFHealthIssue *)self chinaDevice])
        {
          v21 = @"kWFLocPrivateAddressDisabledByProfileDescription_CH";
        }

        else
        {
          v21 = @"kWFLocPrivateAddressDisabledByProfileDescription";
        }

        v16 = [v20 localizedStringForKey:v21 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

        [MEMORY[0x277CCACA8] stringWithFormat:v16, v10];
        goto LABEL_23;
      }

      if (nameCopy && [nameCopy length])
      {
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        chinaDevice = [(WFHealthIssue *)self chinaDevice];
        v14 = @"kWFLocPrivateAddressDisabledByProfileDescription";
        v15 = @"kWFLocPrivateAddressDisabledByProfileDescription_CH";
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    if (type != 8)
    {
      goto LABEL_30;
    }

LABEL_9:
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    chinaDevice2 = [(WFHealthIssue *)self chinaDevice];
    v18 = @"kWFLocPrivateAddressDisabledByGenericDescription";
    v19 = @"kWFLocPrivateAddressDisabledByGenericDescription_CH";
LABEL_25:
    if (chinaDevice2)
    {
      v24 = v19;
    }

    else
    {
      v24 = v18;
    }

    v23 = [v16 localizedStringForKey:v24 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    goto LABEL_29;
  }

  if (type == 1)
  {
    goto LABEL_9;
  }

  if (type != 2)
  {
    goto LABEL_30;
  }

  if (!nameCopy || ![nameCopy length])
  {
LABEL_24:
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    chinaDevice2 = [(WFHealthIssue *)self chinaDevice];
    v18 = @"kWFLocPrivateAddressDisabledByOtherGenericDescription";
    v19 = @"kWFLocPrivateAddressDisabledByOtherGenericDescription_CH";
    goto LABEL_25;
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  chinaDevice = [(WFHealthIssue *)self chinaDevice];
  v14 = @"kWFLocPrivateAddressDisabledByCarrierDescription";
  v15 = @"kWFLocPrivateAddressDisabledByCarrierDescription_CH";
LABEL_19:
  if (chinaDevice)
  {
    v22 = v15;
  }

  else
  {
    v22 = v14;
  }

  v16 = [v12 localizedStringForKey:v22 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  [MEMORY[0x277CCACA8] stringWithFormat:v16, nameCopy];
  v23 = LABEL_23:;
LABEL_29:
  v11 = v23;

LABEL_30:

  return v11;
}

- (id)_recommendationForSubType:(unint64_t)type organizationName:(id)name
{
  if ([(WFHealthIssue *)self chinaDevice:type])
  {
    v4 = [@"kWFLocPrivateAddressDisabledByAllRecommendation" stringByAppendingString:@"_CH"];
  }

  else
  {
    v4 = @"kWFLocPrivateAddressDisabledByAllRecommendation";
  }

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v6;
}

- (id)_privateAddressTypeToString:(unint64_t)string
{
  if (string - 1 > 7)
  {
    return 0;
  }

  else
  {
    return off_279EC5C40[string - 1];
  }
}

@end
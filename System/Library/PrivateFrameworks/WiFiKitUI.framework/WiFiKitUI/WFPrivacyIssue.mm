@interface WFPrivacyIssue
+ (id)carrierNetworkIssue;
+ (id)dnsFilteredNetworkIssue;
+ (id)privateAddressDisabledByCarrierIssueWithCarrierName:(id)a3;
+ (id)privateAddressDisabledByProfileIssueWithOrganizationName:(id)a3 profileName:(id)a4 profileUUID:(id)a5;
+ (id)privateAddressDisabledBySystemIssue;
+ (id)privateAddressDisabledByUserIssue;
- (WFPrivacyIssue)initWithPrivacyType:(unint64_t)a3 organizationName:(id)a4 profileName:(id)a5 profileUUID:(id)a6;
- (id)_descriptionForSubType:(unint64_t)a3 organizationName:(id)a4 profileName:(id)a5;
- (id)_privateAddressTypeToString:(unint64_t)a3;
- (id)_recommendationForSubType:(unint64_t)a3 organizationName:(id)a4;
- (id)_titleForSubType:(unint64_t)a3;
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

+ (id)privateAddressDisabledByCarrierIssueWithCarrierName:(id)a3
{
  v3 = a3;
  v4 = [[WFPrivacyIssue alloc] initWithPrivacyType:2 organizationName:v3 profileName:0 profileUUID:0];

  return v4;
}

+ (id)privateAddressDisabledByProfileIssueWithOrganizationName:(id)a3 profileName:(id)a4 profileUUID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[WFPrivacyIssue alloc] initWithPrivacyType:4 organizationName:v9 profileName:v8 profileUUID:v7];

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

- (WFPrivacyIssue)initWithPrivacyType:(unint64_t)a3 organizationName:(id)a4 profileName:(id)a5 profileUUID:(id)a6
{
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = WFPrivacyIssue;
  v11 = [(WFHealthIssue *)&v24 initWithType:0x2000];
  v12 = v11;
  if (v11)
  {
    v13 = [(WFPrivacyIssue *)v11 _titleForSubType:a3];
    issueShortTitle = v12->_issueShortTitle;
    v12->_issueShortTitle = v13;

    v15 = [(WFPrivacyIssue *)v12 _titleForSubType:a3];
    issueTitle = v12->_issueTitle;
    v12->_issueTitle = v15;

    v17 = [(WFPrivacyIssue *)v12 _descriptionForSubType:a3 organizationName:v9 profileName:v10];
    issueDescription = v12->_issueDescription;
    v12->_issueDescription = v17;

    v19 = [(WFPrivacyIssue *)v12 _recommendationForSubType:a3 organizationName:v9];
    issueRecommendation = v12->_issueRecommendation;
    v12->_issueRecommendation = v19;

    v21 = [(WFPrivacyIssue *)v12 _privateAddressTypeToString:a3];
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
    v3 = issueShortTitle;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPrivacyIssue;
    v3 = [(WFHealthIssue *)&v5 issueShortTitle];
  }

  return v3;
}

- (id)issueTitle
{
  issueTitle = self->_issueTitle;
  if (issueTitle)
  {
    v3 = issueTitle;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPrivacyIssue;
    v3 = [(WFHealthIssue *)&v5 issueTitle];
  }

  return v3;
}

- (id)issueDescription
{
  issueDescription = self->_issueDescription;
  if (issueDescription)
  {
    v3 = issueDescription;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPrivacyIssue;
    v3 = [(WFHealthIssue *)&v5 issueDescription];
  }

  return v3;
}

- (id)issueRecommendation
{
  issueRecommendation = self->_issueRecommendation;
  if (issueRecommendation)
  {
    v3 = issueRecommendation;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = WFPrivacyIssue;
    v3 = [(WFHealthIssue *)&v5 issueRecommendation];
  }

  return v3;
}

- (id)_titleForSubType:(unint64_t)a3
{
  if (a3 == 1)
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

- (id)_descriptionForSubType:(unint64_t)a3 organizationName:(id)a4 profileName:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v9;
  v11 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      if (v9 && [v9 length])
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

      if (v8 && [v8 length])
      {
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v13 = [(WFHealthIssue *)self chinaDevice];
        v14 = @"kWFLocPrivateAddressDisabledByProfileDescription";
        v15 = @"kWFLocPrivateAddressDisabledByProfileDescription_CH";
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    if (a3 != 8)
    {
      goto LABEL_30;
    }

LABEL_9:
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [(WFHealthIssue *)self chinaDevice];
    v18 = @"kWFLocPrivateAddressDisabledByGenericDescription";
    v19 = @"kWFLocPrivateAddressDisabledByGenericDescription_CH";
LABEL_25:
    if (v17)
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

  if (a3 == 1)
  {
    goto LABEL_9;
  }

  if (a3 != 2)
  {
    goto LABEL_30;
  }

  if (!v8 || ![v8 length])
  {
LABEL_24:
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [(WFHealthIssue *)self chinaDevice];
    v18 = @"kWFLocPrivateAddressDisabledByOtherGenericDescription";
    v19 = @"kWFLocPrivateAddressDisabledByOtherGenericDescription_CH";
    goto LABEL_25;
  }

  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [(WFHealthIssue *)self chinaDevice];
  v14 = @"kWFLocPrivateAddressDisabledByCarrierDescription";
  v15 = @"kWFLocPrivateAddressDisabledByCarrierDescription_CH";
LABEL_19:
  if (v13)
  {
    v22 = v15;
  }

  else
  {
    v22 = v14;
  }

  v16 = [v12 localizedStringForKey:v22 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  [MEMORY[0x277CCACA8] stringWithFormat:v16, v8];
  v23 = LABEL_23:;
LABEL_29:
  v11 = v23;

LABEL_30:

  return v11;
}

- (id)_recommendationForSubType:(unint64_t)a3 organizationName:(id)a4
{
  if ([(WFHealthIssue *)self chinaDevice:a3])
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

- (id)_privateAddressTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return 0;
  }

  else
  {
    return off_279EC5C40[a3 - 1];
  }
}

@end
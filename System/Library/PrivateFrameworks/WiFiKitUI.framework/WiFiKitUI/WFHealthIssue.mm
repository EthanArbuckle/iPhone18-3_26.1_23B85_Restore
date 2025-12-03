@interface WFHealthIssue
+ (id)highestPriorityIssueFromIssues:(id)issues;
+ (id)issueWithType:(unint64_t)type;
- (BOOL)isEqual:(id)equal;
- (NSString)issueDetailText;
- (WFHealthIssue)initWithType:(unint64_t)type;
- (id)_descriptionForType:(unint64_t)type;
- (id)_recommendationForType:(unint64_t)type;
- (id)_shortTitleForType:(unint64_t)type;
- (id)_titleForType:(unint64_t)type;
- (id)_typeStringForType:(unint64_t)type;
- (id)description;
- (unint64_t)_categoryForType:(unint64_t)type;
- (void)setOverrideIssue:(BOOL)issue;
@end

@implementation WFHealthIssue

+ (id)issueWithType:(unint64_t)type
{
  v3 = [[WFHealthIssue alloc] initWithType:type];

  return v3;
}

- (WFHealthIssue)initWithType:(unint64_t)type
{
  v16.receiver = self;
  v16.super_class = WFHealthIssue;
  v4 = [(WFHealthIssue *)&v16 init];
  if (v4)
  {
    if (WFHasWAPICapability___uiWapiEnabledCapabilityToken != -1)
    {
      [WFHealthIssue initWithType:];
    }

    v4->_chinaDevice = WFHasWAPICapability___wapiCapability_0;
    v4->_type = type;
    v4->_category = [(WFHealthIssue *)v4 _categoryForType:type];
    v5 = [(WFHealthIssue *)v4 _shortTitleForType:type];
    issueShortTitle = v4->_issueShortTitle;
    v4->_issueShortTitle = v5;

    v7 = [(WFHealthIssue *)v4 _titleForType:type];
    issueTitle = v4->_issueTitle;
    v4->_issueTitle = v7;

    v9 = [(WFHealthIssue *)v4 _descriptionForType:type];
    issueDescription = v4->_issueDescription;
    v4->_issueDescription = v9;

    v11 = [(WFHealthIssue *)v4 _recommendationForType:type];
    issueRecommendation = v4->_issueRecommendation;
    v4->_issueRecommendation = v11;

    v13 = [(WFHealthIssue *)v4 _typeStringForType:type];
    typeString = v4->_typeString;
    v4->_typeString = v13;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v6 = (!self || equalCopy) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(WFHealthIssue *)self isEqualToHealthIssue:v5];

  return v6;
}

- (NSString)issueDetailText
{
  string = [MEMORY[0x277CCAB68] string];
  issueDescription = [(WFHealthIssue *)self issueDescription];

  if (issueDescription)
  {
    issueDescription2 = [(WFHealthIssue *)self issueDescription];
    [string appendString:issueDescription2];
  }

  issueRecommendation = [(WFHealthIssue *)self issueRecommendation];
  v7 = [issueRecommendation length];

  if (v7)
  {
    issueDescription3 = [(WFHealthIssue *)self issueDescription];
    v9 = [issueDescription3 length];

    if (v9)
    {
      [string appendString:@"\n\n"];
    }

    issueRecommendation2 = [(WFHealthIssue *)self issueRecommendation];
    [string appendString:issueRecommendation2];
  }

  return string;
}

- (id)_shortTitleForType:(unint64_t)type
{
  if (type == 256)
  {
    typeCopy = 2;
  }

  else
  {
    typeCopy = type;
  }

  if (type == 128)
  {
    v4 = 2;
  }

  else
  {
    v4 = typeCopy;
  }

  v5 = [(WFHealthIssue *)self _titleForType:v4];

  return v5;
}

- (id)_recommendationForType:(unint64_t)type
{
  v3 = 0;
  if (type > 1023)
  {
    if (type < 0x40000)
    {
      if (type > 4095)
      {
        if (type != 4096)
        {
          if (type == 0x4000)
          {
            chinaDevice = self->_chinaDevice;
            v5 = @"kWFLocHiddenNetworkRecommendation";
            v6 = @"kWFLocHiddenNetworkRecommendation_CH";
            goto LABEL_44;
          }

          if (type == 0x8000)
          {
            chinaDevice = self->_chinaDevice;
            v5 = @"kWFLocNoInternetWithPrivateMACRecommendation";
            v6 = @"kWFLocNoInternetWithPrivateMACRecommendation_CH";
LABEL_44:
            if (chinaDevice)
            {
              v10 = v6;
            }

            else
            {
              v10 = v5;
            }

            v3 = v10;
            goto LABEL_48;
          }

          goto LABEL_48;
        }

LABEL_38:
        chinaDevice = self->_chinaDevice;
        v5 = @"kWFLocWPAHiddenNetworkRecommendation";
        v6 = @"kWFLocWPAHiddenNetworkRecommendation_CH";
        goto LABEL_44;
      }

      if (type == 1024)
      {
        v3 = @"kWFLocDNSFilteredNetworkRecommendation";
        goto LABEL_48;
      }

      if (type != 2048)
      {
        goto LABEL_48;
      }

LABEL_32:
      chinaDevice = self->_chinaDevice;
      v5 = @"kWFLocWeakSecurityRecommendation";
      v6 = @"kWFLocWeakSecurityRecommendation_CH";
      goto LABEL_44;
    }

    if (type < 0x100000)
    {
      v9 = @"kWFLocIMSIExposureNetworkRecommendation";
      if (type != 0x80000)
      {
        v9 = 0;
      }

      if (type == 0x40000)
      {
        v3 = @"kWFLocIMSIExposureNetworkRecommendation";
      }

      else
      {
        v3 = v9;
      }

      goto LABEL_48;
    }

    if (type == 0x100000 || type == 0x200000)
    {
      v3 = @"kWFLocPoorCoverageRecommendation";
      goto LABEL_48;
    }

    v7 = type == 0x400000;
    v8 = @"kWFLocCongestionRecommendation";
LABEL_17:
    if (v7)
    {
      v3 = v8;
    }

    else
    {
      v3 = 0;
    }

    goto LABEL_48;
  }

  if (type > 31)
  {
    if (type <= 127)
    {
      if (type == 32)
      {
        chinaDevice = self->_chinaDevice;
        v5 = @"kWFLocAmbiguousNameRecommendation";
        v6 = @"kWFLocAmbiguousNameRecommendation_CH";
        goto LABEL_44;
      }

      if (type == 64)
      {
        chinaDevice = self->_chinaDevice;
        v5 = @"kWFLocOpenHiddenNetworkRecommendation";
        v6 = @"kWFLocOpenHiddenNetworkRecommendation_CH";
        goto LABEL_44;
      }

      goto LABEL_48;
    }

    if (type == 128)
    {
      goto LABEL_38;
    }

    if (type == 256)
    {
      chinaDevice = self->_chinaDevice;
      v5 = @"kWFLocWEPHiddenNetworkRecommendation";
      v6 = @"kWFLocWEPHiddenNetworkRecommendation_CH";
      goto LABEL_44;
    }

    v7 = type == 512;
    v8 = @"kWFLocIMSIExposureNetworkRecommendation";
    goto LABEL_17;
  }

  if (type <= 7)
  {
    if (type != 2 && type != 4)
    {
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  if (type == 8)
  {
    chinaDevice = self->_chinaDevice;
    v5 = @"kWFLocNoSecurityRecommendation";
    v6 = @"kWFLocNoSecurityRecommendation_CH";
    goto LABEL_44;
  }

  if (type == 16)
  {
    chinaDevice = self->_chinaDevice;
    v5 = @"kWFLocLegacyRatesRecommendation";
    v6 = @"kWFLocLegacyRatesRecommendation_CH";
    goto LABEL_44;
  }

LABEL_48:
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v12;
}

- (id)_descriptionForType:(unint64_t)type
{
  v3 = 0;
  if (type <= 1023)
  {
    if (type > 31)
    {
      if (type <= 127)
      {
        if (type == 32)
        {
          v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v5 = v4;
          v6 = @"kWFLocAmbiguousNameDescription";
        }

        else
        {
          if (type != 64)
          {
            goto LABEL_52;
          }

          v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v5 = v4;
          v6 = @"kWFLocOpenHiddenNetworkDescription";
        }
      }

      else
      {
        switch(type)
        {
          case 0x80uLL:
            v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v5 = v4;
            v6 = @"kWFLocWPAHiddenNetworkDescription";
            break;
          case 0x100uLL:
            v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v5 = v4;
            v6 = @"kWFLocWEPHiddenNetworkDescription";
            break;
          case 0x200uLL:
            v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v5 = v4;
            v6 = @"kWFLocIMSIExposureNetworkDescription";
            break;
          default:
            goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (type > 3)
    {
      switch(type)
      {
        case 4uLL:
          v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v5 = v4;
          v6 = @"kWFLocWeakSecurityWPADescription";
          break;
        case 8uLL:
          v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v5 = v4;
          v6 = @"kWFLocNoSecurityDescription";
          break;
        case 0x10uLL:
          v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v5 = v4;
          v6 = @"kWFLocLegacyRatesDescription";
          break;
        default:
          goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_52;
      }

      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"kWFLocWeakSecurityWEPDescription";
      goto LABEL_50;
    }

LABEL_37:
    if (self->_chinaDevice)
    {
      v7 = @"kWFLocNoInternetDescription_CH";
    }

    else
    {
      v7 = @"kWFLocNoInternetDescription";
    }

    v8 = MEMORY[0x277CCA8D8];
    v9 = v7;
    v5 = [v8 bundleForClass:objc_opt_class()];
    v3 = [v5 localizedStringForKey:v9 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

    goto LABEL_51;
  }

  if (type >= 0x40000)
  {
    if (type < 0x100000)
    {
      if (type == 0x40000)
      {
        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"kWFLocWeakSecurityNoTLSTrustedServerNamesDescription";
      }

      else
      {
        if (type != 0x80000)
        {
          goto LABEL_52;
        }

        v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v5 = v4;
        v6 = @"kWFLocWeakSecurityNoPayloadCertificateAnchorUUIDDescription";
      }
    }

    else if (type == 0x100000 || type == 0x200000)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"kWFLocPoorCoverageDescription";
    }

    else
    {
      if (type != 0x400000)
      {
        goto LABEL_52;
      }

      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"kWFLocCongestionDescription";
    }

    goto LABEL_50;
  }

  if (type <= 4095)
  {
    if (type == 1024)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"kWFLocDNSFilteredNetworkDescription";
    }

    else
    {
      if (type != 2048)
      {
        goto LABEL_52;
      }

      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"kWFLocWeakSecurityWPATKIPDescription";
    }

    goto LABEL_50;
  }

  switch(type)
  {
    case 0x1000uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"kWFLocWPATKIPHiddenNetworkDescription";
      goto LABEL_50;
    case 0x4000uLL:
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"kWFLocHiddenNetworkDescription";
LABEL_50:
      v3 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
LABEL_51:

      break;
    case 0x8000uLL:
      goto LABEL_37;
  }

LABEL_52:

  return v3;
}

- (id)_titleForType:(unint64_t)type
{
  v3 = 0;
  v4 = @"kWFLocNoInternetTitle";
  if (type <= 1023)
  {
    if (type <= 31)
    {
      if (type > 3)
      {
        if (type != 4)
        {
          if (type == 8)
          {
            v4 = @"kWFLocNoSecurityTitle";
          }

          else
          {
            if (type != 16)
            {
              goto LABEL_44;
            }

            v4 = @"kWFLocLegacyRatesTitle";
          }

          goto LABEL_43;
        }

        goto LABEL_35;
      }

      if (type != 1)
      {
        if (type != 2)
        {
          goto LABEL_44;
        }

LABEL_35:
        v4 = @"kWFLocWeakSecurityTitle";
      }

LABEL_43:
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v3 = [v5 localizedStringForKey:v4 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

      goto LABEL_44;
    }

    if (type <= 127)
    {
      if (type == 32)
      {
        v4 = @"kWFLocAmbiguousNameTitle";
      }

      else
      {
        if (type != 64)
        {
          goto LABEL_44;
        }

        v4 = @"kWFLocOpenHiddenNetworkTitle";
      }

      goto LABEL_43;
    }

    if (type != 128)
    {
      if (type == 256)
      {
        v4 = @"kWFLocWEPHiddenNetworkTitle";
      }

      else
      {
        if (type != 512)
        {
          goto LABEL_44;
        }

        v4 = @"kWFLocIMSIExposureNetworkTitle";
      }

      goto LABEL_43;
    }

LABEL_37:
    v4 = @"kWFLocWPAHiddenNetworkTitle";
    goto LABEL_43;
  }

  if (type >= 0x40000)
  {
    if (type >= 0x100000)
    {
      if (type == 0x100000 || type == 0x200000)
      {
        v4 = @"kWFLocPoorCoverageTitle";
      }

      else
      {
        if (type != 0x400000)
        {
          goto LABEL_44;
        }

        v4 = @"kWFLocCongestionTitle";
      }

      goto LABEL_43;
    }

    if (type == 0x40000 || type == 0x80000)
    {
      goto LABEL_35;
    }
  }

  else if (type <= 4095)
  {
    if (type == 1024)
    {
      v4 = @"kWFLocDNSFilteredNetworkTitle";
      goto LABEL_43;
    }

    if (type == 2048)
    {
      goto LABEL_35;
    }
  }

  else
  {
    switch(type)
    {
      case 0x1000uLL:
        goto LABEL_37;
      case 0x4000uLL:
        v4 = @"kWFLocHiddenNetworkTitle";
        goto LABEL_43;
      case 0x8000uLL:
        goto LABEL_43;
    }
  }

LABEL_44:

  return v3;
}

- (unint64_t)_categoryForType:(unint64_t)type
{
  result = 0;
  if (type > 2047)
  {
    if (type >= 0x40000)
    {
      if (type < 0x100000)
      {
        if (type == 0x40000 || type == 0x80000)
        {
          return 1;
        }
      }

      else if (type == 0x100000 || type == 0x200000 || type == 0x400000)
      {
        return 3;
      }

      return result;
    }

    if (type < 0x2000)
    {
      if (type == 2048 || type == 4096)
      {
        return 1;
      }

      return result;
    }

    if (type != 0x2000 && type != 0x4000)
    {
      if (type != 0x20000)
      {
        return result;
      }

      return 3;
    }

    return 2;
  }

  if (type <= 127)
  {
    v4 = type - 2;
    if (type - 2 > 0x3E)
    {
      return result;
    }

    if (((1 << v4) & 0x4000000000000045) == 0)
    {
      if (((1 << v4) & 0x40004000) == 0)
      {
        return result;
      }

      return 3;
    }

    return 1;
  }

  if (type > 511)
  {
    if (type != 512 && type != 1024)
    {
      return result;
    }

    return 2;
  }

  if (type == 128 || type == 256)
  {
    return 1;
  }

  return result;
}

- (id)_typeStringForType:(unint64_t)type
{
  if (type <= 2047)
  {
    if (type <= 31)
    {
      v11 = @"weak-wpa";
      v25 = @"weak-open";
      v26 = @"legacy-rates";
      if (type != 16)
      {
        v26 = 0;
      }

      if (type != 8)
      {
        v25 = v26;
      }

      if (type != 4)
      {
        v11 = v25;
      }

      v14 = @"no-internet";
      v27 = @"weak-wep";
      if (type != 2)
      {
        v27 = 0;
      }

      if (type != 1)
      {
        v14 = v27;
      }

      v19 = __OFSUB__(type, 3);
      v17 = type == 3;
      v18 = (type - 3) < 0;
    }

    else
    {
      v11 = @"hidden-wep-network";
      v12 = @"carrier-imsi";
      v13 = @"dns-filtered";
      if (type != 1024)
      {
        v13 = 0;
      }

      if (type != 512)
      {
        v12 = v13;
      }

      if (type != 256)
      {
        v11 = v12;
      }

      v14 = @"common-ssid";
      v15 = @"hidden-open-network";
      v16 = @"hidden-wpa-network";
      if (type != 128)
      {
        v16 = 0;
      }

      if (type != 64)
      {
        v15 = v16;
      }

      if (type != 32)
      {
        v14 = v15;
      }

      v19 = __OFSUB__(type, 255);
      v17 = type == 255;
      v18 = (type - 255) < 0;
    }

    if (v18 ^ v19 | v17)
    {
      return v14;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    if (type >= 0x20000)
    {
      v3 = @"poor-coverage-single-ap";
      v20 = @"poor-coverage-multiple-ap";
      v21 = @"poor-coverage-congestion";
      if (type != 0x400000)
      {
        v21 = 0;
      }

      if (type != 0x200000)
      {
        v20 = v21;
      }

      if (type != 0x100000)
      {
        v3 = v20;
      }

      v6 = @"limit-network";
      v22 = @"no-tls-trusted-server-names";
      v23 = @"no-payload-certificate-anchor-uuid";
      if (type != 0x80000)
      {
        v23 = 0;
      }

      if (type != 0x40000)
      {
        v22 = v23;
      }

      if (type != 0x20000)
      {
        v6 = v22;
      }

      v10 = __OFSUB__(type, 0x100000);
      v9 = (type - 0x100000) < 0;
    }

    else
    {
      v3 = @"hidden-network";
      v4 = @"no-internet-private-address";
      v5 = @"cellular-outrank";
      if (type != 0x10000)
      {
        v5 = 0;
      }

      if (type != 0x8000)
      {
        v4 = v5;
      }

      if (type != 0x4000)
      {
        v3 = v4;
      }

      v6 = @"weak-wpa-tkip";
      v7 = @"hidden-wpa-tkip-network";
      v8 = @"private-address-disabled";
      if (type != 0x2000)
      {
        v8 = 0;
      }

      if (type != 4096)
      {
        v7 = v8;
      }

      if (type != 2048)
      {
        v6 = v7;
      }

      v10 = __OFSUB__(type, 0x4000);
      v9 = (type - 0x4000) < 0;
    }

    if (v9 != v10)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  typeString = [(WFHealthIssue *)self typeString];
  v7 = [v3 stringWithFormat:@"<%@ : %p type='%@' code=%lu", v5, self, typeString, -[WFHealthIssue type](self, "type")];

  if ([(WFHealthIssue *)self overrideIssue])
  {
    [v7 appendString:@" override=1"];
  }

  issueTitle = [(WFHealthIssue *)self issueTitle];
  [v7 appendFormat:@" title='%@'", issueTitle];

  issueDescription = [(WFHealthIssue *)self issueDescription];

  if (issueDescription)
  {
    issueDescription2 = [(WFHealthIssue *)self issueDescription];
    [v7 appendFormat:@" description='%@'", issueDescription2];
  }

  issueRecommendation = [(WFHealthIssue *)self issueRecommendation];
  if (issueRecommendation)
  {
    v12 = issueRecommendation;
    issueRecommendation2 = [(WFHealthIssue *)self issueRecommendation];
    v14 = [issueRecommendation2 length];

    if (v14)
    {
      issueRecommendation3 = [(WFHealthIssue *)self issueRecommendation];
      [v7 appendFormat:@" recommendation='%@'", issueRecommendation3];
    }
  }

  [v7 appendString:@">"];

  return v7;
}

- (void)setOverrideIssue:(BOOL)issue
{
  issueCopy = issue;
  self->_overrideIssue = issue;
  v5 = [(WFHealthIssue *)self _typeStringForType:[(WFHealthIssue *)self type]];
  if (issueCopy)
  {
    v9 = v5;
    v6 = [(NSString *)v5 stringByAppendingFormat:@"-OVERRIDE"];
    typeString = self->_typeString;
    self->_typeString = v6;

    v8 = v9;
  }

  else
  {
    v8 = self->_typeString;
    self->_typeString = v5;
  }
}

uint64_t __42__WFHealthIssue_healthIssueSortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 category];
  if (v6 < [v5 category])
  {
    goto LABEL_2;
  }

  v8 = [v4 category];
  if (v8 > [v5 category])
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_2:
    v7 = -1;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_4:
    v7 = 1;
    goto LABEL_5;
  }

  v10 = [v4 type];
  if (v10 > [v5 type])
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

LABEL_5:

  return v7;
}

+ (id)highestPriorityIssueFromIssues:(id)issues
{
  issuesCopy = issues;
  v4 = issuesCopy;
  if (issuesCopy && [issuesCopy count])
  {
    if ([v4 count] <= 1)
    {
      firstObject = [v4 firstObject];
    }

    else
    {
      v5 = +[WFHealthIssue healthIssueSortComparator];
      v6 = [v4 sortedArrayUsingComparator:v5];
      firstObject = [v6 firstObject];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end
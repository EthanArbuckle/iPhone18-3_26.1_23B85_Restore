@interface WBSPerSitePreferenceValueInformation
- (WBSPerSitePreferenceValueInformation)initWithDomain:(id)domain value:(id)value creationDate:(id)date;
@end

@implementation WBSPerSitePreferenceValueInformation

- (WBSPerSitePreferenceValueInformation)initWithDomain:(id)domain value:(id)value creationDate:(id)date
{
  domainCopy = domain;
  valueCopy = value;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = WBSPerSitePreferenceValueInformation;
  v11 = [(WBSPerSitePreferenceValueInformation *)&v16 init];
  if (v11)
  {
    v12 = [domainCopy copy];
    domain = v11->_domain;
    v11->_domain = v12;

    objc_storeStrong(&v11->_value, value);
    objc_storeStrong(&v11->_creationDate, date);
    v14 = v11;
  }

  return v11;
}

@end
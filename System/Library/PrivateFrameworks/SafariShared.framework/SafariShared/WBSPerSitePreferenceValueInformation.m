@interface WBSPerSitePreferenceValueInformation
- (WBSPerSitePreferenceValueInformation)initWithDomain:(id)a3 value:(id)a4 creationDate:(id)a5;
@end

@implementation WBSPerSitePreferenceValueInformation

- (WBSPerSitePreferenceValueInformation)initWithDomain:(id)a3 value:(id)a4 creationDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = WBSPerSitePreferenceValueInformation;
  v11 = [(WBSPerSitePreferenceValueInformation *)&v16 init];
  if (v11)
  {
    v12 = [v8 copy];
    domain = v11->_domain;
    v11->_domain = v12;

    objc_storeStrong(&v11->_value, a4);
    objc_storeStrong(&v11->_creationDate, a5);
    v14 = v11;
  }

  return v11;
}

@end
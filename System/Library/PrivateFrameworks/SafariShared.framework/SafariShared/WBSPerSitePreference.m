@interface WBSPerSitePreference
+ (id)localizedStringForBinaryPreferenceValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (WBSPerSitePreference)initWithIdentifier:(id)a3;
@end

@implementation WBSPerSitePreference

+ (id)localizedStringForBinaryPreferenceValue:(id)a3
{
  [a3 BOOLValue];
  v3 = _WBSLocalizedString();

  return v3;
}

- (WBSPerSitePreference)initWithIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSPerSitePreference;
  v5 = [(WBSPerSitePreference *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = [(WBSPerSitePreference *)v4 identifier];
      v7 = [(NSString *)identifier isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end
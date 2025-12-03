@interface WBSPerSitePreference
+ (id)localizedStringForBinaryPreferenceValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (WBSPerSitePreference)initWithIdentifier:(id)identifier;
@end

@implementation WBSPerSitePreference

+ (id)localizedStringForBinaryPreferenceValue:(id)value
{
  [value BOOLValue];
  v3 = _WBSLocalizedString();

  return v3;
}

- (WBSPerSitePreference)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = WBSPerSitePreference;
  v5 = [(WBSPerSitePreference *)&v10 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      identifier = [(WBSPerSitePreference *)equalCopy identifier];
      v7 = [(NSString *)identifier isEqualToString:identifier];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end
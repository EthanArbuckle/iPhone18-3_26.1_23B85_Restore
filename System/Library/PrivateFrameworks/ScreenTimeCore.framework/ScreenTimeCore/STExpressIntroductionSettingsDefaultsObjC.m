@interface STExpressIntroductionSettingsDefaultsObjC
- (STExpressIntroductionSettingsDefaultsObjC)init;
- (STExpressIntroductionSettingsDefaultsObjC)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STExpressIntroductionSettingsDefaultsObjC

- (STExpressIntroductionSettingsDefaultsObjC)init
{
  v5.receiver = self;
  v5.super_class = STExpressIntroductionSettingsDefaultsObjC;
  v2 = [(STExpressIntroductionSettingsDefaultsObjC *)&v5 init];
  contentRestrictionsValueByKey = v2->_contentRestrictionsValueByKey;
  v2->_contentRestrictionsValueByKey = MEMORY[0x1E695E0F8];

  return v2;
}

- (STExpressIntroductionSettingsDefaultsObjC)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = STExpressIntroductionSettingsDefaultsObjC;
  v3 = a3;
  v4 = [(STExpressIntroductionSettingsDefaultsObjC *)&v12 init];
  v4->_contentRestrictionsIsEnabled = [v3 decodeBoolForKey:@"ContentRestrictionsIsEnabled"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v3 decodeObjectOfClasses:v8 forKey:@"ContentRestrictionsValueByKey"];
  contentRestrictionsValueByKey = v4->_contentRestrictionsValueByKey;
  v4->_contentRestrictionsValueByKey = v9;

  v4->_contentRestrictionsHasStrictPolicy = [v3 decodeBoolForKey:@"ContentRestrictionsHasStrictPolicy"];
  v4->_communicationSafetyIsEnabled = [v3 decodeBoolForKey:@"CommunicationSafetyIsEnabled"];
  v4->_communicationSafetyHasStrictPolicy = [v3 decodeBoolForKey:@"CommunicationSafetyHasStrictPolicy"];
  v4->_screenDistanceIsEnabled = [v3 decodeBoolForKey:@"ScreenDistanceIsEnabled"];
  LOBYTE(v6) = [v3 decodeBoolForKey:@"ScreenDistanceHasStrictPolicy"];

  v4->_screenDistanceHasStrictPolicy = v6;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  contentRestrictionsIsEnabled = self->_contentRestrictionsIsEnabled;
  v5 = a3;
  [v5 encodeBool:contentRestrictionsIsEnabled forKey:@"ContentRestrictionsIsEnabled"];
  [v5 encodeObject:self->_contentRestrictionsValueByKey forKey:@"ContentRestrictionsValueByKey"];
  [v5 encodeBool:self->_contentRestrictionsHasStrictPolicy forKey:@"ContentRestrictionsHasStrictPolicy"];
  [v5 encodeBool:self->_communicationSafetyIsEnabled forKey:@"CommunicationSafetyIsEnabled"];
  [v5 encodeBool:self->_communicationSafetyHasStrictPolicy forKey:@"CommunicationSafetyHasStrictPolicy"];
  [v5 encodeBool:self->_screenDistanceIsEnabled forKey:@"ScreenDistanceIsEnabled"];
  [v5 encodeBool:self->_screenDistanceHasStrictPolicy forKey:@"ScreenDistanceHasStrictPolicy"];
}

@end
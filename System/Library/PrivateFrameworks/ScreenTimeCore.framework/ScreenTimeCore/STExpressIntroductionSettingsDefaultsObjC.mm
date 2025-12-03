@interface STExpressIntroductionSettingsDefaultsObjC
- (STExpressIntroductionSettingsDefaultsObjC)init;
- (STExpressIntroductionSettingsDefaultsObjC)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (STExpressIntroductionSettingsDefaultsObjC)initWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = STExpressIntroductionSettingsDefaultsObjC;
  coderCopy = coder;
  v4 = [(STExpressIntroductionSettingsDefaultsObjC *)&v12 init];
  v4->_contentRestrictionsIsEnabled = [coderCopy decodeBoolForKey:@"ContentRestrictionsIsEnabled"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ContentRestrictionsValueByKey"];
  contentRestrictionsValueByKey = v4->_contentRestrictionsValueByKey;
  v4->_contentRestrictionsValueByKey = v9;

  v4->_contentRestrictionsHasStrictPolicy = [coderCopy decodeBoolForKey:@"ContentRestrictionsHasStrictPolicy"];
  v4->_communicationSafetyIsEnabled = [coderCopy decodeBoolForKey:@"CommunicationSafetyIsEnabled"];
  v4->_communicationSafetyHasStrictPolicy = [coderCopy decodeBoolForKey:@"CommunicationSafetyHasStrictPolicy"];
  v4->_screenDistanceIsEnabled = [coderCopy decodeBoolForKey:@"ScreenDistanceIsEnabled"];
  LOBYTE(v6) = [coderCopy decodeBoolForKey:@"ScreenDistanceHasStrictPolicy"];

  v4->_screenDistanceHasStrictPolicy = v6;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  contentRestrictionsIsEnabled = self->_contentRestrictionsIsEnabled;
  coderCopy = coder;
  [coderCopy encodeBool:contentRestrictionsIsEnabled forKey:@"ContentRestrictionsIsEnabled"];
  [coderCopy encodeObject:self->_contentRestrictionsValueByKey forKey:@"ContentRestrictionsValueByKey"];
  [coderCopy encodeBool:self->_contentRestrictionsHasStrictPolicy forKey:@"ContentRestrictionsHasStrictPolicy"];
  [coderCopy encodeBool:self->_communicationSafetyIsEnabled forKey:@"CommunicationSafetyIsEnabled"];
  [coderCopy encodeBool:self->_communicationSafetyHasStrictPolicy forKey:@"CommunicationSafetyHasStrictPolicy"];
  [coderCopy encodeBool:self->_screenDistanceIsEnabled forKey:@"ScreenDistanceIsEnabled"];
  [coderCopy encodeBool:self->_screenDistanceHasStrictPolicy forKey:@"ScreenDistanceHasStrictPolicy"];
}

@end
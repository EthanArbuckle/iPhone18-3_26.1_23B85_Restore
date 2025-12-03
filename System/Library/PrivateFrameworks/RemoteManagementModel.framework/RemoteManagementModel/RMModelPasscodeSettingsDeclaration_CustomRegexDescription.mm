@interface RMModelPasscodeSettingsDeclaration_CustomRegexDescription
+ (id)build;
+ (id)buildRequiredOnly;
- (id)copyWithZone:(_NSZone *)zone;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelPasscodeSettingsDeclaration_CustomRegexDescription

+ (id)build
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadDictionary = [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self payloadDictionary];
  payloadDictionary2 = [otherCopy payloadDictionary];

  v6 = [RMModelConfigurationBase combineMergeDictionary:payloadDictionary other:payloadDictionary2];
  [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self setPayloadDictionary:v6];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMModelPasscodeSettingsDeclaration_CustomRegexDescription;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSDictionary *)self->_payloadDictionary copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end
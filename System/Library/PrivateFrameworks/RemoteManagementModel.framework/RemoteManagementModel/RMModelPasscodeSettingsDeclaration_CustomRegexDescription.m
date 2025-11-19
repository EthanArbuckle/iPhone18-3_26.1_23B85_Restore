@interface RMModelPasscodeSettingsDeclaration_CustomRegexDescription
+ (id)build;
+ (id)buildRequiredOnly;
- (id)copyWithZone:(_NSZone *)a3;
- (void)combineWithOther:(id)a3;
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

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v7 = [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self payloadDictionary];
  v5 = [v4 payloadDictionary];

  v6 = [RMModelConfigurationBase combineMergeDictionary:v7 other:v5];
  [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self setPayloadDictionary:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelPasscodeSettingsDeclaration_CustomRegexDescription;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_payloadDictionary copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end
@interface RMModelPasscodeSettingsDeclaration_CustomRegex
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithRegex:(id)a3;
+ (id)buildWithRegex:(id)a3 description:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
@end

@implementation RMModelPasscodeSettingsDeclaration_CustomRegex

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Regex";
  v7[1] = @"Description";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithRegex:(id)a3 description:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadRegex:v6];

  [v7 setPayloadDescription:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithRegex:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadRegex:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelPasscodeSettingsDeclaration_CustomRegex allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Regex" forKeyPath:@"payloadRegex" isRequired:1 defaultValue:0 error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Description" forKeyPath:@"payloadDescription" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self payloadRegex];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Regex" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self payloadDescription];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__RMModelPasscodeSettingsDeclaration_CustomRegex_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v11 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Description" value:v7 dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v5 = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self payloadRegex];
  v6 = [v4 payloadRegex];
  v7 = [RMModelConfigurationBase combineFirst:v5 other:v6];
  [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self setPayloadRegex:v7];

  v10 = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self payloadDescription];
  v8 = [v4 payloadDescription];

  v9 = [RMModelConfigurationBase combineDictionary:v10 other:v8];
  [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self setPayloadDescription:v9];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelPasscodeSettingsDeclaration_CustomRegex;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadRegex copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self->_payloadDescription copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
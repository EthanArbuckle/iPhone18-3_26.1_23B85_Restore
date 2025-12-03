@interface RMModelPasscodeSettingsDeclaration_CustomRegex
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithRegex:(id)regex;
+ (id)buildWithRegex:(id)regex description:(id)description;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
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

+ (id)buildWithRegex:(id)regex description:(id)description
{
  descriptionCopy = description;
  regexCopy = regex;
  v7 = objc_opt_new();
  [v7 setPayloadRegex:regexCopy];

  [v7 setPayloadDescription:descriptionCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithRegex:(id)regex
{
  regexCopy = regex;
  v4 = objc_opt_new();
  [v4 setPayloadRegex:regexCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelPasscodeSettingsDeclaration_CustomRegex allowedPayloadKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Regex" forKeyPath:@"payloadRegex" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Description" forKeyPath:@"payloadDescription" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  payloadRegex = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self payloadRegex];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Regex" value:payloadRegex isRequired:1 defaultValue:0];

  payloadDescription = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self payloadDescription];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__RMModelPasscodeSettingsDeclaration_CustomRegex_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Description" value:payloadDescription dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadRegex = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self payloadRegex];
  payloadRegex2 = [otherCopy payloadRegex];
  v7 = [RMModelConfigurationBase combineFirst:payloadRegex other:payloadRegex2];
  [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self setPayloadRegex:v7];

  payloadDescription = [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self payloadDescription];
  payloadDescription2 = [otherCopy payloadDescription];

  v9 = [RMModelConfigurationBase combineDictionary:payloadDescription other:payloadDescription2];
  [(RMModelPasscodeSettingsDeclaration_CustomRegex *)self setPayloadDescription:v9];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelPasscodeSettingsDeclaration_CustomRegex;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadRegex copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMModelPasscodeSettingsDeclaration_CustomRegexDescription *)self->_payloadDescription copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
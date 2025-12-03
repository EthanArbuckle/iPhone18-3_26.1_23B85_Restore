@interface RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithDescription:(id)description token:(id)token;
+ (id)buildWithDescription:(id)description token:(id)token;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Description";
  v7[1] = @"Token";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithDescription:(id)description token:(id)token
{
  tokenCopy = token;
  descriptionCopy = description;
  v7 = objc_opt_new();
  [v7 setPayloadDescription:descriptionCopy];

  [v7 setPayloadToken:tokenCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithDescription:(id)description token:(id)token
{
  tokenCopy = token;
  descriptionCopy = description;
  v7 = objc_opt_new();
  [v7 setPayloadDescription:descriptionCopy];

  [v7 setPayloadToken:tokenCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Description" forKeyPath:@"payloadDescription" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Token" forKeyPath:@"payloadToken" isRequired:1 defaultValue:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadDescription = [(RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram *)self payloadDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Description" value:payloadDescription isRequired:1 defaultValue:0];

  payloadToken = [(RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram *)self payloadToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Token" value:payloadToken isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadDescription = [(RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram *)self payloadDescription];
  payloadDescription2 = [otherCopy payloadDescription];
  v7 = [RMModelConfigurationBase combineFirst:payloadDescription other:payloadDescription2];
  [(RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram *)self setPayloadDescription:v7];

  payloadToken = [(RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram *)self payloadToken];
  payloadToken2 = [otherCopy payloadToken];

  v9 = [RMModelConfigurationBase combineFirst:payloadToken other:payloadToken2];
  [(RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram *)self setPayloadToken:v9];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelSoftwareUpdateSettingsDeclaration_BetaRequireProgram;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadDescription copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadToken copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
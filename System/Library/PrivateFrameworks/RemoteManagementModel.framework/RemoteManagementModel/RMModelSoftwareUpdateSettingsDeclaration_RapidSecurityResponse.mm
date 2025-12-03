@interface RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithEnable:(id)enable enableRollback:(id)rollback;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
@end

@implementation RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Enable";
  v7[1] = @"EnableRollback";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithEnable:(id)enable enableRollback:(id)rollback
{
  rollbackCopy = rollback;
  enableCopy = enable;
  v7 = objc_opt_new();
  v8 = v7;
  v9 = MEMORY[0x277CBEC38];
  if (enableCopy)
  {
    v10 = enableCopy;
  }

  else
  {
    v10 = MEMORY[0x277CBEC38];
  }

  [v7 setPayloadEnable:v10];

  if (rollbackCopy)
  {
    v11 = rollbackCopy;
  }

  else
  {
    v11 = v9;
  }

  [v8 setPayloadEnableRollback:v11];

  return v8;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = 0;
  if ([(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Enable" forKeyPath:@"payloadEnable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"EnableRollback" forKeyPath:@"payloadEnableRollback" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:error];
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadEnable = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self payloadEnable];
  v6 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enable" value:payloadEnable isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  payloadEnableRollback = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self payloadEnableRollback];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"EnableRollback" value:payloadEnableRollback isRequired:0 defaultValue:v6];

  v8 = [v4 copy];

  return v8;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadEnable = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self payloadEnable];
  payloadEnable2 = [otherCopy payloadEnable];
  v7 = [RMModelConfigurationBase combineBooleanAnd:payloadEnable other:payloadEnable2];
  [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self setPayloadEnable:v7];

  payloadEnableRollback = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self payloadEnableRollback];
  payloadEnableRollback2 = [otherCopy payloadEnableRollback];

  v9 = [RMModelConfigurationBase combineBooleanAnd:payloadEnableRollback other:payloadEnableRollback2];
  [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self setPayloadEnableRollback:v9];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSNumber *)self->_payloadEnable copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_payloadEnableRollback copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
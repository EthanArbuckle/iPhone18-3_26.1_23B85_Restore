@interface RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithEnable:(id)a3 enableRollback:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
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

+ (id)buildWithEnable:(id)a3 enableRollback:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = v7;
  v9 = MEMORY[0x277CBEC38];
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = MEMORY[0x277CBEC38];
  }

  [v7 setPayloadEnable:v10];

  if (v5)
  {
    v11 = v5;
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

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = 0;
  if ([(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"Enable" forKeyPath:@"payloadEnable" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5])
  {
    v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"EnableRollback" forKeyPath:@"payloadEnableRollback" isRequired:0 defaultValue:MEMORY[0x277CBEC38] error:a5];
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self payloadEnable];
  v6 = MEMORY[0x277CBEC38];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enable" value:v5 isRequired:0 defaultValue:MEMORY[0x277CBEC38]];

  v7 = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self payloadEnableRollback];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"EnableRollback" value:v7 isRequired:0 defaultValue:v6];

  v8 = [v4 copy];

  return v8;
}

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v5 = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self payloadEnable];
  v6 = [v4 payloadEnable];
  v7 = [RMModelConfigurationBase combineBooleanAnd:v5 other:v6];
  [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self setPayloadEnable:v7];

  v10 = [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self payloadEnableRollback];
  v8 = [v4 payloadEnableRollback];

  v9 = [RMModelConfigurationBase combineBooleanAnd:v10 other:v8];
  [(RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse *)self setPayloadEnableRollback:v9];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelSoftwareUpdateSettingsDeclaration_RapidSecurityResponse;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadEnable copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_payloadEnableRollback copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
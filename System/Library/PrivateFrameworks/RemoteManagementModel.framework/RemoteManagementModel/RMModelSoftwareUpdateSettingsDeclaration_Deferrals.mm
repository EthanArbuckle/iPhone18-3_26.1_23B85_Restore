@interface RMModelSoftwareUpdateSettingsDeclaration_Deferrals
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithCombinedPeriodInDays:(id)a3 majorPeriodInDays:(id)a4 minorPeriodInDays:(id)a5 systemPeriodInDays:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
- (void)combineWithOther:(id)a3;
@end

@implementation RMModelSoftwareUpdateSettingsDeclaration_Deferrals

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"CombinedPeriodInDays";
  v7[1] = @"MajorPeriodInDays";
  v7[2] = @"MinorPeriodInDays";
  v7[3] = @"SystemPeriodInDays";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithCombinedPeriodInDays:(id)a3 majorPeriodInDays:(id)a4 minorPeriodInDays:(id)a5 systemPeriodInDays:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setPayloadCombinedPeriodInDays:v12];

  [v13 setPayloadMajorPeriodInDays:v11];
  [v13 setPayloadMinorPeriodInDays:v10];

  [v13 setPayloadSystemPeriodInDays:v9];

  return v13;
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

  v11 = +[RMModelSoftwareUpdateSettingsDeclaration_Deferrals allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"CombinedPeriodInDays" forKeyPath:@"payloadCombinedPeriodInDays" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"MajorPeriodInDays" forKeyPath:@"payloadMajorPeriodInDays" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"MinorPeriodInDays" forKeyPath:@"payloadMinorPeriodInDays" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"SystemPeriodInDays" forKeyPath:@"payloadSystemPeriodInDays" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadCombinedPeriodInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"CombinedPeriodInDays" value:v5 isRequired:0 defaultValue:0];

  v6 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadMajorPeriodInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"MajorPeriodInDays" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadMinorPeriodInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"MinorPeriodInDays" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadSystemPeriodInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"SystemPeriodInDays" value:v8 isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (void)combineWithOther:(id)a3
{
  v4 = a3;
  v5 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadCombinedPeriodInDays];
  v6 = [v4 payloadCombinedPeriodInDays];
  v7 = [RMModelConfigurationBase combineNumberMax:v5 other:v6];
  [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self setPayloadCombinedPeriodInDays:v7];

  v8 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadMajorPeriodInDays];
  v9 = [v4 payloadMajorPeriodInDays];
  v10 = [RMModelConfigurationBase combineNumberMax:v8 other:v9];
  [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self setPayloadMajorPeriodInDays:v10];

  v11 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadMinorPeriodInDays];
  v12 = [v4 payloadMinorPeriodInDays];
  v13 = [RMModelConfigurationBase combineNumberMax:v11 other:v12];
  [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self setPayloadMinorPeriodInDays:v13];

  v16 = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadSystemPeriodInDays];
  v14 = [v4 payloadSystemPeriodInDays];

  v15 = [RMModelConfigurationBase combineNumberMax:v16 other:v14];
  [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self setPayloadSystemPeriodInDays:v15];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelSoftwareUpdateSettingsDeclaration_Deferrals;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadCombinedPeriodInDays copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_payloadMajorPeriodInDays copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadMinorPeriodInDays copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSNumber *)self->_payloadSystemPeriodInDays copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end
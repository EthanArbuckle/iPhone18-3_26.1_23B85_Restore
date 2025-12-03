@interface RMModelSoftwareUpdateSettingsDeclaration_Deferrals
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithCombinedPeriodInDays:(id)days majorPeriodInDays:(id)inDays minorPeriodInDays:(id)periodInDays systemPeriodInDays:(id)systemPeriodInDays;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
- (void)combineWithOther:(id)other;
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

+ (id)buildWithCombinedPeriodInDays:(id)days majorPeriodInDays:(id)inDays minorPeriodInDays:(id)periodInDays systemPeriodInDays:(id)systemPeriodInDays
{
  systemPeriodInDaysCopy = systemPeriodInDays;
  periodInDaysCopy = periodInDays;
  inDaysCopy = inDays;
  daysCopy = days;
  v13 = objc_opt_new();
  [v13 setPayloadCombinedPeriodInDays:daysCopy];

  [v13 setPayloadMajorPeriodInDays:inDaysCopy];
  [v13 setPayloadMinorPeriodInDays:periodInDaysCopy];

  [v13 setPayloadSystemPeriodInDays:systemPeriodInDaysCopy];

  return v13;
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

  v11 = +[RMModelSoftwareUpdateSettingsDeclaration_Deferrals allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"CombinedPeriodInDays" forKeyPath:@"payloadCombinedPeriodInDays" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MajorPeriodInDays" forKeyPath:@"payloadMajorPeriodInDays" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"MinorPeriodInDays" forKeyPath:@"payloadMinorPeriodInDays" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"SystemPeriodInDays" forKeyPath:@"payloadSystemPeriodInDays" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadCombinedPeriodInDays = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadCombinedPeriodInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"CombinedPeriodInDays" value:payloadCombinedPeriodInDays isRequired:0 defaultValue:0];

  payloadMajorPeriodInDays = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadMajorPeriodInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"MajorPeriodInDays" value:payloadMajorPeriodInDays isRequired:0 defaultValue:0];

  payloadMinorPeriodInDays = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadMinorPeriodInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"MinorPeriodInDays" value:payloadMinorPeriodInDays isRequired:0 defaultValue:0];

  payloadSystemPeriodInDays = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadSystemPeriodInDays];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"SystemPeriodInDays" value:payloadSystemPeriodInDays isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (void)combineWithOther:(id)other
{
  otherCopy = other;
  payloadCombinedPeriodInDays = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadCombinedPeriodInDays];
  payloadCombinedPeriodInDays2 = [otherCopy payloadCombinedPeriodInDays];
  v7 = [RMModelConfigurationBase combineNumberMax:payloadCombinedPeriodInDays other:payloadCombinedPeriodInDays2];
  [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self setPayloadCombinedPeriodInDays:v7];

  payloadMajorPeriodInDays = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadMajorPeriodInDays];
  payloadMajorPeriodInDays2 = [otherCopy payloadMajorPeriodInDays];
  v10 = [RMModelConfigurationBase combineNumberMax:payloadMajorPeriodInDays other:payloadMajorPeriodInDays2];
  [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self setPayloadMajorPeriodInDays:v10];

  payloadMinorPeriodInDays = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadMinorPeriodInDays];
  payloadMinorPeriodInDays2 = [otherCopy payloadMinorPeriodInDays];
  v13 = [RMModelConfigurationBase combineNumberMax:payloadMinorPeriodInDays other:payloadMinorPeriodInDays2];
  [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self setPayloadMinorPeriodInDays:v13];

  payloadSystemPeriodInDays = [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self payloadSystemPeriodInDays];
  payloadSystemPeriodInDays2 = [otherCopy payloadSystemPeriodInDays];

  v15 = [RMModelConfigurationBase combineNumberMax:payloadSystemPeriodInDays other:payloadSystemPeriodInDays2];
  [(RMModelSoftwareUpdateSettingsDeclaration_Deferrals *)self setPayloadSystemPeriodInDays:v15];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelSoftwareUpdateSettingsDeclaration_Deferrals;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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
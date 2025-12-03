@interface RMModelStatusServicesBackgroundTask_Launchd
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithLabel:(id)label program:(id)program checksum:(id)checksum;
+ (id)buildWithLabel:(id)label program:(id)program programArguments:(id)arguments checksum:(id)checksum deviceManagement:(id)management;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelStatusServicesBackgroundTask_Launchd

+ (NSSet)allowedStatusKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"label";
  v7[1] = @"program";
  v7[2] = @"program-arguments";
  v7[3] = @"checksum";
  v7[4] = @"device-management";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithLabel:(id)label program:(id)program programArguments:(id)arguments checksum:(id)checksum deviceManagement:(id)management
{
  managementCopy = management;
  checksumCopy = checksum;
  argumentsCopy = arguments;
  programCopy = program;
  labelCopy = label;
  v16 = objc_opt_new();
  [v16 setStatusLabel:labelCopy];

  [v16 setStatusProgram:programCopy];
  [v16 setStatusProgramArguments:argumentsCopy];

  [v16 setStatusChecksum:checksumCopy];
  [v16 setStatusDeviceManagement:managementCopy];

  return v16;
}

+ (id)buildRequiredOnlyWithLabel:(id)label program:(id)program checksum:(id)checksum
{
  checksumCopy = checksum;
  programCopy = program;
  labelCopy = label;
  v10 = objc_opt_new();
  [v10 setStatusLabel:labelCopy];

  [v10 setStatusProgram:programCopy];
  [v10 setStatusChecksum:checksumCopy];

  return v10;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMModelStatusServicesBackgroundTask_Launchd allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"label" forKeyPath:@"statusLabel" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"program" forKeyPath:@"statusProgram" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"program-arguments" forKeyPath:@"statusProgramArguments" validator:&__block_literal_global_26 isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"checksum" forKeyPath:@"statusChecksum" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v16) = type;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"device-management" forKeyPath:@"statusDeviceManagement" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:error];
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
  statusLabel = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusLabel];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"label" value:statusLabel isRequired:1 defaultValue:0];

  statusProgram = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusProgram];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"program" value:statusProgram isRequired:1 defaultValue:0];

  statusProgramArguments = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusProgramArguments];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"program-arguments" value:statusProgramArguments itemSerializer:&__block_literal_global_191 isRequired:0 defaultValue:0];

  statusChecksum = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusChecksum];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"checksum" value:statusChecksum isRequired:1 defaultValue:0];

  statusDeviceManagement = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusDeviceManagement];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__RMModelStatusServicesBackgroundTask_Launchd_serializeWithType___block_invoke_2;
  v13[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"device-management" value:statusDeviceManagement dictSerializer:v13 isRequired:0 defaultValue:0];

  v11 = [v5 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16.receiver = self;
  v16.super_class = RMModelStatusServicesBackgroundTask_Launchd;
  v4 = [(RMModelPayloadBase *)&v16 copyWithZone:zone];
  v5 = [(NSString *)self->_statusLabel copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusProgram copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSArray *)self->_statusProgramArguments copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusChecksum copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(RMModelStatusServicesBackgroundTask_LaunchdDeviceManagement *)self->_statusDeviceManagement copy];
  v14 = v4[6];
  v4[6] = v13;

  return v4;
}

@end
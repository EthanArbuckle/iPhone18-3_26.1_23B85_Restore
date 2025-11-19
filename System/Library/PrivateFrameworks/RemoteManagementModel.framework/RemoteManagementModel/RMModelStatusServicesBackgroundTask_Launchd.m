@interface RMModelStatusServicesBackgroundTask_Launchd
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithLabel:(id)a3 program:(id)a4 checksum:(id)a5;
+ (id)buildWithLabel:(id)a3 program:(id)a4 programArguments:(id)a5 checksum:(id)a6 deviceManagement:(id)a7;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithLabel:(id)a3 program:(id)a4 programArguments:(id)a5 checksum:(id)a6 deviceManagement:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setStatusLabel:v15];

  [v16 setStatusProgram:v14];
  [v16 setStatusProgramArguments:v13];

  [v16 setStatusChecksum:v12];
  [v16 setStatusDeviceManagement:v11];

  return v16;
}

+ (id)buildRequiredOnlyWithLabel:(id)a3 program:(id)a4 checksum:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setStatusLabel:v9];

  [v10 setStatusProgram:v8];
  [v10 setStatusChecksum:v7];

  return v10;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelStatusServicesBackgroundTask_Launchd allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"label" forKeyPath:@"statusLabel" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"program" forKeyPath:@"statusProgram" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"program-arguments" forKeyPath:@"statusProgramArguments" validator:&__block_literal_global_26 isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"checksum" forKeyPath:@"statusChecksum" isRequired:1 defaultValue:0 error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"device-management" forKeyPath:@"statusDeviceManagement" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5];
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
  v6 = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusLabel];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"label" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusProgram];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"program" value:v7 isRequired:1 defaultValue:0];

  v8 = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusProgramArguments];
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"program-arguments" value:v8 itemSerializer:&__block_literal_global_191 isRequired:0 defaultValue:0];

  v9 = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusChecksum];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"checksum" value:v9 isRequired:1 defaultValue:0];

  v10 = [(RMModelStatusServicesBackgroundTask_Launchd *)self statusDeviceManagement];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__RMModelStatusServicesBackgroundTask_Launchd_serializeWithType___block_invoke_2;
  v13[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v14 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"device-management" value:v10 dictSerializer:v13 isRequired:0 defaultValue:0];

  v11 = [v5 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = RMModelStatusServicesBackgroundTask_Launchd;
  v4 = [(RMModelPayloadBase *)&v16 copyWithZone:a3];
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
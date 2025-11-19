@interface RMModelStatusServicesBackgroundTask
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 uid:(id)a4 path:(id)a5 state:(id)a6 type:(id)a7;
+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 codeSignature:(id)a5 uid:(id)a6 path:(id)a7 state:(id)a8 type:(id)a9 launchd:(id)a10;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusServicesBackgroundTask

+ (NSSet)allowedStatusKeys
{
  v7[8] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"code-signature";
  v7[3] = @"uid";
  v7[4] = @"path";
  v7[5] = @"state";
  v7[6] = @"type";
  v7[7] = @"launchd";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:8];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 codeSignature:(id)a5 uid:(id)a6 path:(id)a7 state:(id)a8 type:(id)a9 launchd:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = objc_opt_new();
  [v24 setStatusIdentifier:v23];

  if (v22)
  {
    v25 = v22;
  }

  else
  {
    v25 = MEMORY[0x277CBEC28];
  }

  [v24 setStatusRemoved:v25];

  [v24 setStatusCodeSignature:v21];
  [v24 setStatusUid:v20];

  [v24 setStatusPath:v19];
  [v24 setStatusState:v18];

  [v24 setStatusType:v17];
  [v24 setStatusLaunchd:v16];

  return v24;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 uid:(id)a4 path:(id)a5 state:(id)a6 type:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setStatusIdentifier:v15];

  [v16 setStatusUid:v14];
  [v16 setStatusPath:v13];

  [v16 setStatusState:v12];
  [v16 setStatusType:v11];

  return v16;
}

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746CD28;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469CB0];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469CC8];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelStatusServicesBackgroundTask allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"code-signature" forKeyPath:@"statusCodeSignature" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"uid" forKeyPath:@"statusUid" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"path" forKeyPath:@"statusPath" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"state" forKeyPath:@"statusState" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"type" forKeyPath:@"statusType" isRequired:1 defaultValue:0 error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"launchd" forKeyPath:@"statusLaunchd" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelStatusServicesBackgroundTask *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusServicesBackgroundTask *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"_removed" value:v7 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v8 = [(RMModelStatusServicesBackgroundTask *)self statusCodeSignature];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"code-signature" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelStatusServicesBackgroundTask *)self statusUid];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"uid" value:v9 isRequired:1 defaultValue:0];

  v10 = [(RMModelStatusServicesBackgroundTask *)self statusPath];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"path" value:v10 isRequired:1 defaultValue:0];

  v11 = [(RMModelStatusServicesBackgroundTask *)self statusState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"state" value:v11 isRequired:1 defaultValue:0];

  v12 = [(RMModelStatusServicesBackgroundTask *)self statusType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"type" value:v12 isRequired:1 defaultValue:0];

  v13 = [(RMModelStatusServicesBackgroundTask *)self statusLaunchd];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64__RMModelStatusServicesBackgroundTask_serializePayloadWithType___block_invoke;
  v16[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v17 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"launchd" value:v13 dictSerializer:v16 isRequired:0 defaultValue:0];

  v14 = [v5 copy];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22.receiver = self;
  v22.super_class = RMModelStatusServicesBackgroundTask;
  v4 = [(RMModelPayloadBase *)&v22 copyWithZone:a3];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusCodeSignature copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSNumber *)self->_statusUid copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_statusPath copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_statusState copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSString *)self->_statusType copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(RMModelStatusServicesBackgroundTask_Launchd *)self->_statusLaunchd copy];
  v20 = v4[9];
  v4[9] = v19;

  return v4;
}

uint64_t __90__RMModelStatusServicesBackgroundTask_Launchd_loadFromDictionary_serializationType_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end
@interface RMModelStatusAppManagedList
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 declarationIdentifier:(id)a5 name:(id)a6 externalVersionId:(id)a7 version:(id)a8 shortVersion:(id)a9 state:(id)a10 updateState:(id)a11 configState:(id)a12 reasons:(id)a13;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusAppManagedList

+ (NSSet)allowedStatusKeys
{
  v7[11] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"declaration-identifier";
  v7[3] = @"name";
  v7[4] = @"external-version-id";
  v7[5] = @"version";
  v7[6] = @"short-version";
  v7[7] = @"state";
  v7[8] = @"update-state";
  v7[9] = @"config-state";
  v7[10] = @"reasons";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:11];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 declarationIdentifier:(id)a5 name:(id)a6 externalVersionId:(id)a7 version:(id)a8 shortVersion:(id)a9 state:(id)a10 updateState:(id)a11 configState:(id)a12 reasons:(id)a13
{
  v32 = a13;
  v31 = a12;
  v30 = a11;
  v18 = a10;
  v19 = a9;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = objc_opt_new();
  [v26 setStatusIdentifier:v25];

  if (v24)
  {
    v27 = v24;
  }

  else
  {
    v27 = MEMORY[0x277CBEC28];
  }

  [v26 setStatusRemoved:{v27, a3}];

  [v26 setStatusDeclarationIdentifier:v23];
  [v26 setStatusName:v22];

  [v26 setStatusExternalVersionId:v21];
  [v26 setStatusVersion:v20];

  [v26 setStatusShortVersion:v19];
  [v26 setStatusState:v18];

  [v26 setStatusUpdateState:v30];
  [v26 setStatusConfigState:v31];

  [v26 setStatusReasons:v32];

  return v26;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStatusIdentifier:v3];

  return v4;
}

+ (id)supportedOS
{
  v22[4] = *MEMORY[0x277D85DE8];
  v21[0] = &unk_28746C098;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874685D0];
  v20[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874685E8];
  v20[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v22[0] = v14;
  v21[1] = &unk_28746C0B0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468600];
  v19[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468618];
  v19[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v22[1] = v4;
  v21[2] = &unk_28746C0E0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468630];
  v18[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468648];
  v18[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v22[2] = v7;
  v21[3] = &unk_28746C0F8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468660];
  v17[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468678];
  v17[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v22[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelStatusAppManagedList allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"name" forKeyPath:@"statusName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v8 usingKey:@"external-version-id" forKeyPath:@"statusExternalVersionId" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"version" forKeyPath:@"statusVersion" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"short-version" forKeyPath:@"statusShortVersion" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"state" forKeyPath:@"statusState" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"update-state" forKeyPath:@"statusUpdateState" isRequired:0 defaultValue:0 error:a5]&& (LOWORD(v16) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"config-state" forKeyPath:@"statusConfigState" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5]))
  {
    LOWORD(v17) = a4;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"reasons" forKeyPath:@"statusReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v17 error:a5];
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
  v6 = [(RMModelStatusAppManagedList *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusAppManagedList *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"_removed" value:v7 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v8 = [(RMModelStatusAppManagedList *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"declaration-identifier" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelStatusAppManagedList *)self statusName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"name" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelStatusAppManagedList *)self statusExternalVersionId];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v5 usingKey:@"external-version-id" value:v10 isRequired:0 defaultValue:0];

  v11 = [(RMModelStatusAppManagedList *)self statusVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"version" value:v11 isRequired:0 defaultValue:0];

  v12 = [(RMModelStatusAppManagedList *)self statusShortVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"short-version" value:v12 isRequired:0 defaultValue:0];

  v13 = [(RMModelStatusAppManagedList *)self statusState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"state" value:v13 isRequired:0 defaultValue:0];

  v14 = [(RMModelStatusAppManagedList *)self statusUpdateState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"update-state" value:v14 isRequired:0 defaultValue:0];

  v15 = [(RMModelStatusAppManagedList *)self statusConfigState];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __56__RMModelStatusAppManagedList_serializePayloadWithType___block_invoke;
  v21[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v22 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"config-state" value:v15 dictSerializer:v21 isRequired:0 defaultValue:0];

  v16 = [(RMModelStatusAppManagedList *)self statusReasons];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __56__RMModelStatusAppManagedList_serializePayloadWithType___block_invoke_2;
  v19[3] = &__block_descriptor_34_e43___NSDictionary_16__0__RMModelStatusReason_8l;
  v20 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"reasons" value:v16 itemSerializer:v19 isRequired:0 defaultValue:0];

  v17 = [v5 copy];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28.receiver = self;
  v28.super_class = RMModelStatusAppManagedList;
  v4 = [(RMModelPayloadBase *)&v28 copyWithZone:a3];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusDeclarationIdentifier copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusName copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSNumber *)self->_statusExternalVersionId copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_statusVersion copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSString *)self->_statusShortVersion copy];
  v18 = v4[8];
  v4[8] = v17;

  v19 = [(NSString *)self->_statusState copy];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(NSString *)self->_statusUpdateState copy];
  v22 = v4[10];
  v4[10] = v21;

  v23 = [(RMModelStatusAppManagedList_ManagedConfiguration *)self->_statusConfigState copy];
  v24 = v4[11];
  v4[11] = v23;

  v25 = [(NSArray *)self->_statusReasons copy];
  v26 = v4[12];
  v4[12] = v25;

  return v4;
}

@end
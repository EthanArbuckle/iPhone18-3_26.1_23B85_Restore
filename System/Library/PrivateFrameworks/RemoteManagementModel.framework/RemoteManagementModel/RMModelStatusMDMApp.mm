@interface RMModelStatusMDMApp
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 name:(id)a5 externalVersionId:(id)a6 version:(id)a7 shortVersion:(id)a8 state:(id)a9;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusMDMApp

+ (NSSet)allowedStatusKeys
{
  v7[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"name";
  v7[3] = @"external-version-id";
  v7[4] = @"version";
  v7[5] = @"short-version";
  v7[6] = @"state";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:7];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 name:(id)a5 externalVersionId:(id)a6 version:(id)a7 shortVersion:(id)a8 state:(id)a9
{
  v15 = a9;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = objc_opt_new();
  [v22 setStatusIdentifier:v21];

  if (v20)
  {
    v23 = v20;
  }

  else
  {
    v23 = MEMORY[0x277CBEC28];
  }

  [v22 setStatusRemoved:v23];

  [v22 setStatusName:v19];
  [v22 setStatusExternalVersionId:v18];

  [v22 setStatusVersion:v17];
  [v22 setStatusShortVersion:v16];

  [v22 setStatusState:v15];

  return v22;
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
  v26[5] = *MEMORY[0x277D85DE8];
  v25[0] = &unk_28746CA40;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874698C0];
  v24[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874698D8];
  v24[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v26[0] = v17;
  v25[1] = &unk_28746CA88;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874698F0];
  v23[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469908];
  v23[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v26[1] = v14;
  v25[2] = &unk_28746CA70;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469920];
  v22[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469938];
  v22[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v26[2] = v4;
  v25[3] = &unk_28746CAA0;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469950];
  v21[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469968];
  v21[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v26[3] = v7;
  v25[4] = &unk_28746CAB8;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469980];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287469998];
  v20[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v26[4] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelStatusMDMApp allowedStatusKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"name" forKeyPath:@"statusName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"external-version-id" forKeyPath:@"statusExternalVersionId" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"version" forKeyPath:@"statusVersion" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"short-version" forKeyPath:@"statusShortVersion" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"state" forKeyPath:@"statusState" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializePayloadWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelStatusMDMApp *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"identifier" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelStatusMDMApp *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"_removed" value:v6 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v7 = [(RMModelStatusMDMApp *)self statusName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"name" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelStatusMDMApp *)self statusExternalVersionId];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"external-version-id" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelStatusMDMApp *)self statusVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"version" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelStatusMDMApp *)self statusShortVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"short-version" value:v10 isRequired:0 defaultValue:0];

  v11 = [(RMModelStatusMDMApp *)self statusState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"state" value:v11 isRequired:0 defaultValue:0];

  v12 = [v4 copy];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = RMModelStatusMDMApp;
  v4 = [(RMModelPayloadBase *)&v20 copyWithZone:a3];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_statusRemoved copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_statusName copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusExternalVersionId copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_statusVersion copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_statusShortVersion copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSString *)self->_statusState copy];
  v18 = v4[8];
  v4[8] = v17;

  return v4;
}

@end
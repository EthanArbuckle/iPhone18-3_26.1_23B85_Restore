@interface RMModelStatusPackageList
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3;
+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 declarationIdentifier:(id)a5 name:(id)a6 version:(id)a7 state:(id)a8 reasons:(id)a9;
+ (id)supportedOS;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializePayloadWithType:(signed __int16)a3;
@end

@implementation RMModelStatusPackageList

+ (NSSet)allowedStatusKeys
{
  v7[7] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"_removed";
  v7[2] = @"declaration-identifier";
  v7[3] = @"name";
  v7[4] = @"version";
  v7[5] = @"state";
  v7[6] = @"reasons";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:7];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)a3 removed:(id)a4 declarationIdentifier:(id)a5 name:(id)a6 version:(id)a7 state:(id)a8 reasons:(id)a9
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

  [v22 setStatusDeclarationIdentifier:v19];
  [v22 setStatusName:v18];

  [v22 setStatusVersion:v17];
  [v22 setStatusState:v16];

  [v22 setStatusReasons:v15];

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
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746CAD0;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874699B0];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874699C8];
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

  v12 = +[RMModelStatusPackageList allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"_removed" forKeyPath:@"statusRemoved" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"declaration-identifier" forKeyPath:@"statusDeclarationIdentifier" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"name" forKeyPath:@"statusName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"version" forKeyPath:@"statusVersion" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"state" forKeyPath:@"statusState" isRequired:0 defaultValue:0 error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"reasons" forKeyPath:@"statusReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v16 error:a5];
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
  v6 = [(RMModelStatusPackageList *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusPackageList *)self statusRemoved];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"_removed" value:v7 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v8 = [(RMModelStatusPackageList *)self statusDeclarationIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"declaration-identifier" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelStatusPackageList *)self statusName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"name" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelStatusPackageList *)self statusVersion];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"version" value:v10 isRequired:0 defaultValue:0];

  v11 = [(RMModelStatusPackageList *)self statusState];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"state" value:v11 isRequired:0 defaultValue:0];

  v12 = [(RMModelStatusPackageList *)self statusReasons];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __53__RMModelStatusPackageList_serializePayloadWithType___block_invoke;
  v15[3] = &__block_descriptor_34_e43___NSDictionary_16__0__RMModelStatusReason_8l;
  v16 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"reasons" value:v12 itemSerializer:v15 isRequired:0 defaultValue:0];

  v13 = [v5 copy];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20.receiver = self;
  v20.super_class = RMModelStatusPackageList;
  v4 = [(RMModelPayloadBase *)&v20 copyWithZone:a3];
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

  v13 = [(NSString *)self->_statusVersion copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_statusState copy];
  v16 = v4[7];
  v4[7] = v15;

  v17 = [(NSArray *)self->_statusReasons copy];
  v18 = v4[8];
  v4[8] = v17;

  return v4;
}

@end
@interface RMModelStatusManagementDeclarations_Declaration
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 serverToken:(id)a4 active:(id)a5 valid:(id)a6;
+ (id)buildWithIdentifier:(id)a3 serverToken:(id)a4 active:(id)a5 valid:(id)a6 reasons:(id)a7;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelStatusManagementDeclarations_Declaration

+ (NSSet)allowedStatusKeys
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"identifier";
  v7[1] = @"server-token";
  v7[2] = @"active";
  v7[3] = @"valid";
  v7[4] = @"reasons";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)a3 serverToken:(id)a4 active:(id)a5 valid:(id)a6 reasons:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = objc_opt_new();
  [v16 setStatusIdentifier:v15];

  [v16 setStatusServerToken:v14];
  [v16 setStatusActive:v13];

  [v16 setStatusValid:v12];
  [v16 setStatusReasons:v11];

  return v16;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 serverToken:(id)a4 active:(id)a5 valid:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setStatusIdentifier:v12];

  [v13 setStatusServerToken:v11];
  [v13 setStatusActive:v10];

  [v13 setStatusValid:v9];

  return v13;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelStatusManagementDeclarations_Declaration allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"identifier" forKeyPath:@"statusIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"server-token" forKeyPath:@"statusServerToken" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v8 usingKey:@"active" forKeyPath:@"statusActive" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"valid" forKeyPath:@"statusValid" isRequired:1 defaultValue:0 error:a5])
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

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMModelStatusManagementDeclarations_Declaration *)self statusIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"identifier" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusManagementDeclarations_Declaration *)self statusServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"server-token" value:v7 isRequired:1 defaultValue:0];

  v8 = [(RMModelStatusManagementDeclarations_Declaration *)self statusActive];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v5 usingKey:@"active" value:v8 isRequired:1 defaultValue:0];

  v9 = [(RMModelStatusManagementDeclarations_Declaration *)self statusValid];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"valid" value:v9 isRequired:1 defaultValue:0];

  v10 = [(RMModelStatusManagementDeclarations_Declaration *)self statusReasons];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __69__RMModelStatusManagementDeclarations_Declaration_serializeWithType___block_invoke;
  v13[3] = &__block_descriptor_34_e43___NSDictionary_16__0__RMModelStatusReason_8l;
  v14 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"reasons" value:v10 itemSerializer:v13 isRequired:0 defaultValue:0];

  v11 = [v5 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v16.receiver = self;
  v16.super_class = RMModelStatusManagementDeclarations_Declaration;
  v4 = [(RMModelPayloadBase *)&v16 copyWithZone:a3];
  v5 = [(NSString *)self->_statusIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusServerToken copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_statusActive copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_statusValid copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSArray *)self->_statusReasons copy];
  v14 = v4[6];
  v4[6] = v13;

  return v4;
}

@end
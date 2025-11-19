@interface RMModelManagementStatusSubscriptionsDeclaration_StatusItem
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithName:(id)a3;
+ (id)buildWithName:(id)a3;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelManagementStatusSubscriptionsDeclaration_StatusItem

+ (NSSet)allowedPayloadKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Name";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadName:v3];

  return v4;
}

+ (id)buildRequiredOnlyWithName:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadName:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CBEB58];
  v8 = a3;
  v9 = [v8 allKeys];
  v10 = [v7 setWithArray:v9];

  v11 = +[RMModelManagementStatusSubscriptionsDeclaration_StatusItem allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  LOBYTE(a5) = [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Name" forKeyPath:@"payloadName" isRequired:1 defaultValue:0 error:a5];
  return a5;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelManagementStatusSubscriptionsDeclaration_StatusItem *)self payloadName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Name" value:v5 isRequired:1 defaultValue:0];

  v6 = [v4 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelManagementStatusSubscriptionsDeclaration_StatusItem;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadName copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end
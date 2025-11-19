@interface RMModelStatusReason
+ (NSSet)allowedStatusKeys;
+ (id)buildRequiredOnlyWithCode:(id)a3;
+ (id)buildWithCode:(id)a3 description:(id)a4 details:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelStatusReason

+ (NSSet)allowedStatusKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"code";
  v7[1] = @"description";
  v7[2] = @"details";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithCode:(id)a3 description:(id)a4 details:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setStatusCode:v9];

  [v10 setStatusDescription:v8];
  [v10 setStatusDetails:v7];

  return v10;
}

+ (id)buildRequiredOnlyWithCode:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setStatusCode:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMModelStatusReason allowedStatusKeys];
  [v11 minusSet:v12];

  v13 = [v11 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v13];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"code" forKeyPath:@"statusCode" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"description" forKeyPath:@"statusDescription" isRequired:0 defaultValue:0 error:a5])
  {
    LOWORD(v16) = a4;
    v14 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"details" forKeyPath:@"statusDetails" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v16 error:a5];
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
  v6 = [(RMModelStatusReason *)self statusCode];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"code" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelStatusReason *)self statusDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"description" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelStatusReason *)self statusDetails];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__RMModelStatusReason_serializeWithType___block_invoke;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v12 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"details" value:v8 dictSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelStatusReason;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_statusCode copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_statusDescription copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelAnyPayload *)self->_statusDetails copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end
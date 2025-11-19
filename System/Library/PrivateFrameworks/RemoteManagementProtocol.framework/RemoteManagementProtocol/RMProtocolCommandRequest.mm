@interface RMProtocolCommandRequest
+ (id)requestWithStatus:(id)a3 identifier:(id)a4 result:(id)a5 reasons:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMProtocolCommandRequest

+ (id)requestWithStatus:(id)a3 identifier:(id)a4 result:(id)a5 reasons:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setRequestStatus:v12];

  [v13 setRequestIdentifier:v11];
  [v13 setRequestResult:v10];

  [v13 setRequestReasons:v9];

  return v13;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Status" forKeyPath:@"requestStatus" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Identifier" forKeyPath:@"requestIdentifier" isRequired:0 defaultValue:0 error:a5]&& (LOWORD(v11) = a4, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Result" forKeyPath:@"requestResult" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v11 error:a5]))
  {
    LOWORD(v12) = a4;
    v9 = [(RMModelPayloadBase *)self loadArrayFromDictionary:v8 usingKey:@"Reasons" forKeyPath:@"requestReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v12 error:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMProtocolCommandRequest *)self requestStatus];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Status" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMProtocolCommandRequest *)self requestIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Identifier" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMProtocolCommandRequest *)self requestResult];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__RMProtocolCommandRequest_serializeWithType___block_invoke;
  v14[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v15 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Result" value:v8 dictSerializer:v14 isRequired:0 defaultValue:0];

  v9 = [(RMProtocolCommandRequest *)self requestReasons];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__RMProtocolCommandRequest_serializeWithType___block_invoke_2;
  v12[3] = &__block_descriptor_34_e61___NSDictionary_16__0__RMProtocolCommandRequest_StatusReason_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Reasons" value:v9 itemSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMProtocolCommandRequest;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSString *)self->_requestStatus copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_requestIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelAnyPayload *)self->_requestResult copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSArray *)self->_requestReasons copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end
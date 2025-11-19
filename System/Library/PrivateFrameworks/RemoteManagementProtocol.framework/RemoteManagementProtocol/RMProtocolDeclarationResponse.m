@interface RMProtocolDeclarationResponse
+ (id)requestWithType:(id)a3 identifier:(id)a4 serverToken:(id)a5 payload:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMProtocolDeclarationResponse

+ (id)requestWithType:(id)a3 identifier:(id)a4 serverToken:(id)a5 payload:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setResponseType:v12];

  [v13 setResponseIdentifier:v11];
  [v13 setResponseServerToken:v10];

  [v13 setResponsePayload:v9];

  return v13;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Type" forKeyPath:@"responseType" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Identifier" forKeyPath:@"responseIdentifier" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"ServerToken" forKeyPath:@"responseServerToken" isRequired:1 defaultValue:0 error:a5])
  {
    LOWORD(v11) = a4;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Payload" forKeyPath:@"responsePayload" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v11 error:a5];
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
  v6 = [(RMProtocolDeclarationResponse *)self responseType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Type" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMProtocolDeclarationResponse *)self responseIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Identifier" value:v7 isRequired:1 defaultValue:0];

  v8 = [(RMProtocolDeclarationResponse *)self responseServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ServerToken" value:v8 isRequired:1 defaultValue:0];

  v9 = [(RMProtocolDeclarationResponse *)self responsePayload];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__RMProtocolDeclarationResponse_serializeWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v13 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Payload" value:v9 dictSerializer:v12 isRequired:1 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMProtocolDeclarationResponse;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSString *)self->_responseType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responseIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_responseServerToken copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(RMModelAnyPayload *)self->_responsePayload copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end
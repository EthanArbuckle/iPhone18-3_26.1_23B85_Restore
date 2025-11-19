@interface RMProtocolErrorResponse
+ (id)requestWithCode:(id)a3 description:(id)a4 details:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMProtocolErrorResponse

+ (id)requestWithCode:(id)a3 description:(id)a4 details:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setResponseCode:v9];

  [v10 setResponseDescription:v8];
  [v10 setResponseDetails:v7];

  return v10;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v8 = a3;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Code" forKeyPath:@"responseCode" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Description" forKeyPath:@"responseDescription" isRequired:0 defaultValue:0 error:a5])
  {
    LOWORD(v11) = a4;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Details" forKeyPath:@"responseDetails" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v11 error:a5];
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
  v6 = [(RMProtocolErrorResponse *)self responseCode];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Code" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMProtocolErrorResponse *)self responseDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Description" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMProtocolErrorResponse *)self responseDetails];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__RMProtocolErrorResponse_serializeWithType___block_invoke;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v12 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Details" value:v8 dictSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMProtocolErrorResponse;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_responseCode copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responseDescription copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelAnyPayload *)self->_responseDetails copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end
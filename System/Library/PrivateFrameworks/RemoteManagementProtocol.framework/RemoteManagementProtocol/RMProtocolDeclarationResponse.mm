@interface RMProtocolDeclarationResponse
+ (id)requestWithType:(id)type identifier:(id)identifier serverToken:(id)token payload:(id)payload;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolDeclarationResponse

+ (id)requestWithType:(id)type identifier:(id)identifier serverToken:(id)token payload:(id)payload
{
  payloadCopy = payload;
  tokenCopy = token;
  identifierCopy = identifier;
  typeCopy = type;
  v13 = objc_opt_new();
  [v13 setResponseType:typeCopy];

  [v13 setResponseIdentifier:identifierCopy];
  [v13 setResponseServerToken:tokenCopy];

  [v13 setResponsePayload:payloadCopy];

  return v13;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Type" forKeyPath:@"responseType" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Identifier" forKeyPath:@"responseIdentifier" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ServerToken" forKeyPath:@"responseServerToken" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v11) = type;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Payload" forKeyPath:@"responsePayload" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v11 error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  responseType = [(RMProtocolDeclarationResponse *)self responseType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Type" value:responseType isRequired:1 defaultValue:0];

  responseIdentifier = [(RMProtocolDeclarationResponse *)self responseIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Identifier" value:responseIdentifier isRequired:1 defaultValue:0];

  responseServerToken = [(RMProtocolDeclarationResponse *)self responseServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"ServerToken" value:responseServerToken isRequired:1 defaultValue:0];

  responsePayload = [(RMProtocolDeclarationResponse *)self responsePayload];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__RMProtocolDeclarationResponse_serializeWithType___block_invoke;
  v12[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Payload" value:responsePayload dictSerializer:v12 isRequired:1 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMProtocolDeclarationResponse;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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
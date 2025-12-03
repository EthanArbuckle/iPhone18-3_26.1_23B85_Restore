@interface RMProtocolCommandRequest
+ (id)requestWithStatus:(id)status identifier:(id)identifier result:(id)result reasons:(id)reasons;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolCommandRequest

+ (id)requestWithStatus:(id)status identifier:(id)identifier result:(id)result reasons:(id)reasons
{
  reasonsCopy = reasons;
  resultCopy = result;
  identifierCopy = identifier;
  statusCopy = status;
  v13 = objc_opt_new();
  [v13 setRequestStatus:statusCopy];

  [v13 setRequestIdentifier:identifierCopy];
  [v13 setRequestResult:resultCopy];

  [v13 setRequestReasons:reasonsCopy];

  return v13;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Status" forKeyPath:@"requestStatus" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Identifier" forKeyPath:@"requestIdentifier" isRequired:0 defaultValue:0 error:error]&& (LOWORD(v11) = type, [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Result" forKeyPath:@"requestResult" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v11 error:error]))
  {
    LOWORD(v12) = type;
    v9 = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Reasons" forKeyPath:@"requestReasons" classType:objc_opt_class() nested:0 isRequired:0 defaultValue:0 serializationType:v12 error:error];
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
  requestStatus = [(RMProtocolCommandRequest *)self requestStatus];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Status" value:requestStatus isRequired:1 defaultValue:0];

  requestIdentifier = [(RMProtocolCommandRequest *)self requestIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Identifier" value:requestIdentifier isRequired:0 defaultValue:0];

  requestResult = [(RMProtocolCommandRequest *)self requestResult];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__RMProtocolCommandRequest_serializeWithType___block_invoke;
  v14[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Result" value:requestResult dictSerializer:v14 isRequired:0 defaultValue:0];

  requestReasons = [(RMProtocolCommandRequest *)self requestReasons];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__RMProtocolCommandRequest_serializeWithType___block_invoke_2;
  v12[3] = &__block_descriptor_34_e61___NSDictionary_16__0__RMProtocolCommandRequest_StatusReason_8l;
  typeCopy2 = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Reasons" value:requestReasons itemSerializer:v12 isRequired:0 defaultValue:0];

  v10 = [v5 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMProtocolCommandRequest;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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
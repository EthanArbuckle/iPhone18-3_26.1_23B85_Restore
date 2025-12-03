@interface RMProtocolErrorResponse
+ (id)requestWithCode:(id)code description:(id)description details:(id)details;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolErrorResponse

+ (id)requestWithCode:(id)code description:(id)description details:(id)details
{
  detailsCopy = details;
  descriptionCopy = description;
  codeCopy = code;
  v10 = objc_opt_new();
  [v10 setResponseCode:codeCopy];

  [v10 setResponseDescription:descriptionCopy];
  [v10 setResponseDetails:detailsCopy];

  return v10;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Code" forKeyPath:@"responseCode" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Description" forKeyPath:@"responseDescription" isRequired:0 defaultValue:0 error:error])
  {
    LOWORD(v11) = type;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Details" forKeyPath:@"responseDetails" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v11 error:error];
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
  responseCode = [(RMProtocolErrorResponse *)self responseCode];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Code" value:responseCode isRequired:1 defaultValue:0];

  responseDescription = [(RMProtocolErrorResponse *)self responseDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Description" value:responseDescription isRequired:0 defaultValue:0];

  responseDetails = [(RMProtocolErrorResponse *)self responseDetails];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__RMProtocolErrorResponse_serializeWithType___block_invoke;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Details" value:responseDetails dictSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMProtocolErrorResponse;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
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
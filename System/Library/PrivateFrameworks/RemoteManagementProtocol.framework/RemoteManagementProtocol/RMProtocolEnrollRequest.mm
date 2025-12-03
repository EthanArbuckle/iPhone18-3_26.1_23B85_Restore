@interface RMProtocolEnrollRequest
+ (id)requestWithEnrollmentToken:(id)token statusItems:(id)items;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolEnrollRequest

+ (id)requestWithEnrollmentToken:(id)token statusItems:(id)items
{
  itemsCopy = items;
  tokenCopy = token;
  v7 = objc_opt_new();
  [v7 setRequestEnrollmentToken:tokenCopy];

  [v7 setRequestStatusItems:itemsCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"EnrollmentToken" forKeyPath:@"requestEnrollmentToken" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v11) = type;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"StatusItems" forKeyPath:@"requestStatusItems" classType:objc_opt_class() isRequired:1 defaultValue:0 serializationType:v11 error:error];
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
  requestEnrollmentToken = [(RMProtocolEnrollRequest *)self requestEnrollmentToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"EnrollmentToken" value:requestEnrollmentToken isRequired:1 defaultValue:0];

  requestStatusItems = [(RMProtocolEnrollRequest *)self requestStatusItems];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __45__RMProtocolEnrollRequest_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"StatusItems" value:requestStatusItems dictSerializer:v10 isRequired:1 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMProtocolEnrollRequest;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_requestEnrollmentToken copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMModelAnyPayload *)self->_requestStatusItems copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
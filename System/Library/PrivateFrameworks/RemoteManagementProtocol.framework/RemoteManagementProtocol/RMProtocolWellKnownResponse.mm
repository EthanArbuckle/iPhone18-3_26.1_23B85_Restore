@interface RMProtocolWellKnownResponse
+ (id)requestWithServers:(id)servers;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolWellKnownResponse

+ (id)requestWithServers:(id)servers
{
  serversCopy = servers;
  v4 = objc_opt_new();
  [v4 setResponseServers:serversCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  LOWORD(v10) = type;
  LOBYTE(error) = [(RMModelPayloadBase *)self loadArrayFromDictionary:dictionaryCopy usingKey:@"Servers" forKeyPath:@"responseServers" classType:objc_opt_class() nested:0 isRequired:1 defaultValue:0 serializationType:v10 error:error];

  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  responseServers = [(RMProtocolWellKnownResponse *)self responseServers];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__RMProtocolWellKnownResponse_serializeWithType___block_invoke;
  v9[3] = &__block_descriptor_34_e75___NSDictionary_16__0__RMProtocolWellKnownResponse_WellKnownResponseServer_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeArrayIntoDictionary:v5 usingKey:@"Servers" value:responseServers itemSerializer:v9 isRequired:1 defaultValue:0];

  v7 = [v5 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = RMProtocolWellKnownResponse;
  v4 = [(RMModelPayloadBase *)&v8 copyWithZone:zone];
  v5 = [(NSArray *)self->_responseServers copy];
  v6 = v4[2];
  v4[2] = v5;

  return v4;
}

@end
@interface RMProtocolCommandResponse
+ (id)requestWithCommandToken:(id)token command:(id)command;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolCommandResponse

+ (id)requestWithCommandToken:(id)token command:(id)command
{
  commandCopy = command;
  tokenCopy = token;
  v7 = objc_opt_new();
  [v7 setResponseCommandToken:tokenCopy];

  [v7 setResponseCommand:commandCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"CommandToken" forKeyPath:@"responseCommandToken" isRequired:1 defaultValue:0 error:error])
  {
    LOWORD(v11) = type;
    v9 = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Command" forKeyPath:@"responseCommand" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v11 error:error];
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
  responseCommandToken = [(RMProtocolCommandResponse *)self responseCommandToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"CommandToken" value:responseCommandToken isRequired:1 defaultValue:0];

  responseCommand = [(RMProtocolCommandResponse *)self responseCommand];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__RMProtocolCommandResponse_serializeWithType___block_invoke;
  v10[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Command" value:responseCommand dictSerializer:v10 isRequired:0 defaultValue:0];

  v8 = [v5 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMProtocolCommandResponse;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_responseCommandToken copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(RMProtocolCommandResponse_Command *)self->_responseCommand copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
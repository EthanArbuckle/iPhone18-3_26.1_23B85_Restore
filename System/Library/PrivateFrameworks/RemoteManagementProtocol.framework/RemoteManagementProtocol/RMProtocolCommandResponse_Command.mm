@interface RMProtocolCommandResponse_Command
+ (NSSet)allowedResponseKeys;
+ (id)buildRequiredOnlyWithType:(id)type identifier:(id)identifier;
+ (id)buildWithType:(id)type identifier:(id)identifier payload:(id)payload;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolCommandResponse_Command

+ (NSSet)allowedResponseKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Type";
  v7[1] = @"Identifier";
  v7[2] = @"Payload";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithType:(id)type identifier:(id)identifier payload:(id)payload
{
  payloadCopy = payload;
  identifierCopy = identifier;
  typeCopy = type;
  v10 = objc_opt_new();
  [v10 setResponseType:typeCopy];

  [v10 setResponseIdentifier:identifierCopy];
  [v10 setResponsePayload:payloadCopy];

  return v10;
}

+ (id)buildRequiredOnlyWithType:(id)type identifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  v7 = objc_opt_new();
  [v7 setResponseType:typeCopy];

  [v7 setResponseIdentifier:identifierCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v9 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v11 = [v9 setWithArray:allKeys];

  v12 = +[RMProtocolCommandResponse_Command allowedResponseKeys];
  [v11 minusSet:v12];

  if ([v11 count])
  {
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v11];
      v20[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *error = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

LABEL_7:
      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (![(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Type" forKeyPath:@"responseType" isRequired:1 defaultValue:0 error:error]|| ![(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Identifier" forKeyPath:@"responseIdentifier" isRequired:1 defaultValue:0 error:error])
    {
      goto LABEL_7;
    }

    LOWORD(v18) = type;
    LOBYTE(error) = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:dictionaryCopy usingKey:@"Payload" forKeyPath:@"responsePayload" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:error];
  }

  v16 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v5 = objc_opt_new();
  responseType = [(RMProtocolCommandResponse_Command *)self responseType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Type" value:responseType isRequired:1 defaultValue:0];

  responseIdentifier = [(RMProtocolCommandResponse_Command *)self responseIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Identifier" value:responseIdentifier isRequired:1 defaultValue:0];

  responsePayload = [(RMProtocolCommandResponse_Command *)self responsePayload];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__RMProtocolCommandResponse_Command_serializeWithType___block_invoke;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  typeCopy = type;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Payload" value:responsePayload dictSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMProtocolCommandResponse_Command;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
  v5 = [(NSString *)self->_responseType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responseIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelAnyPayload *)self->_responsePayload copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end
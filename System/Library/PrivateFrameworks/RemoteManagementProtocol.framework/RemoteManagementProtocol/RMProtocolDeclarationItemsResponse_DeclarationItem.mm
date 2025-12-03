@interface RMProtocolDeclarationItemsResponse_DeclarationItem
+ (NSSet)allowedResponseKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)identifier serverToken:(id)token;
+ (id)buildWithIdentifier:(id)identifier serverToken:(id)token;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMProtocolDeclarationItemsResponse_DeclarationItem

+ (NSSet)allowedResponseKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Identifier";
  v7[1] = @"ServerToken";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithIdentifier:(id)identifier serverToken:(id)token
{
  tokenCopy = token;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  [v7 setResponseIdentifier:identifierCopy];

  [v7 setResponseServerToken:tokenCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)identifier serverToken:(id)token
{
  tokenCopy = token;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  [v7 setResponseIdentifier:identifierCopy];

  [v7 setResponseServerToken:tokenCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMProtocolDeclarationItemsResponse_DeclarationItem allowedResponseKeys];
  [v10 minusSet:v11];

  if ([v10 count])
  {
    if (error)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v10, *MEMORY[0x277CCA450]];
      v18[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *error = [v12 errorWithDomain:@"error" code:1 userInfo:v14];

LABEL_6:
      LOBYTE(error) = 0;
    }
  }

  else
  {
    if (![(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Identifier" forKeyPath:@"responseIdentifier" isRequired:1 defaultValue:0 error:error])
    {
      goto LABEL_6;
    }

    LOBYTE(error) = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ServerToken" forKeyPath:@"responseServerToken" isRequired:1 defaultValue:0 error:error];
  }

  v15 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  responseIdentifier = [(RMProtocolDeclarationItemsResponse_DeclarationItem *)self responseIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Identifier" value:responseIdentifier isRequired:1 defaultValue:0];

  responseServerToken = [(RMProtocolDeclarationItemsResponse_DeclarationItem *)self responseServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ServerToken" value:responseServerToken isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMProtocolDeclarationItemsResponse_DeclarationItem;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_responseIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responseServerToken copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
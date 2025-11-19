@interface RMProtocolDeclarationItemsResponse_DeclarationItem
+ (NSSet)allowedResponseKeys;
+ (id)buildRequiredOnlyWithIdentifier:(id)a3 serverToken:(id)a4;
+ (id)buildWithIdentifier:(id)a3 serverToken:(id)a4;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithIdentifier:(id)a3 serverToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setResponseIdentifier:v6];

  [v7 setResponseServerToken:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithIdentifier:(id)a3 serverToken:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setResponseIdentifier:v6];

  [v7 setResponseServerToken:v5];

  return v7;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMProtocolDeclarationItemsResponse_DeclarationItem allowedResponseKeys];
  [v10 minusSet:v11];

  if ([v10 count])
  {
    if (a5)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v10, *MEMORY[0x277CCA450]];
      v18[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      *a5 = [v12 errorWithDomain:@"error" code:1 userInfo:v14];

LABEL_6:
      LOBYTE(a5) = 0;
    }
  }

  else
  {
    if (![(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Identifier" forKeyPath:@"responseIdentifier" isRequired:1 defaultValue:0 error:a5])
    {
      goto LABEL_6;
    }

    LOBYTE(a5) = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ServerToken" forKeyPath:@"responseServerToken" isRequired:1 defaultValue:0 error:a5];
  }

  v15 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMProtocolDeclarationItemsResponse_DeclarationItem *)self responseIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Identifier" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMProtocolDeclarationItemsResponse_DeclarationItem *)self responseServerToken];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ServerToken" value:v6 isRequired:1 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMProtocolDeclarationItemsResponse_DeclarationItem;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_responseIdentifier copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_responseServerToken copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end
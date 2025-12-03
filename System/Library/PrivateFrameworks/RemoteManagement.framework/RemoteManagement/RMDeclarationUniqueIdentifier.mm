@interface RMDeclarationUniqueIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeclarationIdentifier:(id)identifier;
- (RMDeclarationUniqueIdentifier)initWithCoder:(id)coder;
- (RMDeclarationUniqueIdentifier)initWithDeclarationPayload:(id)payload;
- (RMDeclarationUniqueIdentifier)initWithManagementSourceIdentifier:(id)identifier type:(id)type identifier:(id)a5 serverToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMDeclarationUniqueIdentifier

- (RMDeclarationUniqueIdentifier)initWithDeclarationPayload:(id)payload
{
  payloadCopy = payload;
  managementSourceIdentifier = [payloadCopy managementSourceIdentifier];
  declarationType = [payloadCopy declarationType];
  identifier = [payloadCopy identifier];
  serverToken = [payloadCopy serverToken];

  v9 = [(RMDeclarationUniqueIdentifier *)self initWithManagementSourceIdentifier:managementSourceIdentifier type:declarationType identifier:identifier serverToken:serverToken];
  return v9;
}

- (RMDeclarationUniqueIdentifier)initWithManagementSourceIdentifier:(id)identifier type:(id)type identifier:(id)a5 serverToken:(id)token
{
  identifierCopy = identifier;
  typeCopy = type;
  v12 = a5;
  tokenCopy = token;
  v24.receiver = self;
  v24.super_class = RMDeclarationUniqueIdentifier;
  v14 = [(RMDeclarationUniqueIdentifier *)&v24 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    managementSourceIdentifier = v14->_managementSourceIdentifier;
    v14->_managementSourceIdentifier = v15;

    v17 = [typeCopy copy];
    type = v14->_type;
    v14->_type = v17;

    v19 = [v12 copy];
    identifier = v14->_identifier;
    v14->_identifier = v19;

    v21 = [tokenCopy copy];
    serverToken = v14->_serverToken;
    v14->_serverToken = v21;
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  managementSourceIdentifier = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
  type = [(RMDeclarationUniqueIdentifier *)self type];
  identifier = [(RMDeclarationUniqueIdentifier *)self identifier];
  serverToken = [(RMDeclarationUniqueIdentifier *)self serverToken];
  v9 = [NSString stringWithFormat:@"<%@: %p { managementSourceIdentifier = %@, type = %@, identifier = %@, serverToken = %@ }>", v4, self, managementSourceIdentifier, type, identifier, serverToken];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RMDeclarationUniqueIdentifier *)self isEqualToDeclarationIdentifier:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDeclarationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(RMDeclarationUniqueIdentifier *)self hash];
  if (v5 == [identifierCopy hash])
  {
    managementSourceIdentifier = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
    managementSourceIdentifier2 = [identifierCopy managementSourceIdentifier];
    if ([managementSourceIdentifier isEqualToString:managementSourceIdentifier2])
    {
      type = [(RMDeclarationUniqueIdentifier *)self type];
      type2 = [identifierCopy type];
      if ([type isEqualToString:type2])
      {
        identifier = [(RMDeclarationUniqueIdentifier *)self identifier];
        identifier2 = [identifierCopy identifier];
        if ([identifier isEqualToString:identifier2])
        {
          serverToken = [(RMDeclarationUniqueIdentifier *)self serverToken];
          serverToken2 = [identifierCopy serverToken];
          v14 = [serverToken isEqualToString:serverToken2];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  managementSourceIdentifier = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
  v4 = [managementSourceIdentifier hash];
  type = [(RMDeclarationUniqueIdentifier *)self type];
  v6 = [type hash] ^ v4;
  identifier = [(RMDeclarationUniqueIdentifier *)self identifier];
  v8 = [identifier hash];
  serverToken = [(RMDeclarationUniqueIdentifier *)self serverToken];
  v10 = v8 ^ [serverToken hash];

  return v6 ^ v10;
}

- (RMDeclarationUniqueIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managementSourceIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverToken"];

  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v7 == 0 || v8 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RMDeclarationUniqueIdentifier *)self initWithManagementSourceIdentifier:v5 type:v6 identifier:v7 serverToken:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  managementSourceIdentifier = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
  [coderCopy encodeObject:managementSourceIdentifier forKey:@"managementSourceIdentifier"];

  type = [(RMDeclarationUniqueIdentifier *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  identifier = [(RMDeclarationUniqueIdentifier *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  serverToken = [(RMDeclarationUniqueIdentifier *)self serverToken];
  [coderCopy encodeObject:serverToken forKey:@"serverToken"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RMDeclarationUniqueIdentifier alloc];
  managementSourceIdentifier = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
  type = [(RMDeclarationUniqueIdentifier *)self type];
  identifier = [(RMDeclarationUniqueIdentifier *)self identifier];
  serverToken = [(RMDeclarationUniqueIdentifier *)self serverToken];
  v9 = [(RMDeclarationUniqueIdentifier *)v4 initWithManagementSourceIdentifier:managementSourceIdentifier type:type identifier:identifier serverToken:serverToken];

  return v9;
}

@end
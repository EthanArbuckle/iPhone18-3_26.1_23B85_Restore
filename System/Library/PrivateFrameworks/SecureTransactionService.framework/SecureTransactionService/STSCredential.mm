@interface STSCredential
+ (id)unifiedAccessCredentialWithAID:(id)d publicKeyIdentifier:(id)identifier;
+ (id)unifiedAccessCredentialWithAIDs:(id)ds primaryPublicKeyIdentifier:(id)identifier secondaryAid:(id)aid secondaryPublicKeyIdentifier:(id)keyIdentifier;
- (STSCredential)initWithCoder:(id)coder;
- (STSCredential)initWithType:(unsigned __int8)type identifier:(id)identifier subIdentifier:(id)subIdentifier secondaryIdentifier:(id)secondaryIdentifier secondarySubIdentifier:(id)secondarySubIdentifier;
- (__SecAccessControl)copyAccessControl;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STSCredential

+ (id)unifiedAccessCredentialWithAID:(id)d publicKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  v7 = [[STSCredential alloc] initWithType:3 identifier:dCopy subIdentifier:identifierCopy];

  return v7;
}

+ (id)unifiedAccessCredentialWithAIDs:(id)ds primaryPublicKeyIdentifier:(id)identifier secondaryAid:(id)aid secondaryPublicKeyIdentifier:(id)keyIdentifier
{
  keyIdentifierCopy = keyIdentifier;
  aidCopy = aid;
  identifierCopy = identifier;
  dsCopy = ds;
  v13 = [[STSCredential alloc] initWithType:3 identifier:dsCopy subIdentifier:identifierCopy secondaryIdentifier:aidCopy secondarySubIdentifier:keyIdentifierCopy];

  return v13;
}

- (STSCredential)initWithType:(unsigned __int8)type identifier:(id)identifier subIdentifier:(id)subIdentifier secondaryIdentifier:(id)secondaryIdentifier secondarySubIdentifier:(id)secondarySubIdentifier
{
  identifierCopy = identifier;
  subIdentifierCopy = subIdentifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  secondarySubIdentifierCopy = secondarySubIdentifier;
  v20.receiver = self;
  v20.super_class = STSCredential;
  v17 = [(STSCredential *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = type;
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_subIdentifier, subIdentifier);
    objc_storeStrong(&v18->_secondaryIdentifier, secondaryIdentifier);
    objc_storeStrong(&v18->_secondarySubIdentifier, secondarySubIdentifier);
  }

  return v18;
}

- (STSCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = STSCredential;
  v5 = [(STSCredential *)&v15 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntForKey:@"STSCredentialType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSCredentialIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSCredentialSubIdentifier"];
    subIdentifier = v5->_subIdentifier;
    v5->_subIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSCredentialSecondaryIdentifier"];
    secondaryIdentifier = v5->_secondaryIdentifier;
    v5->_secondaryIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"STSCredentialSecondarySubIdentifier"];
    secondarySubIdentifier = v5->_secondarySubIdentifier;
    v5->_secondarySubIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInt:type forKey:@"STSCredentialType"];
  [coderCopy encodeObject:self->_identifier forKey:@"STSCredentialIdentifier"];
  [coderCopy encodeObject:self->_subIdentifier forKey:@"STSCredentialSubIdentifier"];
  [coderCopy encodeObject:self->_secondaryIdentifier forKey:@"STSCredentialSecondaryIdentifier"];
  [coderCopy encodeObject:self->_secondarySubIdentifier forKey:@"STSCredentialSecondarySubIdentifier"];
}

- (id)description
{
  type = self->_type;
  if (type > 5)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_279B94048[type];
  }

  subIdentifier = self->_subIdentifier;
  if (self->_secondaryIdentifier)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Credential { Type=%@ primary identifier=%@ primary subIdentifier=%@ secondary Identifier=%@, secondary subIdentifier = %@}", v4, self->_identifier, subIdentifier, self->_secondaryIdentifier, self->_secondarySubIdentifier];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Credential { Type=%@ identifier=%@ subIdentifier=%@}", v4, self->_identifier, subIdentifier, v8, v9];
  }
  v6 = ;

  return v6;
}

- (__SecAccessControl)copyAccessControl
{
  type = self->_type;
  if (!self->_type || type == 1)
  {
    return 0;
  }

  if (type != 2)
  {
    if (type != 3 && type != 4)
    {
      if (type != 5)
      {
        return v8;
      }

      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  v4 = sub_2653A3E2C(v2);
  if (**(v5 + 976))
  {
    return sub_2653A3E00(v4);
  }

  else
  {
    return 0;
  }
}

@end
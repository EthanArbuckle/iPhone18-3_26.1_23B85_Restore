@interface STSCredential
+ (id)unifiedAccessCredentialWithAID:(id)a3 publicKeyIdentifier:(id)a4;
+ (id)unifiedAccessCredentialWithAIDs:(id)a3 primaryPublicKeyIdentifier:(id)a4 secondaryAid:(id)a5 secondaryPublicKeyIdentifier:(id)a6;
- (STSCredential)initWithCoder:(id)a3;
- (STSCredential)initWithType:(unsigned __int8)a3 identifier:(id)a4 subIdentifier:(id)a5 secondaryIdentifier:(id)a6 secondarySubIdentifier:(id)a7;
- (__SecAccessControl)copyAccessControl;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STSCredential

+ (id)unifiedAccessCredentialWithAID:(id)a3 publicKeyIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[STSCredential alloc] initWithType:3 identifier:v6 subIdentifier:v5];

  return v7;
}

+ (id)unifiedAccessCredentialWithAIDs:(id)a3 primaryPublicKeyIdentifier:(id)a4 secondaryAid:(id)a5 secondaryPublicKeyIdentifier:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[STSCredential alloc] initWithType:3 identifier:v12 subIdentifier:v11 secondaryIdentifier:v10 secondarySubIdentifier:v9];

  return v13;
}

- (STSCredential)initWithType:(unsigned __int8)a3 identifier:(id)a4 subIdentifier:(id)a5 secondaryIdentifier:(id)a6 secondarySubIdentifier:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = STSCredential;
  v17 = [(STSCredential *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = a3;
    objc_storeStrong(&v17->_identifier, a4);
    objc_storeStrong(&v18->_subIdentifier, a5);
    objc_storeStrong(&v18->_secondaryIdentifier, a6);
    objc_storeStrong(&v18->_secondarySubIdentifier, a7);
  }

  return v18;
}

- (STSCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STSCredential;
  v5 = [(STSCredential *)&v15 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntForKey:@"STSCredentialType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSCredentialIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSCredentialSubIdentifier"];
    subIdentifier = v5->_subIdentifier;
    v5->_subIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSCredentialSecondaryIdentifier"];
    secondaryIdentifier = v5->_secondaryIdentifier;
    v5->_secondaryIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"STSCredentialSecondarySubIdentifier"];
    secondarySubIdentifier = v5->_secondarySubIdentifier;
    v5->_secondarySubIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInt:type forKey:@"STSCredentialType"];
  [v5 encodeObject:self->_identifier forKey:@"STSCredentialIdentifier"];
  [v5 encodeObject:self->_subIdentifier forKey:@"STSCredentialSubIdentifier"];
  [v5 encodeObject:self->_secondaryIdentifier forKey:@"STSCredentialSecondaryIdentifier"];
  [v5 encodeObject:self->_secondarySubIdentifier forKey:@"STSCredentialSecondarySubIdentifier"];
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
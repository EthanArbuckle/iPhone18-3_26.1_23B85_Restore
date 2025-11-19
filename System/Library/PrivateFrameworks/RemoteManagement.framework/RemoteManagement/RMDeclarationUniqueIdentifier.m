@interface RMDeclarationUniqueIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeclarationIdentifier:(id)a3;
- (RMDeclarationUniqueIdentifier)initWithCoder:(id)a3;
- (RMDeclarationUniqueIdentifier)initWithDeclarationPayload:(id)a3;
- (RMDeclarationUniqueIdentifier)initWithManagementSourceIdentifier:(id)a3 type:(id)a4 identifier:(id)a5 serverToken:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMDeclarationUniqueIdentifier

- (RMDeclarationUniqueIdentifier)initWithDeclarationPayload:(id)a3
{
  v4 = a3;
  v5 = [v4 managementSourceIdentifier];
  v6 = [v4 declarationType];
  v7 = [v4 identifier];
  v8 = [v4 serverToken];

  v9 = [(RMDeclarationUniqueIdentifier *)self initWithManagementSourceIdentifier:v5 type:v6 identifier:v7 serverToken:v8];
  return v9;
}

- (RMDeclarationUniqueIdentifier)initWithManagementSourceIdentifier:(id)a3 type:(id)a4 identifier:(id)a5 serverToken:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = RMDeclarationUniqueIdentifier;
  v14 = [(RMDeclarationUniqueIdentifier *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    managementSourceIdentifier = v14->_managementSourceIdentifier;
    v14->_managementSourceIdentifier = v15;

    v17 = [v11 copy];
    type = v14->_type;
    v14->_type = v17;

    v19 = [v12 copy];
    identifier = v14->_identifier;
    v14->_identifier = v19;

    v21 = [v13 copy];
    serverToken = v14->_serverToken;
    v14->_serverToken = v21;
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
  v6 = [(RMDeclarationUniqueIdentifier *)self type];
  v7 = [(RMDeclarationUniqueIdentifier *)self identifier];
  v8 = [(RMDeclarationUniqueIdentifier *)self serverToken];
  v9 = [NSString stringWithFormat:@"<%@: %p { managementSourceIdentifier = %@, type = %@, identifier = %@, serverToken = %@ }>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(RMDeclarationUniqueIdentifier *)self isEqualToDeclarationIdentifier:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToDeclarationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RMDeclarationUniqueIdentifier *)self hash];
  if (v5 == [v4 hash])
  {
    v6 = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
    v7 = [v4 managementSourceIdentifier];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(RMDeclarationUniqueIdentifier *)self type];
      v9 = [v4 type];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(RMDeclarationUniqueIdentifier *)self identifier];
        v11 = [v4 identifier];
        if ([v10 isEqualToString:v11])
        {
          v12 = [(RMDeclarationUniqueIdentifier *)self serverToken];
          v13 = [v4 serverToken];
          v14 = [v12 isEqualToString:v13];
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
  v3 = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
  v4 = [v3 hash];
  v5 = [(RMDeclarationUniqueIdentifier *)self type];
  v6 = [v5 hash] ^ v4;
  v7 = [(RMDeclarationUniqueIdentifier *)self identifier];
  v8 = [v7 hash];
  v9 = [(RMDeclarationUniqueIdentifier *)self serverToken];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (RMDeclarationUniqueIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managementSourceIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverToken"];

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
    v12 = 0;
  }

  else
  {
    self = [(RMDeclarationUniqueIdentifier *)self initWithManagementSourceIdentifier:v5 type:v6 identifier:v7 serverToken:v8];
    v12 = self;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
  [v4 encodeObject:v5 forKey:@"managementSourceIdentifier"];

  v6 = [(RMDeclarationUniqueIdentifier *)self type];
  [v4 encodeObject:v6 forKey:@"type"];

  v7 = [(RMDeclarationUniqueIdentifier *)self identifier];
  [v4 encodeObject:v7 forKey:@"identifier"];

  v8 = [(RMDeclarationUniqueIdentifier *)self serverToken];
  [v4 encodeObject:v8 forKey:@"serverToken"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RMDeclarationUniqueIdentifier alloc];
  v5 = [(RMDeclarationUniqueIdentifier *)self managementSourceIdentifier];
  v6 = [(RMDeclarationUniqueIdentifier *)self type];
  v7 = [(RMDeclarationUniqueIdentifier *)self identifier];
  v8 = [(RMDeclarationUniqueIdentifier *)self serverToken];
  v9 = [(RMDeclarationUniqueIdentifier *)v4 initWithManagementSourceIdentifier:v5 type:v6 identifier:v7 serverToken:v8];

  return v9;
}

@end
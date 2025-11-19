@interface SFCredentialIdentity
- (BOOL)isEqual:(id)a3;
- (NSString)site;
- (SFCredentialIdentity)initWithCoder:(id)a3;
- (SFCredentialIdentity)initWithRowIdentifier:(int64_t)a3 serviceIdentifier:(id)a4 serviceIdentifierType:(int64_t)a5 externalRecordIdentifier:(id)a6 user:(id)a7 rank:(int64_t)a8;
- (SFCredentialIdentity)initWithRowIdentifier:(int64_t)a3 serviceIdentifier:(id)a4 serviceIdentifierType:(int64_t)a5 externalRecordIdentifier:(id)a6 user:(id)a7 rank:(int64_t)a8 owningExtensionState:(id)a9;
- (id)_domainWithoutWWWDot;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)compareForQuickTypeBar:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFCredentialIdentity

- (SFCredentialIdentity)initWithRowIdentifier:(int64_t)a3 serviceIdentifier:(id)a4 serviceIdentifierType:(int64_t)a5 externalRecordIdentifier:(id)a6 user:(id)a7 rank:(int64_t)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = SFCredentialIdentity;
  v17 = [(SFCredentialIdentity *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v17->_rowIdentifier = a3;
    v19 = [v14 copy];
    serviceIdentifier = v18->_serviceIdentifier;
    v18->_serviceIdentifier = v19;

    v18->_serviceIdentifierType = a5;
    v21 = [v15 copy];
    externalRecordIdentifier = v18->_externalRecordIdentifier;
    v18->_externalRecordIdentifier = v21;

    v23 = [v16 copy];
    user = v18->_user;
    v18->_user = v23;

    v18->_rank = a8;
    v25 = v18;
  }

  return v18;
}

- (SFCredentialIdentity)initWithRowIdentifier:(int64_t)a3 serviceIdentifier:(id)a4 serviceIdentifierType:(int64_t)a5 externalRecordIdentifier:(id)a6 user:(id)a7 rank:(int64_t)a8 owningExtensionState:(id)a9
{
  v16 = a9;
  v17 = [(SFCredentialIdentity *)self initWithRowIdentifier:a3 serviceIdentifier:a4 serviceIdentifierType:a5 externalRecordIdentifier:a6 user:a7 rank:a8];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_owningExtensionState, a9);
    v19 = v18;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  rowIdentifier = self->_rowIdentifier;
  v5 = a3;
  [v5 encodeInt64:rowIdentifier forKey:@"rowIdentifier"];
  [v5 encodeObject:self->_serviceIdentifier forKey:@"serviceIdentifier"];
  [v5 encodeInt64:self->_serviceIdentifierType forKey:@"serviceIdentifierType"];
  [v5 encodeObject:self->_externalRecordIdentifier forKey:@"externalRecordIdentifier"];
  [v5 encodeObject:self->_user forKey:@"user"];
  [v5 encodeInt64:self->_rank forKey:@"rank"];
  [v5 encodeObject:self->_owningExtensionState forKey:@"owningExtensionState"];
}

- (SFCredentialIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeInt64ForKey:@"rowIdentifier"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"serviceIdentifier"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_2875FD420;
  }

  v10 = v9;

  v11 = [v4 decodeInt64ForKey:@"serviceIdentifierType"];
  if (v11 >= 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v4 decodeObjectOfClass:v5 forKey:@"externalRecordIdentifier"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_2875FD420;
  }

  v16 = v15;

  v17 = [v4 decodeObjectOfClass:v5 forKey:@"user"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &stru_2875FD420;
  }

  v20 = v19;

  v21 = [v4 decodeInt64ForKey:@"rank"];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"owningExtensionState"];

  v23 = [(SFCredentialIdentity *)self initWithRowIdentifier:v6 serviceIdentifier:v10 serviceIdentifierType:v12 externalRecordIdentifier:v16 user:v20 rank:v21 owningExtensionState:v22];
  return v23;
}

- (unint64_t)hash
{
  v3 = self->_serviceIdentifierType ^ [(NSString *)self->_serviceIdentifier hash];
  v4 = [(NSString *)self->_user hash];
  return v3 ^ v4 ^ [(NSString *)self->_externalRecordIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SFCredentialIdentity *)v5 serviceIdentifier];
      v7 = [(SFCredentialIdentity *)v5 user];
      v8 = [(SFCredentialIdentity *)v5 externalRecordIdentifier];
      serviceIdentifierType = self->_serviceIdentifierType;
      if (serviceIdentifierType == [(SFCredentialIdentity *)v5 serviceIdentifierType]&& ((serviceIdentifier = self->_serviceIdentifier, serviceIdentifier == v6) || [(NSString *)serviceIdentifier isEqualToString:v6]) && ((user = self->_user, user == v7) || [(NSString *)user isEqualToString:v7]))
      {
        externalRecordIdentifier = self->_externalRecordIdentifier;
        if (externalRecordIdentifier == v8)
        {
          v13 = 1;
        }

        else
        {
          v13 = [(NSString *)externalRecordIdentifier isEqualToString:v8];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)_domainWithoutWWWDot
{
  domainWithoutWWWDot = self->_domainWithoutWWWDot;
  if (!domainWithoutWWWDot)
  {
    serviceIdentifierType = self->_serviceIdentifierType;
    if (serviceIdentifierType == 1)
    {
      v6 = [MEMORY[0x277CCACE0] componentsWithString:self->_serviceIdentifier];
      v7 = [v6 host];
      v8 = [v7 safari_stringByRemovingWwwDotPrefix];
      v9 = self->_domainWithoutWWWDot;
      self->_domainWithoutWWWDot = v8;
    }

    else
    {
      if (serviceIdentifierType)
      {
LABEL_7:
        domainWithoutWWWDot = self->_domainWithoutWWWDot;
        goto LABEL_8;
      }

      v5 = [(NSString *)self->_serviceIdentifier safari_stringByRemovingWwwDotPrefix];
      v6 = self->_domainWithoutWWWDot;
      self->_domainWithoutWWWDot = v5;
    }

    goto LABEL_7;
  }

LABEL_8:
  v10 = domainWithoutWWWDot;

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  rowIdentifier = self->_rowIdentifier;
  serviceIdentifierType = self->_serviceIdentifierType;
  serviceIdentifier = self->_serviceIdentifier;
  externalRecordIdentifier = self->_externalRecordIdentifier;
  user = self->_user;
  rank = self->_rank;

  return [v4 initWithRowIdentifier:rowIdentifier serviceIdentifier:serviceIdentifier serviceIdentifierType:serviceIdentifierType externalRecordIdentifier:externalRecordIdentifier user:user rank:rank];
}

- (int64_t)compareForQuickTypeBar:(id)a3
{
  v4 = a3;
  if (-[SFCredentialIdentity type](self, "type") == 2 && [v4 type] != 2)
  {
    v5 = -1;
  }

  else if (-[SFCredentialIdentity type](self, "type") == 2 || [v4 type] != 2)
  {
    serviceIdentifierType = self->_serviceIdentifierType;
    if (serviceIdentifierType == [v4 serviceIdentifierType])
    {
      v7 = [(SFCredentialIdentity *)self _domainWithoutWWWDot];
      v8 = [v4 _domainWithoutWWWDot];
      v9 = [v7 safari_isCaseInsensitiveEqualToString:v8];

      if (v9)
      {
        goto LABEL_12;
      }
    }

    v10 = [(SFCredentialIdentity *)self _domainWithoutWWWDot];
    v11 = [v10 safari_countOfString:@"."];

    v12 = [v4 _domainWithoutWWWDot];
    v13 = [v12 safari_countOfString:@"."];

    v5 = v11 < v13 ? -1 : 1;
    if (v11 == v13)
    {
LABEL_12:
      v14 = [v4 rank];
      rank = self->_rank;
      v16 = rank == v14;
      v17 = rank <= v14;
      v18 = -1;
      if (v17)
      {
        v18 = 1;
      }

      if (v16)
      {
        v5 = 0;
      }

      else
      {
        v5 = v18;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (NSString)site
{
  if ([(SFCredentialIdentity *)self serviceIdentifierType]== 1)
  {
    v3 = MEMORY[0x277CCACE0];
    v4 = [(SFCredentialIdentity *)self serviceIdentifier];
    v5 = [v3 componentsWithString:v4];
    v6 = [v5 host];
  }

  else
  {
    v6 = [(SFCredentialIdentity *)self serviceIdentifier];
  }

  return v6;
}

@end
@interface SFCredentialIdentity
- (BOOL)isEqual:(id)equal;
- (NSString)site;
- (SFCredentialIdentity)initWithCoder:(id)coder;
- (SFCredentialIdentity)initWithRowIdentifier:(int64_t)identifier serviceIdentifier:(id)serviceIdentifier serviceIdentifierType:(int64_t)type externalRecordIdentifier:(id)recordIdentifier user:(id)user rank:(int64_t)rank;
- (SFCredentialIdentity)initWithRowIdentifier:(int64_t)identifier serviceIdentifier:(id)serviceIdentifier serviceIdentifierType:(int64_t)type externalRecordIdentifier:(id)recordIdentifier user:(id)user rank:(int64_t)rank owningExtensionState:(id)state;
- (id)_domainWithoutWWWDot;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)compareForQuickTypeBar:(id)bar;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFCredentialIdentity

- (SFCredentialIdentity)initWithRowIdentifier:(int64_t)identifier serviceIdentifier:(id)serviceIdentifier serviceIdentifierType:(int64_t)type externalRecordIdentifier:(id)recordIdentifier user:(id)user rank:(int64_t)rank
{
  serviceIdentifierCopy = serviceIdentifier;
  recordIdentifierCopy = recordIdentifier;
  userCopy = user;
  v27.receiver = self;
  v27.super_class = SFCredentialIdentity;
  v17 = [(SFCredentialIdentity *)&v27 init];
  v18 = v17;
  if (v17)
  {
    v17->_rowIdentifier = identifier;
    v19 = [serviceIdentifierCopy copy];
    serviceIdentifier = v18->_serviceIdentifier;
    v18->_serviceIdentifier = v19;

    v18->_serviceIdentifierType = type;
    v21 = [recordIdentifierCopy copy];
    externalRecordIdentifier = v18->_externalRecordIdentifier;
    v18->_externalRecordIdentifier = v21;

    v23 = [userCopy copy];
    user = v18->_user;
    v18->_user = v23;

    v18->_rank = rank;
    v25 = v18;
  }

  return v18;
}

- (SFCredentialIdentity)initWithRowIdentifier:(int64_t)identifier serviceIdentifier:(id)serviceIdentifier serviceIdentifierType:(int64_t)type externalRecordIdentifier:(id)recordIdentifier user:(id)user rank:(int64_t)rank owningExtensionState:(id)state
{
  stateCopy = state;
  v17 = [(SFCredentialIdentity *)self initWithRowIdentifier:identifier serviceIdentifier:serviceIdentifier serviceIdentifierType:type externalRecordIdentifier:recordIdentifier user:user rank:rank];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_owningExtensionState, state);
    v19 = v18;
  }

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  rowIdentifier = self->_rowIdentifier;
  coderCopy = coder;
  [coderCopy encodeInt64:rowIdentifier forKey:@"rowIdentifier"];
  [coderCopy encodeObject:self->_serviceIdentifier forKey:@"serviceIdentifier"];
  [coderCopy encodeInt64:self->_serviceIdentifierType forKey:@"serviceIdentifierType"];
  [coderCopy encodeObject:self->_externalRecordIdentifier forKey:@"externalRecordIdentifier"];
  [coderCopy encodeObject:self->_user forKey:@"user"];
  [coderCopy encodeInt64:self->_rank forKey:@"rank"];
  [coderCopy encodeObject:self->_owningExtensionState forKey:@"owningExtensionState"];
}

- (SFCredentialIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeInt64ForKey:@"rowIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"serviceIdentifier"];
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

  v11 = [coderCopy decodeInt64ForKey:@"serviceIdentifierType"];
  if (v11 >= 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = [coderCopy decodeObjectOfClass:v5 forKey:@"externalRecordIdentifier"];
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

  v17 = [coderCopy decodeObjectOfClass:v5 forKey:@"user"];
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

  v21 = [coderCopy decodeInt64ForKey:@"rank"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"owningExtensionState"];

  v23 = [(SFCredentialIdentity *)self initWithRowIdentifier:v6 serviceIdentifier:v10 serviceIdentifierType:v12 externalRecordIdentifier:v16 user:v20 rank:v21 owningExtensionState:v22];
  return v23;
}

- (unint64_t)hash
{
  v3 = self->_serviceIdentifierType ^ [(NSString *)self->_serviceIdentifier hash];
  v4 = [(NSString *)self->_user hash];
  return v3 ^ v4 ^ [(NSString *)self->_externalRecordIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      serviceIdentifier = [(SFCredentialIdentity *)v5 serviceIdentifier];
      user = [(SFCredentialIdentity *)v5 user];
      externalRecordIdentifier = [(SFCredentialIdentity *)v5 externalRecordIdentifier];
      serviceIdentifierType = self->_serviceIdentifierType;
      if (serviceIdentifierType == [(SFCredentialIdentity *)v5 serviceIdentifierType]&& ((serviceIdentifier = self->_serviceIdentifier, serviceIdentifier == serviceIdentifier) || [(NSString *)serviceIdentifier isEqualToString:serviceIdentifier]) && ((user = self->_user, user == user) || [(NSString *)user isEqualToString:user]))
      {
        externalRecordIdentifier = self->_externalRecordIdentifier;
        if (externalRecordIdentifier == externalRecordIdentifier)
        {
          v13 = 1;
        }

        else
        {
          v13 = [(NSString *)externalRecordIdentifier isEqualToString:externalRecordIdentifier];
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
      host = [v6 host];
      safari_stringByRemovingWwwDotPrefix = [host safari_stringByRemovingWwwDotPrefix];
      v9 = self->_domainWithoutWWWDot;
      self->_domainWithoutWWWDot = safari_stringByRemovingWwwDotPrefix;
    }

    else
    {
      if (serviceIdentifierType)
      {
LABEL_7:
        domainWithoutWWWDot = self->_domainWithoutWWWDot;
        goto LABEL_8;
      }

      safari_stringByRemovingWwwDotPrefix2 = [(NSString *)self->_serviceIdentifier safari_stringByRemovingWwwDotPrefix];
      v6 = self->_domainWithoutWWWDot;
      self->_domainWithoutWWWDot = safari_stringByRemovingWwwDotPrefix2;
    }

    goto LABEL_7;
  }

LABEL_8:
  v10 = domainWithoutWWWDot;

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (int64_t)compareForQuickTypeBar:(id)bar
{
  barCopy = bar;
  if (-[SFCredentialIdentity type](self, "type") == 2 && [barCopy type] != 2)
  {
    v5 = -1;
  }

  else if (-[SFCredentialIdentity type](self, "type") == 2 || [barCopy type] != 2)
  {
    serviceIdentifierType = self->_serviceIdentifierType;
    if (serviceIdentifierType == [barCopy serviceIdentifierType])
    {
      _domainWithoutWWWDot = [(SFCredentialIdentity *)self _domainWithoutWWWDot];
      _domainWithoutWWWDot2 = [barCopy _domainWithoutWWWDot];
      v9 = [_domainWithoutWWWDot safari_isCaseInsensitiveEqualToString:_domainWithoutWWWDot2];

      if (v9)
      {
        goto LABEL_12;
      }
    }

    _domainWithoutWWWDot3 = [(SFCredentialIdentity *)self _domainWithoutWWWDot];
    v11 = [_domainWithoutWWWDot3 safari_countOfString:@"."];

    _domainWithoutWWWDot4 = [barCopy _domainWithoutWWWDot];
    v13 = [_domainWithoutWWWDot4 safari_countOfString:@"."];

    v5 = v11 < v13 ? -1 : 1;
    if (v11 == v13)
    {
LABEL_12:
      rank = [barCopy rank];
      rank = self->_rank;
      v16 = rank == rank;
      v17 = rank <= rank;
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
    serviceIdentifier = [(SFCredentialIdentity *)self serviceIdentifier];
    v5 = [v3 componentsWithString:serviceIdentifier];
    host = [v5 host];
  }

  else
  {
    host = [(SFCredentialIdentity *)self serviceIdentifier];
  }

  return host;
}

@end
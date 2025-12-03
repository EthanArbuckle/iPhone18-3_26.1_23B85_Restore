@interface SFPasskeyCredentialIdentity
- (BOOL)isEqual:(id)equal;
- (SFPasskeyCredentialIdentity)initWithCoder:(id)coder;
- (SFPasskeyCredentialIdentity)initWithRowIdentifier:(int64_t)identifier serviceIdentifier:(id)serviceIdentifier serviceIdentifierType:(int64_t)type externalRecordIdentifier:(id)recordIdentifier user:(id)user rank:(int64_t)rank credentialID:(id)d userHandle:(id)self0;
- (SFPasskeyCredentialIdentity)initWithServiceIdentifier:(id)identifier serviceIdentifierType:(int64_t)type externalRecordIdentifier:(id)recordIdentifier user:(id)user rank:(int64_t)rank credentialID:(id)d userHandle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPasskeyCredentialIdentity

- (SFPasskeyCredentialIdentity)initWithRowIdentifier:(int64_t)identifier serviceIdentifier:(id)serviceIdentifier serviceIdentifierType:(int64_t)type externalRecordIdentifier:(id)recordIdentifier user:(id)user rank:(int64_t)rank credentialID:(id)d userHandle:(id)self0
{
  dCopy = d;
  handleCopy = handle;
  v26.receiver = self;
  v26.super_class = SFPasskeyCredentialIdentity;
  v19 = [(SFCredentialIdentity *)&v26 initWithRowIdentifier:identifier serviceIdentifier:serviceIdentifier serviceIdentifierType:type externalRecordIdentifier:recordIdentifier user:user rank:rank];
  if (v19)
  {
    v20 = [dCopy copy];
    credentialID = v19->_credentialID;
    v19->_credentialID = v20;

    v22 = [handleCopy copy];
    userHandle = v19->_userHandle;
    v19->_userHandle = v22;

    v24 = v19;
  }

  return v19;
}

- (SFPasskeyCredentialIdentity)initWithServiceIdentifier:(id)identifier serviceIdentifierType:(int64_t)type externalRecordIdentifier:(id)recordIdentifier user:(id)user rank:(int64_t)rank credentialID:(id)d userHandle:(id)handle
{
  dCopy = d;
  handleCopy = handle;
  v24.receiver = self;
  v24.super_class = SFPasskeyCredentialIdentity;
  v17 = [(SFCredentialIdentity *)&v24 initWithServiceIdentifier:identifier serviceIdentifierType:type externalRecordIdentifier:recordIdentifier user:user rank:rank];
  if (v17)
  {
    v18 = [dCopy copy];
    credentialID = v17->_credentialID;
    v17->_credentialID = v18;

    v20 = [handleCopy copy];
    userHandle = v17->_userHandle;
    v17->_userHandle = v20;

    v22 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8.receiver = self;
      v8.super_class = SFPasskeyCredentialIdentity;
      if ([(SFCredentialIdentity *)&v8 isEqual:v5]&& [(NSString *)self->_credentialID isEqual:v5->_credentialID])
      {
        v6 = [(NSString *)self->_userHandle isEqual:v5->_userHandle];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (SFPasskeyCredentialIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SFPasskeyCredentialIdentity;
  v5 = [(SFCredentialIdentity *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
    v8 = [v6 copy];
    credentialID = v5->_credentialID;
    v5->_credentialID = v8;

    v10 = [v7 copy];
    userHandle = v5->_userHandle;
    v5->_userHandle = v10;

    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SFPasskeyCredentialIdentity;
  coderCopy = coder;
  [(SFCredentialIdentity *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_credentialID forKey:{@"credentialID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_userHandle forKey:@"userHandle"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SFPasskeyCredentialIdentity allocWithZone:zone];
  rowIdentifier = [(SFCredentialIdentity *)self rowIdentifier];
  serviceIdentifier = [(SFCredentialIdentity *)self serviceIdentifier];
  serviceIdentifierType = [(SFCredentialIdentity *)self serviceIdentifierType];
  externalRecordIdentifier = [(SFCredentialIdentity *)self externalRecordIdentifier];
  user = [(SFCredentialIdentity *)self user];
  rank = [(SFCredentialIdentity *)self rank];
  credentialID = self->_credentialID;
  v12 = [(SFPasskeyCredentialIdentity *)v4 initWithRowIdentifier:rowIdentifier serviceIdentifier:serviceIdentifier serviceIdentifierType:serviceIdentifierType externalRecordIdentifier:externalRecordIdentifier user:user rank:rank credentialID:credentialID userHandle:self->_userHandle];

  return v12;
}

@end
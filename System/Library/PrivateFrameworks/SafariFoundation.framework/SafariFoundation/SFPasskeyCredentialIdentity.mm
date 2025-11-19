@interface SFPasskeyCredentialIdentity
- (BOOL)isEqual:(id)a3;
- (SFPasskeyCredentialIdentity)initWithCoder:(id)a3;
- (SFPasskeyCredentialIdentity)initWithRowIdentifier:(int64_t)a3 serviceIdentifier:(id)a4 serviceIdentifierType:(int64_t)a5 externalRecordIdentifier:(id)a6 user:(id)a7 rank:(int64_t)a8 credentialID:(id)a9 userHandle:(id)a10;
- (SFPasskeyCredentialIdentity)initWithServiceIdentifier:(id)a3 serviceIdentifierType:(int64_t)a4 externalRecordIdentifier:(id)a5 user:(id)a6 rank:(int64_t)a7 credentialID:(id)a8 userHandle:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPasskeyCredentialIdentity

- (SFPasskeyCredentialIdentity)initWithRowIdentifier:(int64_t)a3 serviceIdentifier:(id)a4 serviceIdentifierType:(int64_t)a5 externalRecordIdentifier:(id)a6 user:(id)a7 rank:(int64_t)a8 credentialID:(id)a9 userHandle:(id)a10
{
  v17 = a9;
  v18 = a10;
  v26.receiver = self;
  v26.super_class = SFPasskeyCredentialIdentity;
  v19 = [(SFCredentialIdentity *)&v26 initWithRowIdentifier:a3 serviceIdentifier:a4 serviceIdentifierType:a5 externalRecordIdentifier:a6 user:a7 rank:a8];
  if (v19)
  {
    v20 = [v17 copy];
    credentialID = v19->_credentialID;
    v19->_credentialID = v20;

    v22 = [v18 copy];
    userHandle = v19->_userHandle;
    v19->_userHandle = v22;

    v24 = v19;
  }

  return v19;
}

- (SFPasskeyCredentialIdentity)initWithServiceIdentifier:(id)a3 serviceIdentifierType:(int64_t)a4 externalRecordIdentifier:(id)a5 user:(id)a6 rank:(int64_t)a7 credentialID:(id)a8 userHandle:(id)a9
{
  v15 = a8;
  v16 = a9;
  v24.receiver = self;
  v24.super_class = SFPasskeyCredentialIdentity;
  v17 = [(SFCredentialIdentity *)&v24 initWithServiceIdentifier:a3 serviceIdentifierType:a4 externalRecordIdentifier:a5 user:a6 rank:a7];
  if (v17)
  {
    v18 = [v15 copy];
    credentialID = v17->_credentialID;
    v17->_credentialID = v18;

    v20 = [v16 copy];
    userHandle = v17->_userHandle;
    v17->_userHandle = v20;

    v22 = v17;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (SFPasskeyCredentialIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SFPasskeyCredentialIdentity;
  v5 = [(SFCredentialIdentity *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userHandle"];
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFPasskeyCredentialIdentity;
  v4 = a3;
  [(SFCredentialIdentity *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_credentialID forKey:{@"credentialID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_userHandle forKey:@"userHandle"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SFPasskeyCredentialIdentity allocWithZone:a3];
  v5 = [(SFCredentialIdentity *)self rowIdentifier];
  v6 = [(SFCredentialIdentity *)self serviceIdentifier];
  v7 = [(SFCredentialIdentity *)self serviceIdentifierType];
  v8 = [(SFCredentialIdentity *)self externalRecordIdentifier];
  v9 = [(SFCredentialIdentity *)self user];
  v10 = [(SFCredentialIdentity *)self rank];
  credentialID = self->_credentialID;
  v12 = [(SFPasskeyCredentialIdentity *)v4 initWithRowIdentifier:v5 serviceIdentifier:v6 serviceIdentifierType:v7 externalRecordIdentifier:v8 user:v9 rank:v10 credentialID:credentialID userHandle:self->_userHandle];

  return v12;
}

@end
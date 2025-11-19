@interface WBSPublicKeyCredentialIdentifier
- (BOOL)isEqual:(id)a3;
- (WBSPublicKeyCredentialIdentifier)initWithCoder:(id)a3;
- (WBSPublicKeyCredentialIdentifier)initWithCredentialID:(id)a3 groupID:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSPublicKeyCredentialIdentifier

- (WBSPublicKeyCredentialIdentifier)initWithCredentialID:(id)a3 groupID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WBSPublicKeyCredentialIdentifier;
  v8 = [(WBSPublicKeyCredentialIdentifier *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    credentialID = v8->_credentialID;
    v8->_credentialID = v9;

    v11 = [v7 copy];
    groupID = v8->_groupID;
    v8->_groupID = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      groupID = self->_groupID;
      v7 = [(WBSPublicKeyCredentialIdentifier *)v5 groupID];
      LODWORD(groupID) = WBSIsEqual(groupID, v7);

      if (groupID)
      {
        credentialID = self->_credentialID;
        v9 = [(WBSPublicKeyCredentialIdentifier *)v5 credentialID];
        v10 = WBSIsEqual(credentialID, v9);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (WBSPublicKeyCredentialIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];

  v7 = [(WBSPublicKeyCredentialIdentifier *)self initWithCredentialID:v5 groupID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  credentialID = self->_credentialID;
  v5 = a3;
  [v5 encodeObject:credentialID forKey:@"credentialID"];
  [v5 encodeObject:self->_groupID forKey:@"groupID"];
}

@end
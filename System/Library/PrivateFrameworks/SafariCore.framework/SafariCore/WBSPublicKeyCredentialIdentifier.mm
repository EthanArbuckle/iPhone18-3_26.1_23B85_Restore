@interface WBSPublicKeyCredentialIdentifier
- (BOOL)isEqual:(id)equal;
- (WBSPublicKeyCredentialIdentifier)initWithCoder:(id)coder;
- (WBSPublicKeyCredentialIdentifier)initWithCredentialID:(id)d groupID:(id)iD;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSPublicKeyCredentialIdentifier

- (WBSPublicKeyCredentialIdentifier)initWithCredentialID:(id)d groupID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = WBSPublicKeyCredentialIdentifier;
  v8 = [(WBSPublicKeyCredentialIdentifier *)&v15 init];
  if (v8)
  {
    v9 = [dCopy copy];
    credentialID = v8->_credentialID;
    v8->_credentialID = v9;

    v11 = [iDCopy copy];
    groupID = v8->_groupID;
    v8->_groupID = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      groupID = self->_groupID;
      groupID = [(WBSPublicKeyCredentialIdentifier *)v5 groupID];
      LODWORD(groupID) = WBSIsEqual(groupID, groupID);

      if (groupID)
      {
        credentialID = self->_credentialID;
        credentialID = [(WBSPublicKeyCredentialIdentifier *)v5 credentialID];
        v10 = WBSIsEqual(credentialID, credentialID);
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

- (WBSPublicKeyCredentialIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupID"];

  v7 = [(WBSPublicKeyCredentialIdentifier *)self initWithCredentialID:v5 groupID:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  credentialID = self->_credentialID;
  coderCopy = coder;
  [coderCopy encodeObject:credentialID forKey:@"credentialID"];
  [coderCopy encodeObject:self->_groupID forKey:@"groupID"];
}

@end
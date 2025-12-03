@interface REMReplicaIDSource
+ (id)crdtIDWithObjectID:(id)d property:(id)property;
- (BOOL)isEqual:(id)equal;
- (REMReplicaIDSource)initWithAccountID:(id)d crdtID:(id)iD;
- (REMReplicaIDSource)initWithAccountID:(id)d objectID:(id)iD property:(id)property;
- (REMReplicaIDSource)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReplicaIDSource

+ (id)crdtIDWithObjectID:(id)d property:(id)property
{
  v5 = MEMORY[0x1E696AEC0];
  propertyCopy = property;
  uuid = [d uuid];
  propertyCopy = [v5 stringWithFormat:@"%@/%@", uuid, propertyCopy];

  return propertyCopy;
}

- (REMReplicaIDSource)initWithAccountID:(id)d objectID:(id)iD property:(id)property
{
  dCopy = d;
  v9 = [REMReplicaIDSource crdtIDWithObjectID:iD property:property];
  v10 = [(REMReplicaIDSource *)self initWithAccountID:dCopy crdtID:v9];

  return v10;
}

- (REMReplicaIDSource)initWithAccountID:(id)d crdtID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = REMReplicaIDSource;
  v9 = [(REMReplicaIDSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountID, d);
    v11 = [iDCopy copy];
    crdtID = v10->_crdtID;
    v10->_crdtID = v11;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountID = [(REMReplicaIDSource *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  crdtID = [(REMReplicaIDSource *)self crdtID];
  [coderCopy encodeObject:crdtID forKey:@"crdtID"];
}

- (REMReplicaIDSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"crdtID"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(REMReplicaIDSource *)self initWithAccountID:v5 crdtID:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMReplicaIDSource alloc];
  accountID = [(REMReplicaIDSource *)self accountID];
  crdtID = [(REMReplicaIDSource *)self crdtID];
  v7 = [(REMReplicaIDSource *)v4 initWithAccountID:accountID crdtID:crdtID];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      accountID = [(REMReplicaIDSource *)self accountID];
      accountID2 = [(REMReplicaIDSource *)v6 accountID];
      v9 = accountID2;
      if (accountID == accountID2)
      {
      }

      else
      {
        accountID3 = [(REMReplicaIDSource *)self accountID];
        accountID4 = [(REMReplicaIDSource *)v6 accountID];
        v12 = [accountID3 isEqual:accountID4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      crdtID = [(REMReplicaIDSource *)self crdtID];
      crdtID2 = [(REMReplicaIDSource *)v6 crdtID];
      if (crdtID == crdtID2)
      {
        v13 = 1;
      }

      else
      {
        crdtID3 = [(REMReplicaIDSource *)self crdtID];
        crdtID4 = [(REMReplicaIDSource *)v6 crdtID];
        v13 = [crdtID3 isEqual:crdtID4];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  accountID = [(REMReplicaIDSource *)self accountID];
  crdtID = [(REMReplicaIDSource *)self crdtID];
  v7 = [v3 stringWithFormat:@"<%@: %p> (account=%@, crdtId=%@)", v4, self, accountID, crdtID];

  return v7;
}

@end
@interface REMReplicaIDSource
+ (id)crdtIDWithObjectID:(id)a3 property:(id)a4;
- (BOOL)isEqual:(id)a3;
- (REMReplicaIDSource)initWithAccountID:(id)a3 crdtID:(id)a4;
- (REMReplicaIDSource)initWithAccountID:(id)a3 objectID:(id)a4 property:(id)a5;
- (REMReplicaIDSource)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReplicaIDSource

+ (id)crdtIDWithObjectID:(id)a3 property:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [a3 uuid];
  v8 = [v5 stringWithFormat:@"%@/%@", v7, v6];

  return v8;
}

- (REMReplicaIDSource)initWithAccountID:(id)a3 objectID:(id)a4 property:(id)a5
{
  v8 = a3;
  v9 = [REMReplicaIDSource crdtIDWithObjectID:a4 property:a5];
  v10 = [(REMReplicaIDSource *)self initWithAccountID:v8 crdtID:v9];

  return v10;
}

- (REMReplicaIDSource)initWithAccountID:(id)a3 crdtID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = REMReplicaIDSource;
  v9 = [(REMReplicaIDSource *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accountID, a3);
    v11 = [v8 copy];
    crdtID = v10->_crdtID;
    v10->_crdtID = v11;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMReplicaIDSource *)self accountID];
  [v4 encodeObject:v5 forKey:@"accountID"];

  v6 = [(REMReplicaIDSource *)self crdtID];
  [v4 encodeObject:v6 forKey:@"crdtID"];
}

- (REMReplicaIDSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"crdtID"];

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
    v8 = 0;
  }

  else
  {
    self = [(REMReplicaIDSource *)self initWithAccountID:v5 crdtID:v6];
    v8 = self;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMReplicaIDSource alloc];
  v5 = [(REMReplicaIDSource *)self accountID];
  v6 = [(REMReplicaIDSource *)self crdtID];
  v7 = [(REMReplicaIDSource *)v4 initWithAccountID:v5 crdtID:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMReplicaIDSource *)self accountID];
      v8 = [(REMReplicaIDSource *)v6 accountID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMReplicaIDSource *)self accountID];
        v11 = [(REMReplicaIDSource *)v6 accountID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(REMReplicaIDSource *)self crdtID];
      v15 = [(REMReplicaIDSource *)v6 crdtID];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(REMReplicaIDSource *)self crdtID];
        v17 = [(REMReplicaIDSource *)v6 crdtID];
        v13 = [v16 isEqual:v17];
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
  v5 = [(REMReplicaIDSource *)self accountID];
  v6 = [(REMReplicaIDSource *)self crdtID];
  v7 = [v3 stringWithFormat:@"<%@: %p> (account=%@, crdtId=%@)", v4, self, v5, v6];

  return v7;
}

@end
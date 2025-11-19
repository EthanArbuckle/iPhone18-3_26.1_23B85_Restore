@interface ICConnectionConfiguration
+ (id)configurationFromSourceConfiguration:(id)a3 userIdentity:(id)a4;
- (BOOL)isEqual:(id)a3;
- (ICConnectionConfiguration)init;
- (ICConnectionConfiguration)initWithCoder:(id)a3;
- (ICConnectionConfiguration)initWithUserIdentity:(id)a3;
- (ICConnectionConfiguration)initWithUserIdentity:(id)a3 userIdentityStore:(id)a4;
- (ICConnectionConfiguration)initWithUserIdentity:(id)a3 userIdentityStore:(id)a4 clientIdentity:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICConnectionConfiguration

- (ICConnectionConfiguration)init
{
  v3 = +[ICUserIdentity activeAccount];
  v4 = +[ICUserIdentityStore defaultIdentityStore];
  v5 = [(ICConnectionConfiguration *)self initWithUserIdentity:v3 userIdentityStore:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p [userIdentity:%@]>", v5, self, self->_userIdentity];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ICConnectionConfiguration alloc];
  v5 = [(ICConnectionConfiguration *)self userIdentity];
  v6 = [(ICConnectionConfiguration *)self userIdentityStore];
  v7 = [(ICConnectionConfiguration *)v4 initWithUserIdentity:v5 userIdentityStore:v6];

  v8 = [(NSURL *)self->_baseURL copy];
  v9 = *(v7 + 32);
  *(v7 + 32) = v8;

  v10 = [(NSString *)self->_libraryBagKey copy];
  v11 = *(v7 + 40);
  *(v7 + 40) = v10;

  v12 = [(NSString *)self->_buildIdentifier copy];
  v13 = *(v7 + 48);
  *(v7 + 48) = v12;

  v14 = [(NSString *)self->_purchaseClientIdentifier copy];
  v15 = *(v7 + 56);
  *(v7 + 56) = v14;

  *(v7 + 64) = self->_requestReason;
  objc_storeStrong((v7 + 72), self->_familyMemberStoreID);
  objc_storeStrong((v7 + 24), self->_clientIdentity);
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  userIdentity = self->_userIdentity;
  userIdentityStore = self->_userIdentityStore;
  v6 = a3;
  [v6 ic_encodeUserIdentity:userIdentity withStore:userIdentityStore forKey:@"userIdentity"];
  [v6 encodeObject:self->_userIdentityStore forKey:@"userIdentityStore"];
  [v6 encodeObject:self->_baseURL forKey:@"baseURL"];
  [v6 encodeObject:self->_libraryBagKey forKey:@"libraryBagKey"];
  [v6 encodeObject:self->_buildIdentifier forKey:@"buildIdentifier"];
  [v6 encodeObject:self->_purchaseClientIdentifier forKey:@"purchaseClientIdentifier"];
  [v6 encodeInt64:self->_requestReason forKey:@"requestReason"];
  [v6 encodeObject:self->_familyMemberStoreID forKey:@"familyMemberStoreID"];
  [v6 encodeTCCIdentity:self->_clientIdentity forKey:@"tccUserIdentity"];
}

- (ICConnectionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICConnectionConfiguration *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userIdentity"];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userIdentityStore"];
    userIdentityStore = v5->_userIdentityStore;
    v5->_userIdentityStore = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryBagKey"];
    libraryBagKey = v5->_libraryBagKey;
    v5->_libraryBagKey = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buildIdentifier"];
    buildIdentifier = v5->_buildIdentifier;
    v5->_buildIdentifier = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchaseClientIdentifier"];
    purchaseClientIdentifier = v5->_purchaseClientIdentifier;
    v5->_purchaseClientIdentifier = v16;

    v5->_requestReason = [v4 decodeInt64ForKey:@"requestReason"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyMemberStoreID"];
    familyMemberStoreID = v5->_familyMemberStoreID;
    v5->_familyMemberStoreID = v18;

    v20 = [v4 decodeTCCIdentityForKey:@"tccUserIdentity"];
    clientIdentity = v5->_clientIdentity;
    v5->_clientIdentity = v20;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICConnectionConfiguration *)self userIdentityStore];
      v7 = [(ICConnectionConfiguration *)v5 userIdentityStore];
      if (v6 != v7 && ![v6 isEqual:v7])
      {
        LOBYTE(v15) = 0;
LABEL_41:

        goto LABEL_42;
      }

      v8 = [(ICConnectionConfiguration *)self userIdentity];
      v9 = [(ICConnectionConfiguration *)v5 userIdentity];
      v10 = [(ICConnectionConfiguration *)self userIdentityStore];
      v11 = v8;
      v12 = v9;
      v13 = v10;
      v14 = v13;
      if (v11 != v12)
      {
        LOBYTE(v15) = 0;
        v16 = v13;
        v17 = v12;
        if (v11)
        {
          v39 = v11;
          if (v12)
          {
            LODWORD(v15) = [v11 isEqualToIdentity:v12 inStore:v13];

            if (!v15)
            {
              goto LABEL_40;
            }

LABEL_14:
            v18 = [(ICConnectionConfiguration *)self baseURL];
            v19 = [(ICConnectionConfiguration *)v5 baseURL];
            v17 = v19;
            v39 = v18;
            if (v18 == v19)
            {
              v38 = v19;
            }

            else
            {
              v20 = [(ICConnectionConfiguration *)self baseURL];
              v36 = [(ICConnectionConfiguration *)v5 baseURL];
              v37 = v20;
              if (![v20 isEqual:?])
              {
                LOBYTE(v15) = 0;
LABEL_37:

                v16 = v37;
                goto LABEL_38;
              }

              v38 = v17;
            }

            v15 = [(ICConnectionConfiguration *)self libraryBagKey];
            v21 = [(ICConnectionConfiguration *)v5 libraryBagKey];
            if (v15 == v21 || [v15 isEqual:v21])
            {
              v33 = v14;
              v34 = v21;
              v22 = [(ICConnectionConfiguration *)self buildIdentifier];
              v23 = [(ICConnectionConfiguration *)v5 buildIdentifier];
              v35 = v15;
              if (v22 == v23 || [v22 isEqual:v23])
              {
                v31 = v6;
                v32 = v23;
                v24 = [(ICConnectionConfiguration *)self purchaseClientIdentifier];
                v25 = [(ICConnectionConfiguration *)v5 purchaseClientIdentifier];
                if (v24 == v25 || [v24 isEqual:v25])
                {
                  v30 = v25;
                  v26 = [(ICConnectionConfiguration *)self familyMemberStoreID];
                  v27 = [(ICConnectionConfiguration *)v5 familyMemberStoreID];
                  v29 = v26;
                  if (v26 == v27 || [v26 isEqual:v27])
                  {
                    v15 = [(ICConnectionConfiguration *)self requestReason];
                    LOBYTE(v15) = v15 == [(ICConnectionConfiguration *)v5 requestReason];
                  }

                  else
                  {
                    LOBYTE(v15) = 0;
                  }

                  v25 = v30;
                }

                else
                {
                  LOBYTE(v15) = 0;
                }

                v6 = v31;
                v23 = v32;
              }

              else
              {
                LOBYTE(v15) = 0;
              }

              v17 = v38;
              v14 = v33;
              if (v39 == v38)
              {
                goto LABEL_39;
              }
            }

            else
            {

              LOBYTE(v15) = 0;
              v17 = v38;
              if (v39 == v38)
              {
                goto LABEL_39;
              }
            }

            goto LABEL_37;
          }
        }

        else
        {
          v39 = 0;
        }

LABEL_38:

LABEL_39:
LABEL_40:

        goto LABEL_41;
      }

      goto LABEL_14;
    }

    LOBYTE(v15) = 0;
  }

LABEL_42:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(ICConnectionConfiguration *)self userIdentity];
  v4 = [(ICConnectionConfiguration *)self userIdentityStore];
  v5 = [v3 hashInStore:v4];
  v6 = [(ICConnectionConfiguration *)self userIdentityStore];
  v7 = [v6 hash] ^ v5;
  v8 = [(ICConnectionConfiguration *)self baseURL];
  v9 = [v8 hash];
  v10 = [(ICConnectionConfiguration *)self libraryBagKey];
  v11 = v7 ^ v9 ^ [v10 hash];
  v12 = [(ICConnectionConfiguration *)self buildIdentifier];
  v13 = [v12 hash];
  v14 = [(ICConnectionConfiguration *)self purchaseClientIdentifier];
  v15 = v13 ^ [v14 hash];
  v16 = v11 ^ v15 ^ [(ICConnectionConfiguration *)self requestReason];
  v17 = [(ICConnectionConfiguration *)self familyMemberStoreID];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (ICConnectionConfiguration)initWithUserIdentity:(id)a3 userIdentityStore:(id)a4 clientIdentity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = ICConnectionConfiguration;
  v12 = [(ICConnectionConfiguration *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userIdentity, a3);
    objc_storeStrong(&v13->_userIdentityStore, a4);
    objc_storeStrong(&v13->_clientIdentity, a5);
    v14 = MGCopyAnswer();
    if (![(__CFString *)v14 length])
    {

      v14 = @"UNKNOWN";
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"1.6", v14];
    buildIdentifier = v13->_buildIdentifier;
    v13->_buildIdentifier = v15;

    v17 = MEMORY[0x1E696AEC0];
    v18 = ICGetCloudDAAPClientPrefix();
    v19 = [v17 stringWithFormat:@"%@/%@%@", @"1.2", v18, v14];
    purchaseClientIdentifier = v13->_purchaseClientIdentifier;
    v13->_purchaseClientIdentifier = v19;

    v13->_requestReason = 0;
  }

  return v13;
}

- (ICConnectionConfiguration)initWithUserIdentity:(id)a3 userIdentityStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MSVTCCIdentityForCurrentProcess();
  v9 = [(ICConnectionConfiguration *)self initWithUserIdentity:v7 userIdentityStore:v6 clientIdentity:v8];

  return v9;
}

- (ICConnectionConfiguration)initWithUserIdentity:(id)a3
{
  v4 = a3;
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  v6 = [(ICConnectionConfiguration *)self initWithUserIdentity:v4 userIdentityStore:v5];

  return v6;
}

+ (id)configurationFromSourceConfiguration:(id)a3 userIdentity:(id)a4
{
  v5 = a4;
  v6 = [a3 copy];
  [v6 setUserIdentity:v5];

  return v6;
}

@end
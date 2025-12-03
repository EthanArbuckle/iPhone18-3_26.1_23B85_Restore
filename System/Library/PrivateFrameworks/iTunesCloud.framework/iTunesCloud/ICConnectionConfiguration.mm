@interface ICConnectionConfiguration
+ (id)configurationFromSourceConfiguration:(id)configuration userIdentity:(id)identity;
- (BOOL)isEqual:(id)equal;
- (ICConnectionConfiguration)init;
- (ICConnectionConfiguration)initWithCoder:(id)coder;
- (ICConnectionConfiguration)initWithUserIdentity:(id)identity;
- (ICConnectionConfiguration)initWithUserIdentity:(id)identity userIdentityStore:(id)store;
- (ICConnectionConfiguration)initWithUserIdentity:(id)identity userIdentityStore:(id)store clientIdentity:(id)clientIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ICConnectionConfiguration alloc];
  userIdentity = [(ICConnectionConfiguration *)self userIdentity];
  userIdentityStore = [(ICConnectionConfiguration *)self userIdentityStore];
  v7 = [(ICConnectionConfiguration *)v4 initWithUserIdentity:userIdentity userIdentityStore:userIdentityStore];

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

- (void)encodeWithCoder:(id)coder
{
  userIdentity = self->_userIdentity;
  userIdentityStore = self->_userIdentityStore;
  coderCopy = coder;
  [coderCopy ic_encodeUserIdentity:userIdentity withStore:userIdentityStore forKey:@"userIdentity"];
  [coderCopy encodeObject:self->_userIdentityStore forKey:@"userIdentityStore"];
  [coderCopy encodeObject:self->_baseURL forKey:@"baseURL"];
  [coderCopy encodeObject:self->_libraryBagKey forKey:@"libraryBagKey"];
  [coderCopy encodeObject:self->_buildIdentifier forKey:@"buildIdentifier"];
  [coderCopy encodeObject:self->_purchaseClientIdentifier forKey:@"purchaseClientIdentifier"];
  [coderCopy encodeInt64:self->_requestReason forKey:@"requestReason"];
  [coderCopy encodeObject:self->_familyMemberStoreID forKey:@"familyMemberStoreID"];
  [coderCopy encodeTCCIdentity:self->_clientIdentity forKey:@"tccUserIdentity"];
}

- (ICConnectionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ICConnectionConfiguration *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentity"];
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userIdentityStore"];
    userIdentityStore = v5->_userIdentityStore;
    v5->_userIdentityStore = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseURL"];
    baseURL = v5->_baseURL;
    v5->_baseURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryBagKey"];
    libraryBagKey = v5->_libraryBagKey;
    v5->_libraryBagKey = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildIdentifier"];
    buildIdentifier = v5->_buildIdentifier;
    v5->_buildIdentifier = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchaseClientIdentifier"];
    purchaseClientIdentifier = v5->_purchaseClientIdentifier;
    v5->_purchaseClientIdentifier = v16;

    v5->_requestReason = [coderCopy decodeInt64ForKey:@"requestReason"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"familyMemberStoreID"];
    familyMemberStoreID = v5->_familyMemberStoreID;
    v5->_familyMemberStoreID = v18;

    v20 = [coderCopy decodeTCCIdentityForKey:@"tccUserIdentity"];
    clientIdentity = v5->_clientIdentity;
    v5->_clientIdentity = v20;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(libraryBagKey) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userIdentityStore = [(ICConnectionConfiguration *)self userIdentityStore];
      userIdentityStore2 = [(ICConnectionConfiguration *)v5 userIdentityStore];
      if (userIdentityStore != userIdentityStore2 && ![userIdentityStore isEqual:userIdentityStore2])
      {
        LOBYTE(libraryBagKey) = 0;
LABEL_41:

        goto LABEL_42;
      }

      userIdentity = [(ICConnectionConfiguration *)self userIdentity];
      userIdentity2 = [(ICConnectionConfiguration *)v5 userIdentity];
      userIdentityStore3 = [(ICConnectionConfiguration *)self userIdentityStore];
      v11 = userIdentity;
      v12 = userIdentity2;
      v13 = userIdentityStore3;
      v14 = v13;
      if (v11 != v12)
      {
        LOBYTE(libraryBagKey) = 0;
        v16 = v13;
        v17 = v12;
        if (v11)
        {
          v39 = v11;
          if (v12)
          {
            LODWORD(libraryBagKey) = [v11 isEqualToIdentity:v12 inStore:v13];

            if (!libraryBagKey)
            {
              goto LABEL_40;
            }

LABEL_14:
            baseURL = [(ICConnectionConfiguration *)self baseURL];
            baseURL2 = [(ICConnectionConfiguration *)v5 baseURL];
            v17 = baseURL2;
            v39 = baseURL;
            if (baseURL == baseURL2)
            {
              v38 = baseURL2;
            }

            else
            {
              baseURL3 = [(ICConnectionConfiguration *)self baseURL];
              baseURL4 = [(ICConnectionConfiguration *)v5 baseURL];
              v37 = baseURL3;
              if (![baseURL3 isEqual:?])
              {
                LOBYTE(libraryBagKey) = 0;
LABEL_37:

                v16 = v37;
                goto LABEL_38;
              }

              v38 = v17;
            }

            libraryBagKey = [(ICConnectionConfiguration *)self libraryBagKey];
            libraryBagKey2 = [(ICConnectionConfiguration *)v5 libraryBagKey];
            if (libraryBagKey == libraryBagKey2 || [libraryBagKey isEqual:libraryBagKey2])
            {
              v33 = v14;
              v34 = libraryBagKey2;
              buildIdentifier = [(ICConnectionConfiguration *)self buildIdentifier];
              buildIdentifier2 = [(ICConnectionConfiguration *)v5 buildIdentifier];
              v35 = libraryBagKey;
              if (buildIdentifier == buildIdentifier2 || [buildIdentifier isEqual:buildIdentifier2])
              {
                v31 = userIdentityStore;
                v32 = buildIdentifier2;
                purchaseClientIdentifier = [(ICConnectionConfiguration *)self purchaseClientIdentifier];
                purchaseClientIdentifier2 = [(ICConnectionConfiguration *)v5 purchaseClientIdentifier];
                if (purchaseClientIdentifier == purchaseClientIdentifier2 || [purchaseClientIdentifier isEqual:purchaseClientIdentifier2])
                {
                  v30 = purchaseClientIdentifier2;
                  familyMemberStoreID = [(ICConnectionConfiguration *)self familyMemberStoreID];
                  familyMemberStoreID2 = [(ICConnectionConfiguration *)v5 familyMemberStoreID];
                  v29 = familyMemberStoreID;
                  if (familyMemberStoreID == familyMemberStoreID2 || [familyMemberStoreID isEqual:familyMemberStoreID2])
                  {
                    libraryBagKey = [(ICConnectionConfiguration *)self requestReason];
                    LOBYTE(libraryBagKey) = libraryBagKey == [(ICConnectionConfiguration *)v5 requestReason];
                  }

                  else
                  {
                    LOBYTE(libraryBagKey) = 0;
                  }

                  purchaseClientIdentifier2 = v30;
                }

                else
                {
                  LOBYTE(libraryBagKey) = 0;
                }

                userIdentityStore = v31;
                buildIdentifier2 = v32;
              }

              else
              {
                LOBYTE(libraryBagKey) = 0;
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

              LOBYTE(libraryBagKey) = 0;
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

    LOBYTE(libraryBagKey) = 0;
  }

LABEL_42:

  return libraryBagKey;
}

- (unint64_t)hash
{
  userIdentity = [(ICConnectionConfiguration *)self userIdentity];
  userIdentityStore = [(ICConnectionConfiguration *)self userIdentityStore];
  v5 = [userIdentity hashInStore:userIdentityStore];
  userIdentityStore2 = [(ICConnectionConfiguration *)self userIdentityStore];
  v7 = [userIdentityStore2 hash] ^ v5;
  baseURL = [(ICConnectionConfiguration *)self baseURL];
  v9 = [baseURL hash];
  libraryBagKey = [(ICConnectionConfiguration *)self libraryBagKey];
  v11 = v7 ^ v9 ^ [libraryBagKey hash];
  buildIdentifier = [(ICConnectionConfiguration *)self buildIdentifier];
  v13 = [buildIdentifier hash];
  purchaseClientIdentifier = [(ICConnectionConfiguration *)self purchaseClientIdentifier];
  v15 = v13 ^ [purchaseClientIdentifier hash];
  v16 = v11 ^ v15 ^ [(ICConnectionConfiguration *)self requestReason];
  familyMemberStoreID = [(ICConnectionConfiguration *)self familyMemberStoreID];
  v18 = [familyMemberStoreID hash];

  return v16 ^ v18;
}

- (ICConnectionConfiguration)initWithUserIdentity:(id)identity userIdentityStore:(id)store clientIdentity:(id)clientIdentity
{
  identityCopy = identity;
  storeCopy = store;
  clientIdentityCopy = clientIdentity;
  v22.receiver = self;
  v22.super_class = ICConnectionConfiguration;
  v12 = [(ICConnectionConfiguration *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userIdentity, identity);
    objc_storeStrong(&v13->_userIdentityStore, store);
    objc_storeStrong(&v13->_clientIdentity, clientIdentity);
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

- (ICConnectionConfiguration)initWithUserIdentity:(id)identity userIdentityStore:(id)store
{
  storeCopy = store;
  identityCopy = identity;
  v8 = MSVTCCIdentityForCurrentProcess();
  v9 = [(ICConnectionConfiguration *)self initWithUserIdentity:identityCopy userIdentityStore:storeCopy clientIdentity:v8];

  return v9;
}

- (ICConnectionConfiguration)initWithUserIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  v6 = [(ICConnectionConfiguration *)self initWithUserIdentity:identityCopy userIdentityStore:v5];

  return v6;
}

+ (id)configurationFromSourceConfiguration:(id)configuration userIdentity:(id)identity
{
  identityCopy = identity;
  v6 = [configuration copy];
  [v6 setUserIdentity:identityCopy];

  return v6;
}

@end
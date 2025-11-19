@interface TUConversationLinkDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationLinkDescriptor:(id)a3;
- (TUConversationLinkDescriptor)initWithCoder:(id)a3;
- (TUConversationLinkDescriptor)initWithConversationLinkDescriptor:(id)a3;
- (TUConversationLinkDescriptor)initWithGroupUUID:(id)a3 originator:(id)a4 pseudonym:(id)a5 publicKey:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationLinkDescriptor

- (TUConversationLinkDescriptor)initWithGroupUUID:(id)a3 originator:(id)a4 pseudonym:(id)a5 publicKey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = TUConversationLinkDescriptor;
  v15 = [(TUConversationLinkDescriptor *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_groupUUID, a3);
    objc_storeStrong(&v16->_originator, a4);
    v17 = [v13 copy];
    pseudonym = v16->_pseudonym;
    v16->_pseudonym = v17;

    v19 = [v14 copy];
    publicKey = v16->_publicKey;
    v16->_publicKey = v19;
  }

  return v16;
}

- (TUConversationLinkDescriptor)initWithConversationLinkDescriptor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUConversationLinkDescriptor;
  v5 = [(TUConversationLinkDescriptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_activated = *(v4 + 8);
    objc_storeStrong(&v5->_creationDate, *(v4 + 2));
    objc_storeStrong(&v6->_deletionDate, *(v4 + 3));
    objc_storeStrong(&v6->_expirationDate, *(v4 + 4));
    objc_storeStrong(&v6->_groupUUID, *(v4 + 7));
    objc_storeStrong(&v6->_invitedHandles, *(v4 + 8));
    objc_storeStrong(&v6->_name, *(v4 + 9));
    objc_storeStrong(&v6->_originator, *(v4 + 10));
    objc_storeStrong(&v6->_privateKey, *(v4 + 11));
    objc_storeStrong(&v6->_pseudonym, *(v4 + 12));
    objc_storeStrong(&v6->_publicKey, *(v4 + 13));
    v6->_version = *(v4 + 3);
    v6->_linkLifetimeScope = *(v4 + 5);
    v6->_deleteReason = *(v4 + 6);
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  activated = self->_activated;
  v5 = a3;
  v6 = NSStringFromSelector(sel_isActivated);
  [v5 encodeBool:activated forKey:v6];

  creationDate = self->_creationDate;
  v8 = NSStringFromSelector(sel_creationDate);
  [v5 encodeObject:creationDate forKey:v8];

  deletionDate = self->_deletionDate;
  v10 = NSStringFromSelector(sel_deletionDate);
  [v5 encodeObject:deletionDate forKey:v10];

  expirationDate = self->_expirationDate;
  v12 = NSStringFromSelector(sel_expirationDate);
  [v5 encodeObject:expirationDate forKey:v12];

  groupUUID = self->_groupUUID;
  v14 = NSStringFromSelector(sel_groupUUID);
  [v5 encodeObject:groupUUID forKey:v14];

  invitedHandles = self->_invitedHandles;
  v16 = NSStringFromSelector(sel_invitedHandles);
  [v5 encodeObject:invitedHandles forKey:v16];

  name = self->_name;
  v18 = NSStringFromSelector(sel_name);
  [v5 encodeObject:name forKey:v18];

  originator = self->_originator;
  v20 = NSStringFromSelector(sel_originator);
  [v5 encodeObject:originator forKey:v20];

  privateKey = self->_privateKey;
  v22 = NSStringFromSelector(sel_privateKey);
  [v5 encodeObject:privateKey forKey:v22];

  pseudonym = self->_pseudonym;
  v24 = NSStringFromSelector(sel_pseudonym);
  [v5 encodeObject:pseudonym forKey:v24];

  publicKey = self->_publicKey;
  v26 = NSStringFromSelector(sel_publicKey);
  [v5 encodeObject:publicKey forKey:v26];

  version = self->_version;
  v28 = NSStringFromSelector(sel_version);
  [v5 encodeInt32:version forKey:v28];

  linkLifetimeScope = self->_linkLifetimeScope;
  v30 = NSStringFromSelector(sel_linkLifetimeScope);
  [v5 encodeInteger:linkLifetimeScope forKey:v30];

  deleteReason = self->_deleteReason;
  v32 = NSStringFromSelector(sel_deleteReason);
  [v5 encodeInteger:deleteReason forKey:v32];
}

- (TUConversationLinkDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = TUConversationLinkDescriptor;
  v5 = [(TUConversationLinkDescriptor *)&v53 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isActivated);
    v5->_activated = [v4 decodeBoolForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_creationDate);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    creationDate = v5->_creationDate;
    v5->_creationDate = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_deletionDate);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    deletionDate = v5->_deletionDate;
    v5->_deletionDate = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_expirationDate);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_groupUUID);
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
    groupUUID = v5->_groupUUID;
    v5->_groupUUID = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = NSStringFromSelector(sel_invitedHandles);
    v27 = [v4 decodeObjectOfClasses:v25 forKey:v26];
    invitedHandles = v5->_invitedHandles;
    v5->_invitedHandles = v27;

    v29 = objc_opt_class();
    v30 = NSStringFromSelector(sel_name);
    v31 = [v4 decodeObjectOfClass:v29 forKey:v30];
    name = v5->_name;
    v5->_name = v31;

    v33 = objc_opt_class();
    v34 = NSStringFromSelector(sel_originator);
    v35 = [v4 decodeObjectOfClass:v33 forKey:v34];
    originator = v5->_originator;
    v5->_originator = v35;

    v37 = objc_opt_class();
    v38 = NSStringFromSelector(sel_privateKey);
    v39 = [v4 decodeObjectOfClass:v37 forKey:v38];
    privateKey = v5->_privateKey;
    v5->_privateKey = v39;

    v41 = objc_opt_class();
    v42 = NSStringFromSelector(sel_pseudonym);
    v43 = [v4 decodeObjectOfClass:v41 forKey:v42];
    pseudonym = v5->_pseudonym;
    v5->_pseudonym = v43;

    v45 = objc_opt_class();
    v46 = NSStringFromSelector(sel_publicKey);
    v47 = [v4 decodeObjectOfClass:v45 forKey:v46];
    publicKey = v5->_publicKey;
    v5->_publicKey = v47;

    v49 = NSStringFromSelector(sel_version);
    v5->_version = [v4 decodeInt32ForKey:v49];

    v50 = NSStringFromSelector(sel_linkLifetimeScope);
    v5->_linkLifetimeScope = [v4 decodeIntegerForKey:v50];

    v51 = NSStringFromSelector(sel_deleteReason);
    v5->_deleteReason = [v4 decodeIntegerForKey:v51];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUConversationLinkDescriptor allocWithZone:a3];

  return [(TUConversationLinkDescriptor *)v4 initWithConversationLinkDescriptor:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TUMutableConversationLinkDescriptor allocWithZone:a3];

  return [(TUConversationLinkDescriptor *)v4 initWithConversationLinkDescriptor:self];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_isActivated);
  [v3 appendFormat:@"%@=%d", v4, -[TUConversationLinkDescriptor isActivated](self, "isActivated")];

  [v3 appendFormat:@", "];
  v5 = NSStringFromSelector(sel_creationDate);
  v6 = [(TUConversationLinkDescriptor *)self creationDate];
  [v3 appendFormat:@"%@=%@", v5, v6];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_deletionDate);
  v8 = [(TUConversationLinkDescriptor *)self deletionDate];
  [v3 appendFormat:@"%@=%@", v7, v8];

  [v3 appendFormat:@", "];
  v9 = NSStringFromSelector(sel_expirationDate);
  v10 = [(TUConversationLinkDescriptor *)self expirationDate];
  [v3 appendFormat:@"%@=%@", v9, v10];

  [v3 appendFormat:@", "];
  v11 = NSStringFromSelector(sel_groupUUID);
  v12 = [(TUConversationLinkDescriptor *)self groupUUID];
  [v3 appendFormat:@"%@=%@", v11, v12];

  [v3 appendFormat:@", "];
  v13 = NSStringFromSelector(sel_invitedHandles);
  v14 = [(TUConversationLinkDescriptor *)self invitedHandles];
  [v3 appendFormat:@"%@=%@", v13, v14];

  [v3 appendFormat:@", "];
  v15 = NSStringFromSelector(sel_name);
  v16 = [(TUConversationLinkDescriptor *)self name];
  [v3 appendFormat:@"%@=%@", v15, v16];

  [v3 appendFormat:@", "];
  v17 = NSStringFromSelector(sel_originator);
  v18 = [(TUConversationLinkDescriptor *)self originator];
  [v3 appendFormat:@"%@=%@", v17, v18];

  [v3 appendFormat:@", "];
  v19 = NSStringFromSelector(sel_privateKey);
  v20 = [(TUConversationLinkDescriptor *)self privateKey];
  [v3 appendFormat:@"%@=%@", v19, v20];

  [v3 appendFormat:@", "];
  v21 = NSStringFromSelector(sel_pseudonym);
  v22 = [(TUConversationLinkDescriptor *)self pseudonym];
  [v3 appendFormat:@"%@=%@", v21, v22];

  [v3 appendFormat:@", "];
  v23 = NSStringFromSelector(sel_publicKey);
  v24 = [(TUConversationLinkDescriptor *)self publicKey];
  [v3 appendFormat:@"%@=%@", v23, v24];

  [v3 appendFormat:@", "];
  v25 = NSStringFromSelector(sel_version);
  [v3 appendFormat:@"%@=%d", v25, -[TUConversationLinkDescriptor version](self, "version")];

  [v3 appendFormat:@", "];
  v26 = NSStringFromSelector(sel_linkLifetimeScope);
  [v3 appendFormat:@"%@=%ld", v26, -[TUConversationLinkDescriptor linkLifetimeScope](self, "linkLifetimeScope")];

  [v3 appendFormat:@", "];
  v27 = NSStringFromSelector(sel_deleteReason);
  [v3 appendFormat:@"%@=%ld", v27, -[TUConversationLinkDescriptor deleteReason](self, "deleteReason")];

  [v3 appendFormat:@">"];
  v28 = [v3 copy];

  return v28;
}

- (unint64_t)hash
{
  if ([(TUConversationLinkDescriptor *)self isActivated])
  {
    v3 = 1231;
  }

  else
  {
    v3 = 1237;
  }

  v27 = [(TUConversationLinkDescriptor *)self creationDate];
  v4 = [v27 hash];
  v26 = [(TUConversationLinkDescriptor *)self deletionDate];
  v5 = v4 ^ [v26 hash] ^ v3;
  v25 = [(TUConversationLinkDescriptor *)self expirationDate];
  v6 = [v25 hash];
  v7 = [(TUConversationLinkDescriptor *)self groupUUID];
  v8 = v6 ^ [v7 hash];
  v9 = [(TUConversationLinkDescriptor *)self invitedHandles];
  v10 = v5 ^ v8 ^ [v9 hash];
  v11 = [(TUConversationLinkDescriptor *)self name];
  v12 = [v11 hash];
  v13 = [(TUConversationLinkDescriptor *)self originator];
  v14 = v12 ^ [v13 hash];
  v15 = [(TUConversationLinkDescriptor *)self privateKey];
  v16 = v14 ^ [v15 hash];
  v17 = [(TUConversationLinkDescriptor *)self pseudonym];
  v18 = v10 ^ v16 ^ [v17 hash];
  v19 = [(TUConversationLinkDescriptor *)self publicKey];
  v20 = [v19 hash];
  v21 = v20 ^ [(TUConversationLinkDescriptor *)self version];
  v22 = v21 ^ [(TUConversationLinkDescriptor *)self linkLifetimeScope];
  v23 = v22 ^ [(TUConversationLinkDescriptor *)self deleteReason];

  return v18 ^ v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationLinkDescriptor *)self isEqualToConversationLinkDescriptor:v4];
  }

  return v5;
}

- (BOOL)isEqualToConversationLinkDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationLinkDescriptor *)self isActivated];
  if (v5 == [v4 isActivated])
  {
    v7 = [(TUConversationLinkDescriptor *)self creationDate];
    v8 = [v4 creationDate];
    if (TUObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUConversationLinkDescriptor *)self deletionDate];
      v10 = [v4 deletionDate];
      if (TUObjectsAreEqualOrNil(v9, v10))
      {
        v11 = [(TUConversationLinkDescriptor *)self expirationDate];
        v12 = [v4 expirationDate];
        if (TUObjectsAreEqualOrNil(v11, v12))
        {
          v13 = [(TUConversationLinkDescriptor *)self groupUUID];
          v14 = [v4 groupUUID];
          if (TUObjectsAreEqualOrNil(v13, v14))
          {
            v37 = v13;
            v15 = [(TUConversationLinkDescriptor *)self invitedHandles];
            [v4 invitedHandles];
            v36 = v38 = v15;
            if (TUObjectsAreEqualOrNil(v15, v36))
            {
              v16 = [(TUConversationLinkDescriptor *)self name];
              v34 = [v4 name];
              v35 = v16;
              if (TUObjectsAreEqualOrNil(v16, v34))
              {
                v17 = [(TUConversationLinkDescriptor *)self originator];
                v32 = [v4 originator];
                v33 = v17;
                if (TUObjectsAreEqualOrNil(v17, v32))
                {
                  v18 = [(TUConversationLinkDescriptor *)self privateKey];
                  v30 = [v4 privateKey];
                  v31 = v18;
                  if (TUObjectsAreEqualOrNil(v18, v30))
                  {
                    v19 = [(TUConversationLinkDescriptor *)self pseudonym];
                    v28 = [v4 pseudonym];
                    v29 = v19;
                    if (TUStringsAreEqualOrNil(v19, v28))
                    {
                      v20 = [(TUConversationLinkDescriptor *)self publicKey];
                      v26 = [v4 publicKey];
                      v27 = v20;
                      v21 = TUObjectsAreEqualOrNil(v20, v26);
                      v13 = v37;
                      if (v21 && (v24 = -[TUConversationLinkDescriptor version](self, "version"), v24 == [v4 version]) && (v25 = -[TUConversationLinkDescriptor linkLifetimeScope](self, "linkLifetimeScope"), v25 == objc_msgSend(v4, "linkLifetimeScope")))
                      {
                        v22 = [(TUConversationLinkDescriptor *)self deleteReason];
                        v6 = v22 == [v4 deleteReason];
                      }

                      else
                      {
                        v6 = 0;
                      }
                    }

                    else
                    {
                      v6 = 0;
                      v13 = v37;
                    }
                  }

                  else
                  {
                    v6 = 0;
                    v13 = v37;
                  }
                }

                else
                {
                  v6 = 0;
                  v13 = v37;
                }
              }

              else
              {
                v6 = 0;
                v13 = v37;
              }
            }

            else
            {
              v6 = 0;
              v13 = v37;
            }
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

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
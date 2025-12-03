@interface TUConversationLinkDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationLinkDescriptor:(id)descriptor;
- (TUConversationLinkDescriptor)initWithCoder:(id)coder;
- (TUConversationLinkDescriptor)initWithConversationLinkDescriptor:(id)descriptor;
- (TUConversationLinkDescriptor)initWithGroupUUID:(id)d originator:(id)originator pseudonym:(id)pseudonym publicKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUConversationLinkDescriptor

- (TUConversationLinkDescriptor)initWithGroupUUID:(id)d originator:(id)originator pseudonym:(id)pseudonym publicKey:(id)key
{
  dCopy = d;
  originatorCopy = originator;
  pseudonymCopy = pseudonym;
  keyCopy = key;
  v22.receiver = self;
  v22.super_class = TUConversationLinkDescriptor;
  v15 = [(TUConversationLinkDescriptor *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_groupUUID, d);
    objc_storeStrong(&v16->_originator, originator);
    v17 = [pseudonymCopy copy];
    pseudonym = v16->_pseudonym;
    v16->_pseudonym = v17;

    v19 = [keyCopy copy];
    publicKey = v16->_publicKey;
    v16->_publicKey = v19;
  }

  return v16;
}

- (TUConversationLinkDescriptor)initWithConversationLinkDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v8.receiver = self;
  v8.super_class = TUConversationLinkDescriptor;
  v5 = [(TUConversationLinkDescriptor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_activated = *(descriptorCopy + 8);
    objc_storeStrong(&v5->_creationDate, *(descriptorCopy + 2));
    objc_storeStrong(&v6->_deletionDate, *(descriptorCopy + 3));
    objc_storeStrong(&v6->_expirationDate, *(descriptorCopy + 4));
    objc_storeStrong(&v6->_groupUUID, *(descriptorCopy + 7));
    objc_storeStrong(&v6->_invitedHandles, *(descriptorCopy + 8));
    objc_storeStrong(&v6->_name, *(descriptorCopy + 9));
    objc_storeStrong(&v6->_originator, *(descriptorCopy + 10));
    objc_storeStrong(&v6->_privateKey, *(descriptorCopy + 11));
    objc_storeStrong(&v6->_pseudonym, *(descriptorCopy + 12));
    objc_storeStrong(&v6->_publicKey, *(descriptorCopy + 13));
    v6->_version = *(descriptorCopy + 3);
    v6->_linkLifetimeScope = *(descriptorCopy + 5);
    v6->_deleteReason = *(descriptorCopy + 6);
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  activated = self->_activated;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_isActivated);
  [coderCopy encodeBool:activated forKey:v6];

  creationDate = self->_creationDate;
  v8 = NSStringFromSelector(sel_creationDate);
  [coderCopy encodeObject:creationDate forKey:v8];

  deletionDate = self->_deletionDate;
  v10 = NSStringFromSelector(sel_deletionDate);
  [coderCopy encodeObject:deletionDate forKey:v10];

  expirationDate = self->_expirationDate;
  v12 = NSStringFromSelector(sel_expirationDate);
  [coderCopy encodeObject:expirationDate forKey:v12];

  groupUUID = self->_groupUUID;
  v14 = NSStringFromSelector(sel_groupUUID);
  [coderCopy encodeObject:groupUUID forKey:v14];

  invitedHandles = self->_invitedHandles;
  v16 = NSStringFromSelector(sel_invitedHandles);
  [coderCopy encodeObject:invitedHandles forKey:v16];

  name = self->_name;
  v18 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:name forKey:v18];

  originator = self->_originator;
  v20 = NSStringFromSelector(sel_originator);
  [coderCopy encodeObject:originator forKey:v20];

  privateKey = self->_privateKey;
  v22 = NSStringFromSelector(sel_privateKey);
  [coderCopy encodeObject:privateKey forKey:v22];

  pseudonym = self->_pseudonym;
  v24 = NSStringFromSelector(sel_pseudonym);
  [coderCopy encodeObject:pseudonym forKey:v24];

  publicKey = self->_publicKey;
  v26 = NSStringFromSelector(sel_publicKey);
  [coderCopy encodeObject:publicKey forKey:v26];

  version = self->_version;
  v28 = NSStringFromSelector(sel_version);
  [coderCopy encodeInt32:version forKey:v28];

  linkLifetimeScope = self->_linkLifetimeScope;
  v30 = NSStringFromSelector(sel_linkLifetimeScope);
  [coderCopy encodeInteger:linkLifetimeScope forKey:v30];

  deleteReason = self->_deleteReason;
  v32 = NSStringFromSelector(sel_deleteReason);
  [coderCopy encodeInteger:deleteReason forKey:v32];
}

- (TUConversationLinkDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v53.receiver = self;
  v53.super_class = TUConversationLinkDescriptor;
  v5 = [(TUConversationLinkDescriptor *)&v53 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_isActivated);
    v5->_activated = [coderCopy decodeBoolForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_creationDate);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    creationDate = v5->_creationDate;
    v5->_creationDate = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_deletionDate);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    deletionDate = v5->_deletionDate;
    v5->_deletionDate = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_expirationDate);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_groupUUID);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    groupUUID = v5->_groupUUID;
    v5->_groupUUID = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = NSStringFromSelector(sel_invitedHandles);
    v27 = [coderCopy decodeObjectOfClasses:v25 forKey:v26];
    invitedHandles = v5->_invitedHandles;
    v5->_invitedHandles = v27;

    v29 = objc_opt_class();
    v30 = NSStringFromSelector(sel_name);
    v31 = [coderCopy decodeObjectOfClass:v29 forKey:v30];
    name = v5->_name;
    v5->_name = v31;

    v33 = objc_opt_class();
    v34 = NSStringFromSelector(sel_originator);
    v35 = [coderCopy decodeObjectOfClass:v33 forKey:v34];
    originator = v5->_originator;
    v5->_originator = v35;

    v37 = objc_opt_class();
    v38 = NSStringFromSelector(sel_privateKey);
    v39 = [coderCopy decodeObjectOfClass:v37 forKey:v38];
    privateKey = v5->_privateKey;
    v5->_privateKey = v39;

    v41 = objc_opt_class();
    v42 = NSStringFromSelector(sel_pseudonym);
    v43 = [coderCopy decodeObjectOfClass:v41 forKey:v42];
    pseudonym = v5->_pseudonym;
    v5->_pseudonym = v43;

    v45 = objc_opt_class();
    v46 = NSStringFromSelector(sel_publicKey);
    v47 = [coderCopy decodeObjectOfClass:v45 forKey:v46];
    publicKey = v5->_publicKey;
    v5->_publicKey = v47;

    v49 = NSStringFromSelector(sel_version);
    v5->_version = [coderCopy decodeInt32ForKey:v49];

    v50 = NSStringFromSelector(sel_linkLifetimeScope);
    v5->_linkLifetimeScope = [coderCopy decodeIntegerForKey:v50];

    v51 = NSStringFromSelector(sel_deleteReason);
    v5->_deleteReason = [coderCopy decodeIntegerForKey:v51];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUConversationLinkDescriptor allocWithZone:zone];

  return [(TUConversationLinkDescriptor *)v4 initWithConversationLinkDescriptor:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TUMutableConversationLinkDescriptor allocWithZone:zone];

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
  creationDate = [(TUConversationLinkDescriptor *)self creationDate];
  [v3 appendFormat:@"%@=%@", v5, creationDate];

  [v3 appendFormat:@", "];
  v7 = NSStringFromSelector(sel_deletionDate);
  deletionDate = [(TUConversationLinkDescriptor *)self deletionDate];
  [v3 appendFormat:@"%@=%@", v7, deletionDate];

  [v3 appendFormat:@", "];
  v9 = NSStringFromSelector(sel_expirationDate);
  expirationDate = [(TUConversationLinkDescriptor *)self expirationDate];
  [v3 appendFormat:@"%@=%@", v9, expirationDate];

  [v3 appendFormat:@", "];
  v11 = NSStringFromSelector(sel_groupUUID);
  groupUUID = [(TUConversationLinkDescriptor *)self groupUUID];
  [v3 appendFormat:@"%@=%@", v11, groupUUID];

  [v3 appendFormat:@", "];
  v13 = NSStringFromSelector(sel_invitedHandles);
  invitedHandles = [(TUConversationLinkDescriptor *)self invitedHandles];
  [v3 appendFormat:@"%@=%@", v13, invitedHandles];

  [v3 appendFormat:@", "];
  v15 = NSStringFromSelector(sel_name);
  name = [(TUConversationLinkDescriptor *)self name];
  [v3 appendFormat:@"%@=%@", v15, name];

  [v3 appendFormat:@", "];
  v17 = NSStringFromSelector(sel_originator);
  originator = [(TUConversationLinkDescriptor *)self originator];
  [v3 appendFormat:@"%@=%@", v17, originator];

  [v3 appendFormat:@", "];
  v19 = NSStringFromSelector(sel_privateKey);
  privateKey = [(TUConversationLinkDescriptor *)self privateKey];
  [v3 appendFormat:@"%@=%@", v19, privateKey];

  [v3 appendFormat:@", "];
  v21 = NSStringFromSelector(sel_pseudonym);
  pseudonym = [(TUConversationLinkDescriptor *)self pseudonym];
  [v3 appendFormat:@"%@=%@", v21, pseudonym];

  [v3 appendFormat:@", "];
  v23 = NSStringFromSelector(sel_publicKey);
  publicKey = [(TUConversationLinkDescriptor *)self publicKey];
  [v3 appendFormat:@"%@=%@", v23, publicKey];

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

  creationDate = [(TUConversationLinkDescriptor *)self creationDate];
  v4 = [creationDate hash];
  deletionDate = [(TUConversationLinkDescriptor *)self deletionDate];
  v5 = v4 ^ [deletionDate hash] ^ v3;
  expirationDate = [(TUConversationLinkDescriptor *)self expirationDate];
  v6 = [expirationDate hash];
  groupUUID = [(TUConversationLinkDescriptor *)self groupUUID];
  v8 = v6 ^ [groupUUID hash];
  invitedHandles = [(TUConversationLinkDescriptor *)self invitedHandles];
  v10 = v5 ^ v8 ^ [invitedHandles hash];
  name = [(TUConversationLinkDescriptor *)self name];
  v12 = [name hash];
  originator = [(TUConversationLinkDescriptor *)self originator];
  v14 = v12 ^ [originator hash];
  privateKey = [(TUConversationLinkDescriptor *)self privateKey];
  v16 = v14 ^ [privateKey hash];
  pseudonym = [(TUConversationLinkDescriptor *)self pseudonym];
  v18 = v10 ^ v16 ^ [pseudonym hash];
  publicKey = [(TUConversationLinkDescriptor *)self publicKey];
  v20 = [publicKey hash];
  v21 = v20 ^ [(TUConversationLinkDescriptor *)self version];
  v22 = v21 ^ [(TUConversationLinkDescriptor *)self linkLifetimeScope];
  v23 = v22 ^ [(TUConversationLinkDescriptor *)self deleteReason];

  return v18 ^ v23;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationLinkDescriptor *)self isEqualToConversationLinkDescriptor:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConversationLinkDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  isActivated = [(TUConversationLinkDescriptor *)self isActivated];
  if (isActivated == [descriptorCopy isActivated])
  {
    creationDate = [(TUConversationLinkDescriptor *)self creationDate];
    creationDate2 = [descriptorCopy creationDate];
    if (TUObjectsAreEqualOrNil(creationDate, creationDate2))
    {
      deletionDate = [(TUConversationLinkDescriptor *)self deletionDate];
      deletionDate2 = [descriptorCopy deletionDate];
      if (TUObjectsAreEqualOrNil(deletionDate, deletionDate2))
      {
        expirationDate = [(TUConversationLinkDescriptor *)self expirationDate];
        expirationDate2 = [descriptorCopy expirationDate];
        if (TUObjectsAreEqualOrNil(expirationDate, expirationDate2))
        {
          groupUUID = [(TUConversationLinkDescriptor *)self groupUUID];
          groupUUID2 = [descriptorCopy groupUUID];
          if (TUObjectsAreEqualOrNil(groupUUID, groupUUID2))
          {
            v37 = groupUUID;
            invitedHandles = [(TUConversationLinkDescriptor *)self invitedHandles];
            [descriptorCopy invitedHandles];
            v36 = v38 = invitedHandles;
            if (TUObjectsAreEqualOrNil(invitedHandles, v36))
            {
              name = [(TUConversationLinkDescriptor *)self name];
              name2 = [descriptorCopy name];
              v35 = name;
              if (TUObjectsAreEqualOrNil(name, name2))
              {
                originator = [(TUConversationLinkDescriptor *)self originator];
                originator2 = [descriptorCopy originator];
                v33 = originator;
                if (TUObjectsAreEqualOrNil(originator, originator2))
                {
                  privateKey = [(TUConversationLinkDescriptor *)self privateKey];
                  privateKey2 = [descriptorCopy privateKey];
                  v31 = privateKey;
                  if (TUObjectsAreEqualOrNil(privateKey, privateKey2))
                  {
                    pseudonym = [(TUConversationLinkDescriptor *)self pseudonym];
                    pseudonym2 = [descriptorCopy pseudonym];
                    v29 = pseudonym;
                    if (TUStringsAreEqualOrNil(pseudonym, pseudonym2))
                    {
                      publicKey = [(TUConversationLinkDescriptor *)self publicKey];
                      publicKey2 = [descriptorCopy publicKey];
                      v27 = publicKey;
                      v21 = TUObjectsAreEqualOrNil(publicKey, publicKey2);
                      groupUUID = v37;
                      if (v21 && (v24 = -[TUConversationLinkDescriptor version](self, "version"), v24 == [descriptorCopy version]) && (v25 = -[TUConversationLinkDescriptor linkLifetimeScope](self, "linkLifetimeScope"), v25 == objc_msgSend(descriptorCopy, "linkLifetimeScope")))
                      {
                        deleteReason = [(TUConversationLinkDescriptor *)self deleteReason];
                        v6 = deleteReason == [descriptorCopy deleteReason];
                      }

                      else
                      {
                        v6 = 0;
                      }
                    }

                    else
                    {
                      v6 = 0;
                      groupUUID = v37;
                    }
                  }

                  else
                  {
                    v6 = 0;
                    groupUUID = v37;
                  }
                }

                else
                {
                  v6 = 0;
                  groupUUID = v37;
                }
              }

              else
              {
                v6 = 0;
                groupUUID = v37;
              }
            }

            else
            {
              v6 = 0;
              groupUUID = v37;
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
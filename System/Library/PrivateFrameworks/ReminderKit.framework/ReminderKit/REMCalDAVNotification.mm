@interface REMCalDAVNotification
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)externalIdentifierForMarkedForDeletionObject;
- (REMCalDAVNotification)initWithCoder:(id)coder;
- (id)initCalDAVNotificationWithObjectID:(id)d accountID:(id)iD listID:(id)listID uuidString:(id)string hostURL:(id)l externalIdentifier:(id)identifier externalModificationTag:(id)tag;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMCalDAVNotification

- (id)initCalDAVNotificationWithObjectID:(id)d accountID:(id)iD listID:(id)listID uuidString:(id)string hostURL:(id)l externalIdentifier:(id)identifier externalModificationTag:(id)tag
{
  dCopy = d;
  iDCopy = iD;
  listIDCopy = listID;
  stringCopy = string;
  lCopy = l;
  identifierCopy = identifier;
  tagCopy = tag;
  v32.receiver = self;
  v32.super_class = REMCalDAVNotification;
  v21 = [(REMCalDAVNotification *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_objectID, d);
    objc_storeStrong(&v22->_accountID, iD);
    objc_storeStrong(&v22->_listID, listID);
    v23 = [stringCopy copy];
    uuidString = v22->_uuidString;
    v22->_uuidString = v23;

    v25 = [lCopy copy];
    hostURL = v22->_hostURL;
    v22->_hostURL = v25;

    v27 = [identifierCopy copy];
    [(REMCalDAVNotification *)v22 setExternalIdentifier:v27];

    v28 = [tagCopy copy];
    [(REMCalDAVNotification *)v22 setExternalModificationTag:v28];

    [(REMCalDAVNotification *)v22 setDaPushKey:&stru_1F0D67F00];
    [(REMCalDAVNotification *)v22 setDaSyncToken:&stru_1F0D67F00];
  }

  return v22;
}

- (REMCalDAVNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = REMCalDAVNotification;
  v5 = [(REMCalDAVNotification *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
    listID = v5->_listID;
    v5->_listID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuidString"];
    uuidString = v5->_uuidString;
    v5->_uuidString = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostURL"];
    hostURL = v5->_hostURL;
    v5->_hostURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
    [(REMCalDAVNotification *)v5 setExternalIdentifier:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
    [(REMCalDAVNotification *)v5 setExternalModificationTag:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daSyncToken"];
    [(REMCalDAVNotification *)v5 setDaSyncToken:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daPushKey"];
    [(REMCalDAVNotification *)v5 setDaPushKey:v19];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMCalDAVNotification *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMCalDAVNotification *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  listID = [(REMCalDAVNotification *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];

  uuidString = [(REMCalDAVNotification *)self uuidString];
  [coderCopy encodeObject:uuidString forKey:@"uuidString"];

  hostURL = [(REMCalDAVNotification *)self hostURL];
  [coderCopy encodeObject:hostURL forKey:@"hostURL"];

  externalIdentifier = [(REMCalDAVNotification *)self externalIdentifier];
  [coderCopy encodeObject:externalIdentifier forKey:@"externalIdentifier"];

  externalModificationTag = [(REMCalDAVNotification *)self externalModificationTag];
  [coderCopy encodeObject:externalModificationTag forKey:@"externalModificationTag"];

  daSyncToken = [(REMCalDAVNotification *)self daSyncToken];
  [coderCopy encodeObject:daSyncToken forKey:@"daSyncToken"];

  daPushKey = [(REMCalDAVNotification *)self daPushKey];
  [coderCopy encodeObject:daPushKey forKey:@"daPushKey"];
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
      objectID = [(REMCalDAVNotification *)self objectID];
      objectID2 = [(REMCalDAVNotification *)v6 objectID];
      v9 = objectID2;
      if (objectID == objectID2)
      {
      }

      else
      {
        objectID3 = [(REMCalDAVNotification *)self objectID];
        objectID4 = [(REMCalDAVNotification *)v6 objectID];
        v12 = [objectID3 isEqual:objectID4];

        if (!v12)
        {
          goto LABEL_34;
        }
      }

      accountID = [(REMCalDAVNotification *)self accountID];
      accountID2 = [(REMCalDAVNotification *)v6 accountID];
      v16 = accountID2;
      if (accountID == accountID2)
      {
      }

      else
      {
        accountID3 = [(REMCalDAVNotification *)self accountID];
        accountID4 = [(REMCalDAVNotification *)v6 accountID];
        v19 = [accountID3 isEqual:accountID4];

        if (!v19)
        {
          goto LABEL_34;
        }
      }

      listID = [(REMCalDAVNotification *)self listID];
      listID2 = [(REMCalDAVNotification *)v6 listID];
      v22 = listID2;
      if (listID == listID2)
      {
      }

      else
      {
        listID3 = [(REMCalDAVNotification *)self listID];
        listID4 = [(REMCalDAVNotification *)v6 listID];
        v25 = [listID3 isEqual:listID4];

        if (!v25)
        {
          goto LABEL_34;
        }
      }

      uuidString = [(REMCalDAVNotification *)self uuidString];
      uuidString2 = [(REMCalDAVNotification *)v6 uuidString];
      v28 = uuidString2;
      if (uuidString == uuidString2)
      {
      }

      else
      {
        uuidString3 = [(REMCalDAVNotification *)self uuidString];
        uuidString4 = [(REMCalDAVNotification *)v6 uuidString];
        v31 = [uuidString3 isEqual:uuidString4];

        if (!v31)
        {
          goto LABEL_34;
        }
      }

      hostURL = [(REMCalDAVNotification *)self hostURL];
      hostURL2 = [(REMCalDAVNotification *)v6 hostURL];
      v34 = hostURL2;
      if (hostURL == hostURL2)
      {
      }

      else
      {
        hostURL3 = [(REMCalDAVNotification *)self hostURL];
        hostURL4 = [(REMCalDAVNotification *)v6 hostURL];
        v37 = [hostURL3 isEqual:hostURL4];

        if (!v37)
        {
          goto LABEL_34;
        }
      }

      externalIdentifier = [(REMCalDAVNotification *)self externalIdentifier];
      externalIdentifier2 = [(REMCalDAVNotification *)v6 externalIdentifier];
      v40 = externalIdentifier2;
      if (externalIdentifier == externalIdentifier2)
      {
      }

      else
      {
        externalIdentifier3 = [(REMCalDAVNotification *)self externalIdentifier];
        externalIdentifier4 = [(REMCalDAVNotification *)v6 externalIdentifier];
        v43 = [externalIdentifier3 isEqual:externalIdentifier4];

        if (!v43)
        {
          goto LABEL_34;
        }
      }

      externalModificationTag = [(REMCalDAVNotification *)self externalModificationTag];
      externalModificationTag2 = [(REMCalDAVNotification *)v6 externalModificationTag];
      v46 = externalModificationTag2;
      if (externalModificationTag == externalModificationTag2)
      {
      }

      else
      {
        externalModificationTag3 = [(REMCalDAVNotification *)self externalModificationTag];
        externalModificationTag4 = [(REMCalDAVNotification *)v6 externalModificationTag];
        v49 = [externalModificationTag3 isEqual:externalModificationTag4];

        if (!v49)
        {
          goto LABEL_34;
        }
      }

      daSyncToken = [(REMCalDAVNotification *)self daSyncToken];
      daSyncToken2 = [(REMCalDAVNotification *)v6 daSyncToken];
      v52 = daSyncToken2;
      if (daSyncToken == daSyncToken2)
      {
      }

      else
      {
        daSyncToken3 = [(REMCalDAVNotification *)self daSyncToken];
        daSyncToken4 = [(REMCalDAVNotification *)v6 daSyncToken];
        v55 = [daSyncToken3 isEqual:daSyncToken4];

        if (!v55)
        {
          goto LABEL_34;
        }
      }

      daPushKey = [(REMCalDAVNotification *)self daPushKey];
      daPushKey2 = [(REMCalDAVNotification *)v6 daPushKey];
      if (daPushKey == daPushKey2)
      {
        v13 = 1;
      }

      else
      {
        daPushKey3 = [(REMCalDAVNotification *)self daPushKey];
        daPushKey4 = [(REMCalDAVNotification *)v6 daPushKey];
        v13 = [daPushKey3 isEqual:daPushKey4];
      }

      goto LABEL_35;
    }

LABEL_34:
    v13 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v13 = 1;
LABEL_36:

  return v13 & 1;
}

- (unint64_t)hash
{
  objectID = [(REMCalDAVNotification *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMCalDAVNotification *)self objectID];
  listID = [(REMCalDAVNotification *)self listID];
  uuidString = [(REMCalDAVNotification *)self uuidString];
  hostURL = [(REMCalDAVNotification *)self hostURL];
  externalIdentifier = [(REMCalDAVNotification *)self externalIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p objectID: %@, owner: %@, uuid: %@, hostURL: %@, extID: %@>", v4, self, objectID, listID, uuidString, hostURL, externalIdentifier];

  return v10;
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

- (NSString)externalIdentifierForMarkedForDeletionObject
{
  v3 = +[REMLogStore read];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [(REMCalDAVNotification *)v3 externalIdentifierForMarkedForDeletionObject];
  }

  externalIdentifier = [(REMCalDAVNotification *)self externalIdentifier];
  v5 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:externalIdentifier];

  return v5;
}

@end
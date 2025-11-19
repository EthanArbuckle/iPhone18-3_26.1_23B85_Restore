@interface REMCalDAVNotification
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)externalIdentifierForMarkedForDeletionObject;
- (REMCalDAVNotification)initWithCoder:(id)a3;
- (id)initCalDAVNotificationWithObjectID:(id)a3 accountID:(id)a4 listID:(id)a5 uuidString:(id)a6 hostURL:(id)a7 externalIdentifier:(id)a8 externalModificationTag:(id)a9;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMCalDAVNotification

- (id)initCalDAVNotificationWithObjectID:(id)a3 accountID:(id)a4 listID:(id)a5 uuidString:(id)a6 hostURL:(id)a7 externalIdentifier:(id)a8 externalModificationTag:(id)a9
{
  v31 = a3;
  v30 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v32.receiver = self;
  v32.super_class = REMCalDAVNotification;
  v21 = [(REMCalDAVNotification *)&v32 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_objectID, a3);
    objc_storeStrong(&v22->_accountID, a4);
    objc_storeStrong(&v22->_listID, a5);
    v23 = [v17 copy];
    uuidString = v22->_uuidString;
    v22->_uuidString = v23;

    v25 = [v18 copy];
    hostURL = v22->_hostURL;
    v22->_hostURL = v25;

    v27 = [v19 copy];
    [(REMCalDAVNotification *)v22 setExternalIdentifier:v27];

    v28 = [v20 copy];
    [(REMCalDAVNotification *)v22 setExternalModificationTag:v28];

    [(REMCalDAVNotification *)v22 setDaPushKey:&stru_1F0D67F00];
    [(REMCalDAVNotification *)v22 setDaSyncToken:&stru_1F0D67F00];
  }

  return v22;
}

- (REMCalDAVNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = REMCalDAVNotification;
  v5 = [(REMCalDAVNotification *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
    listID = v5->_listID;
    v5->_listID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuidString"];
    uuidString = v5->_uuidString;
    v5->_uuidString = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostURL"];
    hostURL = v5->_hostURL;
    v5->_hostURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
    [(REMCalDAVNotification *)v5 setExternalIdentifier:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
    [(REMCalDAVNotification *)v5 setExternalModificationTag:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daSyncToken"];
    [(REMCalDAVNotification *)v5 setDaSyncToken:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daPushKey"];
    [(REMCalDAVNotification *)v5 setDaPushKey:v19];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMCalDAVNotification *)self objectID];
  [v4 encodeObject:v5 forKey:@"objectID"];

  v6 = [(REMCalDAVNotification *)self accountID];
  [v4 encodeObject:v6 forKey:@"accountID"];

  v7 = [(REMCalDAVNotification *)self listID];
  [v4 encodeObject:v7 forKey:@"listID"];

  v8 = [(REMCalDAVNotification *)self uuidString];
  [v4 encodeObject:v8 forKey:@"uuidString"];

  v9 = [(REMCalDAVNotification *)self hostURL];
  [v4 encodeObject:v9 forKey:@"hostURL"];

  v10 = [(REMCalDAVNotification *)self externalIdentifier];
  [v4 encodeObject:v10 forKey:@"externalIdentifier"];

  v11 = [(REMCalDAVNotification *)self externalModificationTag];
  [v4 encodeObject:v11 forKey:@"externalModificationTag"];

  v12 = [(REMCalDAVNotification *)self daSyncToken];
  [v4 encodeObject:v12 forKey:@"daSyncToken"];

  v13 = [(REMCalDAVNotification *)self daPushKey];
  [v4 encodeObject:v13 forKey:@"daPushKey"];
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
      v7 = [(REMCalDAVNotification *)self objectID];
      v8 = [(REMCalDAVNotification *)v6 objectID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMCalDAVNotification *)self objectID];
        v11 = [(REMCalDAVNotification *)v6 objectID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_34;
        }
      }

      v14 = [(REMCalDAVNotification *)self accountID];
      v15 = [(REMCalDAVNotification *)v6 accountID];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMCalDAVNotification *)self accountID];
        v18 = [(REMCalDAVNotification *)v6 accountID];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_34;
        }
      }

      v20 = [(REMCalDAVNotification *)self listID];
      v21 = [(REMCalDAVNotification *)v6 listID];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMCalDAVNotification *)self listID];
        v24 = [(REMCalDAVNotification *)v6 listID];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_34;
        }
      }

      v26 = [(REMCalDAVNotification *)self uuidString];
      v27 = [(REMCalDAVNotification *)v6 uuidString];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(REMCalDAVNotification *)self uuidString];
        v30 = [(REMCalDAVNotification *)v6 uuidString];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_34;
        }
      }

      v32 = [(REMCalDAVNotification *)self hostURL];
      v33 = [(REMCalDAVNotification *)v6 hostURL];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(REMCalDAVNotification *)self hostURL];
        v36 = [(REMCalDAVNotification *)v6 hostURL];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_34;
        }
      }

      v38 = [(REMCalDAVNotification *)self externalIdentifier];
      v39 = [(REMCalDAVNotification *)v6 externalIdentifier];
      v40 = v39;
      if (v38 == v39)
      {
      }

      else
      {
        v41 = [(REMCalDAVNotification *)self externalIdentifier];
        v42 = [(REMCalDAVNotification *)v6 externalIdentifier];
        v43 = [v41 isEqual:v42];

        if (!v43)
        {
          goto LABEL_34;
        }
      }

      v44 = [(REMCalDAVNotification *)self externalModificationTag];
      v45 = [(REMCalDAVNotification *)v6 externalModificationTag];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(REMCalDAVNotification *)self externalModificationTag];
        v48 = [(REMCalDAVNotification *)v6 externalModificationTag];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_34;
        }
      }

      v50 = [(REMCalDAVNotification *)self daSyncToken];
      v51 = [(REMCalDAVNotification *)v6 daSyncToken];
      v52 = v51;
      if (v50 == v51)
      {
      }

      else
      {
        v53 = [(REMCalDAVNotification *)self daSyncToken];
        v54 = [(REMCalDAVNotification *)v6 daSyncToken];
        v55 = [v53 isEqual:v54];

        if (!v55)
        {
          goto LABEL_34;
        }
      }

      v57 = [(REMCalDAVNotification *)self daPushKey];
      v58 = [(REMCalDAVNotification *)v6 daPushKey];
      if (v57 == v58)
      {
        v13 = 1;
      }

      else
      {
        v59 = [(REMCalDAVNotification *)self daPushKey];
        v60 = [(REMCalDAVNotification *)v6 daPushKey];
        v13 = [v59 isEqual:v60];
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
  v2 = [(REMCalDAVNotification *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMCalDAVNotification *)self objectID];
  v6 = [(REMCalDAVNotification *)self listID];
  v7 = [(REMCalDAVNotification *)self uuidString];
  v8 = [(REMCalDAVNotification *)self hostURL];
  v9 = [(REMCalDAVNotification *)self externalIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p objectID: %@, owner: %@, uuid: %@, hostURL: %@, extID: %@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

- (NSString)externalIdentifierForMarkedForDeletionObject
{
  v3 = +[REMLogStore read];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [(REMCalDAVNotification *)v3 externalIdentifierForMarkedForDeletionObject];
  }

  v4 = [(REMCalDAVNotification *)self externalIdentifier];
  v5 = [REMExternalSyncMetadataUtils decodeExternalIdentifierForMarkedForDeletionObject:v4];

  return v5;
}

@end
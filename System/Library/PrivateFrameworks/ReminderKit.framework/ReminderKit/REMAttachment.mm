@interface REMAttachment
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (REMAttachment)initWithAttachment:(id)attachment objectID:(id)d accountID:(id)iD reminderID:(id)reminderID;
- (REMAttachment)initWithCoder:(id)coder;
- (REMAttachment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID UTI:(id)i;
- (id)_deepCopy;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAttachment

- (REMAttachment)initWithObjectID:(id)d accountID:(id)iD reminderID:(id)reminderID UTI:(id)i
{
  dCopy = d;
  iDCopy = iD;
  reminderIDCopy = reminderID;
  iCopy = i;
  v18.receiver = self;
  v18.super_class = REMAttachment;
  v15 = [(REMAttachment *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_objectID, d);
    objc_storeStrong(&v16->_accountID, iD);
    objc_storeStrong(&v16->_reminderID, reminderID);
    objc_storeStrong(&v16->_uti, i);
  }

  return v16;
}

- (REMAttachment)initWithAttachment:(id)attachment objectID:(id)d accountID:(id)iD reminderID:(id)reminderID
{
  dCopy = d;
  iDCopy = iD;
  reminderIDCopy = reminderID;
  _deepCopy = [attachment _deepCopy];

  objectID = _deepCopy->_objectID;
  _deepCopy->_objectID = dCopy;
  v15 = dCopy;

  accountID = _deepCopy->_accountID;
  _deepCopy->_accountID = iDCopy;
  v17 = iDCopy;

  reminderID = _deepCopy->_reminderID;
  _deepCopy->_reminderID = reminderIDCopy;

  return _deepCopy;
}

- (REMAttachment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uti"];

  v9 = [(REMAttachment *)self initWithObjectID:v5 accountID:v6 reminderID:v7 UTI:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMAttachment *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  accountID = [(REMAttachment *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];

  reminderID = [(REMAttachment *)self reminderID];
  [coderCopy encodeObject:reminderID forKey:@"reminderID"];

  v8 = [(REMAttachment *)self uti];
  [coderCopy encodeObject:v8 forKey:@"uti"];
}

- (id)_deepCopy
{
  v3 = objc_alloc(objc_opt_class());
  objectID = [(REMAttachment *)self objectID];
  accountID = [(REMAttachment *)self accountID];
  reminderID = [(REMAttachment *)self reminderID];
  v7 = [(REMAttachment *)self uti];
  v8 = [v3 initWithObjectID:objectID accountID:accountID reminderID:reminderID UTI:v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      objectID = [(REMAttachment *)v5 objectID];
      objectID2 = [(REMAttachment *)self objectID];
      v8 = objectID2;
      if (objectID == objectID2)
      {
      }

      else
      {
        objectID3 = [(REMAttachment *)v5 objectID];
        objectID4 = [(REMAttachment *)self objectID];
        v11 = [objectID3 isEqual:objectID4];

        if (!v11)
        {
          goto LABEL_15;
        }
      }

      accountID = [(REMAttachment *)v5 accountID];
      accountID2 = [(REMAttachment *)self accountID];
      v15 = accountID2;
      if (accountID == accountID2)
      {
      }

      else
      {
        accountID3 = [(REMAttachment *)v5 accountID];
        accountID4 = [(REMAttachment *)self accountID];
        v18 = [accountID3 isEqual:accountID4];

        if (!v18)
        {
          goto LABEL_15;
        }
      }

      reminderID = [(REMAttachment *)v5 reminderID];
      reminderID2 = [(REMAttachment *)self reminderID];
      v21 = reminderID2;
      if (reminderID == reminderID2)
      {
      }

      else
      {
        reminderID3 = [(REMAttachment *)v5 reminderID];
        reminderID4 = [(REMAttachment *)self reminderID];
        v24 = [reminderID3 isEqual:reminderID4];

        if (!v24)
        {
LABEL_15:
          v12 = 0;
LABEL_21:

          goto LABEL_22;
        }
      }

      v25 = [(REMAttachment *)v5 uti];
      v26 = [(REMAttachment *)self uti];
      if (v25 == v26)
      {
        v12 = 1;
      }

      else
      {
        v27 = [(REMAttachment *)v5 uti];
        v28 = [(REMAttachment *)self uti];
        v12 = [v27 isEqual:v28];
      }

      goto LABEL_21;
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  objectID = [(REMAttachment *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMAttachment *)self objectID];
  v6 = [(REMAttachment *)self uti];
  v7 = [v3 stringWithFormat:@"<%@: %p objectID: %@, uti: %@>", v4, self, objectID, v6];

  return v7;
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

@end
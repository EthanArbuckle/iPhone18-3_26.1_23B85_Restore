@interface REMSharedToMeReminderPlaceholder
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharedToMeReminderPlaceholder:(id)placeholder;
- (NSString)description;
- (REMSharedToMeReminderPlaceholder)initWithCoder:(id)coder;
- (REMSharedToMeReminderPlaceholder)initWithObjectID:(id)d accountID:(id)iD;
- (id)objectIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSharedToMeReminderPlaceholder

- (REMSharedToMeReminderPlaceholder)initWithObjectID:(id)d accountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = REMSharedToMeReminderPlaceholder;
  v9 = [(REMSharedToMeReminderPlaceholder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectID, d);
    objc_storeStrong(&v10->_accountID, iD);
  }

  return v10;
}

- (REMSharedToMeReminderPlaceholder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = REMSharedToMeReminderPlaceholder;
  v5 = [(REMSharedToMeReminderPlaceholder *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMSharedToMeReminderPlaceholder *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

  if (v6)
  {
    v7 = [(REMSharedToMeReminderPlaceholder *)self isEqualToSharedToMeReminderPlaceholder:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToSharedToMeReminderPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v5 = placeholderCopy;
  if (placeholderCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = placeholderCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [(REMSharedToMeReminderPlaceholder *)self objectID];
      objectID2 = [(REMSharedToMeReminderPlaceholder *)v6 objectID];
      if (objectID == objectID2)
      {
        v11 = 1;
      }

      else
      {
        objectID3 = [(REMSharedToMeReminderPlaceholder *)self objectID];
        objectID4 = [(REMSharedToMeReminderPlaceholder *)v6 objectID];
        v11 = [objectID3 isEqual:objectID4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (unint64_t)hash
{
  objectID = [(REMSharedToMeReminderPlaceholder *)self objectID];
  v3 = [objectID hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectID = [(REMSharedToMeReminderPlaceholder *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p objectID: %@>", v4, self, objectID];

  return v6;
}

- (id)objectIdentifier
{
  objectID = [(REMSharedToMeReminderPlaceholder *)self objectID];
  uuid = [objectID uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
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
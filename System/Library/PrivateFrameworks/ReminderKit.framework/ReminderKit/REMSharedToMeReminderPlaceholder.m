@interface REMSharedToMeReminderPlaceholder
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSharedToMeReminderPlaceholder:(id)a3;
- (NSString)description;
- (REMSharedToMeReminderPlaceholder)initWithCoder:(id)a3;
- (REMSharedToMeReminderPlaceholder)initWithObjectID:(id)a3 accountID:(id)a4;
- (id)objectIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSharedToMeReminderPlaceholder

- (REMSharedToMeReminderPlaceholder)initWithObjectID:(id)a3 accountID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMSharedToMeReminderPlaceholder;
  v9 = [(REMSharedToMeReminderPlaceholder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_objectID, a3);
    objc_storeStrong(&v10->_accountID, a4);
  }

  return v10;
}

- (REMSharedToMeReminderPlaceholder)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMSharedToMeReminderPlaceholder;
  v5 = [(REMSharedToMeReminderPlaceholder *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
    objectID = v5->_objectID;
    v5->_objectID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMSharedToMeReminderPlaceholder *)self objectID];
  [v4 encodeObject:v5 forKey:@"objectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

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

- (BOOL)isEqualToSharedToMeReminderPlaceholder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMSharedToMeReminderPlaceholder *)self objectID];
      v8 = [(REMSharedToMeReminderPlaceholder *)v6 objectID];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(REMSharedToMeReminderPlaceholder *)self objectID];
        v10 = [(REMSharedToMeReminderPlaceholder *)v6 objectID];
        v11 = [v9 isEqual:v10];
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
  v2 = [(REMSharedToMeReminderPlaceholder *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMSharedToMeReminderPlaceholder *)self objectID];
  v6 = [v3 stringWithFormat:@"<%@: %p objectID: %@>", v4, self, v5];

  return v6;
}

- (id)objectIdentifier
{
  v2 = [(REMSharedToMeReminderPlaceholder *)self objectID];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
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

@end
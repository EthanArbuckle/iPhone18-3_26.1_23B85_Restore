@interface REMSharedEntitySyncActivity
- (REMSharedEntitySyncActivity)initWithAccountIdentifier:(id)identifier activityDate:(id)date activityType:(int64_t)type authorUserRecordIDString:(id)string ckParentCloudObjectEntityName:(id)name ckParentCloudObjectIdentifier:(id)objectIdentifier ckIdentifier:(id)ckIdentifier sharedEntityName:(id)self0 uuidForChangeTracking:(id)self1;
- (REMSharedEntitySyncActivity)initWithCoder:(id)coder;
- (id)activityTypeDescription;
- (id)description;
- (void)activityTypeDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSharedEntitySyncActivity

- (REMSharedEntitySyncActivity)initWithAccountIdentifier:(id)identifier activityDate:(id)date activityType:(int64_t)type authorUserRecordIDString:(id)string ckParentCloudObjectEntityName:(id)name ckParentCloudObjectIdentifier:(id)objectIdentifier ckIdentifier:(id)ckIdentifier sharedEntityName:(id)self0 uuidForChangeTracking:(id)self1
{
  identifierCopy = identifier;
  dateCopy = date;
  stringCopy = string;
  nameCopy = name;
  objectIdentifierCopy = objectIdentifier;
  ckIdentifierCopy = ckIdentifier;
  entityNameCopy = entityName;
  trackingCopy = tracking;
  v29.receiver = self;
  v29.super_class = REMSharedEntitySyncActivity;
  v19 = [(REMSharedEntitySyncActivity *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_accountIdentifier, identifier);
    objc_storeStrong(&v20->_activityDate, date);
    v20->_activityType = type;
    objc_storeStrong(&v20->_authorUserRecordIDString, string);
    objc_storeStrong(&v20->_ckParentCloudObjectEntityName, name);
    objc_storeStrong(&v20->_ckParentCloudObjectIdentifier, objectIdentifier);
    objc_storeStrong(&v20->_ckIdentifier, ckIdentifier);
    objc_storeStrong(&v20->_sharedEntityName, entityName);
    objc_storeStrong(&v20->_uuidForChangeTracking, tracking);
  }

  return v20;
}

- (REMSharedEntitySyncActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = REMSharedEntitySyncActivity;
  v5 = [(REMSharedEntitySyncActivity *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityDate"];
    activityDate = v5->_activityDate;
    v5->_activityDate = v8;

    v5->_activityType = [coderCopy decodeIntegerForKey:@"activityType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authorUserRecordIDString"];
    authorUserRecordIDString = v5->_authorUserRecordIDString;
    v5->_authorUserRecordIDString = v10;

    if ([coderCopy containsValueForKey:@"ckParentCloudObjectEntityName"])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckParentCloudObjectEntityName"];
      ckParentCloudObjectEntityName = v5->_ckParentCloudObjectEntityName;
      v5->_ckParentCloudObjectEntityName = v12;
    }

    if ([coderCopy containsValueForKey:@"ckParentCloudObjectIdentifier"])
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckParentCloudObjectIdentifier"];
      ckParentCloudObjectIdentifier = v5->_ckParentCloudObjectIdentifier;
      v5->_ckParentCloudObjectIdentifier = v14;
    }

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ckIdentifier"];
    ckIdentifier = v5->_ckIdentifier;
    v5->_ckIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedEntityName"];
    sharedEntityName = v5->_sharedEntityName;
    v5->_sharedEntityName = v18;

    if ([coderCopy containsValueForKey:@"uuidForChangeTracking"])
    {
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuidForChangeTracking"];
      uuidForChangeTracking = v5->_uuidForChangeTracking;
      v5->_uuidForChangeTracking = v20;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentifier = [(REMSharedEntitySyncActivity *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];

  activityDate = [(REMSharedEntitySyncActivity *)self activityDate];
  [coderCopy encodeObject:activityDate forKey:@"activityDate"];

  [coderCopy encodeInteger:-[REMSharedEntitySyncActivity activityType](self forKey:{"activityType"), @"activityType"}];
  authorUserRecordIDString = [(REMSharedEntitySyncActivity *)self authorUserRecordIDString];
  [coderCopy encodeObject:authorUserRecordIDString forKey:@"authorUserRecordIDString"];

  ckParentCloudObjectEntityName = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectEntityName];

  if (ckParentCloudObjectEntityName)
  {
    ckParentCloudObjectEntityName2 = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectEntityName];
    [coderCopy encodeObject:ckParentCloudObjectEntityName2 forKey:@"ckParentCloudObjectEntityName"];
  }

  ckParentCloudObjectIdentifier = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectIdentifier];

  if (ckParentCloudObjectIdentifier)
  {
    ckParentCloudObjectIdentifier2 = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectIdentifier];
    [coderCopy encodeObject:ckParentCloudObjectIdentifier2 forKey:@"ckParentCloudObjectIdentifier"];
  }

  ckIdentifier = [(REMSharedEntitySyncActivity *)self ckIdentifier];
  [coderCopy encodeObject:ckIdentifier forKey:@"ckIdentifier"];

  sharedEntityName = [(REMSharedEntitySyncActivity *)self sharedEntityName];
  [coderCopy encodeObject:sharedEntityName forKey:@"sharedEntityName"];

  uuidForChangeTracking = [(REMSharedEntitySyncActivity *)self uuidForChangeTracking];

  if (uuidForChangeTracking)
  {
    uuidForChangeTracking2 = [(REMSharedEntitySyncActivity *)self uuidForChangeTracking];
    [coderCopy encodeObject:uuidForChangeTracking2 forKey:@"uuidForChangeTracking"];
  }
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  accountIdentifier = [(REMSharedEntitySyncActivity *)self accountIdentifier];
  activityDate = [(REMSharedEntitySyncActivity *)self activityDate];
  activityTypeDescription = [(REMSharedEntitySyncActivity *)self activityTypeDescription];
  authorUserRecordIDString = [(REMSharedEntitySyncActivity *)self authorUserRecordIDString];
  ckParentCloudObjectEntityName = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectEntityName];
  ckParentCloudObjectIdentifier = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectIdentifier];
  ckIdentifier = [(REMSharedEntitySyncActivity *)self ckIdentifier];
  sharedEntityName = [(REMSharedEntitySyncActivity *)self sharedEntityName];
  uuidForChangeTracking = [(REMSharedEntitySyncActivity *)self uuidForChangeTracking];
  v12 = [v15 stringWithFormat:@"<%@: %p accountIdentifier: %@, activityDate: %@, activityType: %@, authorUserRecordIDString: %@, ckParentCloudObjectEntityName: %@, ckParentCloudObjectIdentifier: %@, ckIdentifier: %@, sharedEntityName: %@, uuidForChangeTracking: %@", v14, self, accountIdentifier, activityDate, activityTypeDescription, authorUserRecordIDString, ckParentCloudObjectEntityName, ckParentCloudObjectIdentifier, ckIdentifier, sharedEntityName, uuidForChangeTracking];

  return v12;
}

- (id)activityTypeDescription
{
  activityType = [(REMSharedEntitySyncActivity *)self activityType];
  if (activityType < 6)
  {
    return off_1E7508700[activityType];
  }

  v5 = os_log_create("com.apple.reminderkit", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(REMSharedEntitySyncActivity *)self activityTypeDescription];
  }

  return @"ILL-DEFINED";
}

- (void)activityTypeDescription
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 134217984;
  activityType = [self activityType];
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Attempted to describe invalid REMSharedEntitySyncActivityType with value %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end
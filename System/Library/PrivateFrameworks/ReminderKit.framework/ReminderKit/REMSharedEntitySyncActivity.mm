@interface REMSharedEntitySyncActivity
- (REMSharedEntitySyncActivity)initWithAccountIdentifier:(id)a3 activityDate:(id)a4 activityType:(int64_t)a5 authorUserRecordIDString:(id)a6 ckParentCloudObjectEntityName:(id)a7 ckParentCloudObjectIdentifier:(id)a8 ckIdentifier:(id)a9 sharedEntityName:(id)a10 uuidForChangeTracking:(id)a11;
- (REMSharedEntitySyncActivity)initWithCoder:(id)a3;
- (id)activityTypeDescription;
- (id)description;
- (void)activityTypeDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSharedEntitySyncActivity

- (REMSharedEntitySyncActivity)initWithAccountIdentifier:(id)a3 activityDate:(id)a4 activityType:(int64_t)a5 authorUserRecordIDString:(id)a6 ckParentCloudObjectEntityName:(id)a7 ckParentCloudObjectIdentifier:(id)a8 ckIdentifier:(id)a9 sharedEntityName:(id)a10 uuidForChangeTracking:(id)a11
{
  v28 = a3;
  v27 = a4;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  v23 = a9;
  v17 = a10;
  v18 = a11;
  v29.receiver = self;
  v29.super_class = REMSharedEntitySyncActivity;
  v19 = [(REMSharedEntitySyncActivity *)&v29 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_accountIdentifier, a3);
    objc_storeStrong(&v20->_activityDate, a4);
    v20->_activityType = a5;
    objc_storeStrong(&v20->_authorUserRecordIDString, a6);
    objc_storeStrong(&v20->_ckParentCloudObjectEntityName, a7);
    objc_storeStrong(&v20->_ckParentCloudObjectIdentifier, a8);
    objc_storeStrong(&v20->_ckIdentifier, a9);
    objc_storeStrong(&v20->_sharedEntityName, a10);
    objc_storeStrong(&v20->_uuidForChangeTracking, a11);
  }

  return v20;
}

- (REMSharedEntitySyncActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = REMSharedEntitySyncActivity;
  v5 = [(REMSharedEntitySyncActivity *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityDate"];
    activityDate = v5->_activityDate;
    v5->_activityDate = v8;

    v5->_activityType = [v4 decodeIntegerForKey:@"activityType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authorUserRecordIDString"];
    authorUserRecordIDString = v5->_authorUserRecordIDString;
    v5->_authorUserRecordIDString = v10;

    if ([v4 containsValueForKey:@"ckParentCloudObjectEntityName"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckParentCloudObjectEntityName"];
      ckParentCloudObjectEntityName = v5->_ckParentCloudObjectEntityName;
      v5->_ckParentCloudObjectEntityName = v12;
    }

    if ([v4 containsValueForKey:@"ckParentCloudObjectIdentifier"])
    {
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckParentCloudObjectIdentifier"];
      ckParentCloudObjectIdentifier = v5->_ckParentCloudObjectIdentifier;
      v5->_ckParentCloudObjectIdentifier = v14;
    }

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ckIdentifier"];
    ckIdentifier = v5->_ckIdentifier;
    v5->_ckIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedEntityName"];
    sharedEntityName = v5->_sharedEntityName;
    v5->_sharedEntityName = v18;

    if ([v4 containsValueForKey:@"uuidForChangeTracking"])
    {
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuidForChangeTracking"];
      uuidForChangeTracking = v5->_uuidForChangeTracking;
      v5->_uuidForChangeTracking = v20;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(REMSharedEntitySyncActivity *)self accountIdentifier];
  [v15 encodeObject:v4 forKey:@"accountIdentifier"];

  v5 = [(REMSharedEntitySyncActivity *)self activityDate];
  [v15 encodeObject:v5 forKey:@"activityDate"];

  [v15 encodeInteger:-[REMSharedEntitySyncActivity activityType](self forKey:{"activityType"), @"activityType"}];
  v6 = [(REMSharedEntitySyncActivity *)self authorUserRecordIDString];
  [v15 encodeObject:v6 forKey:@"authorUserRecordIDString"];

  v7 = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectEntityName];

  if (v7)
  {
    v8 = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectEntityName];
    [v15 encodeObject:v8 forKey:@"ckParentCloudObjectEntityName"];
  }

  v9 = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectIdentifier];

  if (v9)
  {
    v10 = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectIdentifier];
    [v15 encodeObject:v10 forKey:@"ckParentCloudObjectIdentifier"];
  }

  v11 = [(REMSharedEntitySyncActivity *)self ckIdentifier];
  [v15 encodeObject:v11 forKey:@"ckIdentifier"];

  v12 = [(REMSharedEntitySyncActivity *)self sharedEntityName];
  [v15 encodeObject:v12 forKey:@"sharedEntityName"];

  v13 = [(REMSharedEntitySyncActivity *)self uuidForChangeTracking];

  if (v13)
  {
    v14 = [(REMSharedEntitySyncActivity *)self uuidForChangeTracking];
    [v15 encodeObject:v14 forKey:@"uuidForChangeTracking"];
  }
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = objc_opt_class();
  v3 = [(REMSharedEntitySyncActivity *)self accountIdentifier];
  v4 = [(REMSharedEntitySyncActivity *)self activityDate];
  v5 = [(REMSharedEntitySyncActivity *)self activityTypeDescription];
  v6 = [(REMSharedEntitySyncActivity *)self authorUserRecordIDString];
  v7 = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectEntityName];
  v8 = [(REMSharedEntitySyncActivity *)self ckParentCloudObjectIdentifier];
  v9 = [(REMSharedEntitySyncActivity *)self ckIdentifier];
  v10 = [(REMSharedEntitySyncActivity *)self sharedEntityName];
  v11 = [(REMSharedEntitySyncActivity *)self uuidForChangeTracking];
  v12 = [v15 stringWithFormat:@"<%@: %p accountIdentifier: %@, activityDate: %@, activityType: %@, authorUserRecordIDString: %@, ckParentCloudObjectEntityName: %@, ckParentCloudObjectIdentifier: %@, ckIdentifier: %@, sharedEntityName: %@, uuidForChangeTracking: %@", v14, self, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)activityTypeDescription
{
  v3 = [(REMSharedEntitySyncActivity *)self activityType];
  if (v3 < 6)
  {
    return off_1E7508700[v3];
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
  v5 = [a1 activityType];
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Attempted to describe invalid REMSharedEntitySyncActivityType with value %ld", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end
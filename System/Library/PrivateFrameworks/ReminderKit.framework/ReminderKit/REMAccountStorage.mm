@interface REMAccountStorage
+ (id)listIDsMergeableOrderingReplicaIDSourceWithAccountID:(id)a3;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUnsupported;
- (NSString)displayName;
- (REMAccountStorage)initWithCoder:(id)a3;
- (REMAccountStorage)initWithObjectID:(id)a3 type:(int64_t)a4 name:(id)a5;
- (REMAccountStorage)initWithObjectID:(id)a3 type:(int64_t)a4 name:(id)a5 nullableListIDsMergeableOrdering:(id)a6;
- (REMCRMergeableOrderedSet)listIDsMergeableOrdering;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)accountTypeHost;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (id)listIDsMergeableOrderingReplicaIDSource;
- (id)serializedListIDsMergeableOrdering;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)listIDsMergeableOrdering;
- (void)resolutionTokenMap;
- (void)setListIDsMergeableOrdering:(id)a3;
- (void)setStoreGenerationIfNeeded:(unint64_t)a3;
@end

@implementation REMAccountStorage

- (id)accountTypeHost
{
  accountTypeHost = self->_accountTypeHost;
  if (!accountTypeHost || (v4 = [(REMAccountTypeHost *)accountTypeHost _accountType], v4 != [(REMAccountStorage *)self type]))
  {
    v5 = [[REMAccountTypeHost alloc] initWithType:[(REMAccountStorage *)self type]];
    v6 = self->_accountTypeHost;
    self->_accountTypeHost = v5;
  }

  v7 = self->_accountTypeHost;

  return v7;
}

- (NSString)displayName
{
  v2 = [(REMAccountStorage *)self name];
  v3 = [REMDisplayNameUtils displayNameFromAccountName:v2];

  return v3;
}

- (REMAccountStorage)initWithObjectID:(id)a3 type:(int64_t)a4 name:(id)a5 nullableListIDsMergeableOrdering:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v44.receiver = self;
  v44.super_class = REMAccountStorage;
  v14 = [(REMAccountStorage *)&v44 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_objectID, a3);
    v15->_type = a4;
    objc_storeStrong(&v15->_name, a5);
    v15->_lock._os_unfair_lock_opaque = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__2;
    v42 = __Block_byref_object_dispose__2;
    v43 = 0;
    os_unfair_lock_lock(&v15->_lock);
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __81__REMAccountStorage_initWithObjectID_type_name_nullableListIDsMergeableOrdering___block_invoke;
    v35 = &unk_1E7508420;
    v37 = &v38;
    v36 = v13;
    __81__REMAccountStorage_initWithObjectID_type_name_nullableListIDsMergeableOrdering___block_invoke(&v32);
    os_unfair_lock_unlock(&v15->_lock);

    v16 = v39[5];
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = [MEMORY[0x1E695DEF0] data];
    }

    listIDsMergeableOrderingData = v15->_listIDsMergeableOrderingData;
    v15->_listIDsMergeableOrderingData = v17;

    objc_storeStrong(&v15->_listIDsMergeableOrdering, a6);
    pinnedListsManualOrdering = v15->_pinnedListsManualOrdering;
    v15->_pinnedListsManualOrdering = 0;

    templatesManualOrdering = v15->_templatesManualOrdering;
    v15->_templatesManualOrdering = 0;

    v21 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v15->_resolutionTokenMap;
    v15->_resolutionTokenMap = v21;

    v23 = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v15->_resolutionTokenMapData;
    v15->_resolutionTokenMapData = v23;

    v25 = [MEMORY[0x1E695DFD8] set];
    listIDsToUndelete = v15->_listIDsToUndelete;
    v15->_listIDsToUndelete = v25;

    v27 = [MEMORY[0x1E695DFD8] set];
    smartListIDsToUndelete = v15->_smartListIDsToUndelete;
    v15->_smartListIDsToUndelete = v27;

    v15->_isAddingExtraPrimaryCKAccountForTesting = 0;
    *&v15->_listsDADisplayOrderChanged = 0x1000000000000;
    v29 = [(REMAccountStorage *)v15 accountTypeHost];
    v30 = [v29 isCloudKit];

    v15->_daWasMigrated = v30;
    _Block_object_dispose(&v38, 8);
  }

  return v15;
}

uint64_t __81__REMAccountStorage_initWithObjectID_type_name_nullableListIDsMergeableOrdering___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serializedData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (REMAccountStorage)initWithObjectID:(id)a3 type:(int64_t)a4 name:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [REMAccountStorage listIDsMergeableOrderingReplicaIDSourceWithAccountID:v9];
  v11 = [REMCRMergeableOrderedSet alloc];
  v12 = [MEMORY[0x1E695DFB8] orderedSet];
  v13 = [(REMCRMergeableOrderedSet *)v11 initWithReplicaIDSource:v10 orderedSet:v12];

  v14 = [(REMAccountStorage *)self initWithObjectID:v9 type:a4 name:v8 listIDsMergeableOrdering:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [REMAccountStorage alloc];
  v5 = [(REMAccountStorage *)self objectID];
  v6 = [(REMAccountStorage *)self type];
  v7 = [(REMAccountStorage *)self name];
  v8 = [(REMAccountStorage *)v4 initWithObjectID:v5 type:v6 name:v7 nullableListIDsMergeableOrdering:0];

  v9 = [(REMCRMergeableOrderedSet *)self->_listIDsMergeableOrdering copy];
  [(REMAccountStorage *)v8 setListIDsMergeableOrdering:v9];

  [(REMAccountStorage *)v8 setListIDsMergeableOrderingData:self->_listIDsMergeableOrderingData];
  v10 = [(REMAccountStorage *)self externalIdentifier];
  [(REMAccountStorage *)v8 setExternalIdentifier:v10];

  v11 = [(REMAccountStorage *)self externalModificationTag];
  [(REMAccountStorage *)v8 setExternalModificationTag:v11];

  v12 = [(REMAccountStorage *)self daSyncToken];
  [(REMAccountStorage *)v8 setDaSyncToken:v12];

  v13 = [(REMAccountStorage *)self daPushKey];
  [(REMAccountStorage *)v8 setDaPushKey:v13];

  v14 = [(REMAccountStorage *)self pinnedListsManualOrdering];
  v15 = [v14 copy];
  [(REMAccountStorage *)v8 setPinnedListsManualOrdering:v15];

  v16 = [(REMAccountStorage *)self templatesManualOrdering];
  v17 = [v16 copy];
  [(REMAccountStorage *)v8 setTemplatesManualOrdering:v17];

  v18 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  resolutionTokenMap = v8->_resolutionTokenMap;
  v8->_resolutionTokenMap = v18;

  v20 = [(REMAccountStorage *)self resolutionTokenMapData];
  [(REMAccountStorage *)v8 setResolutionTokenMapData:v20];

  v21 = [(REMAccountStorage *)self listIDsToUndelete];
  v22 = [v21 copy];
  [(REMAccountStorage *)v8 setListIDsToUndelete:v22];

  v23 = [(REMAccountStorage *)self smartListIDsToUndelete];
  v24 = [v23 copy];
  [(REMAccountStorage *)v8 setSmartListIDsToUndelete:v24];

  [(REMAccountStorage *)v8 setListsDADisplayOrderChanged:[(REMAccountStorage *)self listsDADisplayOrderChanged]];
  v25 = [(REMAccountStorage *)self personID];
  [(REMAccountStorage *)v8 setPersonID:v25];

  v26 = [(REMAccountStorage *)self personIDSalt];
  v27 = [v26 copy];
  [(REMAccountStorage *)v8 setPersonIDSalt:v27];

  [(REMAccountStorage *)v8 setInactive:[(REMAccountStorage *)self inactive]];
  [(REMAccountStorage *)v8 setDidChooseToMigrate:[(REMAccountStorage *)self didChooseToMigrate]];
  [(REMAccountStorage *)v8 setDidChooseToMigrateLocally:[(REMAccountStorage *)self didChooseToMigrateLocally]];
  [(REMAccountStorage *)v8 setDidFinishMigration:[(REMAccountStorage *)self didFinishMigration]];
  [(REMAccountStorage *)v8 setPersistenceCloudSchemaVersion:[(REMAccountStorage *)self persistenceCloudSchemaVersion]];
  v28 = [(REMAccountStorage *)self daConstraintsDescriptionPath];
  [(REMAccountStorage *)v8 setDaConstraintsDescriptionPath:v28];

  [(REMAccountStorage *)v8 setDaAllowsCalendarAddDeleteModify:[(REMAccountStorage *)self daAllowsCalendarAddDeleteModify]];
  [(REMAccountStorage *)v8 setDaSupportsSharedCalendars:[(REMAccountStorage *)self daSupportsSharedCalendars]];
  [(REMAccountStorage *)v8 setDaWasMigrated:[(REMAccountStorage *)self daWasMigrated]];
  [(REMAccountStorage *)v8 setMinimumSupportedVersion:[(REMAccountStorage *)self minimumSupportedVersion]];
  [(REMAccountStorage *)v8 setEffectiveMinimumSupportedVersion:[(REMAccountStorage *)self effectiveMinimumSupportedVersion]];
  [(REMAccountStorage *)v8 setDebugSyncDisabled:[(REMAccountStorage *)self debugSyncDisabled]];
  v8->_storeGeneration = self->_storeGeneration;
  v8->_copyGeneration = self->_copyGeneration + 1;
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMAccountStorage *)self type];
  v6 = [(REMAccountStorage *)self objectID];
  v7 = [v3 stringWithFormat:@"<%@: %p type:%ld, %@>", v4, self, v5, v6];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storeGeneration = self->_storeGeneration;
  copyGeneration = self->_copyGeneration;
  v7 = [(REMAccountStorage *)self type];
  v8 = [(REMAccountStorage *)self name];
  v9 = [(REMAccountStorage *)self objectID];
  v10 = [v3 stringWithFormat:@"<%@: %p[%ld.%ld] type:%ld name:%@ %@>", v4, self, storeGeneration, copyGeneration, v7, v8, v9];

  return v10;
}

- (REMAccountStorage)initWithCoder:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
  v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
  v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daSyncToken"];
  v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daPushKey"];
  v7 = [v4 decodeIntegerForKey:@"type"];
  if (v7 >= 8)
  {
    v8 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMAccountStorage initWithCoder:];
    }

    v7 = 0;
  }

  v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v41 = [v4 decodeBoolForKey:@"markedForRemoval"];
  v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinnedListsManualOrdering"];
  v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"templatesManualOrdering"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"listIDsToUndelete"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"smartListIDsToUndelete"];

  v17 = v5;
  if (v7 && v5 && v48)
  {
    v18 = [(REMAccountStorage *)self initWithObjectID:v5 type:v7 name:v48 nullableListIDsMergeableOrdering:0];
    v19 = v18;
    v20 = v6;
    if (v18)
    {
      [(REMAccountStorage *)v18 setExternalIdentifier:v6];
      [(REMAccountStorage *)v19 setExternalModificationTag:v47];
      [(REMAccountStorage *)v19 setDaSyncToken:v46];
      [(REMAccountStorage *)v19 setDaPushKey:v45];
      [(REMAccountStorage *)v19 setMarkedForRemoval:v41];
      v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listIDsMergeableOrdering"];
      v42 = v21;
      if (v21)
      {
        objc_storeStrong(&v19->_listIDsMergeableOrdering, v21);
        v22 = 0;
      }

      else
      {
        listIDsMergeableOrdering = v19->_listIDsMergeableOrdering;
        v19->_listIDsMergeableOrdering = 0;

        v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listIDsMergeableOrderingData"];
      }

      listIDsMergeableOrderingData = v19->_listIDsMergeableOrderingData;
      v19->_listIDsMergeableOrderingData = v22;

      if (!v19->_listIDsMergeableOrdering && !v19->_listIDsMergeableOrderingData)
      {
        [REMAccountStorage initWithCoder:];
      }

      v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
      v40 = v28;
      if (v29)
      {
        objc_storeStrong(&v19->_resolutionTokenMap, v29);
        resolutionTokenMapData = v19->_resolutionTokenMapData;
        v19->_resolutionTokenMapData = 0;
      }

      else
      {
        resolutionTokenMap = v19->_resolutionTokenMap;
        v19->_resolutionTokenMap = 0;

        v32 = v28;
        resolutionTokenMapData = v19->_resolutionTokenMapData;
        v19->_resolutionTokenMapData = v32;
      }

      [(REMAccountStorage *)v19 setPinnedListsManualOrdering:v44];
      [(REMAccountStorage *)v19 setTemplatesManualOrdering:v43];
      v33 = [MEMORY[0x1E695DFD8] setWithArray:v12];
      [(REMAccountStorage *)v19 setListIDsToUndelete:v33];

      v34 = [MEMORY[0x1E695DFD8] setWithArray:v16];
      [(REMAccountStorage *)v19 setSmartListIDsToUndelete:v34];

      -[REMAccountStorage setListsDADisplayOrderChanged:](v19, "setListsDADisplayOrderChanged:", [v4 decodeBoolForKey:@"listsDADisplayOrderChanged"]);
      v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
      [(REMAccountStorage *)v19 setPersonID:v35];

      v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personIDSalt"];
      [(REMAccountStorage *)v19 setPersonIDSalt:v36];

      -[REMAccountStorage setInactive:](v19, "setInactive:", [v4 decodeBoolForKey:@"inactive"]);
      -[REMAccountStorage setDidChooseToMigrate:](v19, "setDidChooseToMigrate:", [v4 decodeBoolForKey:@"didChooseToMigrate"]);
      -[REMAccountStorage setDidChooseToMigrateLocally:](v19, "setDidChooseToMigrateLocally:", [v4 decodeBoolForKey:@"didChooseToMigrateLocally"]);
      -[REMAccountStorage setDidFinishMigration:](v19, "setDidFinishMigration:", [v4 decodeBoolForKey:@"didFinishMigration"]);
      -[REMAccountStorage setPersistenceCloudSchemaVersion:](v19, "setPersistenceCloudSchemaVersion:", [v4 decodeIntegerForKey:@"persistenceCloudSchemaVersion"]);
      v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"daConstraintsDescriptionPath"];
      [(REMAccountStorage *)v19 setDaConstraintsDescriptionPath:v37];

      -[REMAccountStorage setDaAllowsCalendarAddDeleteModify:](v19, "setDaAllowsCalendarAddDeleteModify:", [v4 decodeBoolForKey:@"daAllowsCalendarAddDeleteModify"]);
      -[REMAccountStorage setDaSupportsSharedCalendars:](v19, "setDaSupportsSharedCalendars:", [v4 decodeBoolForKey:@"daSupportsSharedCalendars"]);
      -[REMAccountStorage setDaWasMigrated:](v19, "setDaWasMigrated:", [v4 decodeBoolForKey:@"daWasMigrated"]);
      -[REMAccountStorage setMinimumSupportedVersion:](v19, "setMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"minimumSupportedVersion"]);
      -[REMAccountStorage setEffectiveMinimumSupportedVersion:](v19, "setEffectiveMinimumSupportedVersion:", [v4 decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);
      -[REMAccountStorage setDebugSyncDisabled:](v19, "setDebugSyncDisabled:", [v4 decodeBoolForKey:@"debugSyncDisabled"]);
    }

    self = v19;
    v25 = self;
  }

  else
  {
    v23 = +[REMLogStore utility];
    v20 = v6;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 138544130;
      v50 = v17;
      v51 = 2048;
      v52 = v7;
      v53 = 2112;
      v54 = v48;
      v55 = 1024;
      v56 = [(REMAccountStorage *)self markedForRemoval];
      _os_log_fault_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_FAULT, "Attempted to decode REMAccount missing objectID, type or name {objectID: %{public}@, type: %ld, name: %@, markedForRemoval: %d}", buf, 0x26u);
    }

    v24 = [REMError internalErrorWithDebugDescription:@"REMAccount missing required fields"];
    [v4 failWithError:v24];

    v25 = 0;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v25;
}

- (void)setStoreGenerationIfNeeded:(unint64_t)a3
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = a3;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (self->_listIDsMergeableOrdering)
  {
    os_unfair_lock_lock(&self->_lock);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __37__REMAccountStorage_encodeWithCoder___block_invoke;
    v25 = &unk_1E7508448;
    v26 = v4;
    v27 = self;
    __37__REMAccountStorage_encodeWithCoder___block_invoke(&v22);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (!self->_listIDsMergeableOrderingData)
    {
      [REMAccountStorage encodeWithCoder:?];
    }

    [v4 encodeObject:0 forKey:@"listIDsMergeableOrdering"];
    [v4 encodeObject:self->_listIDsMergeableOrderingData forKey:@"listIDsMergeableOrderingData"];
  }

  v5 = [(REMAccountStorage *)self objectID:v22];
  [v4 encodeObject:v5 forKey:@"objectID"];

  v6 = [(REMAccountStorage *)self externalIdentifier];
  [v4 encodeObject:v6 forKey:@"externalIdentifier"];

  v7 = [(REMAccountStorage *)self externalModificationTag];
  [v4 encodeObject:v7 forKey:@"externalModificationTag"];

  v8 = [(REMAccountStorage *)self daSyncToken];
  [v4 encodeObject:v8 forKey:@"daSyncToken"];

  v9 = [(REMAccountStorage *)self daPushKey];
  [v4 encodeObject:v9 forKey:@"daPushKey"];

  [v4 encodeInteger:-[REMAccountStorage type](self forKey:{"type"), @"type"}];
  v10 = [(REMAccountStorage *)self name];
  [v4 encodeObject:v10 forKey:@"name"];

  v11 = [(REMAccountStorage *)self personID];
  [v4 encodeObject:v11 forKey:@"personID"];

  v12 = [(REMAccountStorage *)self personIDSalt];
  [v4 encodeObject:v12 forKey:@"personIDSalt"];

  v13 = [(REMAccountStorage *)self pinnedListsManualOrdering];
  [v4 encodeObject:v13 forKey:@"pinnedListsManualOrdering"];

  v14 = [(REMAccountStorage *)self templatesManualOrdering];
  [v4 encodeObject:v14 forKey:@"templatesManualOrdering"];

  [v4 encodeBool:-[REMAccountStorage markedForRemoval](self forKey:{"markedForRemoval"), @"markedForRemoval"}];
  [v4 encodeBool:-[REMAccountStorage inactive](self forKey:{"inactive"), @"inactive"}];
  [v4 encodeBool:-[REMAccountStorage didChooseToMigrate](self forKey:{"didChooseToMigrate"), @"didChooseToMigrate"}];
  [v4 encodeBool:-[REMAccountStorage didChooseToMigrateLocally](self forKey:{"didChooseToMigrateLocally"), @"didChooseToMigrateLocally"}];
  [v4 encodeBool:-[REMAccountStorage didFinishMigration](self forKey:{"didFinishMigration"), @"didFinishMigration"}];
  [v4 encodeInteger:-[REMAccountStorage persistenceCloudSchemaVersion](self forKey:{"persistenceCloudSchemaVersion"), @"persistenceCloudSchemaVersion"}];
  v15 = [(REMAccountStorage *)self daConstraintsDescriptionPath];
  [v4 encodeObject:v15 forKey:@"daConstraintsDescriptionPath"];

  [v4 encodeBool:-[REMAccountStorage daAllowsCalendarAddDeleteModify](self forKey:{"daAllowsCalendarAddDeleteModify"), @"daAllowsCalendarAddDeleteModify"}];
  [v4 encodeBool:-[REMAccountStorage daSupportsSharedCalendars](self forKey:{"daSupportsSharedCalendars"), @"daSupportsSharedCalendars"}];
  [v4 encodeBool:-[REMAccountStorage daWasMigrated](self forKey:{"daWasMigrated"), @"daWasMigrated"}];
  [v4 encodeInteger:-[REMAccountStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [v4 encodeInteger:-[REMAccountStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
  [v4 encodeBool:-[REMAccountStorage debugSyncDisabled](self forKey:{"debugSyncDisabled"), @"debugSyncDisabled"}];
  v16 = [(REMAccountStorage *)self listIDsToUndelete];
  v17 = [v16 allObjects];
  [v4 encodeObject:v17 forKey:@"listIDsToUndelete"];

  v18 = [(REMAccountStorage *)self smartListIDsToUndelete];
  v19 = [v18 allObjects];
  [v4 encodeObject:v19 forKey:@"smartListIDsToUndelete"];

  [v4 encodeBool:-[REMAccountStorage listsDADisplayOrderChanged](self forKey:{"listsDADisplayOrderChanged"), @"listsDADisplayOrderChanged"}];
  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [v4 encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [v4 encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [v4 encodeObject:0 forKey:@"resolutionTokenMap"];
    v21 = [(REMAccountStorage *)self resolutionTokenMapData];
    [v4 encodeObject:v21 forKey:@"resolutionTokenMapData"];
  }
}

uint64_t __37__REMAccountStorage_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 40) forKey:@"listIDsMergeableOrdering"];
  v2 = *(a1 + 32);

  return [v2 encodeObject:0 forKey:@"listIDsMergeableOrderingData"];
}

- (BOOL)isEqual:(id)a3
{
  v128 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMAccountStorage *)self objectID];
      v8 = [(REMAccountStorage *)v6 objectID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMAccountStorage *)self objectID];
        v11 = [(REMAccountStorage *)v6 objectID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_77;
        }
      }

      v14 = [(REMAccountStorage *)self name];
      v15 = [(REMAccountStorage *)v6 name];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMAccountStorage *)self name];
        v18 = [(REMAccountStorage *)v6 name];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_77;
        }
      }

      v20 = [(REMAccountStorage *)self type];
      if (v20 != [(REMAccountStorage *)v6 type])
      {
        goto LABEL_77;
      }

      v21 = [(REMAccountStorage *)self markedForRemoval];
      if (v21 != [(REMAccountStorage *)v6 markedForRemoval])
      {
        goto LABEL_77;
      }

      v22 = [(REMAccountStorage *)self externalIdentifier];
      v23 = [(REMAccountStorage *)v6 externalIdentifier];
      v24 = v23;
      if (v22 == v23)
      {
      }

      else
      {
        v25 = [(REMAccountStorage *)self externalIdentifier];
        v26 = [(REMAccountStorage *)v6 externalIdentifier];
        v27 = [v25 isEqual:v26];

        if (!v27)
        {
          goto LABEL_77;
        }
      }

      v28 = [(REMAccountStorage *)self externalModificationTag];
      v29 = [(REMAccountStorage *)v6 externalModificationTag];
      v30 = v29;
      if (v28 == v29)
      {
      }

      else
      {
        v31 = [(REMAccountStorage *)self externalModificationTag];
        v32 = [(REMAccountStorage *)v6 externalModificationTag];
        v33 = [v31 isEqual:v32];

        if (!v33)
        {
          goto LABEL_77;
        }
      }

      v34 = [(REMAccountStorage *)self daSyncToken];
      v35 = [(REMAccountStorage *)v6 daSyncToken];
      v36 = v35;
      if (v34 == v35)
      {
      }

      else
      {
        v37 = [(REMAccountStorage *)self daSyncToken];
        v38 = [(REMAccountStorage *)v6 daSyncToken];
        v39 = [v37 isEqual:v38];

        if (!v39)
        {
          goto LABEL_77;
        }
      }

      v40 = [(REMAccountStorage *)self daPushKey];
      v41 = [(REMAccountStorage *)v6 daPushKey];
      v42 = v41;
      if (v40 == v41)
      {
      }

      else
      {
        v43 = [(REMAccountStorage *)self daPushKey];
        v44 = [(REMAccountStorage *)v6 daPushKey];
        v45 = [v43 isEqual:v44];

        if (!v45)
        {
          goto LABEL_77;
        }
      }

      v46 = [(REMAccountStorage *)self pinnedListsManualOrdering];
      v47 = [(REMAccountStorage *)v6 pinnedListsManualOrdering];
      v48 = v47;
      if (v46 == v47)
      {
      }

      else
      {
        v49 = [(REMAccountStorage *)self pinnedListsManualOrdering];
        v50 = [(REMAccountStorage *)v6 pinnedListsManualOrdering];
        v51 = [v49 isEqual:v50];

        if (!v51)
        {
          goto LABEL_77;
        }
      }

      v52 = [(REMAccountStorage *)self templatesManualOrdering];
      v53 = [(REMAccountStorage *)v6 templatesManualOrdering];
      v54 = v53;
      if (v52 == v53)
      {
      }

      else
      {
        v55 = [(REMAccountStorage *)self templatesManualOrdering];
        v56 = [(REMAccountStorage *)v6 templatesManualOrdering];
        v57 = [v55 isEqual:v56];

        if (!v57)
        {
          goto LABEL_77;
        }
      }

      v58 = [(REMAccountStorage *)self listIDsToUndelete];
      v59 = [(REMAccountStorage *)v6 listIDsToUndelete];
      v60 = v59;
      if (v58 == v59)
      {
      }

      else
      {
        v61 = [(REMAccountStorage *)self listIDsToUndelete];
        v62 = [(REMAccountStorage *)v6 listIDsToUndelete];
        v63 = [v61 isEqual:v62];

        if (!v63)
        {
          goto LABEL_77;
        }
      }

      v64 = [(REMAccountStorage *)self smartListIDsToUndelete];
      v65 = [(REMAccountStorage *)v6 smartListIDsToUndelete];
      v66 = v65;
      if (v64 == v65)
      {
      }

      else
      {
        v67 = [(REMAccountStorage *)self smartListIDsToUndelete];
        v68 = [(REMAccountStorage *)v6 smartListIDsToUndelete];
        v69 = [v67 isEqual:v68];

        if (!v69)
        {
          goto LABEL_77;
        }
      }

      v70 = [(REMAccountStorage *)self listsDADisplayOrderChanged];
      if (v70 == [(REMAccountStorage *)v6 listsDADisplayOrderChanged])
      {
        v71 = [(REMAccountStorage *)self personID];
        v72 = [(REMAccountStorage *)v6 personID];
        v73 = v72;
        if (v71 == v72)
        {
        }

        else
        {
          v74 = [(REMAccountStorage *)self personID];
          v75 = [(REMAccountStorage *)v6 personID];
          v76 = [v74 isEqual:v75];

          if (!v76)
          {
            goto LABEL_77;
          }
        }

        v77 = [(REMAccountStorage *)self personIDSalt];
        v78 = [(REMAccountStorage *)v6 personIDSalt];
        v79 = v78;
        if (v77 == v78)
        {
        }

        else
        {
          v80 = [(REMAccountStorage *)self personIDSalt];
          v81 = [(REMAccountStorage *)v6 personIDSalt];
          v82 = [v80 isEqual:v81];

          if (!v82)
          {
            goto LABEL_77;
          }
        }

        v83 = [(REMAccountStorage *)self inactive];
        if (v83 != [(REMAccountStorage *)v6 inactive])
        {
          goto LABEL_77;
        }

        v84 = [(REMAccountStorage *)self didChooseToMigrate];
        if (v84 != [(REMAccountStorage *)v6 didChooseToMigrate])
        {
          goto LABEL_77;
        }

        v85 = [(REMAccountStorage *)self didChooseToMigrateLocally];
        if (v85 != [(REMAccountStorage *)v6 didChooseToMigrateLocally])
        {
          goto LABEL_77;
        }

        v86 = [(REMAccountStorage *)self didFinishMigration];
        if (v86 != [(REMAccountStorage *)v6 didFinishMigration])
        {
          goto LABEL_77;
        }

        v87 = [(REMAccountStorage *)self persistenceCloudSchemaVersion];
        if (v87 != [(REMAccountStorage *)v6 persistenceCloudSchemaVersion])
        {
          goto LABEL_77;
        }

        v88 = [(REMAccountStorage *)self daConstraintsDescriptionPath];
        v89 = [(REMAccountStorage *)v6 daConstraintsDescriptionPath];
        v90 = v89;
        if (v88 == v89)
        {
        }

        else
        {
          v91 = [(REMAccountStorage *)self daConstraintsDescriptionPath];
          v92 = [(REMAccountStorage *)v6 daConstraintsDescriptionPath];
          v93 = [v91 isEqual:v92];

          if (!v93)
          {
            goto LABEL_77;
          }
        }

        v94 = [(REMAccountStorage *)self daAllowsCalendarAddDeleteModify];
        if (v94 != [(REMAccountStorage *)v6 daAllowsCalendarAddDeleteModify])
        {
          goto LABEL_77;
        }

        v95 = [(REMAccountStorage *)self daSupportsSharedCalendars];
        if (v95 != [(REMAccountStorage *)v6 daSupportsSharedCalendars])
        {
          goto LABEL_77;
        }

        v96 = [(REMAccountStorage *)self daWasMigrated];
        if (v96 != [(REMAccountStorage *)v6 daWasMigrated])
        {
          goto LABEL_77;
        }

        v97 = [(REMAccountStorage *)self minimumSupportedVersion];
        if (v97 != [(REMAccountStorage *)v6 minimumSupportedVersion])
        {
          goto LABEL_77;
        }

        v98 = [(REMAccountStorage *)self effectiveMinimumSupportedVersion];
        if (v98 != [(REMAccountStorage *)v6 effectiveMinimumSupportedVersion])
        {
          goto LABEL_77;
        }

        v99 = [(REMAccountStorage *)self debugSyncDisabled];
        if (v99 != [(REMAccountStorage *)v6 debugSyncDisabled])
        {
          goto LABEL_77;
        }

        if (!self->_listIDsMergeableOrdering || v6->_listIDsMergeableOrdering)
        {
          v100 = +[REMLogStore utility];
          if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
          {
            v114 = objc_opt_class();
            v115 = NSStringFromClass(v114);
            listIDsMergeableOrdering = self->_listIDsMergeableOrdering;
            v117 = v6->_listIDsMergeableOrdering;
            v122 = 138543874;
            v123 = v115;
            v124 = 2112;
            v125 = listIDsMergeableOrdering;
            v126 = 2112;
            v127 = v117;
            _os_log_error_impl(&dword_19A0DB000, v100, OS_LOG_TYPE_ERROR, "You are about to trigger decoding the listIDsMergeableOrdering. This is probably not what you want for performance to trigger it from -isEqual:, unless you are running Tests then it's fine {class: %{public}@, self-idsOrdering: %@, other-idsOrdering: %@}", &v122, 0x20u);
          }
        }

        v101 = [(REMAccountStorage *)self listIDsMergeableOrdering];
        v102 = [(REMAccountStorage *)v6 listIDsMergeableOrdering];
        v103 = v102;
        if (v101 == v102)
        {
        }

        else
        {
          v104 = [(REMAccountStorage *)self listIDsMergeableOrdering];
          v105 = [(REMAccountStorage *)v6 listIDsMergeableOrdering];
          v106 = [v104 isEqual:v105];

          if (!v106)
          {
            goto LABEL_77;
          }
        }

        if (!self->_resolutionTokenMap || v6->_resolutionTokenMap)
        {
          v109 = +[REMLogStore utility];
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            v118 = objc_opt_class();
            v119 = NSStringFromClass(v118);
            resolutionTokenMap = self->_resolutionTokenMap;
            v121 = v6->_resolutionTokenMap;
            v122 = 138543874;
            v123 = v119;
            v124 = 2112;
            v125 = resolutionTokenMap;
            v126 = 2112;
            v127 = v121;
            _os_log_error_impl(&dword_19A0DB000, v109, OS_LOG_TYPE_ERROR, "You are about to trigger decoding the resolution token map from JSON data. This is probably not what you want for performance to trigger it from -isEqual:, unless you are running Tests then it's fine {class: %{public}@, self-map: %@, other-map: %@}", &v122, 0x20u);
          }
        }

        v110 = [(REMAccountStorage *)self resolutionTokenMap];
        v111 = [(REMAccountStorage *)v6 resolutionTokenMap];
        if (v110 == v111)
        {
          v13 = 1;
        }

        else
        {
          v112 = [(REMAccountStorage *)self resolutionTokenMap];
          v113 = [(REMAccountStorage *)v6 resolutionTokenMap];
          v13 = [v112 isEqual:v113];
        }

        goto LABEL_78;
      }
    }

LABEL_77:
    v13 = 0;
LABEL_78:

    goto LABEL_79;
  }

  v13 = 1;
LABEL_79:

  v107 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMAccountStorage *)self objectID];
  v3 = [v2 hash];

  return v3;
}

- (REMCRMergeableOrderedSet)listIDsMergeableOrdering
{
  v29 = *MEMORY[0x1E69E9840];
  p_listIDsMergeableOrdering = &self->_listIDsMergeableOrdering;
  v4 = self->_listIDsMergeableOrdering;
  if (v4)
  {
    v5 = v4;
    goto LABEL_16;
  }

  v6 = [(REMAccountStorage *)self objectID];
  v7 = [REMAccountStorage listIDsMergeableOrderingReplicaIDSourceWithAccountID:v6];

  v8 = [(REMAccountStorage *)self listIDsMergeableOrderingData];
  v9 = 0x1E7506000uLL;
  if (!v8)
  {
    v16 = +[REMLogStore utility];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(REMAccountStorage *)self listIDsMergeableOrdering];
    }

    v11 = [REMError internalErrorWithDebugDescription:@"listIDsMergeableOrderingData is nil when trying to deserialize from account storage"];
    v10 = 0;
    goto LABEL_12;
  }

  v22 = 0;
  v10 = [[REMCRMergeableOrderedSet alloc] initWithReplicaIDSource:v7 serializedData:v8 error:&v22];
  v11 = v22;
  v12 = +[REMLogStore utility];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [(REMAccountStorage *)self objectID];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[REMCRMergeableOrderedSet count](v10, "count")}];
    *buf = 138543874;
    v24 = v13;
    v25 = 2048;
    v26 = self;
    v27 = 2112;
    v28 = v14;
    _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "REMAccountStorage listIDsMergeableOrdering deserialized {objectID: %{public}@, self: %p, orderedSet.count: %@}", buf, 0x20u);

    v9 = 0x1E7506000;
  }

  if (!v10 || v11)
  {
LABEL_12:
    v17 = +[REMLogStore utility];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [REMAccountStorage listIDsMergeableOrdering];
    }

    v18 = objc_alloc(*(v9 + 2528));
    listIDsMergeableOrderingData = objc_alloc_init(MEMORY[0x1E695DFB8]);
    v19 = [v18 initWithReplicaIDSource:v7 orderedSet:listIDsMergeableOrderingData];

    v10 = v19;
    goto LABEL_15;
  }

  listIDsMergeableOrderingData = self->_listIDsMergeableOrderingData;
  self->_listIDsMergeableOrderingData = 0;
LABEL_15:

  objc_storeStrong(p_listIDsMergeableOrdering, v10);
  v5 = v10;

LABEL_16:
  v20 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setListIDsMergeableOrdering:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_listIDsMergeableOrdering, a3);
  if (v6)
  {
    listIDsMergeableOrderingData = self->_listIDsMergeableOrderingData;
    self->_listIDsMergeableOrderingData = 0;
  }
}

- (id)serializedListIDsMergeableOrdering
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  os_unfair_lock_lock(&self->_lock);
  v3 = [(REMCRMergeableOrderedSet *)self->_listIDsMergeableOrdering serializedData:MEMORY[0x1E69E9820]];
  v4 = v8[5];
  v8[5] = v3;

  os_unfair_lock_unlock(&self->_lock);
  v5 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v5;
}

uint64_t __55__REMAccountStorage_serializedListIDsMergeableOrdering__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) serializedData];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
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

- (BOOL)isUnsupported
{
  v2 = [(REMAccountStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(v2);
}

- (id)cdKeyToStorageKeyMap
{
  if (cdKeyToStorageKeyMap_onceToken != -1)
  {
    [REMAccountStorage cdKeyToStorageKeyMap];
  }

  v3 = cdKeyToStorageKeyMap_mapping;

  return v3;
}

- (REMResolutionTokenMap)resolutionTokenMap
{
  p_resolutionTokenMap = &self->_resolutionTokenMap;
  v4 = self->_resolutionTokenMap;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(REMAccountStorage *)self resolutionTokenMapData];
    if (!v6)
    {
      v7 = +[REMLogStore utility];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [REMAccountStorage resolutionTokenMap];
      }
    }

    v8 = [(REMAccountStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:v6 keyMap:v8];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

+ (id)listIDsMergeableOrderingReplicaIDSourceWithAccountID:(id)a3
{
  v3 = a3;
  v4 = [[REMReplicaIDSource alloc] initWithAccountID:v3 objectID:v3 property:@"listIDsMergeableOrdering"];

  return v4;
}

- (id)listIDsMergeableOrderingReplicaIDSource
{
  v2 = [(REMAccountStorage *)self objectID];
  v3 = [REMAccountStorage listIDsMergeableOrderingReplicaIDSourceWithAccountID:v2];

  return v3;
}

- (void)initWithCoder:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_FAULT, "Unknown REMAccountType %ld", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.2()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = +[REMLogStore utility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_2_0(&dword_19A0DB000, v2, v3, "rem_log_fault_if (_listIDsMergeableOrdering == nil && _listIDsMergeableOrderingData == nil) -- Attempted to decode REMAccountStorage with both _listIDsMergeableOrdering and _listIDsMergeableOrderingData missing {objectID: %{public}@, name: %{sensitive}@}", v4, v5, v6, v7, v8);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(void *)a1 .cold.1(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[REMLogStore utility];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = [a1 objectID];
    v5 = [a1 name];
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_2_0(&dword_19A0DB000, v6, v7, "rem_log_fault_if (self->_listIDsMergeableOrderingData == nil) -- Attempted to encode REMAccountStorage with both _listIDsMergeableOrdering and _listIDsMergeableOrderingData missing {objectID: %{public}@, name: %{sensitive}@}", v8, v9, v10, v11, v12);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)listIDsMergeableOrdering
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "Failed to read listIDsMergeableOrdering from data. Returning empty set {error: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)resolutionTokenMap
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_19A0DB000, v0, OS_LOG_TYPE_ERROR, "Nil resolutionTokenMapData when reading resolutionTokenMap from account storage. Initialize an empty map {list: %@}", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end
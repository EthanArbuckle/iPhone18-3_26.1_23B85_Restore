@interface REMAccountStorage
+ (id)listIDsMergeableOrderingReplicaIDSourceWithAccountID:(id)d;
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUnsupported;
- (NSString)displayName;
- (REMAccountStorage)initWithCoder:(id)coder;
- (REMAccountStorage)initWithObjectID:(id)d type:(int64_t)type name:(id)name;
- (REMAccountStorage)initWithObjectID:(id)d type:(int64_t)type name:(id)name nullableListIDsMergeableOrdering:(id)ordering;
- (REMCRMergeableOrderedSet)listIDsMergeableOrdering;
- (REMResolutionTokenMap)resolutionTokenMap;
- (id)accountTypeHost;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)listIDsMergeableOrderingReplicaIDSource;
- (id)serializedListIDsMergeableOrdering;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)listIDsMergeableOrdering;
- (void)resolutionTokenMap;
- (void)setListIDsMergeableOrdering:(id)ordering;
- (void)setStoreGenerationIfNeeded:(unint64_t)needed;
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
  name = [(REMAccountStorage *)self name];
  v3 = [REMDisplayNameUtils displayNameFromAccountName:name];

  return v3;
}

- (REMAccountStorage)initWithObjectID:(id)d type:(int64_t)type name:(id)name nullableListIDsMergeableOrdering:(id)ordering
{
  dCopy = d;
  nameCopy = name;
  orderingCopy = ordering;
  v44.receiver = self;
  v44.super_class = REMAccountStorage;
  v14 = [(REMAccountStorage *)&v44 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_objectID, d);
    v15->_type = type;
    objc_storeStrong(&v15->_name, name);
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
    v36 = orderingCopy;
    __81__REMAccountStorage_initWithObjectID_type_name_nullableListIDsMergeableOrdering___block_invoke(&v32);
    os_unfair_lock_unlock(&v15->_lock);

    v16 = v39[5];
    if (v16)
    {
      data = v16;
    }

    else
    {
      data = [MEMORY[0x1E695DEF0] data];
    }

    listIDsMergeableOrderingData = v15->_listIDsMergeableOrderingData;
    v15->_listIDsMergeableOrderingData = data;

    objc_storeStrong(&v15->_listIDsMergeableOrdering, ordering);
    pinnedListsManualOrdering = v15->_pinnedListsManualOrdering;
    v15->_pinnedListsManualOrdering = 0;

    templatesManualOrdering = v15->_templatesManualOrdering;
    v15->_templatesManualOrdering = 0;

    v21 = objc_alloc_init(REMResolutionTokenMap);
    resolutionTokenMap = v15->_resolutionTokenMap;
    v15->_resolutionTokenMap = v21;

    data2 = [MEMORY[0x1E695DEF0] data];
    resolutionTokenMapData = v15->_resolutionTokenMapData;
    v15->_resolutionTokenMapData = data2;

    v25 = [MEMORY[0x1E695DFD8] set];
    listIDsToUndelete = v15->_listIDsToUndelete;
    v15->_listIDsToUndelete = v25;

    v27 = [MEMORY[0x1E695DFD8] set];
    smartListIDsToUndelete = v15->_smartListIDsToUndelete;
    v15->_smartListIDsToUndelete = v27;

    v15->_isAddingExtraPrimaryCKAccountForTesting = 0;
    *&v15->_listsDADisplayOrderChanged = 0x1000000000000;
    accountTypeHost = [(REMAccountStorage *)v15 accountTypeHost];
    isCloudKit = [accountTypeHost isCloudKit];

    v15->_daWasMigrated = isCloudKit;
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

- (REMAccountStorage)initWithObjectID:(id)d type:(int64_t)type name:(id)name
{
  nameCopy = name;
  dCopy = d;
  v10 = [REMAccountStorage listIDsMergeableOrderingReplicaIDSourceWithAccountID:dCopy];
  v11 = [REMCRMergeableOrderedSet alloc];
  orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
  v13 = [(REMCRMergeableOrderedSet *)v11 initWithReplicaIDSource:v10 orderedSet:orderedSet];

  v14 = [(REMAccountStorage *)self initWithObjectID:dCopy type:type name:nameCopy listIDsMergeableOrdering:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [REMAccountStorage alloc];
  objectID = [(REMAccountStorage *)self objectID];
  type = [(REMAccountStorage *)self type];
  name = [(REMAccountStorage *)self name];
  v8 = [(REMAccountStorage *)v4 initWithObjectID:objectID type:type name:name nullableListIDsMergeableOrdering:0];

  v9 = [(REMCRMergeableOrderedSet *)self->_listIDsMergeableOrdering copy];
  [(REMAccountStorage *)v8 setListIDsMergeableOrdering:v9];

  [(REMAccountStorage *)v8 setListIDsMergeableOrderingData:self->_listIDsMergeableOrderingData];
  externalIdentifier = [(REMAccountStorage *)self externalIdentifier];
  [(REMAccountStorage *)v8 setExternalIdentifier:externalIdentifier];

  externalModificationTag = [(REMAccountStorage *)self externalModificationTag];
  [(REMAccountStorage *)v8 setExternalModificationTag:externalModificationTag];

  daSyncToken = [(REMAccountStorage *)self daSyncToken];
  [(REMAccountStorage *)v8 setDaSyncToken:daSyncToken];

  daPushKey = [(REMAccountStorage *)self daPushKey];
  [(REMAccountStorage *)v8 setDaPushKey:daPushKey];

  pinnedListsManualOrdering = [(REMAccountStorage *)self pinnedListsManualOrdering];
  v15 = [pinnedListsManualOrdering copy];
  [(REMAccountStorage *)v8 setPinnedListsManualOrdering:v15];

  templatesManualOrdering = [(REMAccountStorage *)self templatesManualOrdering];
  v17 = [templatesManualOrdering copy];
  [(REMAccountStorage *)v8 setTemplatesManualOrdering:v17];

  v18 = [(REMResolutionTokenMap *)self->_resolutionTokenMap copy];
  resolutionTokenMap = v8->_resolutionTokenMap;
  v8->_resolutionTokenMap = v18;

  resolutionTokenMapData = [(REMAccountStorage *)self resolutionTokenMapData];
  [(REMAccountStorage *)v8 setResolutionTokenMapData:resolutionTokenMapData];

  listIDsToUndelete = [(REMAccountStorage *)self listIDsToUndelete];
  v22 = [listIDsToUndelete copy];
  [(REMAccountStorage *)v8 setListIDsToUndelete:v22];

  smartListIDsToUndelete = [(REMAccountStorage *)self smartListIDsToUndelete];
  v24 = [smartListIDsToUndelete copy];
  [(REMAccountStorage *)v8 setSmartListIDsToUndelete:v24];

  [(REMAccountStorage *)v8 setListsDADisplayOrderChanged:[(REMAccountStorage *)self listsDADisplayOrderChanged]];
  personID = [(REMAccountStorage *)self personID];
  [(REMAccountStorage *)v8 setPersonID:personID];

  personIDSalt = [(REMAccountStorage *)self personIDSalt];
  v27 = [personIDSalt copy];
  [(REMAccountStorage *)v8 setPersonIDSalt:v27];

  [(REMAccountStorage *)v8 setInactive:[(REMAccountStorage *)self inactive]];
  [(REMAccountStorage *)v8 setDidChooseToMigrate:[(REMAccountStorage *)self didChooseToMigrate]];
  [(REMAccountStorage *)v8 setDidChooseToMigrateLocally:[(REMAccountStorage *)self didChooseToMigrateLocally]];
  [(REMAccountStorage *)v8 setDidFinishMigration:[(REMAccountStorage *)self didFinishMigration]];
  [(REMAccountStorage *)v8 setPersistenceCloudSchemaVersion:[(REMAccountStorage *)self persistenceCloudSchemaVersion]];
  daConstraintsDescriptionPath = [(REMAccountStorage *)self daConstraintsDescriptionPath];
  [(REMAccountStorage *)v8 setDaConstraintsDescriptionPath:daConstraintsDescriptionPath];

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
  type = [(REMAccountStorage *)self type];
  objectID = [(REMAccountStorage *)self objectID];
  v7 = [v3 stringWithFormat:@"<%@: %p type:%ld, %@>", v4, self, type, objectID];

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  storeGeneration = self->_storeGeneration;
  copyGeneration = self->_copyGeneration;
  type = [(REMAccountStorage *)self type];
  name = [(REMAccountStorage *)self name];
  objectID = [(REMAccountStorage *)self objectID];
  v10 = [v3 stringWithFormat:@"<%@: %p[%ld.%ld] type:%ld name:%@ %@>", v4, self, storeGeneration, copyGeneration, type, name, objectID];

  return v10;
}

- (REMAccountStorage)initWithCoder:(id)coder
{
  v57 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
  v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalModificationTag"];
  v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daSyncToken"];
  v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daPushKey"];
  v7 = [coderCopy decodeIntegerForKey:@"type"];
  if (v7 >= 8)
  {
    v8 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [REMAccountStorage initWithCoder:];
    }

    v7 = 0;
  }

  v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v41 = [coderCopy decodeBoolForKey:@"markedForRemoval"];
  v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinnedListsManualOrdering"];
  v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"templatesManualOrdering"];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"listIDsToUndelete"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"smartListIDsToUndelete"];

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
      v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listIDsMergeableOrdering"];
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

        v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listIDsMergeableOrderingData"];
      }

      listIDsMergeableOrderingData = v19->_listIDsMergeableOrderingData;
      v19->_listIDsMergeableOrderingData = v22;

      if (!v19->_listIDsMergeableOrdering && !v19->_listIDsMergeableOrderingData)
      {
        [REMAccountStorage initWithCoder:];
      }

      v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMapData"];
      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionTokenMap"];
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

      -[REMAccountStorage setListsDADisplayOrderChanged:](v19, "setListsDADisplayOrderChanged:", [coderCopy decodeBoolForKey:@"listsDADisplayOrderChanged"]);
      v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personID"];
      [(REMAccountStorage *)v19 setPersonID:v35];

      v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personIDSalt"];
      [(REMAccountStorage *)v19 setPersonIDSalt:v36];

      -[REMAccountStorage setInactive:](v19, "setInactive:", [coderCopy decodeBoolForKey:@"inactive"]);
      -[REMAccountStorage setDidChooseToMigrate:](v19, "setDidChooseToMigrate:", [coderCopy decodeBoolForKey:@"didChooseToMigrate"]);
      -[REMAccountStorage setDidChooseToMigrateLocally:](v19, "setDidChooseToMigrateLocally:", [coderCopy decodeBoolForKey:@"didChooseToMigrateLocally"]);
      -[REMAccountStorage setDidFinishMigration:](v19, "setDidFinishMigration:", [coderCopy decodeBoolForKey:@"didFinishMigration"]);
      -[REMAccountStorage setPersistenceCloudSchemaVersion:](v19, "setPersistenceCloudSchemaVersion:", [coderCopy decodeIntegerForKey:@"persistenceCloudSchemaVersion"]);
      v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daConstraintsDescriptionPath"];
      [(REMAccountStorage *)v19 setDaConstraintsDescriptionPath:v37];

      -[REMAccountStorage setDaAllowsCalendarAddDeleteModify:](v19, "setDaAllowsCalendarAddDeleteModify:", [coderCopy decodeBoolForKey:@"daAllowsCalendarAddDeleteModify"]);
      -[REMAccountStorage setDaSupportsSharedCalendars:](v19, "setDaSupportsSharedCalendars:", [coderCopy decodeBoolForKey:@"daSupportsSharedCalendars"]);
      -[REMAccountStorage setDaWasMigrated:](v19, "setDaWasMigrated:", [coderCopy decodeBoolForKey:@"daWasMigrated"]);
      -[REMAccountStorage setMinimumSupportedVersion:](v19, "setMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"minimumSupportedVersion"]);
      -[REMAccountStorage setEffectiveMinimumSupportedVersion:](v19, "setEffectiveMinimumSupportedVersion:", [coderCopy decodeIntegerForKey:@"effectiveMinimumSupportedVersion"]);
      -[REMAccountStorage setDebugSyncDisabled:](v19, "setDebugSyncDisabled:", [coderCopy decodeBoolForKey:@"debugSyncDisabled"]);
    }

    self = v19;
    selfCopy = self;
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
      markedForRemoval = [(REMAccountStorage *)self markedForRemoval];
      _os_log_fault_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_FAULT, "Attempted to decode REMAccount missing objectID, type or name {objectID: %{public}@, type: %ld, name: %@, markedForRemoval: %d}", buf, 0x26u);
    }

    v24 = [REMError internalErrorWithDebugDescription:@"REMAccount missing required fields"];
    [coderCopy failWithError:v24];

    selfCopy = 0;
  }

  v38 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)setStoreGenerationIfNeeded:(unint64_t)needed
{
  if (!self->_storeGeneration)
  {
    self->_storeGeneration = needed;
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self->_listIDsMergeableOrdering)
  {
    os_unfair_lock_lock(&self->_lock);
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __37__REMAccountStorage_encodeWithCoder___block_invoke;
    v25 = &unk_1E7508448;
    v26 = coderCopy;
    selfCopy = self;
    __37__REMAccountStorage_encodeWithCoder___block_invoke(&v22);
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    if (!self->_listIDsMergeableOrderingData)
    {
      [REMAccountStorage encodeWithCoder:?];
    }

    [coderCopy encodeObject:0 forKey:@"listIDsMergeableOrdering"];
    [coderCopy encodeObject:self->_listIDsMergeableOrderingData forKey:@"listIDsMergeableOrderingData"];
  }

  v5 = [(REMAccountStorage *)self objectID:v22];
  [coderCopy encodeObject:v5 forKey:@"objectID"];

  externalIdentifier = [(REMAccountStorage *)self externalIdentifier];
  [coderCopy encodeObject:externalIdentifier forKey:@"externalIdentifier"];

  externalModificationTag = [(REMAccountStorage *)self externalModificationTag];
  [coderCopy encodeObject:externalModificationTag forKey:@"externalModificationTag"];

  daSyncToken = [(REMAccountStorage *)self daSyncToken];
  [coderCopy encodeObject:daSyncToken forKey:@"daSyncToken"];

  daPushKey = [(REMAccountStorage *)self daPushKey];
  [coderCopy encodeObject:daPushKey forKey:@"daPushKey"];

  [coderCopy encodeInteger:-[REMAccountStorage type](self forKey:{"type"), @"type"}];
  name = [(REMAccountStorage *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  personID = [(REMAccountStorage *)self personID];
  [coderCopy encodeObject:personID forKey:@"personID"];

  personIDSalt = [(REMAccountStorage *)self personIDSalt];
  [coderCopy encodeObject:personIDSalt forKey:@"personIDSalt"];

  pinnedListsManualOrdering = [(REMAccountStorage *)self pinnedListsManualOrdering];
  [coderCopy encodeObject:pinnedListsManualOrdering forKey:@"pinnedListsManualOrdering"];

  templatesManualOrdering = [(REMAccountStorage *)self templatesManualOrdering];
  [coderCopy encodeObject:templatesManualOrdering forKey:@"templatesManualOrdering"];

  [coderCopy encodeBool:-[REMAccountStorage markedForRemoval](self forKey:{"markedForRemoval"), @"markedForRemoval"}];
  [coderCopy encodeBool:-[REMAccountStorage inactive](self forKey:{"inactive"), @"inactive"}];
  [coderCopy encodeBool:-[REMAccountStorage didChooseToMigrate](self forKey:{"didChooseToMigrate"), @"didChooseToMigrate"}];
  [coderCopy encodeBool:-[REMAccountStorage didChooseToMigrateLocally](self forKey:{"didChooseToMigrateLocally"), @"didChooseToMigrateLocally"}];
  [coderCopy encodeBool:-[REMAccountStorage didFinishMigration](self forKey:{"didFinishMigration"), @"didFinishMigration"}];
  [coderCopy encodeInteger:-[REMAccountStorage persistenceCloudSchemaVersion](self forKey:{"persistenceCloudSchemaVersion"), @"persistenceCloudSchemaVersion"}];
  daConstraintsDescriptionPath = [(REMAccountStorage *)self daConstraintsDescriptionPath];
  [coderCopy encodeObject:daConstraintsDescriptionPath forKey:@"daConstraintsDescriptionPath"];

  [coderCopy encodeBool:-[REMAccountStorage daAllowsCalendarAddDeleteModify](self forKey:{"daAllowsCalendarAddDeleteModify"), @"daAllowsCalendarAddDeleteModify"}];
  [coderCopy encodeBool:-[REMAccountStorage daSupportsSharedCalendars](self forKey:{"daSupportsSharedCalendars"), @"daSupportsSharedCalendars"}];
  [coderCopy encodeBool:-[REMAccountStorage daWasMigrated](self forKey:{"daWasMigrated"), @"daWasMigrated"}];
  [coderCopy encodeInteger:-[REMAccountStorage minimumSupportedVersion](self forKey:{"minimumSupportedVersion"), @"minimumSupportedVersion"}];
  [coderCopy encodeInteger:-[REMAccountStorage effectiveMinimumSupportedVersion](self forKey:{"effectiveMinimumSupportedVersion"), @"effectiveMinimumSupportedVersion"}];
  [coderCopy encodeBool:-[REMAccountStorage debugSyncDisabled](self forKey:{"debugSyncDisabled"), @"debugSyncDisabled"}];
  listIDsToUndelete = [(REMAccountStorage *)self listIDsToUndelete];
  allObjects = [listIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects forKey:@"listIDsToUndelete"];

  smartListIDsToUndelete = [(REMAccountStorage *)self smartListIDsToUndelete];
  allObjects2 = [smartListIDsToUndelete allObjects];
  [coderCopy encodeObject:allObjects2 forKey:@"smartListIDsToUndelete"];

  [coderCopy encodeBool:-[REMAccountStorage listsDADisplayOrderChanged](self forKey:{"listsDADisplayOrderChanged"), @"listsDADisplayOrderChanged"}];
  resolutionTokenMap = self->_resolutionTokenMap;
  if (resolutionTokenMap)
  {
    [coderCopy encodeObject:resolutionTokenMap forKey:@"resolutionTokenMap"];
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMapData"];
  }

  else
  {
    [coderCopy encodeObject:0 forKey:@"resolutionTokenMap"];
    resolutionTokenMapData = [(REMAccountStorage *)self resolutionTokenMapData];
    [coderCopy encodeObject:resolutionTokenMapData forKey:@"resolutionTokenMapData"];
  }
}

uint64_t __37__REMAccountStorage_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 40) forKey:@"listIDsMergeableOrdering"];
  v2 = *(a1 + 32);

  return [v2 encodeObject:0 forKey:@"listIDsMergeableOrderingData"];
}

- (BOOL)isEqual:(id)equal
{
  v128 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectID = [(REMAccountStorage *)self objectID];
      objectID2 = [(REMAccountStorage *)v6 objectID];
      v9 = objectID2;
      if (objectID == objectID2)
      {
      }

      else
      {
        objectID3 = [(REMAccountStorage *)self objectID];
        objectID4 = [(REMAccountStorage *)v6 objectID];
        v12 = [objectID3 isEqual:objectID4];

        if (!v12)
        {
          goto LABEL_77;
        }
      }

      name = [(REMAccountStorage *)self name];
      name2 = [(REMAccountStorage *)v6 name];
      v16 = name2;
      if (name == name2)
      {
      }

      else
      {
        name3 = [(REMAccountStorage *)self name];
        name4 = [(REMAccountStorage *)v6 name];
        v19 = [name3 isEqual:name4];

        if (!v19)
        {
          goto LABEL_77;
        }
      }

      type = [(REMAccountStorage *)self type];
      if (type != [(REMAccountStorage *)v6 type])
      {
        goto LABEL_77;
      }

      markedForRemoval = [(REMAccountStorage *)self markedForRemoval];
      if (markedForRemoval != [(REMAccountStorage *)v6 markedForRemoval])
      {
        goto LABEL_77;
      }

      externalIdentifier = [(REMAccountStorage *)self externalIdentifier];
      externalIdentifier2 = [(REMAccountStorage *)v6 externalIdentifier];
      v24 = externalIdentifier2;
      if (externalIdentifier == externalIdentifier2)
      {
      }

      else
      {
        externalIdentifier3 = [(REMAccountStorage *)self externalIdentifier];
        externalIdentifier4 = [(REMAccountStorage *)v6 externalIdentifier];
        v27 = [externalIdentifier3 isEqual:externalIdentifier4];

        if (!v27)
        {
          goto LABEL_77;
        }
      }

      externalModificationTag = [(REMAccountStorage *)self externalModificationTag];
      externalModificationTag2 = [(REMAccountStorage *)v6 externalModificationTag];
      v30 = externalModificationTag2;
      if (externalModificationTag == externalModificationTag2)
      {
      }

      else
      {
        externalModificationTag3 = [(REMAccountStorage *)self externalModificationTag];
        externalModificationTag4 = [(REMAccountStorage *)v6 externalModificationTag];
        v33 = [externalModificationTag3 isEqual:externalModificationTag4];

        if (!v33)
        {
          goto LABEL_77;
        }
      }

      daSyncToken = [(REMAccountStorage *)self daSyncToken];
      daSyncToken2 = [(REMAccountStorage *)v6 daSyncToken];
      v36 = daSyncToken2;
      if (daSyncToken == daSyncToken2)
      {
      }

      else
      {
        daSyncToken3 = [(REMAccountStorage *)self daSyncToken];
        daSyncToken4 = [(REMAccountStorage *)v6 daSyncToken];
        v39 = [daSyncToken3 isEqual:daSyncToken4];

        if (!v39)
        {
          goto LABEL_77;
        }
      }

      daPushKey = [(REMAccountStorage *)self daPushKey];
      daPushKey2 = [(REMAccountStorage *)v6 daPushKey];
      v42 = daPushKey2;
      if (daPushKey == daPushKey2)
      {
      }

      else
      {
        daPushKey3 = [(REMAccountStorage *)self daPushKey];
        daPushKey4 = [(REMAccountStorage *)v6 daPushKey];
        v45 = [daPushKey3 isEqual:daPushKey4];

        if (!v45)
        {
          goto LABEL_77;
        }
      }

      pinnedListsManualOrdering = [(REMAccountStorage *)self pinnedListsManualOrdering];
      pinnedListsManualOrdering2 = [(REMAccountStorage *)v6 pinnedListsManualOrdering];
      v48 = pinnedListsManualOrdering2;
      if (pinnedListsManualOrdering == pinnedListsManualOrdering2)
      {
      }

      else
      {
        pinnedListsManualOrdering3 = [(REMAccountStorage *)self pinnedListsManualOrdering];
        pinnedListsManualOrdering4 = [(REMAccountStorage *)v6 pinnedListsManualOrdering];
        v51 = [pinnedListsManualOrdering3 isEqual:pinnedListsManualOrdering4];

        if (!v51)
        {
          goto LABEL_77;
        }
      }

      templatesManualOrdering = [(REMAccountStorage *)self templatesManualOrdering];
      templatesManualOrdering2 = [(REMAccountStorage *)v6 templatesManualOrdering];
      v54 = templatesManualOrdering2;
      if (templatesManualOrdering == templatesManualOrdering2)
      {
      }

      else
      {
        templatesManualOrdering3 = [(REMAccountStorage *)self templatesManualOrdering];
        templatesManualOrdering4 = [(REMAccountStorage *)v6 templatesManualOrdering];
        v57 = [templatesManualOrdering3 isEqual:templatesManualOrdering4];

        if (!v57)
        {
          goto LABEL_77;
        }
      }

      listIDsToUndelete = [(REMAccountStorage *)self listIDsToUndelete];
      listIDsToUndelete2 = [(REMAccountStorage *)v6 listIDsToUndelete];
      v60 = listIDsToUndelete2;
      if (listIDsToUndelete == listIDsToUndelete2)
      {
      }

      else
      {
        listIDsToUndelete3 = [(REMAccountStorage *)self listIDsToUndelete];
        listIDsToUndelete4 = [(REMAccountStorage *)v6 listIDsToUndelete];
        v63 = [listIDsToUndelete3 isEqual:listIDsToUndelete4];

        if (!v63)
        {
          goto LABEL_77;
        }
      }

      smartListIDsToUndelete = [(REMAccountStorage *)self smartListIDsToUndelete];
      smartListIDsToUndelete2 = [(REMAccountStorage *)v6 smartListIDsToUndelete];
      v66 = smartListIDsToUndelete2;
      if (smartListIDsToUndelete == smartListIDsToUndelete2)
      {
      }

      else
      {
        smartListIDsToUndelete3 = [(REMAccountStorage *)self smartListIDsToUndelete];
        smartListIDsToUndelete4 = [(REMAccountStorage *)v6 smartListIDsToUndelete];
        v69 = [smartListIDsToUndelete3 isEqual:smartListIDsToUndelete4];

        if (!v69)
        {
          goto LABEL_77;
        }
      }

      listsDADisplayOrderChanged = [(REMAccountStorage *)self listsDADisplayOrderChanged];
      if (listsDADisplayOrderChanged == [(REMAccountStorage *)v6 listsDADisplayOrderChanged])
      {
        personID = [(REMAccountStorage *)self personID];
        personID2 = [(REMAccountStorage *)v6 personID];
        v73 = personID2;
        if (personID == personID2)
        {
        }

        else
        {
          personID3 = [(REMAccountStorage *)self personID];
          personID4 = [(REMAccountStorage *)v6 personID];
          v76 = [personID3 isEqual:personID4];

          if (!v76)
          {
            goto LABEL_77;
          }
        }

        personIDSalt = [(REMAccountStorage *)self personIDSalt];
        personIDSalt2 = [(REMAccountStorage *)v6 personIDSalt];
        v79 = personIDSalt2;
        if (personIDSalt == personIDSalt2)
        {
        }

        else
        {
          personIDSalt3 = [(REMAccountStorage *)self personIDSalt];
          personIDSalt4 = [(REMAccountStorage *)v6 personIDSalt];
          v82 = [personIDSalt3 isEqual:personIDSalt4];

          if (!v82)
          {
            goto LABEL_77;
          }
        }

        inactive = [(REMAccountStorage *)self inactive];
        if (inactive != [(REMAccountStorage *)v6 inactive])
        {
          goto LABEL_77;
        }

        didChooseToMigrate = [(REMAccountStorage *)self didChooseToMigrate];
        if (didChooseToMigrate != [(REMAccountStorage *)v6 didChooseToMigrate])
        {
          goto LABEL_77;
        }

        didChooseToMigrateLocally = [(REMAccountStorage *)self didChooseToMigrateLocally];
        if (didChooseToMigrateLocally != [(REMAccountStorage *)v6 didChooseToMigrateLocally])
        {
          goto LABEL_77;
        }

        didFinishMigration = [(REMAccountStorage *)self didFinishMigration];
        if (didFinishMigration != [(REMAccountStorage *)v6 didFinishMigration])
        {
          goto LABEL_77;
        }

        persistenceCloudSchemaVersion = [(REMAccountStorage *)self persistenceCloudSchemaVersion];
        if (persistenceCloudSchemaVersion != [(REMAccountStorage *)v6 persistenceCloudSchemaVersion])
        {
          goto LABEL_77;
        }

        daConstraintsDescriptionPath = [(REMAccountStorage *)self daConstraintsDescriptionPath];
        daConstraintsDescriptionPath2 = [(REMAccountStorage *)v6 daConstraintsDescriptionPath];
        v90 = daConstraintsDescriptionPath2;
        if (daConstraintsDescriptionPath == daConstraintsDescriptionPath2)
        {
        }

        else
        {
          daConstraintsDescriptionPath3 = [(REMAccountStorage *)self daConstraintsDescriptionPath];
          daConstraintsDescriptionPath4 = [(REMAccountStorage *)v6 daConstraintsDescriptionPath];
          v93 = [daConstraintsDescriptionPath3 isEqual:daConstraintsDescriptionPath4];

          if (!v93)
          {
            goto LABEL_77;
          }
        }

        daAllowsCalendarAddDeleteModify = [(REMAccountStorage *)self daAllowsCalendarAddDeleteModify];
        if (daAllowsCalendarAddDeleteModify != [(REMAccountStorage *)v6 daAllowsCalendarAddDeleteModify])
        {
          goto LABEL_77;
        }

        daSupportsSharedCalendars = [(REMAccountStorage *)self daSupportsSharedCalendars];
        if (daSupportsSharedCalendars != [(REMAccountStorage *)v6 daSupportsSharedCalendars])
        {
          goto LABEL_77;
        }

        daWasMigrated = [(REMAccountStorage *)self daWasMigrated];
        if (daWasMigrated != [(REMAccountStorage *)v6 daWasMigrated])
        {
          goto LABEL_77;
        }

        minimumSupportedVersion = [(REMAccountStorage *)self minimumSupportedVersion];
        if (minimumSupportedVersion != [(REMAccountStorage *)v6 minimumSupportedVersion])
        {
          goto LABEL_77;
        }

        effectiveMinimumSupportedVersion = [(REMAccountStorage *)self effectiveMinimumSupportedVersion];
        if (effectiveMinimumSupportedVersion != [(REMAccountStorage *)v6 effectiveMinimumSupportedVersion])
        {
          goto LABEL_77;
        }

        debugSyncDisabled = [(REMAccountStorage *)self debugSyncDisabled];
        if (debugSyncDisabled != [(REMAccountStorage *)v6 debugSyncDisabled])
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

        listIDsMergeableOrdering = [(REMAccountStorage *)self listIDsMergeableOrdering];
        listIDsMergeableOrdering2 = [(REMAccountStorage *)v6 listIDsMergeableOrdering];
        v103 = listIDsMergeableOrdering2;
        if (listIDsMergeableOrdering == listIDsMergeableOrdering2)
        {
        }

        else
        {
          listIDsMergeableOrdering3 = [(REMAccountStorage *)self listIDsMergeableOrdering];
          listIDsMergeableOrdering4 = [(REMAccountStorage *)v6 listIDsMergeableOrdering];
          v106 = [listIDsMergeableOrdering3 isEqual:listIDsMergeableOrdering4];

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

        resolutionTokenMap = [(REMAccountStorage *)self resolutionTokenMap];
        resolutionTokenMap2 = [(REMAccountStorage *)v6 resolutionTokenMap];
        if (resolutionTokenMap == resolutionTokenMap2)
        {
          v13 = 1;
        }

        else
        {
          resolutionTokenMap3 = [(REMAccountStorage *)self resolutionTokenMap];
          resolutionTokenMap4 = [(REMAccountStorage *)v6 resolutionTokenMap];
          v13 = [resolutionTokenMap3 isEqual:resolutionTokenMap4];
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
  objectID = [(REMAccountStorage *)self objectID];
  v3 = [objectID hash];

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

  objectID = [(REMAccountStorage *)self objectID];
  v7 = [REMAccountStorage listIDsMergeableOrderingReplicaIDSourceWithAccountID:objectID];

  listIDsMergeableOrderingData = [(REMAccountStorage *)self listIDsMergeableOrderingData];
  v9 = 0x1E7506000uLL;
  if (!listIDsMergeableOrderingData)
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
  v10 = [[REMCRMergeableOrderedSet alloc] initWithReplicaIDSource:v7 serializedData:listIDsMergeableOrderingData error:&v22];
  v11 = v22;
  v12 = +[REMLogStore utility];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    objectID2 = [(REMAccountStorage *)self objectID];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[REMCRMergeableOrderedSet count](v10, "count")}];
    *buf = 138543874;
    v24 = objectID2;
    v25 = 2048;
    selfCopy = self;
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

- (void)setListIDsMergeableOrdering:(id)ordering
{
  orderingCopy = ordering;
  objc_storeStrong(&self->_listIDsMergeableOrdering, ordering);
  if (orderingCopy)
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

- (BOOL)isUnsupported
{
  effectiveMinimumSupportedVersion = [(REMAccountStorage *)self effectiveMinimumSupportedVersion];

  return rem_isUnsupportedVersionByRuntime(effectiveMinimumSupportedVersion);
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
    resolutionTokenMapData = [(REMAccountStorage *)self resolutionTokenMapData];
    if (!resolutionTokenMapData)
    {
      v7 = +[REMLogStore utility];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [REMAccountStorage resolutionTokenMap];
      }
    }

    cdKeyToStorageKeyMap = [(REMAccountStorage *)self cdKeyToStorageKeyMap];
    v9 = [REMResolutionTokenMap resolutionTokenMapWithJSONData:resolutionTokenMapData keyMap:cdKeyToStorageKeyMap];

    objc_storeStrong(p_resolutionTokenMap, v9);
    v5 = v9;
  }

  return v5;
}

+ (id)listIDsMergeableOrderingReplicaIDSourceWithAccountID:(id)d
{
  dCopy = d;
  v4 = [[REMReplicaIDSource alloc] initWithAccountID:dCopy objectID:dCopy property:@"listIDsMergeableOrdering"];

  return v4;
}

- (id)listIDsMergeableOrderingReplicaIDSource
{
  objectID = [(REMAccountStorage *)self objectID];
  v3 = [REMAccountStorage listIDsMergeableOrderingReplicaIDSourceWithAccountID:objectID];

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
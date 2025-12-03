@interface WFCoreDataWorkflow
+ (id)descriptorFetchRequest;
+ (id)recordPropertyMap;
- (BOOL)isConflictOfOtherWorkflow;
- (NSArray)deserializedActions;
- (NSArray)deserializedImportQuestions;
- (NSArray)deserializedInputClasses;
- (NSArray)deserializedOutputClasses;
- (NSArray)workflowTypes;
- (NSDictionary)deserializedNoInputBehavior;
- (NSSet)accessResourcePerWorkflowStates;
- (NSSet)smartPromptPerWorkflowStates;
- (NSString)subtitle;
- (WFWorkflowIcon)workflowIcon;
- (WFWorkflowQuarantine)workflowQuarantine;
- (id)descriptor;
- (int64_t)computedSpotlightSyncHash;
- (int64_t)computedSyncHash;
- (void)didUpdateProperties:(id)properties;
- (void)setAccessResourcePerWorkflowStates:(id)states;
- (void)setDeserializedActions:(id)actions;
- (void)setDeserializedImportQuestions:(id)questions;
- (void)setDeserializedInputClasses:(id)classes;
- (void)setDeserializedNoInputBehavior:(id)behavior;
- (void)setDeserializedOutputClasses:(id)classes;
- (void)setSmartPromptPerWorkflowStates:(id)states;
- (void)setWorkflowIcon:(id)icon;
- (void)setWorkflowQuarantine:(id)quarantine;
- (void)setWorkflowTypes:(id)types;
@end

@implementation WFCoreDataWorkflow

- (NSArray)deserializedActions
{
  v14 = *MEMORY[0x1E69E9840];
  actions = [(WFCoreDataWorkflow *)self actions];
  data = [actions data];

  if (data)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:&v9];
    v5 = v9;
    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v6 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v11 = "[WFCoreDataWorkflow(RecordStorage) deserializedActions]";
        v12 = 2114;
        v13 = v5;
        _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_FAULT, "%s Failed to deserialize actions from plist data: %{public}@", buf, 0x16u);
      }

      v4 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)descriptorFetchRequest
{
  v8[20] = *MEMORY[0x1E69E9840];
  fetchRequest = [self fetchRequest];
  [fetchRequest setReturnsObjectsAsFaults:0];
  v8[0] = @"workflowID";
  v8[1] = @"name";
  v8[2] = @"workflowSubtitle";
  v8[3] = @"actionsDescription";
  v8[4] = @"actionCount";
  v8[5] = @"associatedAppBundleIdentifier";
  v8[6] = @"icon";
  v8[7] = @"tombstoned";
  v8[8] = @"triggerCount";
  v8[9] = @"modificationDate";
  v8[10] = @"lastRunEventDate";
  v8[11] = @"remoteQuarantineStatusValue";
  v8[12] = @"hasShortcutInputVariables";
  v8[13] = @"showInSearch";
  v8[14] = @"receivesInputFromSearch";
  v8[15] = @"disabledOnLockScreen";
  v8[16] = @"hiddenFromLibraryAndSync";
  v8[17] = @"wantedEncryptedSchemaVersion";
  v8[18] = @"lastSyncedEncryptedSchemaVersion";
  v8[19] = @"hasOutputAction";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:20];
  [fetchRequest setPropertiesToFetch:v3];

  v7[0] = @"icon";
  v7[1] = @"triggers";
  v7[2] = @"runEvents";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  [fetchRequest setRelationshipKeyPathsForPrefetching:v4];

  v5 = *MEMORY[0x1E69E9840];

  return fetchRequest;
}

- (id)descriptor
{
  v27 = [WFWorkflowReference alloc];
  workflowID = [(WFCoreDataWorkflow *)self workflowID];
  name = [(WFCoreDataWorkflow *)self name];
  icon = [(WFCoreDataWorkflow *)self icon];
  backgroundColorValue = [icon backgroundColorValue];
  icon2 = [(WFCoreDataWorkflow *)self icon];
  glyphNumber = [icon2 glyphNumber];
  associatedAppBundleIdentifier = [(WFCoreDataWorkflow *)self associatedAppBundleIdentifier];
  searchAttributionAppBundleIdentifier = [(WFCoreDataWorkflow *)self searchAttributionAppBundleIdentifier];
  subtitle = [(WFCoreDataWorkflow *)self subtitle];
  actionsDescription = [(WFCoreDataWorkflow *)self actionsDescription];
  actionCount = [(WFCoreDataWorkflow *)self actionCount];
  syncHash = [(WFCoreDataWorkflow *)self syncHash];
  tombstoned = [(WFCoreDataWorkflow *)self tombstoned];
  hiddenFromLibraryAndSync = [(WFCoreDataWorkflow *)self hiddenFromLibraryAndSync];
  creationDate = [(WFCoreDataWorkflow *)self creationDate];
  modificationDate = [(WFCoreDataWorkflow *)self modificationDate];
  v16 = modificationDate;
  if (!modificationDate)
  {
    modificationDate = [MEMORY[0x1E695DF00] date];
  }

  lastRunEventDate = [(WFCoreDataWorkflow *)self lastRunEventDate];
  remoteQuarantineStatus = [(WFCoreDataWorkflow *)self remoteQuarantineStatus];
  remoteQuarantineHash = [(WFCoreDataWorkflow *)self remoteQuarantineHash];
  showInSearch = [(WFCoreDataWorkflow *)self showInSearch];
  receivesInputFromSearch = [(WFCoreDataWorkflow *)self receivesInputFromSearch];
  hasShortcutInputVariables = [(WFCoreDataWorkflow *)self hasShortcutInputVariables];
  disabledOnLockScreen = [(WFCoreDataWorkflow *)self disabledOnLockScreen];
  source = [(WFCoreDataWorkflow *)self source];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[WFCoreDataWorkflow runEventsCount](self, "runEventsCount")}];
  LOBYTE(v14) = [(WFCoreDataWorkflow *)self hasOutputAction];
  BYTE3(v13) = disabledOnLockScreen;
  BYTE2(v13) = hasShortcutInputVariables;
  BYTE1(v13) = receivesInputFromSearch;
  LOBYTE(v13) = showInSearch;
  BYTE1(v12) = hiddenFromLibraryAndSync;
  LOBYTE(v12) = tombstoned;
  v28 = [WFWorkflowReference initWithIdentifier:v27 name:"initWithIdentifier:name:color:glyphCharacter:associatedAppBundleIdentifier:searchAttributionAppBundleIdentifier:subtitle:actionsDescription:actionCount:syncHash:isDeleted:hiddenFromLibraryAndSync:creationDate:modificationDate:lastRunDate:remoteQuarantineStatus:remoteQuarantineHash:showInSearch:receivesInputFromSearch:hasShortcutInputVariables:disabledOnLockScreen:source:runEventsCount:hasOutputAction:" color:workflowID glyphCharacter:name associatedAppBundleIdentifier:backgroundColorValue searchAttributionAppBundleIdentifier:glyphNumber subtitle:associatedAppBundleIdentifier actionsDescription:searchAttributionAppBundleIdentifier actionCount:subtitle syncHash:actionsDescription isDeleted:actionCount hiddenFromLibraryAndSync:syncHash creationDate:v12 modificationDate:creationDate lastRunDate:modificationDate remoteQuarantineStatus:lastRunEventDate remoteQuarantineHash:remoteQuarantineStatus showInSearch:remoteQuarantineHash receivesInputFromSearch:v13 hasShortcutInputVariables:source disabledOnLockScreen:v10 source:v14 runEventsCount:? hasOutputAction:?];

  if (!v16)
  {
  }

  return v28;
}

- (NSString)subtitle
{
  actionCount = [(WFCoreDataWorkflow *)self actionCount];
  workflowSubtitle = [(WFCoreDataWorkflow *)self workflowSubtitle];
  v5 = [WFWorkflowRecord workflowSubtitleForActionCount:actionCount savedSubtitle:workflowSubtitle];

  return v5;
}

+ (id)recordPropertyMap
{
  v6[12] = *MEMORY[0x1E69E9840];
  v5[0] = @"icon";
  v5[1] = @"quarantine";
  v6[0] = @"workflowIcon";
  v6[1] = @"workflowQuarantine";
  v5[2] = @"deleted";
  v5[3] = @"workflowSubtitle";
  v6[2] = @"tombstoned";
  v6[3] = @"subtitle";
  v5[4] = @"actions";
  v5[5] = @"importQuestions";
  v6[4] = @"deserializedActions";
  v6[5] = @"deserializedImportQuestions";
  v5[6] = @"inputClasses";
  v5[7] = @"noInputBehavior";
  v6[6] = @"deserializedInputClasses";
  v6[7] = @"deserializedNoInputBehavior";
  v5[8] = @"outputClasses";
  v5[9] = @"wantedEncryptedSchemaVersion";
  v6[8] = @"deserializedOutputClasses";
  v6[9] = @"wantedEncryptedSchemaVersion";
  v5[10] = @"lastSyncedEncryptedSchemaVersion";
  v5[11] = @"hasOutputAction";
  v6[10] = @"lastSyncedEncryptedSchemaVersion";
  v6[11] = @"hasOutputAction";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:12];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (int64_t)computedSpotlightSyncHash
{
  v3 = objc_opt_new();
  name = [(WFCoreDataWorkflow *)self name];
  v5 = [v3 combineContentsOfPropertyListObject:name];

  icon = [(WFCoreDataWorkflow *)self icon];
  v7 = [v3 combineInteger:{objc_msgSend(icon, "glyphNumber")}];

  icon2 = [(WFCoreDataWorkflow *)self icon];
  v9 = [v3 combineInteger:{objc_msgSend(icon2, "backgroundColorValue")}];

  v10 = [v3 combineInteger:4];
  creationDate = [(WFCoreDataWorkflow *)self creationDate];
  v12 = [v3 combineContentsOfPropertyListObject:creationDate];

  modificationDate = [(WFCoreDataWorkflow *)self modificationDate];
  v14 = [v3 combineContentsOfPropertyListObject:modificationDate];

  v15 = [v3 combineBool:{-[WFCoreDataWorkflow showInSearch](self, "showInSearch")}];
  lastRunEventDate = [(WFCoreDataWorkflow *)self lastRunEventDate];
  if (lastRunEventDate)
  {
    v17 = [v3 combineContentsOfPropertyListObject:lastRunEventDate];
  }

  v18 = [v3 finalize];

  return v18;
}

- (int64_t)computedSyncHash
{
  context = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  name = [(WFCoreDataWorkflow *)self name];

  if (name)
  {
    name2 = [(WFCoreDataWorkflow *)self name];
    v6 = [v3 combineContentsOfPropertyListObject:name2];
  }

  workflowIcon = [(WFCoreDataWorkflow *)self workflowIcon];
  glyphCharacter = [workflowIcon glyphCharacter];
  v8 = [v3 combineBytes:&glyphCharacter size:2];
  v72 = workflowIcon;
  v9 = [v3 combineInteger:{objc_msgSend(workflowIcon, "backgroundColorValue")}];
  associatedAppBundleIdentifier = [(WFCoreDataWorkflow *)self associatedAppBundleIdentifier];

  if (associatedAppBundleIdentifier)
  {
    associatedAppBundleIdentifier2 = [(WFCoreDataWorkflow *)self associatedAppBundleIdentifier];
    v12 = [v3 combineContentsOfPropertyListObject:associatedAppBundleIdentifier2];
  }

  searchAttributionAppBundleIdentifier = [(WFCoreDataWorkflow *)self searchAttributionAppBundleIdentifier];

  if (searchAttributionAppBundleIdentifier)
  {
    searchAttributionAppBundleIdentifier2 = [(WFCoreDataWorkflow *)self searchAttributionAppBundleIdentifier];
    v15 = [v3 combineContentsOfPropertyListObject:searchAttributionAppBundleIdentifier2];
  }

  workflowTypes = [(WFCoreDataWorkflow *)self workflowTypes];

  if (workflowTypes)
  {
    workflowTypes2 = [(WFCoreDataWorkflow *)self workflowTypes];
    v18 = [workflowTypes2 sortedArrayUsingSelector:sel_compare_];
    v19 = [v3 combineContentsOfPropertyListObject:v18];
  }

  deserializedInputClasses = [(WFCoreDataWorkflow *)self deserializedInputClasses];
  v21 = deserializedInputClasses;
  if (deserializedInputClasses)
  {
    v22 = [deserializedInputClasses sortedArrayUsingSelector:sel_compare_];
    v23 = [v3 combineContentsOfPropertyListObject:v22];
  }

  deserializedOutputClasses = [(WFCoreDataWorkflow *)self deserializedOutputClasses];
  v25 = deserializedOutputClasses;
  if (deserializedOutputClasses)
  {
    v26 = [deserializedOutputClasses sortedArrayUsingSelector:sel_compare_];
    v27 = [v3 combineContentsOfPropertyListObject:v26];
  }

  v70 = v25;
  deserializedNoInputBehavior = [(WFCoreDataWorkflow *)self deserializedNoInputBehavior];
  if (deserializedNoInputBehavior)
  {
    v29 = [v3 combineContentsOfPropertyListObject:deserializedNoInputBehavior];
  }

  deserializedActions = [(WFCoreDataWorkflow *)self deserializedActions];
  if (deserializedActions)
  {
    v31 = [v3 combineContentsOfPropertyListObject:deserializedActions];
  }

  v71 = v21;
  deserializedImportQuestions = [(WFCoreDataWorkflow *)self deserializedImportQuestions];
  if (deserializedImportQuestions)
  {
    v33 = [v3 combineContentsOfPropertyListObject:deserializedImportQuestions];
  }

  v34 = [v3 combineBool:{-[WFCoreDataWorkflow hiddenFromLibraryAndSync](self, "hiddenFromLibraryAndSync")}];
  v35 = [v3 combineBool:0];
  v36 = [v3 combineBool:{-[WFCoreDataWorkflow tombstoned](self, "tombstoned")}];
  v37 = [v3 combineBool:{-[WFCoreDataWorkflow hasShortcutInputVariables](self, "hasShortcutInputVariables")}];
  v38 = [v3 combineBool:{-[WFCoreDataWorkflow hasOutputFallback](self, "hasOutputFallback")}];
  v39 = [v3 combineBool:{-[WFCoreDataWorkflow disabledOnLockScreen](self, "disabledOnLockScreen")}];
  v40 = [v3 combineBool:{-[WFCoreDataWorkflow showInSearch](self, "showInSearch")}];
  v41 = [v3 combineBool:{-[WFCoreDataWorkflow receivesInputFromSearch](self, "receivesInputFromSearch")}];
  v42 = [v3 combineBool:{-[WFCoreDataWorkflow hasOutputAction](self, "hasOutputAction")}];
  quarantine = [(WFCoreDataWorkflow *)self quarantine];

  if (quarantine)
  {
    quarantine2 = [(WFCoreDataWorkflow *)self quarantine];
    sourceAppIdentifier = [quarantine2 sourceAppIdentifier];
    v46 = [v3 combineContentsOfPropertyListObject:sourceAppIdentifier];

    quarantine3 = [(WFCoreDataWorkflow *)self quarantine];
    importDate = [quarantine3 importDate];
    v49 = [v3 combineContentsOfPropertyListObject:importDate];
  }

  accessResourcePerWorkflowStates = [(WFCoreDataWorkflow *)self accessResourcePerWorkflowStates];

  if (accessResourcePerWorkflowStates)
  {
    accessResourcePerWorkflowStates2 = [(WFCoreDataWorkflow *)self accessResourcePerWorkflowStates];
    allObjects = [accessResourcePerWorkflowStates2 allObjects];
    v53 = [allObjects sortedArrayUsingSelector:sel_compare_];
    v54 = [v53 valueForKey:@"dictionaryRepresentation"];
    v55 = [v3 combineContentsOfPropertyListObject:v54];
  }

  smartPromptPerWorkflowStates = [(WFCoreDataWorkflow *)self smartPromptPerWorkflowStates];

  if (smartPromptPerWorkflowStates)
  {
    smartPromptPerWorkflowStates2 = [(WFCoreDataWorkflow *)self smartPromptPerWorkflowStates];
    allObjects2 = [smartPromptPerWorkflowStates2 allObjects];
    v59 = [allObjects2 if_map:&__block_literal_global_14787];

    v60 = [v59 if_map:&__block_literal_global_315];
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59];
    v62 = [v61 keysSortedByValueUsingSelector:&selRef_cancel];
    v63 = [v3 combineContentsOfPropertyListObject:v62];
  }

  v64 = [v3 combineInteger:{-[WFCoreDataWorkflow remoteQuarantineStatus](self, "remoteQuarantineStatus")}];
  source = [(WFCoreDataWorkflow *)self source];
  if (([source isEqualToString:@"ShortcutSourceUnknown"] & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceOnDevice") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceGallery") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceAddToSiri") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceCloudLink") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceDefaultShortcut") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceSiriTopLevelShortcut") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceAutomatorMigration") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceFilePublic") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceFileKnownContacts") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceFilePersonal") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceEditorDocumentMenu") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceAppShortcut") & 1) != 0 || (objc_msgSend(source, "isEqualToString:", @"ShortcutSourceActiveStarterShortcut") & 1) == 0)
  {
  }

  else
  {

    source = [(WFCoreDataWorkflow *)self source];
    v66 = [v3 combine:source];
  }

  if ([(WFCoreDataWorkflow *)self wantedEncryptedSchemaVersion]>= 1)
  {
    v67 = [v3 combineInteger:{-[WFCoreDataWorkflow wantedEncryptedSchemaVersion](self, "wantedEncryptedSchemaVersion")}];
  }

  v68 = [v3 finalize];

  objc_autoreleasePoolPop(context);
  return v68;
}

id __53__WFCoreDataWorkflow_RecordStorage__computedSyncHash__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v3 combineContentsOfPropertyListObject:v2];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "finalize")}];

  return v5;
}

id __53__WFCoreDataWorkflow_RecordStorage__computedSyncHash__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 data];
  v3 = [WFSmartPromptState stateFromDatabaseData:v2];
  v4 = [v3 wfSerializedRepresentation];

  return v4;
}

- (BOOL)isConflictOfOtherWorkflow
{
  conflictOf = [(WFCoreDataWorkflow *)self conflictOf];
  v3 = conflictOf != 0;

  return v3;
}

- (void)setSmartPromptPerWorkflowStates:(id)states
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__WFCoreDataWorkflow_RecordStorage__setSmartPromptPerWorkflowStates___block_invoke;
  v5[3] = &unk_1E8375C88;
  v5[4] = self;
  v4 = [states if_map:v5];
  [(WFCoreDataWorkflow *)self setSmartPromptPermissions:v4];
}

WFCoreDataSmartPromptPermission *__69__WFCoreDataWorkflow_RecordStorage__setSmartPromptPerWorkflowStates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFCoreDataSmartPromptPermission alloc];
  v5 = [*(a1 + 32) managedObjectContext];
  v6 = [(WFCoreDataSmartPromptPermission *)v4 initWithContext:v5];

  v7 = [v3 actionUUID];
  [(WFCoreDataSmartPromptPermission *)v6 setActionUUID:v7];

  v8 = [v3 data];

  [(WFCoreDataSmartPromptPermission *)v6 setData:v8];

  return v6;
}

- (NSSet)smartPromptPerWorkflowStates
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  smartPromptPermissions = [(WFCoreDataWorkflow *)self smartPromptPermissions];
  v5 = [smartPromptPermissions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(smartPromptPermissions);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        data = [v9 data];
        v11 = [data length];

        if (v11)
        {
          v12 = [WFSerializedSmartPromptPerWorkflowState alloc];
          data2 = [v9 data];
          actionUUID = [v9 actionUUID];
          v15 = [(WFSerializedSmartPromptPerWorkflowState *)v12 initWithData:data2 actionUUID:actionUUID];
          [v3 addObject:v15];
        }
      }

      v6 = [smartPromptPermissions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setAccessResourcePerWorkflowStates:(id)states
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__WFCoreDataWorkflow_RecordStorage__setAccessResourcePerWorkflowStates___block_invoke;
  v5[3] = &unk_1E8375C60;
  v5[4] = self;
  v4 = [states if_map:v5];
  [(WFCoreDataWorkflow *)self setAccessResourcePermissions:v4];
}

WFCoreDataAccessResourcePermission *__72__WFCoreDataWorkflow_RecordStorage__setAccessResourcePerWorkflowStates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [WFCoreDataAccessResourcePermission alloc];
  v5 = [*(a1 + 32) managedObjectContext];
  v6 = [(WFCoreDataAccessResourcePermission *)v4 initWithContext:v5];

  v7 = [v3 identifier];
  [(WFCoreDataAccessResourcePermission *)v6 setIdentifier:v7];

  v8 = [v3 data];

  [(WFCoreDataAccessResourcePermission *)v6 setData:v8];

  return v6;
}

- (NSSet)accessResourcePerWorkflowStates
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accessResourcePermissions = [(WFCoreDataWorkflow *)self accessResourcePermissions];
  v5 = [accessResourcePermissions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(accessResourcePermissions);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [WFSerializedAccessResourcePerWorkflowState alloc];
        identifier = [v9 identifier];
        data = [v9 data];
        v13 = [(WFSerializedAccessResourcePerWorkflowState *)v10 initWithIdentifier:identifier data:data];
        [v3 addObject:v13];
      }

      v6 = [accessResourcePermissions countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setDeserializedImportQuestions:(id)questions
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:questions format:200 options:0 error:&v10];
  v5 = v10;
  if (v4)
  {
    selfCopy2 = self;
    v7 = v4;
  }

  else
  {
    v8 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v12 = "[WFCoreDataWorkflow(RecordStorage) setDeserializedImportQuestions:]";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Failed to serialize import questions into plist data: %{public}@", buf, 0x16u);
    }

    selfCopy2 = self;
    v7 = 0;
  }

  [(WFCoreDataWorkflow *)selfCopy2 setImportQuestionsData:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (NSArray)deserializedImportQuestions
{
  v16 = *MEMORY[0x1E69E9840];
  importQuestionsData = [(WFCoreDataWorkflow *)self importQuestionsData];

  if (importQuestionsData)
  {
    v4 = MEMORY[0x1E696AE40];
    importQuestionsData2 = [(WFCoreDataWorkflow *)self importQuestionsData];
    v11 = 0;
    v6 = [v4 propertyListWithData:importQuestionsData2 options:0 format:0 error:&v11];
    v7 = v11;

    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v8 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v13 = "[WFCoreDataWorkflow(RecordStorage) deserializedImportQuestions]";
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Failed to deserialize import questions from plist data: %{public}@", buf, 0x16u);
      }

      v6 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setDeserializedOutputClasses:(id)classes
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:classes format:200 options:0 error:&v10];
  v5 = v10;
  if (v4)
  {
    selfCopy2 = self;
    v7 = v4;
  }

  else
  {
    v8 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v12 = "[WFCoreDataWorkflow(RecordStorage) setDeserializedOutputClasses:]";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Failed to serialize output classes into plist data: %{public}@", buf, 0x16u);
    }

    selfCopy2 = self;
    v7 = 0;
  }

  [(WFCoreDataWorkflow *)selfCopy2 setOutputClassesData:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (NSArray)deserializedOutputClasses
{
  v16 = *MEMORY[0x1E69E9840];
  outputClassesData = [(WFCoreDataWorkflow *)self outputClassesData];

  if (outputClassesData)
  {
    v4 = MEMORY[0x1E696AE40];
    outputClassesData2 = [(WFCoreDataWorkflow *)self outputClassesData];
    v11 = 0;
    v6 = [v4 propertyListWithData:outputClassesData2 options:0 format:0 error:&v11];
    v7 = v11;

    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v8 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v13 = "[WFCoreDataWorkflow(RecordStorage) deserializedOutputClasses]";
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Failed to deserialize output classes from plist data: %{public}@", buf, 0x16u);
      }

      v6 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setDeserializedNoInputBehavior:(id)behavior
{
  v14 = *MEMORY[0x1E69E9840];
  behaviorCopy = behavior;
  if (!behaviorCopy)
  {
    v5 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  v5 = [MEMORY[0x1E696AE40] dataWithPropertyList:behaviorCopy format:200 options:0 error:&v9];
  v6 = v9;
  if (v5)
  {
LABEL_7:
    [(WFCoreDataWorkflow *)self setNoInputBehaviorData:v5];

    goto LABEL_8;
  }

  v7 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v11 = "[WFCoreDataWorkflow(RecordStorage) setDeserializedNoInputBehavior:]";
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Failed to serialize no input behavior into plist data: %{public}@", buf, 0x16u);
  }

  [(WFCoreDataWorkflow *)self setNoInputBehaviorData:0];
LABEL_8:

  v8 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)deserializedNoInputBehavior
{
  v15 = *MEMORY[0x1E69E9840];
  noInputBehaviorData = [(WFCoreDataWorkflow *)self noInputBehaviorData];

  if (noInputBehaviorData)
  {
    v4 = MEMORY[0x1E696AE40];
    noInputBehaviorData2 = [(WFCoreDataWorkflow *)self noInputBehaviorData];
    v10 = 0;
    noInputBehaviorData = [v4 propertyListWithData:noInputBehaviorData2 options:0 format:0 error:&v10];
    v6 = v10;

    if (!noInputBehaviorData || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v7 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v12 = "[WFCoreDataWorkflow(RecordStorage) deserializedNoInputBehavior]";
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Failed to deserialize no input behavior from plist data: %{public}@", buf, 0x16u);
      }

      noInputBehaviorData = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return noInputBehaviorData;
}

- (void)setDeserializedInputClasses:(id)classes
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:classes format:200 options:0 error:&v10];
  v5 = v10;
  if (v4)
  {
    selfCopy2 = self;
    v7 = v4;
  }

  else
  {
    v8 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v12 = "[WFCoreDataWorkflow(RecordStorage) setDeserializedInputClasses:]";
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Failed to serialize input classes into plist data: %{public}@", buf, 0x16u);
    }

    selfCopy2 = self;
    v7 = 0;
  }

  [(WFCoreDataWorkflow *)selfCopy2 setInputClassesData:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (NSArray)deserializedInputClasses
{
  v16 = *MEMORY[0x1E69E9840];
  inputClassesData = [(WFCoreDataWorkflow *)self inputClassesData];

  if (inputClassesData)
  {
    v4 = MEMORY[0x1E696AE40];
    inputClassesData2 = [(WFCoreDataWorkflow *)self inputClassesData];
    v11 = 0;
    v6 = [v4 propertyListWithData:inputClassesData2 options:0 format:0 error:&v11];
    v7 = v11;

    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v8 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v13 = "[WFCoreDataWorkflow(RecordStorage) deserializedInputClasses]";
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_FAULT, "%s Failed to deserialize input classes from plist data: %{public}@", buf, 0x16u);
      }

      v6 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setDeserializedActions:(id)actions
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:actions format:200 options:0 error:&v11];
  v5 = v11;
  if (v4)
  {
    actions = [(WFCoreDataWorkflow *)self actions];
    v7 = actions;
    v8 = v4;
  }

  else
  {
    v9 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v13 = "[WFCoreDataWorkflow(RecordStorage) setDeserializedActions:]";
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Failed to serialize actions into plist data: %{public}@", buf, 0x16u);
    }

    actions = [(WFCoreDataWorkflow *)self actions];
    v7 = actions;
    v8 = 0;
  }

  [actions setData:v8];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setWorkflowTypes:(id)types
{
  typesCopy = types;
  -[WFCoreDataWorkflow setHiddenFromWidget:](self, "setHiddenFromWidget:", [typesCopy containsObject:@"NCWidget"] ^ 1);
  -[WFCoreDataWorkflow setReceivesOnScreenContent:](self, "setReceivesOnScreenContent:", [typesCopy containsObject:*MEMORY[0x1E69E1450]]);
  v4 = *MEMORY[0x1E69E1460];
  -[WFCoreDataWorkflow setShowInSearch:](self, "setShowInSearch:", [typesCopy containsObject:*MEMORY[0x1E69E1460]]);
  if ([typesCopy containsObject:v4])
  {
    v5 = [typesCopy containsObject:*MEMORY[0x1E69E1448]];
  }

  else
  {
    v5 = 0;
  }

  [(WFCoreDataWorkflow *)self setReceivesInputFromSearch:v5];
  managedObjectContext = [(WFCoreDataWorkflow *)self managedObjectContext];
  if (managedObjectContext)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = managedObjectContext;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  database = [v8 database];

  if (([database isSavingWorkflowRecordForSync] & 1) == 0)
  {
    workflowTypes = [(WFCoreDataWorkflow *)self workflowTypes];
    identifier = [(WFCoreDataWorkflow *)self identifier];
    [WFWorkflowRecord updateCoherenceLibraryWithTypesForWorkflow:identifier workflowTypes:typesCopy existingWorkflowTypes:workflowTypes database:database];
  }
}

- (NSArray)workflowTypes
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  managedObjectContext = [(WFCoreDataWorkflow *)self managedObjectContext];
  if (managedObjectContext)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = managedObjectContext;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  database = [v6 database];

  library = [database library];
  identifier = [(WFCoreDataWorkflow *)self identifier];
  v10 = [library collectionsContainingShortcut:identifier];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        identifier2 = [*(*(&v20 + 1) + 8 * i) identifier];
        v17 = WFWorkflowTypeForCollectionIdentifier(identifier2);

        if (v17)
        {
          [v3 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  if (([(WFCoreDataWorkflow *)self hiddenFromWidget]& 1) == 0)
  {
    [v3 addObject:@"NCWidget"];
  }

  if ([(WFCoreDataWorkflow *)self receivesOnScreenContent])
  {
    [v3 addObject:*MEMORY[0x1E69E1450]];
  }

  if ([(WFCoreDataWorkflow *)self showInSearch])
  {
    [v3 addObject:*MEMORY[0x1E69E1460]];
    if ([(WFCoreDataWorkflow *)self receivesInputFromSearch])
    {
      [v3 addObject:*MEMORY[0x1E69E1448]];
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setWorkflowQuarantine:(id)quarantine
{
  quarantineCopy = quarantine;
  if (quarantineCopy)
  {
    quarantine = [(WFCoreDataWorkflow *)self quarantine];
    if (quarantine)
    {
      [(WFCoreDataWorkflow *)self setQuarantine:quarantine];
    }

    else
    {
      v5 = MEMORY[0x1E695D5B8];
      managedObjectContext = [(WFCoreDataWorkflow *)self managedObjectContext];
      v7 = [v5 insertNewObjectForEntityForName:@"ShortcutQuarantine" inManagedObjectContext:managedObjectContext];
      [(WFCoreDataWorkflow *)self setQuarantine:v7];
    }

    sourceAppIdentifier = [quarantineCopy sourceAppIdentifier];
    quarantine2 = [(WFCoreDataWorkflow *)self quarantine];
    [quarantine2 setSourceAppIdentifier:sourceAppIdentifier];

    importDate = [quarantineCopy importDate];
    quarantine3 = [(WFCoreDataWorkflow *)self quarantine];
    [quarantine3 setImportDate:importDate];
  }

  else
  {
    [(WFCoreDataWorkflow *)self setQuarantine:0];
  }
}

- (WFWorkflowQuarantine)workflowQuarantine
{
  quarantine = [(WFCoreDataWorkflow *)self quarantine];
  sourceAppIdentifier = [quarantine sourceAppIdentifier];
  importDate = [quarantine importDate];
  v5 = importDate;
  v6 = 0;
  if (quarantine && sourceAppIdentifier && importDate)
  {
    v6 = [[WFWorkflowQuarantine alloc] initWithSourceAppIdentifier:sourceAppIdentifier importDate:importDate];
  }

  return v6;
}

- (void)setWorkflowIcon:(id)icon
{
  iconCopy = icon;
  icon = [(WFCoreDataWorkflow *)self icon];
  v5 = icon;
  if (icon)
  {
    v6 = icon;
  }

  else
  {
    v7 = MEMORY[0x1E695D5B8];
    managedObjectContext = [(WFCoreDataWorkflow *)self managedObjectContext];
    v6 = [v7 insertNewObjectForEntityForName:@"ShortcutIcon" inManagedObjectContext:managedObjectContext];
  }

  if (iconCopy)
  {
    [v6 setBackgroundColorValue:{objc_msgSend(iconCopy, "backgroundColorValue")}];
    [v6 setGlyphNumber:{objc_msgSend(iconCopy, "glyphCharacter")}];
  }

  [(WFCoreDataWorkflow *)self setIcon:v6];
}

- (WFWorkflowIcon)workflowIcon
{
  icon = [(WFCoreDataWorkflow *)self icon];
  v3 = [objc_alloc(MEMORY[0x1E69E0E00]) initWithBackgroundColorValue:objc_msgSend(icon glyphCharacter:"backgroundColorValue") customImageData:{objc_msgSend(icon, "glyphNumber"), 0}];

  return v3;
}

- (void)didUpdateProperties:(id)properties
{
  v24 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if ([propertiesCopy count])
  {
    syncHash = [(WFCoreDataWorkflow *)self syncHash];
    computedSyncHash = [(WFCoreDataWorkflow *)self computedSyncHash];
    v7 = getWFDatabaseLogObject();
    v8 = v7;
    if (computedSyncHash == syncHash)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        workflowID = [(WFCoreDataWorkflow *)self workflowID];
        v14 = 136315906;
        v15 = "[WFCoreDataWorkflow(RecordStorage) didUpdateProperties:]";
        v16 = 2112;
        v17 = propertiesCopy;
        v18 = 2112;
        v19 = workflowID;
        v20 = 2048;
        v21 = syncHash;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Properties %@ changed of workflow %@, but sync hash %lld stayed stable", &v14, 0x2Au);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        workflowID2 = [(WFCoreDataWorkflow *)self workflowID];
        v14 = 136316162;
        v15 = "[WFCoreDataWorkflow(RecordStorage) didUpdateProperties:]";
        v16 = 2112;
        v17 = workflowID2;
        v18 = 2048;
        v19 = syncHash;
        v20 = 2048;
        v21 = computedSyncHash;
        v22 = 2112;
        v23 = propertiesCopy;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEFAULT, "%s Updating syncHash of workflow: %@ from %lld -> %lld. (Because %@ updated)", &v14, 0x34u);
      }

      [(WFCoreDataWorkflow *)self setSyncHash:computedSyncHash];
    }

    spotlightSyncHash = [(WFCoreDataWorkflow *)self spotlightSyncHash];
    computedSpotlightSyncHash = [(WFCoreDataWorkflow *)self computedSpotlightSyncHash];
    if (computedSpotlightSyncHash != spotlightSyncHash)
    {
      [(WFCoreDataWorkflow *)self setSpotlightSyncHash:computedSpotlightSyncHash];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end
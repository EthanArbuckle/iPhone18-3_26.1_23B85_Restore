@interface WFCloudKitWorkflow
+ (BOOL)isShortcutV2RecordID:(id)d;
+ (NSDictionary)properties;
+ (id)encryptedNameProperty;
+ (id)nameProperty;
+ (id)recordIDWithZoneID:(id)d workflowID:(id)iD;
+ (id)workflowIdentifierForRecordID:(id)d;
- (BOOL)isValidForSyncing;
- (WFCloudKitWorkflow)initWithRecord:(id)record identifier:(id)identifier;
- (id)recordRepresentationWithError:(id *)error;
- (void)setCreatedAt:(id)at modifiedAt:(id)modifiedAt createdBy:(id)by;
@end

@implementation WFCloudKitWorkflow

+ (BOOL)isShortcutV2RecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName hasPrefix:@"Shortcut_v2"];

  return v4;
}

+ (id)workflowIdentifierForRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-", @"Shortcut_v2"];
  if ([recordName hasPrefix:v4])
  {
    v5 = [recordName substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = recordName;
  }

  v6 = v5;

  return v6;
}

+ (id)recordIDWithZoneID:(id)d workflowID:(id)iD
{
  v5 = MEMORY[0x1E696AEC0];
  dCopy = d;
  v7 = [v5 stringWithFormat:@"%@-%@", @"Shortcut_v2", iD];
  v8 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v7 zoneID:dCopy];

  return v8;
}

+ (id)encryptedNameProperty
{
  if (+[WFCloudKitSyncSession isWalrusEnabled])
  {
    [WFCloudKitItemProperty objectPropertyWithName:@"name" ignoredByDefault:0 encrypted:1];
  }

  else
  {
    [WFCloudKitItemProperty objectPropertyWithName:@"name" constantValue:0 encrypted:1];
  }
  v2 = ;

  return v2;
}

+ (id)nameProperty
{
  if (+[WFCloudKitSyncSession isWalrusEnabled])
  {
    [WFCloudKitItemProperty objectPropertyWithName:@"name" constantValue:0];
  }

  else
  {
    [WFCloudKitItemProperty objectPropertyWithName:@"name"];
  }
  v2 = ;

  return v2;
}

+ (NSDictionary)properties
{
  v21[13] = *MEMORY[0x1E69E9840];
  v20[0] = @"subtitle";
  v19 = [WFCloudKitItemProperty objectPropertyWithName:@"workflowSubtitle"];
  v21[0] = v19;
  v20[1] = @"associatedAppBundleIdentifier";
  v18 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v21[1] = v18;
  v20[2] = @"source";
  v17 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v21[2] = v17;
  v20[3] = @"galleryIdentifier";
  v16 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v21[3] = v16;
  v20[4] = @"lastSavedOnDeviceName";
  v15 = [WFCloudKitItemProperty objectPropertyWithName:?];
  v21[4] = v15;
  v20[5] = @"serializedData";
  v3 = [MEMORY[0x1E69E0AF8] typeWithUTType:*MEMORY[0x1E6982D60]];
  v4 = [WFCloudKitItemProperty assetPropertyWithName:@"serializedDataFile" fileType:v3];
  v21[5] = v4;
  v20[6] = @"quarantine";
  v5 = [WFCloudKitItemProperty objectPropertyWithName:@"serializedQuarantineData"];
  v21[6] = v5;
  v20[7] = @"cachedSyncHash";
  v6 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v21[7] = v6;
  v20[8] = @"accessResourcePermissionsData";
  v7 = [WFCloudKitItemProperty objectPropertyWithName:@"serializedAccessResourcePerWorkflowStateData"];
  v21[8] = v7;
  v20[9] = @"smartPromptsData";
  v8 = [WFCloudKitItemProperty objectPropertyWithName:@"serializedSmartPromptsPerWorkflowStateData"];
  v21[9] = v8;
  v20[10] = @"name";
  nameProperty = [self nameProperty];
  v21[10] = nameProperty;
  v20[11] = @"encryptedSchemaVersion";
  v10 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v21[11] = v10;
  v20[12] = @"encryptedName";
  encryptedNameProperty = [self encryptedNameProperty];
  v21[12] = encryptedNameProperty;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:13];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isValidForSyncing
{
  name = [(WFCloudKitWorkflow *)self name];
  if (name)
  {
    serializedDataFile = [(WFCloudKitWorkflow *)self serializedDataFile];
    v5 = serializedDataFile != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)recordRepresentationWithError:(id *)error
{
  p_cachedRecord = &self->_cachedRecord;
  cachedRecord = self->_cachedRecord;
  null = [MEMORY[0x1E695DFB0] null];

  if (cachedRecord == null)
  {
    goto LABEL_16;
  }

  if (cachedRecord)
  {
    cachedRecord = cachedRecord;
    v8 = cachedRecord;
    goto LABEL_17;
  }

  cachedRecord = [(WFCloudKitWorkflow *)self serializedDataFile];
  if (!cachedRecord)
  {
    goto LABEL_16;
  }

  name = [(WFCloudKitWorkflow *)self name];

  if (!name)
  {
LABEL_15:
    cachedRecord = 0;
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v10 = [WFWorkflowFileDescriptor alloc];
  serializedDataFile = [(WFCloudKitWorkflow *)self serializedDataFile];
  name2 = [(WFCloudKitWorkflow *)self name];
  v13 = [(WFWorkflowFileDescriptor *)v10 initWithFile:serializedDataFile name:name2];

  v14 = [[WFWorkflowFile alloc] initWithDescriptor:v13 performMigration:0 error:error];
  v15 = [(WFWorkflowFile *)v14 recordRepresentationWithError:error];

  if (!v15)
  {

    goto LABEL_15;
  }

  name3 = [(WFCloudKitWorkflow *)self name];
  [v15 setName:name3];

  createdAt = [(WFCloudKitWorkflow *)self createdAt];
  [v15 setCreationDate:createdAt];

  modifiedAt = [(WFCloudKitWorkflow *)self modifiedAt];
  [v15 setModificationDate:modifiedAt];

  workflowSubtitle = [(WFCloudKitWorkflow *)self workflowSubtitle];
  [v15 setWorkflowSubtitle:workflowSubtitle];

  associatedAppBundleIdentifier = [(WFCloudKitWorkflow *)self associatedAppBundleIdentifier];
  [v15 setAssociatedAppBundleIdentifier:associatedAppBundleIdentifier];

  source = [(WFCloudKitWorkflow *)self source];
  [v15 setSource:source];

  galleryIdentifier = [(WFCloudKitWorkflow *)self galleryIdentifier];
  [v15 setGalleryIdentifier:galleryIdentifier];

  serializedQuarantineData = [(WFCloudKitWorkflow *)self serializedQuarantineData];

  if (serializedQuarantineData)
  {
    v24 = [WFWorkflowQuarantine alloc];
    serializedQuarantineData2 = [(WFCloudKitWorkflow *)self serializedQuarantineData];
    v26 = [(WFWorkflowQuarantine *)v24 initWithSerializedData:serializedQuarantineData2];
    [v15 setQuarantine:v26];
  }

  serializedAccessResourcePerWorkflowStateData = [(WFCloudKitWorkflow *)self serializedAccessResourcePerWorkflowStateData];

  v28 = MEMORY[0x1E695E0F0];
  if (serializedAccessResourcePerWorkflowStateData)
  {
    v29 = MEMORY[0x1E696AE40];
    serializedAccessResourcePerWorkflowStateData2 = [(WFCloudKitWorkflow *)self serializedAccessResourcePerWorkflowStateData];
    v31 = [v29 propertyListWithData:serializedAccessResourcePerWorkflowStateData2 options:0 format:0 error:0];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = v28;
    }

    v34 = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = [v34 if_compactMap:&__block_literal_global_26345];

    v37 = [v35 setWithArray:v36];
    [v15 setAccessResourcePerWorkflowStates:v37];
  }

  else
  {
    v36 = objc_opt_new();
    [v15 setAccessResourcePerWorkflowStates:v36];
  }

  serializedSmartPromptsPerWorkflowStateData = [(WFCloudKitWorkflow *)self serializedSmartPromptsPerWorkflowStateData];

  if (serializedSmartPromptsPerWorkflowStateData)
  {
    v40 = MEMORY[0x1E696AE40];
    serializedSmartPromptsPerWorkflowStateData2 = [(WFCloudKitWorkflow *)self serializedSmartPromptsPerWorkflowStateData];
    v42 = [v40 propertyListWithData:serializedSmartPromptsPerWorkflowStateData2 options:0 format:0 error:0];
    v43 = v42;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v44 = v28;
    }

    v45 = v44;

    v46 = MEMORY[0x1E695DFD8];
    v47 = [v45 if_compactMap:&__block_literal_global_251];

    v48 = [v46 setWithArray:v47];
    [v15 setSmartPromptPerWorkflowStates:v48];
  }

  else
  {
    v47 = objc_opt_new();
    [v15 setSmartPromptPerWorkflowStates:v47];
  }

  lastSavedOnDeviceName = [(WFCloudKitWorkflow *)self lastSavedOnDeviceName];
  [v15 setLastSavedOnDeviceName:lastSavedOnDeviceName];

  recordSystemFieldsData = [(WFCloudKitWorkflow *)self recordSystemFieldsData];
  [v15 setCloudKitRecordMetadata:recordSystemFieldsData];

  [v15 setSyncHash:{-[WFCloudKitWorkflow cachedSyncHash](self, "cachedSyncHash")}];
  [v15 setWantedEncryptedSchemaVersion:{-[WFCloudKitWorkflow encryptedSchemaVersion](self, "encryptedSchemaVersion")}];
  [v15 setStorageIdentifier:0];
  objc_storeStrong(p_cachedRecord, v15);

  v8 = v15;
  cachedRecord = self->_cachedRecord;
  self->_cachedRecord = v8;
LABEL_17:

  return v8;
}

WFSerializedSmartPromptPerWorkflowState *__52__WFCloudKitWorkflow_recordRepresentationWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFSerializedSmartPromptPerWorkflowState alloc] initWithDictionary:v2];

  return v3;
}

WFSerializedAccessResourcePerWorkflowState *__52__WFCloudKitWorkflow_recordRepresentationWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFSerializedAccessResourcePerWorkflowState alloc] initWithDictionary:v2];

  return v3;
}

- (WFCloudKitWorkflow)initWithRecord:(id)record identifier:(id)identifier
{
  recordCopy = record;
  identifierCopy = identifier;
  v9 = [(WFCloudKitWorkflow *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cachedRecord, record);
    objc_storeStrong(&v10->_identifier, identifier);
    name = [recordCopy name];
    name = v10->_name;
    v10->_name = name;

    workflowSubtitle = [recordCopy workflowSubtitle];
    workflowSubtitle = v10->_workflowSubtitle;
    v10->_workflowSubtitle = workflowSubtitle;

    associatedAppBundleIdentifier = [recordCopy associatedAppBundleIdentifier];
    associatedAppBundleIdentifier = v10->_associatedAppBundleIdentifier;
    v10->_associatedAppBundleIdentifier = associatedAppBundleIdentifier;

    source = [recordCopy source];
    source = v10->_source;
    v10->_source = source;

    galleryIdentifier = [recordCopy galleryIdentifier];
    galleryIdentifier = v10->_galleryIdentifier;
    v10->_galleryIdentifier = galleryIdentifier;

    fileRepresentation = [recordCopy fileRepresentation];
    recordName = [identifierCopy recordName];
    [fileRepresentation setName:recordName];

    v23 = [fileRepresentation writeToDiskWithError:0];
    serializedDataFile = v10->_serializedDataFile;
    v10->_serializedDataFile = v23;

    quarantine = [recordCopy quarantine];
    serializedData = [quarantine serializedData];
    serializedQuarantineData = v10->_serializedQuarantineData;
    v10->_serializedQuarantineData = serializedData;

    v28 = MEMORY[0x1E696AE40];
    accessResourcePerWorkflowStates = [recordCopy accessResourcePerWorkflowStates];
    allObjects = [accessResourcePerWorkflowStates allObjects];
    v31 = [allObjects valueForKey:@"dictionaryRepresentation"];
    v32 = [v28 dataWithPropertyList:v31 format:200 options:0 error:0];
    serializedAccessResourcePerWorkflowStateData = v10->_serializedAccessResourcePerWorkflowStateData;
    v10->_serializedAccessResourcePerWorkflowStateData = v32;

    v34 = MEMORY[0x1E696AE40];
    smartPromptPerWorkflowStates = [recordCopy smartPromptPerWorkflowStates];
    allObjects2 = [smartPromptPerWorkflowStates allObjects];
    v37 = [allObjects2 valueForKey:@"dictionaryRepresentation"];
    v38 = [v34 dataWithPropertyList:v37 format:200 options:0 error:0];
    serializedSmartPromptsPerWorkflowStateData = v10->_serializedSmartPromptsPerWorkflowStateData;
    v10->_serializedSmartPromptsPerWorkflowStateData = v38;

    creationDate = [recordCopy creationDate];
    createdAt = v10->_createdAt;
    v10->_createdAt = creationDate;

    modificationDate = [recordCopy modificationDate];
    modifiedAt = v10->_modifiedAt;
    v10->_modifiedAt = modificationDate;

    lastSavedOnDeviceName = [recordCopy lastSavedOnDeviceName];
    lastSavedOnDeviceName = v10->_lastSavedOnDeviceName;
    v10->_lastSavedOnDeviceName = lastSavedOnDeviceName;

    quarantine2 = [recordCopy quarantine];
    serializedData2 = [quarantine2 serializedData];
    v48 = v10->_serializedQuarantineData;
    v10->_serializedQuarantineData = serializedData2;

    cloudKitRecordMetadata = [recordCopy cloudKitRecordMetadata];
    v50 = [cloudKitRecordMetadata copy];
    recordSystemFieldsData = v10->_recordSystemFieldsData;
    v10->_recordSystemFieldsData = v50;

    v10->_cachedSyncHash = [recordCopy syncHash];
    v10->_encryptedSchemaVersion = [recordCopy wantedEncryptedSchemaVersion];
    v52 = v10;
  }

  return v10;
}

- (void)setCreatedAt:(id)at modifiedAt:(id)modifiedAt createdBy:(id)by
{
  atCopy = at;
  modifiedAtCopy = modifiedAt;
  createdAt = self->_createdAt;
  self->_createdAt = atCopy;
  v11 = atCopy;

  modifiedAt = self->_modifiedAt;
  self->_modifiedAt = modifiedAtCopy;
}

@end
@interface WFCloudKitWorkflow
+ (BOOL)isShortcutV2RecordID:(id)a3;
+ (NSDictionary)properties;
+ (id)encryptedNameProperty;
+ (id)nameProperty;
+ (id)recordIDWithZoneID:(id)a3 workflowID:(id)a4;
+ (id)workflowIdentifierForRecordID:(id)a3;
- (BOOL)isValidForSyncing;
- (WFCloudKitWorkflow)initWithRecord:(id)a3 identifier:(id)a4;
- (id)recordRepresentationWithError:(id *)a3;
- (void)setCreatedAt:(id)a3 modifiedAt:(id)a4 createdBy:(id)a5;
@end

@implementation WFCloudKitWorkflow

+ (BOOL)isShortcutV2RecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [v3 hasPrefix:@"Shortcut_v2"];

  return v4;
}

+ (id)workflowIdentifierForRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-", @"Shortcut_v2"];
  if ([v3 hasPrefix:v4])
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

+ (id)recordIDWithZoneID:(id)a3 workflowID:(id)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@-%@", @"Shortcut_v2", a4];
  v8 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v7 zoneID:v6];

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
  v9 = [a1 nameProperty];
  v21[10] = v9;
  v20[11] = @"encryptedSchemaVersion";
  v10 = [WFCloudKitItemProperty scalarPropertyWithName:"scalarPropertyWithName:nilValue:" nilValue:?];
  v21[11] = v10;
  v20[12] = @"encryptedName";
  v11 = [a1 encryptedNameProperty];
  v21[12] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:13];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)isValidForSyncing
{
  v3 = [(WFCloudKitWorkflow *)self name];
  if (v3)
  {
    v4 = [(WFCloudKitWorkflow *)self serializedDataFile];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)recordRepresentationWithError:(id *)a3
{
  p_cachedRecord = &self->_cachedRecord;
  cachedRecord = self->_cachedRecord;
  v7 = [MEMORY[0x1E695DFB0] null];

  if (cachedRecord == v7)
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

  v9 = [(WFCloudKitWorkflow *)self name];

  if (!v9)
  {
LABEL_15:
    cachedRecord = 0;
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  v10 = [WFWorkflowFileDescriptor alloc];
  v11 = [(WFCloudKitWorkflow *)self serializedDataFile];
  v12 = [(WFCloudKitWorkflow *)self name];
  v13 = [(WFWorkflowFileDescriptor *)v10 initWithFile:v11 name:v12];

  v14 = [[WFWorkflowFile alloc] initWithDescriptor:v13 performMigration:0 error:a3];
  v15 = [(WFWorkflowFile *)v14 recordRepresentationWithError:a3];

  if (!v15)
  {

    goto LABEL_15;
  }

  v16 = [(WFCloudKitWorkflow *)self name];
  [v15 setName:v16];

  v17 = [(WFCloudKitWorkflow *)self createdAt];
  [v15 setCreationDate:v17];

  v18 = [(WFCloudKitWorkflow *)self modifiedAt];
  [v15 setModificationDate:v18];

  v19 = [(WFCloudKitWorkflow *)self workflowSubtitle];
  [v15 setWorkflowSubtitle:v19];

  v20 = [(WFCloudKitWorkflow *)self associatedAppBundleIdentifier];
  [v15 setAssociatedAppBundleIdentifier:v20];

  v21 = [(WFCloudKitWorkflow *)self source];
  [v15 setSource:v21];

  v22 = [(WFCloudKitWorkflow *)self galleryIdentifier];
  [v15 setGalleryIdentifier:v22];

  v23 = [(WFCloudKitWorkflow *)self serializedQuarantineData];

  if (v23)
  {
    v24 = [WFWorkflowQuarantine alloc];
    v25 = [(WFCloudKitWorkflow *)self serializedQuarantineData];
    v26 = [(WFWorkflowQuarantine *)v24 initWithSerializedData:v25];
    [v15 setQuarantine:v26];
  }

  v27 = [(WFCloudKitWorkflow *)self serializedAccessResourcePerWorkflowStateData];

  v28 = MEMORY[0x1E695E0F0];
  if (v27)
  {
    v29 = MEMORY[0x1E696AE40];
    v30 = [(WFCloudKitWorkflow *)self serializedAccessResourcePerWorkflowStateData];
    v31 = [v29 propertyListWithData:v30 options:0 format:0 error:0];
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

  v39 = [(WFCloudKitWorkflow *)self serializedSmartPromptsPerWorkflowStateData];

  if (v39)
  {
    v40 = MEMORY[0x1E696AE40];
    v41 = [(WFCloudKitWorkflow *)self serializedSmartPromptsPerWorkflowStateData];
    v42 = [v40 propertyListWithData:v41 options:0 format:0 error:0];
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

  v49 = [(WFCloudKitWorkflow *)self lastSavedOnDeviceName];
  [v15 setLastSavedOnDeviceName:v49];

  v50 = [(WFCloudKitWorkflow *)self recordSystemFieldsData];
  [v15 setCloudKitRecordMetadata:v50];

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

- (WFCloudKitWorkflow)initWithRecord:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WFCloudKitWorkflow *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cachedRecord, a3);
    objc_storeStrong(&v10->_identifier, a4);
    v11 = [v7 name];
    name = v10->_name;
    v10->_name = v11;

    v13 = [v7 workflowSubtitle];
    workflowSubtitle = v10->_workflowSubtitle;
    v10->_workflowSubtitle = v13;

    v15 = [v7 associatedAppBundleIdentifier];
    associatedAppBundleIdentifier = v10->_associatedAppBundleIdentifier;
    v10->_associatedAppBundleIdentifier = v15;

    v17 = [v7 source];
    source = v10->_source;
    v10->_source = v17;

    v19 = [v7 galleryIdentifier];
    galleryIdentifier = v10->_galleryIdentifier;
    v10->_galleryIdentifier = v19;

    v21 = [v7 fileRepresentation];
    v22 = [v8 recordName];
    [v21 setName:v22];

    v23 = [v21 writeToDiskWithError:0];
    serializedDataFile = v10->_serializedDataFile;
    v10->_serializedDataFile = v23;

    v25 = [v7 quarantine];
    v26 = [v25 serializedData];
    serializedQuarantineData = v10->_serializedQuarantineData;
    v10->_serializedQuarantineData = v26;

    v28 = MEMORY[0x1E696AE40];
    v29 = [v7 accessResourcePerWorkflowStates];
    v30 = [v29 allObjects];
    v31 = [v30 valueForKey:@"dictionaryRepresentation"];
    v32 = [v28 dataWithPropertyList:v31 format:200 options:0 error:0];
    serializedAccessResourcePerWorkflowStateData = v10->_serializedAccessResourcePerWorkflowStateData;
    v10->_serializedAccessResourcePerWorkflowStateData = v32;

    v34 = MEMORY[0x1E696AE40];
    v35 = [v7 smartPromptPerWorkflowStates];
    v36 = [v35 allObjects];
    v37 = [v36 valueForKey:@"dictionaryRepresentation"];
    v38 = [v34 dataWithPropertyList:v37 format:200 options:0 error:0];
    serializedSmartPromptsPerWorkflowStateData = v10->_serializedSmartPromptsPerWorkflowStateData;
    v10->_serializedSmartPromptsPerWorkflowStateData = v38;

    v40 = [v7 creationDate];
    createdAt = v10->_createdAt;
    v10->_createdAt = v40;

    v42 = [v7 modificationDate];
    modifiedAt = v10->_modifiedAt;
    v10->_modifiedAt = v42;

    v44 = [v7 lastSavedOnDeviceName];
    lastSavedOnDeviceName = v10->_lastSavedOnDeviceName;
    v10->_lastSavedOnDeviceName = v44;

    v46 = [v7 quarantine];
    v47 = [v46 serializedData];
    v48 = v10->_serializedQuarantineData;
    v10->_serializedQuarantineData = v47;

    v49 = [v7 cloudKitRecordMetadata];
    v50 = [v49 copy];
    recordSystemFieldsData = v10->_recordSystemFieldsData;
    v10->_recordSystemFieldsData = v50;

    v10->_cachedSyncHash = [v7 syncHash];
    v10->_encryptedSchemaVersion = [v7 wantedEncryptedSchemaVersion];
    v52 = v10;
  }

  return v10;
}

- (void)setCreatedAt:(id)a3 modifiedAt:(id)a4 createdBy:(id)a5
{
  v7 = a3;
  v8 = a4;
  createdAt = self->_createdAt;
  self->_createdAt = v7;
  v11 = v7;

  modifiedAt = self->_modifiedAt;
  self->_modifiedAt = v8;
}

@end
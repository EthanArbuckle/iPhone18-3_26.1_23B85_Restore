@interface WFDatabaseProxy
+ (WFDatabaseProxy)defaultDatabase;
- (BOOL)isReference:(id)reference allowedToRunOnDomain:(id)domain;
- (BOOL)saveSmartPromptStateData:(id)data actionUUID:(id)d reference:(id)reference error:(id *)error;
- (WFDatabaseProxy)init;
- (id)approvalResultForContentAttributionSet:(id)set contentDestination:(id)destination actionUUID:(id)d actionIdentifier:(id)identifier actionIndex:(unint64_t)index reference:(id)reference allowedOnceStates:(id)states error:(id *)self0;
- (id)collectionWithIdentifier:(id)identifier error:(id *)error;
- (id)configuredTriggerForTriggerID:(id)d error:(id *)error;
- (id)configuredTriggersForWorkflowID:(id)d error:(id *)error;
- (id)createWorkflowWithWorkflowRecord:(id)record nameCollisionBehavior:(unint64_t)behavior error:(id *)error;
- (id)currentDeletionAuthorizationStatusWithContentItemClassName:(id)name actionUUID:(id)d actionIdentifier:(id)identifier actionIndex:(unint64_t)index count:(unint64_t)count reference:(id)reference error:(id *)error;
- (id)databaseProxyHostConnection;
- (id)folderForWorkflowReference:(id)reference error:(id *)error;
- (id)hostProxyWithErrorHandler:(id)handler;
- (id)logRunOfWorkflow:(id)workflow withSource:(id)source triggerID:(id)d;
- (id)referenceForWorkflowID:(id)d;
- (id)serializedParametersForAppEntityIdentifier:(id)identifier error:(id *)error;
- (id)sortedVisibleFoldersWithError:(id *)error;
- (id)sortedVisibleWorkflowsByNameWithError:(id *)error;
- (id)sortedVisibleWorkflowsInCollection:(id)collection error:(id *)error;
- (id)sortedWorkflowsWithQuery:(id)query error:(id *)error;
- (id)uniqueVisibleReferenceForWorkflowName:(id)name;
- (id)workflowRecordForDescriptor:(id)descriptor error:(id *)error;
- (void)quarantineWorkflowWithReference:(id)reference;
- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)reference error:(id *)error;
- (void)setOutcome:(int64_t)outcome forRunEvent:(id)event;
- (void)storeQuarantineHashForWorkflowWithReference:(id)reference quarantineHash:(id)hash;
- (void)updateAppDescriptor:(id)descriptor atKey:(id)key actionUUID:(id)d actionIndex:(id)index actionIdentifier:(id)identifier workflowID:(id)iD error:(id *)error;
@end

@implementation WFDatabaseProxy

+ (WFDatabaseProxy)defaultDatabase
{
  if (defaultDatabase_onceToken != -1)
  {
    dispatch_once(&defaultDatabase_onceToken, &__block_literal_global_56278);
  }

  v3 = defaultDatabase_proxy;

  return v3;
}

- (WFDatabaseProxy)init
{
  v6.receiver = self;
  v6.super_class = WFDatabaseProxy;
  v2 = [(WFDatabaseProxy *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

void __34__WFDatabaseProxy_defaultDatabase__block_invoke()
{
  v0 = objc_alloc_init(WFDatabaseProxy);
  v1 = defaultDatabase_proxy;
  defaultDatabase_proxy = v0;
}

- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__56169;
    v17 = __Block_byref_object_dispose__56170;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__WFDatabaseProxy_saveOutputActionSmartPromtDataForWorkflowReference_error___block_invoke;
    v12[3] = &unk_1E837BFB8;
    v12[4] = &v13;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__WFDatabaseProxy_saveOutputActionSmartPromtDataForWorkflowReference_error___block_invoke_2;
    v11[3] = &unk_1E837BFB8;
    v11[4] = &v13;
    [v8 saveOutputActionSmartPromtDataForWorkflowReference:referenceCopy completion:v11];

    v9 = v14[5];
    if (v9)
    {
      *error = v9;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    [database saveOutputActionSmartPromtDataForWorkflowReference:referenceCopy error:error];
  }
}

- (id)hostProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (handler)
  {
    v3 = a2;
    databaseProxyHostConnection = [handlerCopy databaseProxyHostConnection];
    handlerCopy = [databaseProxyHostConnection synchronousRemoteObjectProxyWithErrorHandler:v3];
  }

  return handlerCopy;
}

- (BOOL)saveSmartPromptStateData:(id)data actionUUID:(id)d reference:(id)reference error:(id *)error
{
  dataCopy = data;
  dCopy = d;
  referenceCopy = reference;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__56169;
    v25 = __Block_byref_object_dispose__56170;
    v26 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__WFDatabaseProxy_saveSmartPromptStateData_actionUUID_reference_error___block_invoke;
    v20[3] = &unk_1E837BFB8;
    v20[4] = &v21;
    v14 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v20];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__WFDatabaseProxy_saveSmartPromptStateData_actionUUID_reference_error___block_invoke_2;
    v19[3] = &unk_1E837C170;
    v19[4] = &v27;
    v19[5] = &v21;
    [v14 saveSmartPromptStateData:dataCopy actionUUID:dCopy reference:referenceCopy completion:v19];

    v15 = v22[5];
    if (v15)
    {
      *error = v15;
    }

    v16 = *(v28 + 24);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v16 = [database saveSmartPromptStateData:dataCopy actionUUID:dCopy reference:referenceCopy error:error];
  }

  return v16 & 1;
}

- (id)currentDeletionAuthorizationStatusWithContentItemClassName:(id)name actionUUID:(id)d actionIdentifier:(id)identifier actionIndex:(unint64_t)index count:(unint64_t)count reference:(id)reference error:(id *)error
{
  nameCopy = name;
  dCopy = d;
  identifierCopy = identifier;
  referenceCopy = reference;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__56169;
    v37 = __Block_byref_object_dispose__56170;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__56169;
    v31 = __Block_byref_object_dispose__56170;
    v32 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __140__WFDatabaseProxy_currentDeletionAuthorizationStatusWithContentItemClassName_actionUUID_actionIdentifier_actionIndex_count_reference_error___block_invoke;
    v26[3] = &unk_1E837BFB8;
    v26[4] = &v27;
    v20 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v26];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __140__WFDatabaseProxy_currentDeletionAuthorizationStatusWithContentItemClassName_actionUUID_actionIdentifier_actionIndex_count_reference_error___block_invoke_2;
    v25[3] = &unk_1E837C148;
    v25[4] = &v33;
    v25[5] = &v27;
    [v20 currentDeletionAuthorizationStatusWithContentItemClassName:nameCopy actionUUID:dCopy actionIdentifier:identifierCopy actionIndex:index count:count reference:referenceCopy completion:v25];

    v21 = v28[5];
    if (v21)
    {
      *error = v21;
    }

    v22 = v34[5];
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v22 = [database currentDeletionAuthorizationStatusWithContentItemClassName:nameCopy actionUUID:dCopy actionIdentifier:identifierCopy actionIndex:index count:count reference:referenceCopy];
  }

  return v22;
}

void __140__WFDatabaseProxy_currentDeletionAuthorizationStatusWithContentItemClassName_actionUUID_actionIdentifier_actionIndex_count_reference_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)approvalResultForContentAttributionSet:(id)set contentDestination:(id)destination actionUUID:(id)d actionIdentifier:(id)identifier actionIndex:(unint64_t)index reference:(id)reference allowedOnceStates:(id)states error:(id *)self0
{
  setCopy = set;
  destinationCopy = destination;
  dCopy = d;
  identifierCopy = identifier;
  referenceCopy = reference;
  statesCopy = states;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__56169;
    v40 = __Block_byref_object_dispose__56170;
    v41 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__56169;
    v34 = __Block_byref_object_dispose__56170;
    v35 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __151__WFDatabaseProxy_approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates_error___block_invoke;
    v29[3] = &unk_1E837BFB8;
    v29[4] = &v30;
    v23 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v29];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __151__WFDatabaseProxy_approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates_error___block_invoke_2;
    v28[3] = &unk_1E837C120;
    v28[4] = &v36;
    v28[5] = &v30;
    [v23 approvalResultForContentAttributionSet:setCopy contentDestination:destinationCopy actionUUID:dCopy actionIdentifier:identifierCopy actionIndex:index reference:referenceCopy allowedOnceStates:statesCopy completion:v28];

    v24 = v31[5];
    if (v24)
    {
      *error = v24;
    }

    v25 = v37[5];
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v25 = [database approvalResultForContentAttributionSet:setCopy contentDestination:destinationCopy actionUUID:dCopy actionIdentifier:identifierCopy actionIndex:index reference:referenceCopy allowedOnceStates:statesCopy];
  }

  return v25;
}

void __151__WFDatabaseProxy_approvalResultForContentAttributionSet_contentDestination_actionUUID_actionIdentifier_actionIndex_reference_allowedOnceStates_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)serializedParametersForAppEntityIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__56169;
    v24 = __Block_byref_object_dispose__56170;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__56169;
    v18 = __Block_byref_object_dispose__56170;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__WFDatabaseProxy_serializedParametersForAppEntityIdentifier_error___block_invoke;
    v13[3] = &unk_1E837BFB8;
    v13[4] = &v20;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __68__WFDatabaseProxy_serializedParametersForAppEntityIdentifier_error___block_invoke_2;
    v12[3] = &unk_1E837C0F8;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 serializedParametersForAppEntityIdentifier:identifierCopy completion:v12];

    if (error)
    {
      *error = v21[5];
    }

    v9 = v15[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v9 = [database serializedParametersForIdentifier:identifierCopy error:error];
  }

  return v9;
}

void __68__WFDatabaseProxy_serializedParametersForAppEntityIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)setOutcome:(int64_t)outcome forRunEvent:(id)event
{
  eventCopy = event;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
  }

  else
  {
    [(WFDatabaseProxy *)self database];
  }
  v8 = ;
  [v8 setOutcome:outcome forRunEvent:eventCopy];
}

- (id)logRunOfWorkflow:(id)workflow withSource:(id)source triggerID:(id)d
{
  workflowCopy = workflow;
  sourceCopy = source;
  dCopy = d;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__56169;
    v21 = __Block_byref_object_dispose__56170;
    v22 = 0;
    v12 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __57__WFDatabaseProxy_logRunOfWorkflow_withSource_triggerID___block_invoke_2;
    v16[3] = &unk_1E837C0D0;
    v16[4] = &v17;
    [v12 logRunOfWorkflow:workflowCopy withSource:sourceCopy triggerID:dCopy completion:v16];

    v13 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v13 = [database logRunOfWorkflow:workflowCopy withSource:sourceCopy triggerID:dCopy];
  }

  return v13;
}

- (void)storeQuarantineHashForWorkflowWithReference:(id)reference quarantineHash:(id)hash
{
  referenceCopy = reference;
  hashCopy = hash;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
    [v8 storeQuarantineHashForWorkflowWithReference:referenceCopy quarantineHash:hashCopy];
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v10 = objc_opt_new();
    v8 = [database recordWithDescriptor:referenceCopy properties:v10 error:0];

    if (v8)
    {
      [v8 setRemoteQuarantineHash:hashCopy];
      database2 = [(WFDatabaseProxy *)self database];
      [database2 saveRecord:v8 withDescriptor:referenceCopy error:0];
    }
  }
}

- (void)quarantineWorkflowWithReference:(id)reference
{
  referenceCopy = reference;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v5 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
    [v5 quarantineWorkflowWithReference:referenceCopy];
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v7 = objc_opt_new();
    v5 = [database recordWithDescriptor:referenceCopy properties:v7 error:0];

    if (v5)
    {
      [v5 setRemoteQuarantineStatus:1];
      database2 = [(WFDatabaseProxy *)self database];
      [database2 saveRecord:v5 withDescriptor:referenceCopy error:0];
    }
  }
}

- (void)updateAppDescriptor:(id)descriptor atKey:(id)key actionUUID:(id)d actionIndex:(id)index actionIdentifier:(id)identifier workflowID:(id)iD error:(id *)error
{
  descriptorCopy = descriptor;
  keyCopy = key;
  dCopy = d;
  indexCopy = index;
  identifierCopy = identifier;
  iDCopy = iD;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3032000000;
    v25[3] = __Block_byref_object_copy__56169;
    v25[4] = __Block_byref_object_dispose__56170;
    v26 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __102__WFDatabaseProxy_updateAppDescriptor_atKey_actionUUID_actionIndex_actionIdentifier_workflowID_error___block_invoke;
    v24[3] = &unk_1E837BFB8;
    v24[4] = v25;
    v22 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v24];
    [v22 updateAppDescriptor:descriptorCopy atKey:keyCopy actionUUID:dCopy actionIndex:indexCopy actionIdentifier:identifierCopy workflowID:iDCopy];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    [database updateAppDescriptor:descriptorCopy atKey:keyCopy actionUUID:dCopy actionIndex:indexCopy actionIdentifier:identifierCopy workflowID:iDCopy];
  }
}

void __64__WFDatabaseProxy_setTrustedToRunScripts_forReference_onDomain___block_invoke_2()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[WFDatabaseProxy setTrustedToRunScripts:forReference:onDomain:]_block_invoke_2";
    _os_log_impl(&dword_1CA256000, v0, OS_LOG_TYPE_ERROR, "%s Cannot set trust value for workflow reference due to insufficient database access", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (BOOL)isReference:(id)reference allowedToRunOnDomain:(id)domain
{
  referenceCopy = reference;
  domainCopy = domain;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__56169;
    v18 = __Block_byref_object_dispose__56170;
    v19 = 0;
    v9 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__WFDatabaseProxy_isReference_allowedToRunOnDomain___block_invoke_2;
    v13[3] = &unk_1E837C0A8;
    v13[4] = &v14;
    [v9 getIsReference:referenceCopy allowedToRunOnDomain:domainCopy completion:v13];

    bOOLValue = [v15[5] BOOLValue];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    bOOLValue = [database isReference:referenceCopy allowedToRunOnDomain:domainCopy];
  }

  return bOOLValue;
}

- (id)createWorkflowWithWorkflowRecord:(id)record nameCollisionBehavior:(unint64_t)behavior error:(id *)error
{
  recordCopy = record;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__56169;
    v32 = __Block_byref_object_dispose__56170;
    v33 = 0;
    fileRepresentation = [recordCopy fileRepresentation];
    v11 = v29;
    obj = v29[5];
    v12 = [fileRepresentation fileDataWithError:&obj];
    objc_storeStrong(v11 + 5, obj);

    if (v12)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3032000000;
      v24 = __Block_byref_object_copy__56169;
      v25 = __Block_byref_object_dispose__56170;
      v26 = 0;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __80__WFDatabaseProxy_createWorkflowWithWorkflowRecord_nameCollisionBehavior_error___block_invoke;
      v20[3] = &unk_1E837BFB8;
      v20[4] = &v28;
      v13 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v20];
      name = [recordCopy name];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __80__WFDatabaseProxy_createWorkflowWithWorkflowRecord_nameCollisionBehavior_error___block_invoke_2;
      v19[3] = &unk_1E837C080;
      v19[4] = &v21;
      v19[5] = &v28;
      [v13 createWorkflowWithWorkflowData:v12 name:name nameCollisionBehavior:behavior completion:v19];

      if (error)
      {
        *error = v29[5];
      }

      v15 = v22[5];
      _Block_object_dispose(&v21, 8);
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v16 = [[WFWorkflowCreationOptions alloc] initWithRecord:recordCopy];
    database = [(WFDatabaseProxy *)self database];
    v15 = [database createWorkflowWithOptions:v16 nameCollisionBehavior:behavior error:error];
  }

  return v15;
}

void __80__WFDatabaseProxy_createWorkflowWithWorkflowRecord_nameCollisionBehavior_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)configuredTriggerForTriggerID:(id)d error:(id *)error
{
  dCopy = d;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__56169;
    v24 = __Block_byref_object_dispose__56170;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__56169;
    v18 = __Block_byref_object_dispose__56170;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__WFDatabaseProxy_configuredTriggerForTriggerID_error___block_invoke;
    v13[3] = &unk_1E837BFB8;
    v13[4] = &v14;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__WFDatabaseProxy_configuredTriggerForTriggerID_error___block_invoke_2;
    v12[3] = &unk_1E837C058;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 getConfiguredTriggerForTriggerID:dCopy completion:v12];

    if (error)
    {
      *error = v15[5];
    }

    v9 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v9 = [database configuredTriggerForTriggerID:dCopy];
  }

  return v9;
}

void __55__WFDatabaseProxy_configuredTriggerForTriggerID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)configuredTriggersForWorkflowID:(id)d error:(id *)error
{
  dCopy = d;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__56169;
    v25 = __Block_byref_object_dispose__56170;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__56169;
    v19 = __Block_byref_object_dispose__56170;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__WFDatabaseProxy_configuredTriggersForWorkflowID_error___block_invoke;
    v14[3] = &unk_1E837BFB8;
    v14[4] = &v15;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __57__WFDatabaseProxy_configuredTriggersForWorkflowID_error___block_invoke_2;
    v13[3] = &unk_1E837C008;
    v13[4] = &v21;
    v13[5] = &v15;
    [v8 getConfiguredTriggersForWorkflowID:dCopy completion:v13];

    if (error)
    {
      *error = v16[5];
    }

    descriptors = v22[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v11 = [database configuredTriggersForWorkflowID:dCopy];
    descriptors = [v11 descriptors];
  }

  return descriptors;
}

void __57__WFDatabaseProxy_configuredTriggersForWorkflowID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)folderForWorkflowReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__56169;
    v24 = __Block_byref_object_dispose__56170;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__56169;
    v18 = __Block_byref_object_dispose__56170;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __52__WFDatabaseProxy_folderForWorkflowReference_error___block_invoke;
    v13[3] = &unk_1E837BFB8;
    v13[4] = &v14;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__WFDatabaseProxy_folderForWorkflowReference_error___block_invoke_2;
    v12[3] = &unk_1E837C030;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 getFolderForWorkflowReference:referenceCopy completion:v12];

    if (error)
    {
      *error = v15[5];
    }

    v9 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v9 = [database folderForWorkflowReference:referenceCopy];
  }

  return v9;
}

void __52__WFDatabaseProxy_folderForWorkflowReference_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)collectionWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__56169;
    v24 = __Block_byref_object_dispose__56170;
    v25 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__56169;
    v18 = __Block_byref_object_dispose__56170;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__WFDatabaseProxy_collectionWithIdentifier_error___block_invoke;
    v13[3] = &unk_1E837BFB8;
    v13[4] = &v14;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__WFDatabaseProxy_collectionWithIdentifier_error___block_invoke_2;
    v12[3] = &unk_1E837C030;
    v12[4] = &v20;
    v12[5] = &v14;
    [v8 getCollectionWithIdentifier:identifierCopy completion:v12];

    if (error)
    {
      *error = v15[5];
    }

    v9 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v9 = [database collectionWithIdentifier:identifierCopy];
  }

  return v9;
}

void __50__WFDatabaseProxy_collectionWithIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)sortedVisibleFoldersWithError:(id *)error
{
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__56169;
    v23 = __Block_byref_object_dispose__56170;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__56169;
    v17 = __Block_byref_object_dispose__56170;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__WFDatabaseProxy_sortedVisibleFoldersWithError___block_invoke;
    v12[3] = &unk_1E837BFB8;
    v12[4] = &v13;
    v6 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__WFDatabaseProxy_sortedVisibleFoldersWithError___block_invoke_2;
    v11[3] = &unk_1E837C008;
    v11[4] = &v19;
    v11[5] = &v13;
    [v6 getSortedVisibleFoldersWithCompletion:v11];

    if (error)
    {
      *error = v14[5];
    }

    descriptors = v20[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    sortedVisibleFolders = [database sortedVisibleFolders];

    if (error)
    {
      *error = [sortedVisibleFolders fetchError];
    }

    descriptors = [sortedVisibleFolders descriptors];
  }

  return descriptors;
}

void __49__WFDatabaseProxy_sortedVisibleFoldersWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)sortedWorkflowsWithQuery:(id)query error:(id *)error
{
  queryCopy = query;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__56169;
    v25 = __Block_byref_object_dispose__56170;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__56169;
    v19 = __Block_byref_object_dispose__56170;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__WFDatabaseProxy_sortedWorkflowsWithQuery_error___block_invoke;
    v14[3] = &unk_1E837BFB8;
    v14[4] = &v15;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __50__WFDatabaseProxy_sortedWorkflowsWithQuery_error___block_invoke_2;
    v13[3] = &unk_1E837C008;
    v13[4] = &v21;
    v13[5] = &v15;
    [v8 getSortedWorkflowsWithQuery:queryCopy completion:v13];

    if (error)
    {
      *error = v16[5];
    }

    descriptors = v22[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v11 = [database sortedWorkflowsWithQuery:queryCopy];

    if (error)
    {
      *error = [v11 fetchError];
    }

    descriptors = [v11 descriptors];
  }

  return descriptors;
}

void __50__WFDatabaseProxy_sortedWorkflowsWithQuery_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)sortedVisibleWorkflowsInCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__56169;
    v25 = __Block_byref_object_dispose__56170;
    v26 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__56169;
    v19 = __Block_byref_object_dispose__56170;
    v20 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__WFDatabaseProxy_sortedVisibleWorkflowsInCollection_error___block_invoke;
    v14[3] = &unk_1E837BFB8;
    v14[4] = &v15;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__WFDatabaseProxy_sortedVisibleWorkflowsInCollection_error___block_invoke_2;
    v13[3] = &unk_1E837C008;
    v13[4] = &v21;
    v13[5] = &v15;
    [v8 getSortedVisibleWorkflowsInCollection:collectionCopy completion:v13];

    if (error)
    {
      *error = v16[5];
    }

    descriptors = v22[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v11 = [database sortedVisibleWorkflowsInCollection:collectionCopy];

    if (error)
    {
      *error = [v11 fetchError];
    }

    descriptors = [v11 descriptors];
  }

  return descriptors;
}

void __60__WFDatabaseProxy_sortedVisibleWorkflowsInCollection_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)sortedVisibleWorkflowsByNameWithError:(id *)error
{
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__56169;
    v23 = __Block_byref_object_dispose__56170;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__56169;
    v17 = __Block_byref_object_dispose__56170;
    v18 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__WFDatabaseProxy_sortedVisibleWorkflowsByNameWithError___block_invoke;
    v12[3] = &unk_1E837BFB8;
    v12[4] = &v13;
    v6 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__WFDatabaseProxy_sortedVisibleWorkflowsByNameWithError___block_invoke_2;
    v11[3] = &unk_1E837C008;
    v11[4] = &v19;
    v11[5] = &v13;
    [v6 getSortedVisibleWorkflowsByNameWithCompletion:v11];

    if (error)
    {
      *error = v14[5];
    }

    descriptors = v20[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    sortedVisibleWorkflowsByName = [database sortedVisibleWorkflowsByName];

    if (error)
    {
      *error = [sortedVisibleWorkflowsByName fetchError];
    }

    descriptors = [sortedVisibleWorkflowsByName descriptors];
  }

  return descriptors;
}

void __57__WFDatabaseProxy_sortedVisibleWorkflowsByNameWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)workflowRecordForDescriptor:(id)descriptor error:(id *)error
{
  descriptorCopy = descriptor;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__56169;
    v27 = __Block_byref_object_dispose__56170;
    v28 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__56169;
    v21 = __Block_byref_object_dispose__56170;
    v22 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __53__WFDatabaseProxy_workflowRecordForDescriptor_error___block_invoke;
    v16[3] = &unk_1E837BFB8;
    v16[4] = &v17;
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:v16];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53__WFDatabaseProxy_workflowRecordForDescriptor_error___block_invoke_2;
    v12[3] = &unk_1E837BFE0;
    v13 = descriptorCopy;
    v14 = &v23;
    v15 = &v17;
    [v8 getWorkflowRecordDataForDescriptor:v13 completion:v12];

    if (error)
    {
      *error = v18[5];
    }

    v9 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v9 = [database recordWithDescriptor:descriptorCopy error:error];
  }

  return v9;
}

void __53__WFDatabaseProxy_workflowRecordForDescriptor_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [WFWorkflowFile alloc];
    v8 = [*(a1 + 32) name];
    v23 = 0;
    v9 = [(WFWorkflowFile *)v7 initWithFileData:v5 name:v8 error:&v23];
    v10 = v23;

    if (v9)
    {
      v22 = v10;
      v11 = [(WFWorkflowFile *)v9 recordRepresentationWithError:&v22];
      v12 = v22;

      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v11;

      v10 = v12;
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(*(*(a1 + 40) + 8) + 40) setHiddenFromLibraryAndSync:{objc_msgSend(v15, "hiddenFromLibraryAndSync")}];
        v16 = [v15 actionsDescription];
        [*(*(*(a1 + 40) + 8) + 40) setActionsDescription:v16];

        v17 = [v15 subtitle];
        [*(*(*(a1 + 40) + 8) + 40) setWorkflowSubtitle:v17];

        v18 = [v15 associatedAppBundleIdentifier];
        [*(*(*(a1 + 40) + 8) + 40) setAssociatedAppBundleIdentifier:v18];
      }

      else
      {
        v18 = v15;
        v15 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v10;
    v21 = v10;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }
}

- (id)uniqueVisibleReferenceForWorkflowName:(id)name
{
  nameCopy = name;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__56169;
    v15 = __Block_byref_object_dispose__56170;
    v16 = 0;
    v6 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__WFDatabaseProxy_uniqueVisibleReferenceForWorkflowName___block_invoke_2;
    v10[3] = &unk_1E837BF90;
    v10[4] = &v11;
    [v6 getUniqueVisibleReferenceForWorkflowName:nameCopy completion:v10];

    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v7 = [database uniqueVisibleReferenceForWorkflowName:nameCopy];
  }

  return v7;
}

- (id)referenceForWorkflowID:(id)d
{
  dCopy = d;
  databaseProxyHostConnection = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (databaseProxyHostConnection)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__56169;
    v15 = __Block_byref_object_dispose__56170;
    v16 = 0;
    v6 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__WFDatabaseProxy_referenceForWorkflowID___block_invoke_2;
    v10[3] = &unk_1E837BF90;
    v10[4] = &v11;
    [v6 getReferenceForWorkflowID:dCopy completion:v10];

    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    database = [(WFDatabaseProxy *)self database];
    v7 = [database referenceForWorkflowID:dCopy];
  }

  return v7;
}

- (id)databaseProxyHostConnection
{
  database = [(WFDatabaseProxy *)self database];

  if (database)
  {
    v4 = 0;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = self->_lock_databaseProxyHostConnection;
    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x1E696B0B8]);
      v4 = [v5 initWithMachServiceName:*MEMORY[0x1E69E0FD0] options:0];
      v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4B25000];
      WFDatabaseProxyConfigureXPCInterface(v6);
      [(NSXPCConnection *)v4 setRemoteObjectInterface:v6];
      [(NSXPCConnection *)v4 resume];
      objc_storeStrong(&self->_lock_databaseProxyHostConnection, v4);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  return v4;
}

@end
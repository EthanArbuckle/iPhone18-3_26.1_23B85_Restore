@interface WFDatabaseProxy
+ (WFDatabaseProxy)defaultDatabase;
- (BOOL)isReference:(id)a3 allowedToRunOnDomain:(id)a4;
- (BOOL)saveSmartPromptStateData:(id)a3 actionUUID:(id)a4 reference:(id)a5 error:(id *)a6;
- (WFDatabaseProxy)init;
- (id)approvalResultForContentAttributionSet:(id)a3 contentDestination:(id)a4 actionUUID:(id)a5 actionIdentifier:(id)a6 actionIndex:(unint64_t)a7 reference:(id)a8 allowedOnceStates:(id)a9 error:(id *)a10;
- (id)collectionWithIdentifier:(id)a3 error:(id *)a4;
- (id)configuredTriggerForTriggerID:(id)a3 error:(id *)a4;
- (id)configuredTriggersForWorkflowID:(id)a3 error:(id *)a4;
- (id)createWorkflowWithWorkflowRecord:(id)a3 nameCollisionBehavior:(unint64_t)a4 error:(id *)a5;
- (id)currentDeletionAuthorizationStatusWithContentItemClassName:(id)a3 actionUUID:(id)a4 actionIdentifier:(id)a5 actionIndex:(unint64_t)a6 count:(unint64_t)a7 reference:(id)a8 error:(id *)a9;
- (id)databaseProxyHostConnection;
- (id)folderForWorkflowReference:(id)a3 error:(id *)a4;
- (id)hostProxyWithErrorHandler:(id)a1;
- (id)logRunOfWorkflow:(id)a3 withSource:(id)a4 triggerID:(id)a5;
- (id)referenceForWorkflowID:(id)a3;
- (id)serializedParametersForAppEntityIdentifier:(id)a3 error:(id *)a4;
- (id)sortedVisibleFoldersWithError:(id *)a3;
- (id)sortedVisibleWorkflowsByNameWithError:(id *)a3;
- (id)sortedVisibleWorkflowsInCollection:(id)a3 error:(id *)a4;
- (id)sortedWorkflowsWithQuery:(id)a3 error:(id *)a4;
- (id)uniqueVisibleReferenceForWorkflowName:(id)a3;
- (id)workflowRecordForDescriptor:(id)a3 error:(id *)a4;
- (void)quarantineWorkflowWithReference:(id)a3;
- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)a3 error:(id *)a4;
- (void)setOutcome:(int64_t)a3 forRunEvent:(id)a4;
- (void)storeQuarantineHashForWorkflowWithReference:(id)a3 quarantineHash:(id)a4;
- (void)updateAppDescriptor:(id)a3 atKey:(id)a4 actionUUID:(id)a5 actionIndex:(id)a6 actionIdentifier:(id)a7 workflowID:(id)a8 error:(id *)a9;
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

- (void)saveOutputActionSmartPromtDataForWorkflowReference:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    [v8 saveOutputActionSmartPromtDataForWorkflowReference:v6 completion:v11];

    v9 = v14[5];
    if (v9)
    {
      *a4 = v9;
    }

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    [v10 saveOutputActionSmartPromtDataForWorkflowReference:v6 error:a4];
  }
}

- (id)hostProxyWithErrorHandler:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v4 = [v2 databaseProxyHostConnection];
    v2 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v3];
  }

  return v2;
}

- (BOOL)saveSmartPromptStateData:(id)a3 actionUUID:(id)a4 reference:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v13)
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
    [v14 saveSmartPromptStateData:v10 actionUUID:v11 reference:v12 completion:v19];

    v15 = v22[5];
    if (v15)
    {
      *a6 = v15;
    }

    v16 = *(v28 + 24);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v17 = [(WFDatabaseProxy *)self database];
    v16 = [v17 saveSmartPromptStateData:v10 actionUUID:v11 reference:v12 error:a6];
  }

  return v16 & 1;
}

- (id)currentDeletionAuthorizationStatusWithContentItemClassName:(id)a3 actionUUID:(id)a4 actionIdentifier:(id)a5 actionIndex:(unint64_t)a6 count:(unint64_t)a7 reference:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v19)
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
    [v20 currentDeletionAuthorizationStatusWithContentItemClassName:v15 actionUUID:v16 actionIdentifier:v17 actionIndex:a6 count:a7 reference:v18 completion:v25];

    v21 = v28[5];
    if (v21)
    {
      *a9 = v21;
    }

    v22 = v34[5];
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
  }

  else
  {
    v23 = [(WFDatabaseProxy *)self database];
    v22 = [v23 currentDeletionAuthorizationStatusWithContentItemClassName:v15 actionUUID:v16 actionIdentifier:v17 actionIndex:a6 count:a7 reference:v18];
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

- (id)approvalResultForContentAttributionSet:(id)a3 contentDestination:(id)a4 actionUUID:(id)a5 actionIdentifier:(id)a6 actionIndex:(unint64_t)a7 reference:(id)a8 allowedOnceStates:(id)a9 error:(id *)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v22)
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
    [v23 approvalResultForContentAttributionSet:v16 contentDestination:v17 actionUUID:v18 actionIdentifier:v19 actionIndex:a7 reference:v20 allowedOnceStates:v21 completion:v28];

    v24 = v31[5];
    if (v24)
    {
      *a10 = v24;
    }

    v25 = v37[5];
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v26 = [(WFDatabaseProxy *)self database];
    v25 = [v26 approvalResultForContentAttributionSet:v16 contentDestination:v17 actionUUID:v18 actionIdentifier:v19 actionIndex:a7 reference:v20 allowedOnceStates:v21];
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

- (id)serializedParametersForAppEntityIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    [v8 serializedParametersForAppEntityIdentifier:v6 completion:v12];

    if (a4)
    {
      *a4 = v21[5];
    }

    v9 = v15[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    v9 = [v10 serializedParametersForIdentifier:v6 error:a4];
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

- (void)setOutcome:(int64_t)a3 forRunEvent:(id)a4
{
  v6 = a4;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
  {
    [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
  }

  else
  {
    [(WFDatabaseProxy *)self database];
  }
  v8 = ;
  [v8 setOutcome:a3 forRunEvent:v6];
}

- (id)logRunOfWorkflow:(id)a3 withSource:(id)a4 triggerID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v11)
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
    [v12 logRunOfWorkflow:v8 withSource:v9 triggerID:v10 completion:v16];

    v13 = v18[5];
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v14 = [(WFDatabaseProxy *)self database];
    v13 = [v14 logRunOfWorkflow:v8 withSource:v9 triggerID:v10];
  }

  return v13;
}

- (void)storeQuarantineHashForWorkflowWithReference:(id)a3 quarantineHash:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
  {
    v8 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
    [v8 storeQuarantineHashForWorkflowWithReference:v12 quarantineHash:v6];
  }

  else
  {
    v9 = [(WFDatabaseProxy *)self database];
    v10 = objc_opt_new();
    v8 = [v9 recordWithDescriptor:v12 properties:v10 error:0];

    if (v8)
    {
      [v8 setRemoteQuarantineHash:v6];
      v11 = [(WFDatabaseProxy *)self database];
      [v11 saveRecord:v8 withDescriptor:v12 error:0];
    }
  }
}

- (void)quarantineWorkflowWithReference:(id)a3
{
  v9 = a3;
  v4 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v4)
  {
    v5 = [(WFDatabaseProxy *)self hostProxyWithErrorHandler:?];
    [v5 quarantineWorkflowWithReference:v9];
  }

  else
  {
    v6 = [(WFDatabaseProxy *)self database];
    v7 = objc_opt_new();
    v5 = [v6 recordWithDescriptor:v9 properties:v7 error:0];

    if (v5)
    {
      [v5 setRemoteQuarantineStatus:1];
      v8 = [(WFDatabaseProxy *)self database];
      [v8 saveRecord:v5 withDescriptor:v9 error:0];
    }
  }
}

- (void)updateAppDescriptor:(id)a3 atKey:(id)a4 actionUUID:(id)a5 actionIndex:(id)a6 actionIdentifier:(id)a7 workflowID:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v21)
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
    [v22 updateAppDescriptor:v15 atKey:v16 actionUUID:v17 actionIndex:v18 actionIdentifier:v19 workflowID:v20];

    _Block_object_dispose(v25, 8);
  }

  else
  {
    v23 = [(WFDatabaseProxy *)self database];
    [v23 updateAppDescriptor:v15 atKey:v16 actionUUID:v17 actionIndex:v18 actionIdentifier:v19 workflowID:v20];
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

- (BOOL)isReference:(id)a3 allowedToRunOnDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v8)
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
    [v9 getIsReference:v6 allowedToRunOnDomain:v7 completion:v13];

    v10 = [v15[5] BOOLValue];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v11 = [(WFDatabaseProxy *)self database];
    v10 = [v11 isReference:v6 allowedToRunOnDomain:v7];
  }

  return v10;
}

- (id)createWorkflowWithWorkflowRecord:(id)a3 nameCollisionBehavior:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v9)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__56169;
    v32 = __Block_byref_object_dispose__56170;
    v33 = 0;
    v10 = [v8 fileRepresentation];
    v11 = v29;
    obj = v29[5];
    v12 = [v10 fileDataWithError:&obj];
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
      v14 = [v8 name];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __80__WFDatabaseProxy_createWorkflowWithWorkflowRecord_nameCollisionBehavior_error___block_invoke_2;
      v19[3] = &unk_1E837C080;
      v19[4] = &v21;
      v19[5] = &v28;
      [v13 createWorkflowWithWorkflowData:v12 name:v14 nameCollisionBehavior:a4 completion:v19];

      if (a5)
      {
        *a5 = v29[5];
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
    v16 = [[WFWorkflowCreationOptions alloc] initWithRecord:v8];
    v17 = [(WFDatabaseProxy *)self database];
    v15 = [v17 createWorkflowWithOptions:v16 nameCollisionBehavior:a4 error:a5];
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

- (id)configuredTriggerForTriggerID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    [v8 getConfiguredTriggerForTriggerID:v6 completion:v12];

    if (a4)
    {
      *a4 = v15[5];
    }

    v9 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    v9 = [v10 configuredTriggerForTriggerID:v6];
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

- (id)configuredTriggersForWorkflowID:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    [v8 getConfiguredTriggersForWorkflowID:v6 completion:v13];

    if (a4)
    {
      *a4 = v16[5];
    }

    v9 = v22[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    v11 = [v10 configuredTriggersForWorkflowID:v6];
    v9 = [v11 descriptors];
  }

  return v9;
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

- (id)folderForWorkflowReference:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    [v8 getFolderForWorkflowReference:v6 completion:v12];

    if (a4)
    {
      *a4 = v15[5];
    }

    v9 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    v9 = [v10 folderForWorkflowReference:v6];
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

- (id)collectionWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    [v8 getCollectionWithIdentifier:v6 completion:v12];

    if (a4)
    {
      *a4 = v15[5];
    }

    v9 = v21[5];
    _Block_object_dispose(&v14, 8);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    v9 = [v10 collectionWithIdentifier:v6];
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

- (id)sortedVisibleFoldersWithError:(id *)a3
{
  v5 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v5)
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

    if (a3)
    {
      *a3 = v14[5];
    }

    v7 = v20[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v8 = [(WFDatabaseProxy *)self database];
    v9 = [v8 sortedVisibleFolders];

    if (a3)
    {
      *a3 = [v9 fetchError];
    }

    v7 = [v9 descriptors];
  }

  return v7;
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

- (id)sortedWorkflowsWithQuery:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    [v8 getSortedWorkflowsWithQuery:v6 completion:v13];

    if (a4)
    {
      *a4 = v16[5];
    }

    v9 = v22[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    v11 = [v10 sortedWorkflowsWithQuery:v6];

    if (a4)
    {
      *a4 = [v11 fetchError];
    }

    v9 = [v11 descriptors];
  }

  return v9;
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

- (id)sortedVisibleWorkflowsInCollection:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    [v8 getSortedVisibleWorkflowsInCollection:v6 completion:v13];

    if (a4)
    {
      *a4 = v16[5];
    }

    v9 = v22[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    v11 = [v10 sortedVisibleWorkflowsInCollection:v6];

    if (a4)
    {
      *a4 = [v11 fetchError];
    }

    v9 = [v11 descriptors];
  }

  return v9;
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

- (id)sortedVisibleWorkflowsByNameWithError:(id *)a3
{
  v5 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v5)
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

    if (a3)
    {
      *a3 = v14[5];
    }

    v7 = v20[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v8 = [(WFDatabaseProxy *)self database];
    v9 = [v8 sortedVisibleWorkflowsByName];

    if (a3)
    {
      *a3 = [v9 fetchError];
    }

    v7 = [v9 descriptors];
  }

  return v7;
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

- (id)workflowRecordForDescriptor:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v7)
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
    v13 = v6;
    v14 = &v23;
    v15 = &v17;
    [v8 getWorkflowRecordDataForDescriptor:v13 completion:v12];

    if (a4)
    {
      *a4 = v18[5];
    }

    v9 = v24[5];

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v10 = [(WFDatabaseProxy *)self database];
    v9 = [v10 recordWithDescriptor:v6 error:a4];
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

- (id)uniqueVisibleReferenceForWorkflowName:(id)a3
{
  v4 = a3;
  v5 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v5)
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
    [v6 getUniqueVisibleReferenceForWorkflowName:v4 completion:v10];

    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = [(WFDatabaseProxy *)self database];
    v7 = [v8 uniqueVisibleReferenceForWorkflowName:v4];
  }

  return v7;
}

- (id)referenceForWorkflowID:(id)a3
{
  v4 = a3;
  v5 = [(WFDatabaseProxy *)self databaseProxyHostConnection];

  if (v5)
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
    [v6 getReferenceForWorkflowID:v4 completion:v10];

    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = [(WFDatabaseProxy *)self database];
    v7 = [v8 referenceForWorkflowID:v4];
  }

  return v7;
}

- (id)databaseProxyHostConnection
{
  v3 = [(WFDatabaseProxy *)self database];

  if (v3)
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
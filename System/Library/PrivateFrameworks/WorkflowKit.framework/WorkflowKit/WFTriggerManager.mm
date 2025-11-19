@interface WFTriggerManager
- (NSXPCConnection)connection;
- (WFTriggerManager)initWithDatabase:(id)a3;
- (id)allConfiguredTriggers;
- (id)configuredTriggerWithID:(id)a3;
- (void)associateWorkflowToTriggerID:(id)a3 deletingExistingReference:(BOOL)a4 notifyDaemon:(BOOL)a5 workflowReference:(id)a6 completion:(id)a7;
- (void)deleteTriggerWithIdentifier:(id)a3 notifyDaemon:(BOOL)a4 completion:(id)a5;
- (void)deleteTriggersWithIdentifiers:(id)a3 notifyDaemon:(BOOL)a4 completion:(id)a5;
- (void)disableAllTriggers;
- (void)disableTriggersWithIdentifiers:(id)a3 withReason:(id)a4;
- (void)saveNewConfiguredTrigger:(id)a3 notifyDaemon:(BOOL)a4 completion:(id)a5;
- (void)saveNewConfiguredTrigger:(id)a3 workflow:(id)a4 notifyDaemon:(BOOL)a5 completion:(id)a6;
- (void)saveNewConfiguredTrigger:(id)a3 workflowReference:(id)a4 notifyDaemon:(BOOL)a5 completion:(id)a6;
- (void)updateConfiguredTrigger:(id)a3 triggerID:(id)a4 notifyDaemon:(BOOL)a5 completion:(id)a6;
@end

@implementation WFTriggerManager

- (void)disableTriggersWithIdentifiers:(id)a3 withReason:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__WFTriggerManager_disableTriggersWithIdentifiers_withReason___block_invoke;
  v8[3] = &unk_1E8380168;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [a3 enumerateObjectsUsingBlock:v8];
}

void __62__WFTriggerManager_disableTriggersWithIdentifiers_withReason___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 database];
  v6 = [v5 configuredTriggerForTriggerID:v4];

  v7 = [*(a1 + 32) database];
  v16 = 0;
  v8 = [v7 recordWithDescriptor:v6 error:&v16];
  v9 = v16;

  if (!v8)
  {
    v13 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[WFTriggerManager disableTriggersWithIdentifiers:withReason:]_block_invoke";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Could not disable trigger due to no existing record error: %@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  if (*(a1 + 40))
  {
    [v8 setDisablementReason:?];
  }

  [v8 setEnabled:0];
  v10 = [*(a1 + 32) database];
  v15 = v9;
  v11 = [v10 saveRecord:v8 withDescriptor:v6 error:&v15];
  v12 = v15;

  if ((v11 & 1) == 0)
  {
    v13 = getWFTriggerNotificationsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[WFTriggerManager disableTriggersWithIdentifiers:withReason:]_block_invoke";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Could not disable trigger due to error: %@", buf, 0x16u);
    }

    v9 = v12;
LABEL_10:

    v12 = v9;
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)disableAllTriggers
{
  v3 = [(WFTriggerManager *)self allConfiguredTriggers];
  v4 = [v3 if_compactMap:&__block_literal_global_283_41488];

  [(WFTriggerManager *)self disableTriggersWithIdentifiers:v4];
}

id __38__WFTriggerManager_disableAllTriggers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)configuredTriggerWithID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];
  }

  v6 = [(WFTriggerManager *)self database];
  v7 = [v6 configuredTriggerForTriggerID:v5];

  return v7;
}

- (id)allConfiguredTriggers
{
  v2 = [(WFTriggerManager *)self database];
  v3 = [v2 allConfiguredTriggers];

  v4 = [v3 descriptors];

  return v4;
}

- (void)deleteTriggersWithIdentifiers:(id)a3 notifyDaemon:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"triggerIDs"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__41507;
  v29 = __Block_byref_object_dispose__41508;
  v30 = 0;
  v13 = [(WFTriggerManager *)self database];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__WFTriggerManager_deleteTriggersWithIdentifiers_notifyDaemon_completion___block_invoke;
  v20[3] = &unk_1E8379B98;
  v14 = v9;
  v21 = v14;
  v22 = self;
  v15 = v12;
  v23 = v15;
  v24 = &v25;
  v16 = (v26 + 5);
  obj = v26[5];
  [v13 performTransactionWithReason:@"delete triggers" block:v20 error:&obj];
  objc_storeStrong(v16, obj);

  if (v26[5])
  {
    v11[2](v11, 0);
  }

  else
  {
    if (v6)
    {
      [v15 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_277_41510];
    }

    (v11[2])(v11, 1, 0);
  }

  _Block_object_dispose(&v25, 8);
}

void __74__WFTriggerManager_deleteTriggersWithIdentifiers_notifyDaemon_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v25;
    *&v3 = 136315650;
    v21 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * i);
        v8 = [*(a1 + 40) database];
        v9 = [v8 configuredTriggerForTriggerID:v7];

        v10 = [v9 trigger];
        v11 = [objc_opt_class() triggerBacking];

        if (v9)
        {
          v12 = [*(a1 + 40) database];
          v23 = 0;
          v13 = [v12 deleteReference:v9 error:&v23];
          v14 = v23;

          if (v13)
          {
            v15 = *(a1 + 48);
            v16 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
            [v15 setValue:v16 forKey:v7];
          }

          else
          {
            v17 = getWFTriggersLogObject();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v29 = "[WFTriggerManager deleteTriggersWithIdentifiers:notifyDaemon:completion:]_block_invoke";
              v30 = 2112;
              v31 = v7;
              v32 = 2114;
              v33 = v14;
              _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Failed to delete triggerID (%@) error: %{public}@", buf, 0x20u);
            }

            v18 = *(*(a1 + 56) + 8);
            v19 = *(v18 + 40);
            *(v18 + 40) = v14;
            v14 = v14;
          }
        }

        else
        {
          v14 = getWFTriggersLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v29 = "[WFTriggerManager deleteTriggersWithIdentifiers:notifyDaemon:completion:]_block_invoke";
            v30 = 2112;
            v31 = v7;
            _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s No configuredTrigger for triggerID %@", buf, 0x16u);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v4);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __74__WFTriggerManager_deleteTriggersWithIdentifiers_notifyDaemon_completion___block_invoke_274(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = MEMORY[0x1E69E0938];
  v6 = a3;
  v7 = [v5 standardClient];
  v8 = [v6 integerValue];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__WFTriggerManager_deleteTriggersWithIdentifiers_notifyDaemon_completion___block_invoke_2;
  v10[3] = &unk_1E8379BE0;
  v11 = v4;
  v9 = v4;
  [v7 unregisterTriggerWithIdentifier:v9 triggerBacking:v8 completion:v10];
}

void __74__WFTriggerManager_deleteTriggersWithIdentifiers_notifyDaemon_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[WFTriggerManager deleteTriggersWithIdentifiers:notifyDaemon:completion:]_block_invoke_2";
      v11 = 2112;
      v12 = v7;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Failed to unregister triggerID (%@) error: %{public}@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)deleteTriggerWithIdentifier:(id)a3 notifyDaemon:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v12 = [(WFTriggerManager *)self database];
  v13 = [v12 configuredTriggerForTriggerID:v9];

  if (v13)
  {
    v14 = [(WFTriggerManager *)self database];
    v24 = 0;
    v15 = [v14 deleteReference:v13 error:&v24];
    v16 = v24;

    if ((v15 & 1) == 0)
    {
      (v11)[2](v11, 0, v16);
      goto LABEL_12;
    }
  }

  else
  {
    v17 = getWFTriggersLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[WFTriggerManager deleteTriggerWithIdentifier:notifyDaemon:completion:]";
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s No configuredTrigger for triggerID %@", buf, 0x16u);
    }

    v16 = 0;
  }

  if (v6)
  {
    v18 = [v13 trigger];
    v19 = [objc_opt_class() triggerBacking];

    v20 = [MEMORY[0x1E69E0938] standardClient];
    [v20 unregisterTriggerWithIdentifier:v9 triggerBacking:v19 completion:v11];
  }

  else
  {
    v11[2](v11, 1, 0);
  }

LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)associateWorkflowToTriggerID:(id)a3 deletingExistingReference:(BOOL)a4 notifyDaemon:(BOOL)a5 workflowReference:(id)a6 completion:(id)a7
{
  v9 = a5;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  if (v13)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__41507;
  v35 = __Block_byref_object_dispose__41508;
  v36 = 0;
  v17 = [(WFTriggerManager *)self database];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __117__WFTriggerManager_associateWorkflowToTriggerID_deletingExistingReference_notifyDaemon_workflowReference_completion___block_invoke;
  v26[3] = &unk_1E8379B70;
  v26[4] = self;
  v18 = v13;
  v27 = v18;
  v29 = &v31;
  v30 = a4;
  v19 = v14;
  v28 = v19;
  v20 = (v32 + 5);
  obj = v32[5];
  [v17 performTransactionWithReason:@"associate workflow to trigger block:possibly deleting existing reference" error:{v26, &obj}];
  objc_storeStrong(v20, obj);

  if (v9)
  {
    if (_os_feature_enabled_impl())
    {
      v21 = [(WFTriggerManager *)self connection];
      v22 = [v21 remoteObjectProxy];
    }

    else
    {
      v22 = [MEMORY[0x1E69E0938] standardClient];
    }

    [v22 refreshTriggerWithIdentifier:v18 completion:v16];
  }

  else
  {
    (v16)[2](v16, v32[5] == 0, 0);
  }

  _Block_object_dispose(&v31, 8);
}

void __117__WFTriggerManager_associateWorkflowToTriggerID_deletingExistingReference_notifyDaemon_workflowReference_completion___block_invoke(uint64_t a1, id *a2)
{
  v4 = [*(a1 + 32) database];
  v15 = [v4 configuredTriggerForTriggerID:*(a1 + 40)];

  v5 = [*(a1 + 32) database];
  v6 = [v5 associateWorkflowToTrigger:v15 workflow:0 error:a2];

  if (!v6)
  {
LABEL_9:
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *a2);
    goto LABEL_10;
  }

  if (*(a1 + 64) != 1 || !v15 || ([v15 workflowID], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
LABEL_8:
    v13 = [*(a1 + 32) database];
    v14 = [v13 associateWorkflowToTrigger:v15 workflow:*(a1 + 48) error:a2];

    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v8 = [*(a1 + 32) database];
  v9 = [v15 workflowID];
  v10 = [v8 referenceForWorkflowID:v9];

  if (!v10 || ([*(a1 + 32) database], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "deleteReference:error:", v10, a2), v11, (v12 & 1) != 0))
  {

    goto LABEL_8;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *a2);

LABEL_10:
}

- (void)updateConfiguredTrigger:(id)a3 triggerID:(id)a4 notifyDaemon:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_21:
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"newRecord"}];

  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_22:
  v32 = [MEMORY[0x1E696AAA8] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  v14 = [(WFTriggerManager *)self database];
  v15 = [v14 configuredTriggerForTriggerID:v12];

  if (v15)
  {
    v16 = [(WFTriggerManager *)self database];
    v35 = 0;
    v17 = [v16 recordWithDescriptor:v15 error:&v35];
    v18 = v35;

    if (v17)
    {
      v33 = v7;
      v19 = [v11 triggerData];
      [v17 setTriggerData:v19];

      [v17 setShouldNotify:{objc_msgSend(v11, "shouldNotify")}];
      [v17 setShouldPrompt:{objc_msgSend(v11, "shouldPrompt")}];
      [v17 setShouldRecur:{objc_msgSend(v11, "shouldRecur")}];
      [v17 setPotentialLoopDetected:{objc_msgSend(v11, "potentialLoopDetected")}];
      [v17 setEnabled:{objc_msgSend(v11, "isEnabled")}];
      v20 = [v11 disablementReason];
      [v17 setDisablementReason:v20];

      [v17 setEditableShortcut:{objc_msgSend(v11, "editableShortcut")}];
      v21 = [v11 selectedEntryMetadata];
      [v17 setSelectedEntryMetadata:v21];

      v22 = [(WFTriggerManager *)self database];
      v34 = v18;
      v23 = [v22 saveRecord:v17 withDescriptor:v15 error:&v34];
      v24 = v34;

      if (v23)
      {
        if (v33)
        {
          if (_os_feature_enabled_impl())
          {
            v25 = [(WFTriggerManager *)self connection];
            v26 = [v25 remoteObjectProxy];

            [v26 refreshTriggerWithIdentifier:v12 completion:v13];
          }

          else
          {
            v29 = [MEMORY[0x1E69E0938] standardClient];
            [v29 refreshTriggerWithIdentifier:v12 completion:v13];
          }
        }

        else
        {
          v13[2](v13, 1, 0);
        }
      }

      else
      {
        (v13)[2](v13, 0, v24);
      }

      v18 = v24;
    }

    else
    {
      (v13)[2](v13, 0, v18);
    }
  }

  else
  {
    v27 = getWFTriggersLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[WFTriggerManager updateConfiguredTrigger:triggerID:notifyDaemon:completion:]";
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_ERROR, "%s Couldn't find trigger to update for triggerID (%@)", buf, 0x16u);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFTriggerErrorDomain" code:1001 userInfo:0];
    (v13)[2](v13, 0, v18);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)saveNewConfiguredTrigger:(id)a3 workflowReference:(id)a4 notifyDaemon:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__41507;
  v39 = __Block_byref_object_dispose__41508;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__41507;
  v33 = __Block_byref_object_dispose__41508;
  v34 = 0;
  v13 = getWFTriggersLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v42 = "[WFTriggerManager saveNewConfiguredTrigger:workflowReference:notifyDaemon:completion:]";
    v43 = 2112;
    v44 = v10;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Saving new configured trigger: %@", buf, 0x16u);
  }

  v14 = [(WFTriggerManager *)self database];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __87__WFTriggerManager_saveNewConfiguredTrigger_workflowReference_notifyDaemon_completion___block_invoke;
  v24[3] = &unk_1E8379B48;
  v27 = &v29;
  v24[4] = self;
  v15 = v10;
  v25 = v15;
  v16 = v11;
  v26 = v16;
  v28 = &v35;
  v17 = v36;
  obj = v36[5];
  [v14 performTransactionWithReason:@"save trigger with workflow" block:v24 error:&obj];
  objc_storeStrong(v17 + 5, obj);

  v18 = v30[5];
  if (v18 && v7)
  {
    v19 = [MEMORY[0x1E69E0938] standardClient];
    v20 = [v30[5] identifier];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __87__WFTriggerManager_saveNewConfiguredTrigger_workflowReference_notifyDaemon_completion___block_invoke_2;
    v22[3] = &unk_1E8379AF8;
    v22[4] = &v29;
    [v19 refreshTriggerWithIdentifier:v20 completion:v22];

    v18 = v30[5];
  }

  (v12)[2](v12, v18, v36[5]);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  v21 = *MEMORY[0x1E69E9840];
}

void __87__WFTriggerManager_saveNewConfiguredTrigger_workflowReference_notifyDaemon_completion___block_invoke(uint64_t a1, void **a2)
{
  v4 = [*(a1 + 32) database];
  v5 = [v4 createTriggerWithRecord:*(a1 + 40) workflow:*(a1 + 48) error:a2];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = *a2;
    v9 = (*(*(a1 + 64) + 8) + 40);

    objc_storeStrong(v9, v8);
  }
}

void __87__WFTriggerManager_saveNewConfiguredTrigger_workflowReference_notifyDaemon_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315650;
      v10 = "[WFTriggerManager saveNewConfiguredTrigger:workflowReference:notifyDaemon:completion:]_block_invoke_2";
      v11 = 2112;
      v12 = v7;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s failed to refresh new trigger (%@): %{public}@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)saveNewConfiguredTrigger:(id)a3 workflow:(id)a4 notifyDaemon:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_12:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];

    if (v13)
    {
      goto LABEL_4;
    }

LABEL_13:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"record"}];

  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_4:
  [v12 setHiddenFromLibraryAndSync:1];
  v14 = MEMORY[0x1E696AEC0];
  v15 = [MEMORY[0x1E696AFB0] UUID];
  v16 = [v15 UUIDString];
  v17 = [v14 stringWithFormat:@"Automation %@", v16];
  [v12 setName:v17];

  v18 = [[WFWorkflowCreationOptions alloc] initWithRecord:v12];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__41507;
  v55 = __Block_byref_object_dispose__41508;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__41507;
  v49 = __Block_byref_object_dispose__41508;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__41507;
  v43 = __Block_byref_object_dispose__41508;
  v44 = 0;
  v19 = [(WFTriggerManager *)self database];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __78__WFTriggerManager_saveNewConfiguredTrigger_workflow_notifyDaemon_completion___block_invoke;
  v33[3] = &unk_1E8379B20;
  v36 = &v39;
  v33[4] = self;
  v20 = v18;
  v34 = v20;
  v37 = &v51;
  v38 = &v45;
  v21 = v11;
  v35 = v21;
  v22 = v52;
  obj = v52[5];
  [v19 performTransactionWithReason:@"save trigger with workflow" block:v33 error:&obj];
  objc_storeStrong(v22 + 5, obj);

  v23 = v46[5];
  if (v23 && v7)
  {
    if (_os_feature_enabled_impl())
    {
      v24 = [(WFTriggerManager *)self connection];
      v25 = [v24 remoteObjectProxy];

      v26 = [v46[5] identifier];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __78__WFTriggerManager_saveNewConfiguredTrigger_workflow_notifyDaemon_completion___block_invoke_2;
      v31[3] = &unk_1E8379AF8;
      v31[4] = &v45;
      [v25 refreshTriggerWithIdentifier:v26 completion:v31];
    }

    else
    {
      v25 = [MEMORY[0x1E69E0938] standardClient];
      v26 = [v46[5] identifier];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __78__WFTriggerManager_saveNewConfiguredTrigger_workflow_notifyDaemon_completion___block_invoke_258;
      v30[3] = &unk_1E8379AF8;
      v30[4] = &v45;
      [v25 refreshTriggerWithIdentifier:v26 completion:v30];
    }

    v23 = v46[5];
  }

  v13[2](v13, v23, v40[5], v52[5]);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
}

void __78__WFTriggerManager_saveNewConfiguredTrigger_workflow_notifyDaemon_completion___block_invoke(uint64_t a1, void **a2)
{
  v4 = [*(a1 + 32) database];
  v5 = [v4 createWorkflowWithOptions:*(a1 + 40) error:a2];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v8 = [*(a1 + 32) database];
    v9 = [v8 createTriggerWithRecord:*(a1 + 48) workflow:*(*(*(a1 + 56) + 8) + 40) error:a2];
    v10 = *(*(a1 + 72) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      return;
    }

    v12 = [*(a1 + 32) database];
    [v12 deleteReference:*(*(*(a1 + 56) + 8) + 40) error:0];
  }

  v13 = *a2;
  v14 = (*(*(a1 + 64) + 8) + 40);

  objc_storeStrong(v14, v13);
}

void __78__WFTriggerManager_saveNewConfiguredTrigger_workflow_notifyDaemon_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315650;
      v10 = "[WFTriggerManager saveNewConfiguredTrigger:workflow:notifyDaemon:completion:]_block_invoke_2";
      v11 = 2112;
      v12 = v7;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s failed to refresh new trigger (%@): %{public}@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __78__WFTriggerManager_saveNewConfiguredTrigger_workflow_notifyDaemon_completion___block_invoke_258(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315650;
      v10 = "[WFTriggerManager saveNewConfiguredTrigger:workflow:notifyDaemon:completion:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s failed to refresh new trigger (%@): %{public}@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)saveNewConfiguredTrigger:(id)a3 notifyDaemon:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"record"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__41507;
  v38 = __Block_byref_object_dispose__41508;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__41507;
  v32 = __Block_byref_object_dispose__41508;
  v33 = 0;
  v12 = [(WFTriggerManager *)self database];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke;
  v24[3] = &unk_1E8379AD0;
  v26 = &v28;
  v24[4] = self;
  v13 = v9;
  v25 = v13;
  v27 = &v34;
  v14 = v35;
  obj = v35[5];
  [v12 performTransactionWithReason:@"save trigger" block:v24 error:&obj];
  objc_storeStrong(v14 + 5, obj);

  v15 = v29[5];
  if (v15 && v6)
  {
    if (_os_feature_enabled_impl())
    {
      v16 = [(WFTriggerManager *)self connection];
      v17 = [v16 remoteObjectProxy];

      v18 = [v29[5] identifier];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke_2;
      v22[3] = &unk_1E8379AF8;
      v22[4] = &v28;
      [v17 refreshTriggerWithIdentifier:v18 completion:v22];
    }

    else
    {
      v17 = [MEMORY[0x1E69E0938] standardClient];
      v18 = [v29[5] identifier];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke_245;
      v21[3] = &unk_1E8379AF8;
      v21[4] = &v28;
      [v17 refreshTriggerWithIdentifier:v18 completion:v21];
    }

    v15 = v29[5];
  }

  (v11)[2](v11, v15, v35[5]);

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke(uint64_t a1, void **a2)
{
  v4 = [*(a1 + 32) database];
  v5 = [v4 createTriggerWithRecord:*(a1 + 40) error:a2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = *a2;
    v9 = (*(*(a1 + 56) + 8) + 40);

    objc_storeStrong(v9, v8);
  }
}

void __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315650;
      v10 = "[WFTriggerManager saveNewConfiguredTrigger:notifyDaemon:completion:]_block_invoke_2";
      v11 = 2112;
      v12 = v7;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s failed to refresh new trigger (%@): %{public}@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke_245(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = getWFTriggersLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 136315650;
      v10 = "[WFTriggerManager saveNewConfiguredTrigger:notifyDaemon:completion:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2114;
      v14 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s failed to refresh new trigger (%@): %{public}@", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.shortcutsautomationd.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = WFAutomationDaemonXPCInterface();
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_41563];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&__block_literal_global_230_41564];
    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return connection;
}

void __30__WFTriggerManager_connection__block_invoke_228()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = getWFTriggersLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[WFTriggerManager connection]_block_invoke";
    _os_log_impl(&dword_1CA256000, v0, OS_LOG_TYPE_ERROR, "%s Client connection invalidated to automationd", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

void __30__WFTriggerManager_connection__block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = getWFTriggersLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "[WFTriggerManager connection]_block_invoke";
    _os_log_impl(&dword_1CA256000, v0, OS_LOG_TYPE_ERROR, "%s Client connection to automationd interrupted", &v2, 0xCu);
  }

  v1 = *MEMORY[0x1E69E9840];
}

- (WFTriggerManager)initWithDatabase:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v12.receiver = self;
  v12.super_class = WFTriggerManager;
  v7 = [(WFTriggerManager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_database, a3);
    v9 = v8;
  }

  return v8;
}

@end
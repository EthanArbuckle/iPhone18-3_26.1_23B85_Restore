@interface WFTriggerManager
- (NSXPCConnection)connection;
- (WFTriggerManager)initWithDatabase:(id)database;
- (id)allConfiguredTriggers;
- (id)configuredTriggerWithID:(id)d;
- (void)associateWorkflowToTriggerID:(id)d deletingExistingReference:(BOOL)reference notifyDaemon:(BOOL)daemon workflowReference:(id)workflowReference completion:(id)completion;
- (void)deleteTriggerWithIdentifier:(id)identifier notifyDaemon:(BOOL)daemon completion:(id)completion;
- (void)deleteTriggersWithIdentifiers:(id)identifiers notifyDaemon:(BOOL)daemon completion:(id)completion;
- (void)disableAllTriggers;
- (void)disableTriggersWithIdentifiers:(id)identifiers withReason:(id)reason;
- (void)saveNewConfiguredTrigger:(id)trigger notifyDaemon:(BOOL)daemon completion:(id)completion;
- (void)saveNewConfiguredTrigger:(id)trigger workflow:(id)workflow notifyDaemon:(BOOL)daemon completion:(id)completion;
- (void)saveNewConfiguredTrigger:(id)trigger workflowReference:(id)reference notifyDaemon:(BOOL)daemon completion:(id)completion;
- (void)updateConfiguredTrigger:(id)trigger triggerID:(id)d notifyDaemon:(BOOL)daemon completion:(id)completion;
@end

@implementation WFTriggerManager

- (void)disableTriggersWithIdentifiers:(id)identifiers withReason:(id)reason
{
  reasonCopy = reason;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__WFTriggerManager_disableTriggersWithIdentifiers_withReason___block_invoke;
  v8[3] = &unk_1E8380168;
  v8[4] = self;
  v9 = reasonCopy;
  v7 = reasonCopy;
  [identifiers enumerateObjectsUsingBlock:v8];
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
  allConfiguredTriggers = [(WFTriggerManager *)self allConfiguredTriggers];
  v4 = [allConfiguredTriggers if_compactMap:&__block_literal_global_283_41488];

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

- (id)configuredTriggerWithID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:422 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];
  }

  database = [(WFTriggerManager *)self database];
  v7 = [database configuredTriggerForTriggerID:dCopy];

  return v7;
}

- (id)allConfiguredTriggers
{
  database = [(WFTriggerManager *)self database];
  allConfiguredTriggers = [database allConfiguredTriggers];

  descriptors = [allConfiguredTriggers descriptors];

  return descriptors;
}

- (void)deleteTriggersWithIdentifiers:(id)identifiers notifyDaemon:(BOOL)daemon completion:(id)completion
{
  daemonCopy = daemon;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v11 = completionCopy;
  if (identifiersCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"triggerIDs"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__41507;
  v29 = __Block_byref_object_dispose__41508;
  v30 = 0;
  database = [(WFTriggerManager *)self database];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__WFTriggerManager_deleteTriggersWithIdentifiers_notifyDaemon_completion___block_invoke;
  v20[3] = &unk_1E8379B98;
  v14 = identifiersCopy;
  v21 = v14;
  selfCopy = self;
  v15 = v12;
  v23 = v15;
  v24 = &v25;
  v16 = (v26 + 5);
  obj = v26[5];
  [database performTransactionWithReason:@"delete triggers" block:v20 error:&obj];
  objc_storeStrong(v16, obj);

  if (v26[5])
  {
    v11[2](v11, 0);
  }

  else
  {
    if (daemonCopy)
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

- (void)deleteTriggerWithIdentifier:(id)identifier notifyDaemon:(BOOL)daemon completion:(id)completion
{
  daemonCopy = daemon;
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v11 = completionCopy;
  if (identifierCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  database = [(WFTriggerManager *)self database];
  v13 = [database configuredTriggerForTriggerID:identifierCopy];

  if (v13)
  {
    database2 = [(WFTriggerManager *)self database];
    v24 = 0;
    v15 = [database2 deleteReference:v13 error:&v24];
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
      v28 = identifierCopy;
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s No configuredTrigger for triggerID %@", buf, 0x16u);
    }

    v16 = 0;
  }

  if (daemonCopy)
  {
    trigger = [v13 trigger];
    triggerBacking = [objc_opt_class() triggerBacking];

    standardClient = [MEMORY[0x1E69E0938] standardClient];
    [standardClient unregisterTriggerWithIdentifier:identifierCopy triggerBacking:triggerBacking completion:v11];
  }

  else
  {
    v11[2](v11, 1, 0);
  }

LABEL_12:

  v21 = *MEMORY[0x1E69E9840];
}

- (void)associateWorkflowToTriggerID:(id)d deletingExistingReference:(BOOL)reference notifyDaemon:(BOOL)daemon workflowReference:(id)workflowReference completion:(id)completion
{
  daemonCopy = daemon;
  dCopy = d;
  workflowReferenceCopy = workflowReference;
  completionCopy = completion;
  v16 = completionCopy;
  if (dCopy)
  {
    if (completionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:310 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__41507;
  v35 = __Block_byref_object_dispose__41508;
  v36 = 0;
  database = [(WFTriggerManager *)self database];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __117__WFTriggerManager_associateWorkflowToTriggerID_deletingExistingReference_notifyDaemon_workflowReference_completion___block_invoke;
  v26[3] = &unk_1E8379B70;
  v26[4] = self;
  v18 = dCopy;
  v27 = v18;
  v29 = &v31;
  referenceCopy = reference;
  v19 = workflowReferenceCopy;
  v28 = v19;
  v20 = (v32 + 5);
  obj = v32[5];
  [database performTransactionWithReason:@"associate workflow to trigger block:possibly deleting existing reference" error:{v26, &obj}];
  objc_storeStrong(v20, obj);

  if (daemonCopy)
  {
    if (_os_feature_enabled_impl())
    {
      connection = [(WFTriggerManager *)self connection];
      remoteObjectProxy = [connection remoteObjectProxy];
    }

    else
    {
      remoteObjectProxy = [MEMORY[0x1E69E0938] standardClient];
    }

    [remoteObjectProxy refreshTriggerWithIdentifier:v18 completion:v16];
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

- (void)updateConfiguredTrigger:(id)trigger triggerID:(id)d notifyDaemon:(BOOL)daemon completion:(id)completion
{
  daemonCopy = daemon;
  v40 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  dCopy = d;
  completionCopy = completion;
  if (triggerCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }

LABEL_21:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"newRecord"}];

  if (!dCopy)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_22:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:225 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_4:
  database = [(WFTriggerManager *)self database];
  v15 = [database configuredTriggerForTriggerID:dCopy];

  if (v15)
  {
    database2 = [(WFTriggerManager *)self database];
    v35 = 0;
    v17 = [database2 recordWithDescriptor:v15 error:&v35];
    v18 = v35;

    if (v17)
    {
      v33 = daemonCopy;
      triggerData = [triggerCopy triggerData];
      [v17 setTriggerData:triggerData];

      [v17 setShouldNotify:{objc_msgSend(triggerCopy, "shouldNotify")}];
      [v17 setShouldPrompt:{objc_msgSend(triggerCopy, "shouldPrompt")}];
      [v17 setShouldRecur:{objc_msgSend(triggerCopy, "shouldRecur")}];
      [v17 setPotentialLoopDetected:{objc_msgSend(triggerCopy, "potentialLoopDetected")}];
      [v17 setEnabled:{objc_msgSend(triggerCopy, "isEnabled")}];
      disablementReason = [triggerCopy disablementReason];
      [v17 setDisablementReason:disablementReason];

      [v17 setEditableShortcut:{objc_msgSend(triggerCopy, "editableShortcut")}];
      selectedEntryMetadata = [triggerCopy selectedEntryMetadata];
      [v17 setSelectedEntryMetadata:selectedEntryMetadata];

      database3 = [(WFTriggerManager *)self database];
      v34 = v18;
      v23 = [database3 saveRecord:v17 withDescriptor:v15 error:&v34];
      v24 = v34;

      if (v23)
      {
        if (v33)
        {
          if (_os_feature_enabled_impl())
          {
            connection = [(WFTriggerManager *)self connection];
            remoteObjectProxy = [connection remoteObjectProxy];

            [remoteObjectProxy refreshTriggerWithIdentifier:dCopy completion:completionCopy];
          }

          else
          {
            standardClient = [MEMORY[0x1E69E0938] standardClient];
            [standardClient refreshTriggerWithIdentifier:dCopy completion:completionCopy];
          }
        }

        else
        {
          completionCopy[2](completionCopy, 1, 0);
        }
      }

      else
      {
        (completionCopy)[2](completionCopy, 0, v24);
      }

      v18 = v24;
    }

    else
    {
      (completionCopy)[2](completionCopy, 0, v18);
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
      v39 = dCopy;
      _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_ERROR, "%s Couldn't find trigger to update for triggerID (%@)", buf, 0x16u);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WFTriggerErrorDomain" code:1001 userInfo:0];
    (completionCopy)[2](completionCopy, 0, v18);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)saveNewConfiguredTrigger:(id)trigger workflowReference:(id)reference notifyDaemon:(BOOL)daemon completion:(id)completion
{
  daemonCopy = daemon;
  v45 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  referenceCopy = reference;
  completionCopy = completion;
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
    v44 = triggerCopy;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Saving new configured trigger: %@", buf, 0x16u);
  }

  database = [(WFTriggerManager *)self database];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __87__WFTriggerManager_saveNewConfiguredTrigger_workflowReference_notifyDaemon_completion___block_invoke;
  v24[3] = &unk_1E8379B48;
  v27 = &v29;
  v24[4] = self;
  v15 = triggerCopy;
  v25 = v15;
  v16 = referenceCopy;
  v26 = v16;
  v28 = &v35;
  v17 = v36;
  obj = v36[5];
  [database performTransactionWithReason:@"save trigger with workflow" block:v24 error:&obj];
  objc_storeStrong(v17 + 5, obj);

  v18 = v30[5];
  if (v18 && daemonCopy)
  {
    standardClient = [MEMORY[0x1E69E0938] standardClient];
    identifier = [v30[5] identifier];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __87__WFTriggerManager_saveNewConfiguredTrigger_workflowReference_notifyDaemon_completion___block_invoke_2;
    v22[3] = &unk_1E8379AF8;
    v22[4] = &v29;
    [standardClient refreshTriggerWithIdentifier:identifier completion:v22];

    v18 = v30[5];
  }

  (completionCopy)[2](completionCopy, v18, v36[5]);

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

- (void)saveNewConfiguredTrigger:(id)trigger workflow:(id)workflow notifyDaemon:(BOOL)daemon completion:(id)completion
{
  daemonCopy = daemon;
  triggerCopy = trigger;
  workflowCopy = workflow;
  completionCopy = completion;
  if (triggerCopy)
  {
    if (workflowCopy)
    {
      goto LABEL_3;
    }

LABEL_12:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"workflow"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:121 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_4;
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"record"}];

  if (!workflowCopy)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!completionCopy)
  {
    goto LABEL_13;
  }

LABEL_4:
  [workflowCopy setHiddenFromLibraryAndSync:1];
  v14 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v17 = [v14 stringWithFormat:@"Automation %@", uUIDString];
  [workflowCopy setName:v17];

  v18 = [[WFWorkflowCreationOptions alloc] initWithRecord:workflowCopy];
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
  database = [(WFTriggerManager *)self database];
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
  v21 = triggerCopy;
  v35 = v21;
  v22 = v52;
  obj = v52[5];
  [database performTransactionWithReason:@"save trigger with workflow" block:v33 error:&obj];
  objc_storeStrong(v22 + 5, obj);

  v23 = v46[5];
  if (v23 && daemonCopy)
  {
    if (_os_feature_enabled_impl())
    {
      connection = [(WFTriggerManager *)self connection];
      remoteObjectProxy = [connection remoteObjectProxy];

      identifier = [v46[5] identifier];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __78__WFTriggerManager_saveNewConfiguredTrigger_workflow_notifyDaemon_completion___block_invoke_2;
      v31[3] = &unk_1E8379AF8;
      v31[4] = &v45;
      [remoteObjectProxy refreshTriggerWithIdentifier:identifier completion:v31];
    }

    else
    {
      remoteObjectProxy = [MEMORY[0x1E69E0938] standardClient];
      identifier = [v46[5] identifier];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __78__WFTriggerManager_saveNewConfiguredTrigger_workflow_notifyDaemon_completion___block_invoke_258;
      v30[3] = &unk_1E8379AF8;
      v30[4] = &v45;
      [remoteObjectProxy refreshTriggerWithIdentifier:identifier completion:v30];
    }

    v23 = v46[5];
  }

  completionCopy[2](completionCopy, v23, v40[5], v52[5]);

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

- (void)saveNewConfiguredTrigger:(id)trigger notifyDaemon:(BOOL)daemon completion:(id)completion
{
  daemonCopy = daemon;
  triggerCopy = trigger;
  completionCopy = completion;
  v11 = completionCopy;
  if (!triggerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"record"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

    goto LABEL_3;
  }

  if (!completionCopy)
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
  database = [(WFTriggerManager *)self database];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke;
  v24[3] = &unk_1E8379AD0;
  v26 = &v28;
  v24[4] = self;
  v13 = triggerCopy;
  v25 = v13;
  v27 = &v34;
  v14 = v35;
  obj = v35[5];
  [database performTransactionWithReason:@"save trigger" block:v24 error:&obj];
  objc_storeStrong(v14 + 5, obj);

  v15 = v29[5];
  if (v15 && daemonCopy)
  {
    if (_os_feature_enabled_impl())
    {
      connection = [(WFTriggerManager *)self connection];
      remoteObjectProxy = [connection remoteObjectProxy];

      identifier = [v29[5] identifier];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke_2;
      v22[3] = &unk_1E8379AF8;
      v22[4] = &v28;
      [remoteObjectProxy refreshTriggerWithIdentifier:identifier completion:v22];
    }

    else
    {
      remoteObjectProxy = [MEMORY[0x1E69E0938] standardClient];
      identifier = [v29[5] identifier];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __69__WFTriggerManager_saveNewConfiguredTrigger_notifyDaemon_completion___block_invoke_245;
      v21[3] = &unk_1E8379AF8;
      v21[4] = &v28;
      [remoteObjectProxy refreshTriggerWithIdentifier:identifier completion:v21];
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

- (WFTriggerManager)initWithDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerManager.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v12.receiver = self;
  v12.super_class = WFTriggerManager;
  v7 = [(WFTriggerManager *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_database, database);
    v9 = v8;
  }

  return v8;
}

@end
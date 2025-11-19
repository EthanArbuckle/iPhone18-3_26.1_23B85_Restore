@interface WFAccessResourcesSmartPromptsCustomModificationsStep
- (BOOL)performModificationsWithContext:(id)a3 error:(id *)a4;
- (BOOL)shortcutHasSmartPromptsData:(id)a3 context:(id)a4;
- (NSDictionary)accessResourceIdentifiersByContentDestination;
- (NSDictionary)actionIdentifiersByContentDestination;
- (NSDictionary)contentDestinationsByAccessResourceIdentifier;
- (NSDictionary)contentDestinationsByActionIdentifier;
- (id)actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:(id)a3;
- (id)bundleIdentifierForIntentBasedActionIdentifier:(id)a3 accessResourceIdentifiers:(id)a4;
- (id)contentLocationForActionIdentifier:(id)a3 statesByAccessResourceIdentifier:(id)a4;
- (id)extractBundleIdentifierFromIntentsAccessResourceIdentifier:(id)a3;
- (id)fetchMigrationEligibleActionUUIDsForWorkflow:(id)a3 context:(id)a4 workflowAccessResourceIdentifiers:(id)a5;
- (id)fetchStatesByAccessResourceIdentifierForWorkflow:(id)a3 context:(id)a4;
- (void)migrateAccessResourcesToSmartPromptsForWorkflow:(id)a3 context:(id)a4;
@end

@implementation WFAccessResourcesSmartPromptsCustomModificationsStep

- (NSDictionary)contentDestinationsByActionIdentifier
{
  contentDestinationsByActionIdentifier = self->_contentDestinationsByActionIdentifier;
  if (!contentDestinationsByActionIdentifier)
  {
    v4 = objc_opt_new();
    v5 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self actionIdentifiersByContentDestination];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93__WFAccessResourcesSmartPromptsCustomModificationsStep_contentDestinationsByActionIdentifier__block_invoke;
    v10[3] = &unk_1E837EBB0;
    v6 = v4;
    v11 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v10];

    v7 = self->_contentDestinationsByActionIdentifier;
    self->_contentDestinationsByActionIdentifier = v6;
    v8 = v6;

    contentDestinationsByActionIdentifier = self->_contentDestinationsByActionIdentifier;
  }

  return contentDestinationsByActionIdentifier;
}

void __93__WFAccessResourcesSmartPromptsCustomModificationsStep_contentDestinationsByActionIdentifier__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(a1 + 32) setObject:v5 forKeyedSubscript:*(*(&v12 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)accessResourceIdentifiersByContentDestination
{
  v12[1] = *MEMORY[0x1E69E9840];
  accessResourceIdentifiersByContentDestination = self->_accessResourceIdentifiersByContentDestination;
  if (!accessResourceIdentifiersByContentDestination)
  {
    v4 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByAccessResourceIdentifier];
    v5 = [v4 count];

    v6 = v12 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v6, 8 * v5);
    bzero(v6, 8 * v5);
    v7 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByAccessResourceIdentifier];
    [v7 getObjects:v6 andKeys:v6 count:v5];

    v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v6 forKeys:v6 count:v5];
    v9 = self->_accessResourceIdentifiersByContentDestination;
    self->_accessResourceIdentifiersByContentDestination = v8;

    accessResourceIdentifiersByContentDestination = self->_accessResourceIdentifiersByContentDestination;
  }

  v10 = *MEMORY[0x1E69E9840];

  return accessResourceIdentifiersByContentDestination;
}

- (NSDictionary)actionIdentifiersByContentDestination
{
  actionIdentifiersByContentDestination = self->_actionIdentifiersByContentDestination;
  if (!actionIdentifiersByContentDestination)
  {
    v4 = WFContentLocationToActionIdentifierMapping();
    v5 = self->_actionIdentifiersByContentDestination;
    self->_actionIdentifiersByContentDestination = v4;

    actionIdentifiersByContentDestination = self->_actionIdentifiersByContentDestination;
  }

  return actionIdentifiersByContentDestination;
}

- (NSDictionary)contentDestinationsByAccessResourceIdentifier
{
  contentDestinationsByAccessResourceIdentifier = self->_contentDestinationsByAccessResourceIdentifier;
  if (!contentDestinationsByAccessResourceIdentifier)
  {
    v4 = WFContentLocationByAccessResourceIdentifier();
    v5 = self->_contentDestinationsByAccessResourceIdentifier;
    self->_contentDestinationsByAccessResourceIdentifier = v4;

    contentDestinationsByAccessResourceIdentifier = self->_contentDestinationsByAccessResourceIdentifier;
  }

  return contentDestinationsByAccessResourceIdentifier;
}

- (id)actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 136315394;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v12 hasPrefix:{@"WFIntentsAccessResource.", v21, v22}] & 1) == 0)
        {
          if ([v12 isEqualToString:@"WFRemoteServerAccessResource"])
          {
            v13 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4A9B488];
            v14 = [v13 allObjects];
            goto LABEL_11;
          }

          v15 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByAccessResourceIdentifier];
          v13 = [v15 objectForKeyedSubscript:v12];

          if (v13)
          {
            v16 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self actionIdentifiersByContentDestination];
            v14 = [v16 objectForKeyedSubscript:v13];

            if (v14)
            {
LABEL_11:
              [v5 addObjectsFromArray:v14];
            }

            else
            {
              v17 = getWFWorkflowMigrationLogObject();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                v18 = [v13 identifier];
                *buf = v21;
                v27 = "[WFAccessResourcesSmartPromptsCustomModificationsStep actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:]";
                v28 = 2112;
                v29 = v18;
                _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Content destination %@ doesn't map to any action identifiers", buf, 0x16u);
              }

              v14 = 0;
            }
          }

          else
          {
            v14 = getWFWorkflowMigrationLogObject();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v27 = "[WFAccessResourcesSmartPromptsCustomModificationsStep actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:]";
              v28 = 2112;
              v29 = v12;
              _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Access resource %@ doesn't map to any content destination", buf, 0x16u);
            }

            v13 = 0;
          }

          continue;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)shortcutHasSmartPromptsData:(id)a3 context:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = +[WFCoreDataSmartPromptPermission fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [v6 identifier];

  v10 = [v8 predicateWithFormat:@"%K = %@", @"shortcut.workflowID", v9];
  [v7 setPredicate:v10];

  v17 = 0;
  v11 = [v5 countForFetchRequest:v7 error:&v17];

  v12 = v17;
  if (v12)
  {
    v13 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v19 = "[WFAccessResourcesSmartPromptsCustomModificationsStep shortcutHasSmartPromptsData:context:]";
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEBUG, "%s Failed to fetch smart prompts count for workflow: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v14 = v11 != 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)extractBundleIdentifierFromIntentsAccessResourceIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = [v3 firstObject];
  v5 = [v4 isEqualToString:@"WFIntentsAccessResource"];

  if (v5)
  {
    v6 = [v3 subarrayWithRange:{1, objc_msgSend(v3, "count") - 1}];
    v7 = [v6 componentsJoinedByString:@"."];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fetchMigrationEligibleActionUUIDsForWorkflow:(id)a3 context:(id)a4 workflowAccessResourceIdentifiers:(id)a5
{
  v83 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v63 = a5;
  v10 = +[WFCoreDataWorkflowActions fetchRequest];
  v11 = MEMORY[0x1E696AE18];
  v12 = [v8 identifier];
  v13 = [v11 predicateWithFormat:@"%K = %@", @"shortcut.workflowID", v12];
  [v10 setPredicate:v13];

  [v10 setFetchLimit:1];
  v76 = 0;
  v14 = [v9 executeFetchRequest:v10 error:&v76];
  v15 = v76;
  v16 = [v14 firstObject];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 data];
    if (v18)
    {
      v75 = 0;
      v19 = [MEMORY[0x1E696AE40] propertyListWithData:v18 options:1 format:0 error:&v75];
      v20 = v75;
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v53 = v20;
        v54 = v18;
        v55 = v17;
        v56 = v15;
        v57 = v14;
        v58 = v10;
        v59 = v9;
        v60 = v8;
        v21 = [MEMORY[0x1E695DF90] dictionary];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = v19;
        v22 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
        v23 = v63;
        v62 = v21;
        if (v22)
        {
          v24 = v22;
          v64 = *v72;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v72 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v71 + 1) + 8 * i);
              v27 = [v26 objectForKey:@"WFWorkflowActionIdentifier"];
              v28 = MEMORY[0x1E695DFD8];
              v70[0] = MEMORY[0x1E69E9820];
              v70[1] = 3221225472;
              v70[2] = __143__WFAccessResourcesSmartPromptsCustomModificationsStep_fetchMigrationEligibleActionUUIDsForWorkflow_context_workflowAccessResourceIdentifiers___block_invoke;
              v70[3] = &unk_1E837EB80;
              v70[4] = self;
              v29 = [v23 if_compactMap:v70];
              v30 = [v28 setWithArray:v29];

              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v31 = v30;
              v32 = [v31 countByEnumeratingWithState:&v66 objects:v77 count:16];
              if (v32)
              {
                v33 = v32;
                v34 = 0;
                v35 = *v67;
                do
                {
                  for (j = 0; j != v33; ++j)
                  {
                    if (*v67 != v35)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v34 |= [v27 hasPrefix:*(*(&v66 + 1) + 8 * j)];
                  }

                  v33 = [v31 countByEnumeratingWithState:&v66 objects:v77 count:16];
                }

                while (v33);

                v21 = v62;
                v23 = v63;
                if (v34)
                {
LABEL_21:
                  v39 = [v26 objectForKey:@"WFWorkflowActionParameters"];
                  if (!v39)
                  {
                    v40 = getWFWorkflowMigrationLogObject();
                    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136315394;
                      v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
                      v81 = 2114;
                      v82 = v27;
                      _os_log_impl(&dword_1CA256000, v40, OS_LOG_TYPE_DEBUG, "%s Action %{public}@ does not have WFWorkflowActionParameters, creating dictionary", buf, 0x16u);
                    }

                    v39 = [MEMORY[0x1E695DF90] dictionary];
                    [v26 setObject:v39 forKey:@"WFWorkflowActionParameters"];
                  }

                  v41 = [v39 objectForKey:@"UUID"];
                  if (!v41)
                  {
                    v42 = getWFWorkflowMigrationLogObject();
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 136315394;
                      v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
                      v81 = 2112;
                      v82 = v27;
                      _os_log_impl(&dword_1CA256000, v42, OS_LOG_TYPE_DEBUG, "%s Creating UUID for action with identifier %@", buf, 0x16u);
                    }

                    v43 = [MEMORY[0x1E696AFB0] UUID];
                    v41 = [v43 UUIDString];

                    [v39 setObject:v41 forKey:@"UUID"];
                  }

                  v44 = [v21 objectForKey:v27];

                  if (v44)
                  {
                    v45 = [v21 objectForKey:v27];
                    [v45 addObject:v41];
                  }

                  else
                  {
                    v45 = [MEMORY[0x1E695DF70] arrayWithObject:v41];
                    [v21 setObject:v45 forKey:v27];
                  }

                  goto LABEL_35;
                }
              }

              else
              {
              }

              v37 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:v23];
              v38 = [v37 containsObject:v27];

              if (v38)
              {
                goto LABEL_21;
              }

              v39 = getWFWorkflowMigrationLogObject();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
                v81 = 2112;
                v82 = v27;
                _os_log_impl(&dword_1CA256000, v39, OS_LOG_TYPE_DEBUG, "%s Action with identifier %@ does not require migration.", buf, 0x16u);
              }

LABEL_35:
            }

            v24 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
          }

          while (v24);
        }

        v46 = obj;

        v65 = 0;
        v47 = [MEMORY[0x1E696AE40] dataWithPropertyList:obj format:200 options:0 error:&v65];
        v48 = v47;
        if (v65 || !v47)
        {
          v50 = getWFWorkflowMigrationLogObject();
          v9 = v59;
          v8 = v60;
          v14 = v57;
          v10 = v58;
          v15 = v56;
          v18 = v54;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315138;
            v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
            _os_log_impl(&dword_1CA256000, v50, OS_LOG_TYPE_ERROR, "%s Failed to serialize mutated actions for save.", buf, 0xCu);
          }

          v17 = v55;
        }

        else
        {
          v17 = v55;
          [v55 setData:v47];
          v9 = v59;
          v8 = v60;
          v14 = v57;
          v10 = v58;
          v15 = v56;
          v18 = v54;
        }

        v20 = v53;
      }

      else
      {

        v46 = getWFWorkflowMigrationLogObject();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
          v81 = 2114;
          v82 = v15;
          _os_log_impl(&dword_1CA256000, v46, OS_LOG_TYPE_ERROR, "%s Could not deserialize actions from plist: %{public}@", buf, 0x16u);
        }

        v62 = MEMORY[0x1E695E0F8];
      }

      v49 = v63;
    }

    else
    {
      v20 = getWFWorkflowMigrationLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s No NSData found on WFCoreDataWorkflowActions object.", buf, 0xCu);
      }

      v62 = MEMORY[0x1E695E0F8];
      v49 = v63;
    }
  }

  else
  {
    v18 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
      v81 = 2112;
      v82 = v8;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s No WFCoreDataWorkflowActions object found for workflow: %@.", buf, 0x16u);
    }

    v62 = MEMORY[0x1E695E0F8];
    v49 = v63;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v62;
}

- (id)fetchStatesByAccessResourceIdentifierForWorkflow:(id)a3 context:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v7 = +[WFCoreDataAccessResourcePermission fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  v9 = [v6 identifier];

  v10 = [v8 predicateWithFormat:@"%K = %@", @"shortcut.workflowID", v9];
  [v7 setPredicate:v10];

  v20 = 0;
  v11 = [v5 executeFetchRequest:v7 error:&v20];

  v12 = v20;
  if (v12)
  {
    v13 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchStatesByAccessResourceIdentifierForWorkflow:context:]";
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to fetch access resources for workflow: %@", buf, 0x16u);
    }

    v14 = MEMORY[0x1E695E0F8];
  }

  else
  {
    v15 = [MEMORY[0x1E695DF90] dictionary];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __113__WFAccessResourcesSmartPromptsCustomModificationsStep_fetchStatesByAccessResourceIdentifierForWorkflow_context___block_invoke;
    v18[3] = &unk_1E837EB58;
    v14 = v15;
    v19 = v14;
    [v11 enumerateObjectsUsingBlock:v18];
    v13 = v19;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

void __113__WFAccessResourcesSmartPromptsCustomModificationsStep_fetchStatesByAccessResourceIdentifierForWorkflow_context___block_invoke(uint64_t a1, void *a2)
{
  v22[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 data];

  if (v5)
  {
    v15 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v5 error:&v15];
    v7 = v15;
    [v6 setClass:objc_opt_class() forClassName:@"WFHealthKitAccessResourcePerWorkflowState"];
    [v6 setClass:objc_opt_class() forClassName:@"WFRemoteServerAccessResourcePerWorkflowState"];
    [v6 setClass:objc_opt_class() forClassName:@"WFRemoteServerAccessResourcePerWorkflowStateEntry"];
    [v6 setClass:objc_opt_class() forClassName:@"WFHealthKitAccessResourcePerWorkflowStateEntry"];
    v22[0] = objc_opt_class();
    v22[1] = objc_opt_class();
    v22[2] = objc_opt_class();
    v22[3] = objc_opt_class();
    v22[4] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:5];
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v10 = [v6 decodeObjectOfClasses:v9 forKey:*MEMORY[0x1E696A508]];

    if (v7)
    {
      v11 = getWFWorkflowMigrationLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchStatesByAccessResourceIdentifierForWorkflow:context:]_block_invoke";
        v18 = 2114;
        v19 = v4;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Failed to unarchive access resource state data with identifier %{public}@: %@", buf, 0x20u);
      }
    }

    else
    {
      [v6 finishDecoding];
      v12 = getWFWorkflowMigrationLogObject();
      v13 = v12;
      if (v10)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v17 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchStatesByAccessResourceIdentifierForWorkflow:context:]_block_invoke";
          v18 = 2112;
          v19 = v4;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEBUG, "%s Got an access resource to migrate: %@, state = %@", buf, 0x20u);
        }

        [*(a1 + 32) setObject:v10 forKey:v4];
      }

      else
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchStatesByAccessResourceIdentifierForWorkflow:context:]_block_invoke";
          v18 = 2114;
          v19 = v4;
          _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Failed to unarchive access resource state data with identifier %{public}@: access resource was nil", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v7 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchStatesByAccessResourceIdentifierForWorkflow:context:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s No NSData found on WFCoreDataAccessResourcePermission.", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)bundleIdentifierForIntentBasedActionIdentifier:(id)a3 accessResourceIdentifiers:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self extractBundleIdentifierFromIntentsAccessResourceIdentifier:*(*(&v15 + 1) + 8 * v11), v15];
      if (v12)
      {
        if ([v6 hasPrefix:v12])
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)contentLocationForActionIdentifier:(id)a3 statesByAccessResourceIdentifier:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E88]];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4A9B488];
  v10 = [v9 containsObject:v6];

  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:@"WFRemoteServerAccessResource"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v44 = 1;
        v12 = [MEMORY[0x1E695DF70] array];
        v13 = v11[1];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __124__WFAccessResourcesSmartPromptsCustomModificationsStep_contentLocationForActionIdentifier_statesByAccessResourceIdentifier___block_invoke;
        v40[3] = &unk_1E837EB08;
        v42 = buf;
        v14 = v12;
        v41 = v14;
        [v13 enumerateObjectsUsingBlock:v40];
        if (*(*&buf[8] + 24) == 1)
        {
          v15 = MEMORY[0x1E6996F90];
          v16 = [MEMORY[0x1E695DFD8] setWithArray:v14];
          v17 = [v15 locationWithHostnames:v16];
        }

        else
        {
          v17 = 0;
        }

        _Block_object_dispose(buf, 8);
        goto LABEL_31;
      }
    }

    goto LABEL_11;
  }

  v18 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByActionIdentifier];
  v19 = [v18 objectForKey:v6];
  v20 = [v19 isEqual:v8];

  if (v20)
  {
    v11 = [v7 objectForKeyedSubscript:@"WFHealthKitAccessResource"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v44 = 1;
        v21 = v11[1];
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __124__WFAccessResourcesSmartPromptsCustomModificationsStep_contentLocationForActionIdentifier_statesByAccessResourceIdentifier___block_invoke_2;
        v39[3] = &unk_1E837EB30;
        v39[4] = buf;
        [v21 enumerateObjectsUsingBlock:v39];
        if (*(*&buf[8] + 24) == 1)
        {
          v17 = v8;
        }

        else
        {
          v17 = 0;
        }

        _Block_object_dispose(buf, 8);

        goto LABEL_31;
      }
    }

LABEL_11:

    v17 = 0;
    goto LABEL_31;
  }

  v22 = [v7 allKeys];
  v23 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self bundleIdentifierForIntentBasedActionIdentifier:v6 accessResourceIdentifiers:v22];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E696E720]);
    v25 = [v7 allKeys];
    v26 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self bundleIdentifierForIntentBasedActionIdentifier:v6 accessResourceIdentifiers:v25];
    v27 = [v24 initWithBundleIdentifier:v26];

    v28 = [MEMORY[0x1E696E748] sharedResolver];
    v29 = [v28 resolvedAppMatchingDescriptor:v27];

    v17 = [MEMORY[0x1E6996C90] locationWithAppDescriptor:v29];

    goto LABEL_31;
  }

  v30 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByActionIdentifier];
  v31 = [v30 objectForKey:v6];

  if (v31)
  {
    v32 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self accessResourceIdentifiersByContentDestination];
    v33 = [v32 objectForKey:v31];

    if (v33)
    {
      v34 = [v7 objectForKeyedSubscript:v33];
      if (v34)
      {
        v17 = v31;
LABEL_29:

        goto LABEL_30;
      }

      v36 = getWFWorkflowMigrationLogObject();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "[WFAccessResourcesSmartPromptsCustomModificationsStep contentLocationForActionIdentifier:statesByAccessResourceIdentifier:]";
        *&buf[12] = 2114;
        *&buf[14] = v33;
        _os_log_impl(&dword_1CA256000, v36, OS_LOG_TYPE_DEBUG, "%s Current state for %{public}@ is disabled; won't be migrated.", buf, 0x16u);
      }

      v34 = 0;
    }

    else
    {
      v34 = getWFWorkflowMigrationLogObject();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [v31 identifier];
        *buf = 136315394;
        *&buf[4] = "[WFAccessResourcesSmartPromptsCustomModificationsStep contentLocationForActionIdentifier:statesByAccessResourceIdentifier:]";
        *&buf[12] = 2114;
        *&buf[14] = v35;
        _os_log_impl(&dword_1CA256000, v34, OS_LOG_TYPE_ERROR, "%s Missing mapping for content destination: what access resource does %{public}@ map to?", buf, 0x16u);
      }
    }

    v17 = 0;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_30:

LABEL_31:
  v37 = *MEMORY[0x1E69E9840];

  return v17;
}

void __124__WFAccessResourcesSmartPromptsCustomModificationsStep_contentLocationForActionIdentifier_statesByAccessResourceIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(v5 + 1) isEqual:MEMORY[0x1E695E110]])
  {
    *a3 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    [*(a1 + 32) addObject:*(v5 + 2)];
  }
}

uint64_t __124__WFAccessResourcesSmartPromptsCustomModificationsStep_contentLocationForActionIdentifier_statesByAccessResourceIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a2 + 8) isEqual:MEMORY[0x1E695E110]];
  if (result)
  {
    *a3 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

- (void)migrateAccessResourcesToSmartPromptsForWorkflow:(id)a3 context:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(WFAccessResourcesSmartPromptsCustomModificationsStep *)self shortcutHasSmartPromptsData:v6 context:v7])
  {
    v8 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [v6 name];
      *buf = 136315394;
      v44 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]";
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_DEBUG, "%s Skipping migration of shortcut '%@' as it already has smart prompts data.", buf, 0x16u);
    }
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v10 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self fetchStatesByAccessResourceIdentifierForWorkflow:v6 context:v7];
    v11 = [v10 count];
    v12 = getWFWorkflowMigrationLogObject();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v13)
      {
        *buf = 136315394;
        v44 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]";
        v45 = 2048;
        v46 = [v10 count];
        _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEBUG, "%s Found %lu access resources for migration.", buf, 0x16u);
      }

      v14 = [v10 allKeys];
      v15 = v6;
      v16 = v7;
      v17 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self fetchMigrationEligibleActionUUIDsForWorkflow:v6 context:v7 workflowAccessResourceIdentifiers:v14];

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __112__WFAccessResourcesSmartPromptsCustomModificationsStep_migrateAccessResourcesToSmartPromptsForWorkflow_context___block_invoke;
      v39[3] = &unk_1E837EAE0;
      v39[4] = self;
      v32 = v10;
      v40 = v10;
      v33 = v8;
      v18 = v8;
      v41 = v18;
      v31 = v17;
      [v17 enumerateKeysAndObjectsUsingBlock:v39];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v42 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * i);
            v34 = 0;
            v25 = [v24 databaseDataWithError:&v34];
            v26 = v34;
            if (v26)
            {
              v27 = getWFWorkflowMigrationLogObject();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v44 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]";
                v45 = 2114;
                v46 = v26;
                _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s Could not serialize migrated state: %{public}@", buf, 0x16u);
              }
            }

            else
            {
              v27 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"SmartPromptPermission" inManagedObjectContext:v16];
              [v27 setShortcut:v15];
              v28 = [v24 actionUUID];
              [v27 setActionUUID:v28];

              [v27 setData:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v21);
      }

      v6 = v15;
      v7 = v16;
      v10 = v32;
      v8 = v33;
      v12 = v31;
    }

    else if (v13)
    {
      v29 = [v6 name];
      *buf = 136315394;
      v44 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]";
      v45 = 2112;
      v46 = v29;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEBUG, "%s Skipping migration of shortcut '%@' as it doesn't have access resources.", buf, 0x16u);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __112__WFAccessResourcesSmartPromptsCustomModificationsStep_migrateAccessResourcesToSmartPromptsForWorkflow_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v21 = v5;
  v7 = [*(a1 + 32) contentLocationForActionIdentifier:v5 statesByAccessResourceIdentifier:*(a1 + 40)];
  if (v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v6;
      v11 = *v23;
      obj = v8;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = getWFWorkflowMigrationLogObject();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v27 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]_block_invoke";
            v28 = 2112;
            v29 = v21;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_DEBUG, "%s Ready to create smart prompt state for %@, UUID: %@", buf, 0x20u);
          }

          v15 = [[WFSmartPromptState alloc] initWithMode:@"UserWildcard" sourceContentAttribution:0 actionUUID:v13 contentDestination:v7 status:@"Allow"];
          [*(a1 + 48) addObject:v15];
          if ([v7 promptingBehaviour])
          {
            v16 = getWFWorkflowMigrationLogObject();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 136315907;
              v27 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]_block_invoke";
              v28 = 2113;
              v29 = v7;
              v30 = 2114;
              v31 = v13;
              v32 = 2114;
              v33 = v21;
              _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_INFO, "%s Creating action wildcard for %{private}@, actionUUID: %{public}@, actionIdentifier: %{public}@", buf, 0x2Au);
            }

            v17 = [[WFSmartPromptState alloc] initWithMode:@"ActionWildcard" sourceContentAttribution:0 actionUUID:v13 contentDestination:v7 status:@"Allow"];
            [*(a1 + 48) addObject:v17];
          }
        }

        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v22 objects:v34 count:16];
      }

      while (v10);
      v6 = v19;
    }
  }

  else
  {
    v8 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]_block_invoke";
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_INFO, "%s Skipping migration of %@ because no content destination was found, or permission was previously denied", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (BOOL)performModificationsWithContext:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = getWFWorkflowMigrationLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v34 = "[WFAccessResourcesSmartPromptsCustomModificationsStep performModificationsWithContext:error:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Starting migration of access resources into smart prompts.", buf, 0xCu);
  }

  v23 = a4;

  v22 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Shortcut"];
  [v8 setFetchLimit:5];
  v31 = 0;
  v9 = [v6 executeFetchRequest:v8 error:&v31];
  v10 = v31;
  while ([v9 count])
  {
    context = objc_autoreleasePoolPush();
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self migrateAccessResourcesToSmartPromptsForWorkflow:v16 context:v6];
          objc_autoreleasePoolPop(v17);
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v13);
    }

    v26 = v10;
    [v6 save:&v26];
    v18 = v26;

    [v6 reset];
    [v8 setFetchOffset:{objc_msgSend(v8, "fetchOffset") + objc_msgSend(v8, "fetchLimit")}];
    v25 = v18;
    v9 = [v6 executeFetchRequest:v8 error:&v25];
    v10 = v25;

    objc_autoreleasePoolPop(context);
  }

  objc_autoreleasePoolPop(v22);
  if (v23)
  {
    v19 = v10;
    *v23 = v10;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

@end
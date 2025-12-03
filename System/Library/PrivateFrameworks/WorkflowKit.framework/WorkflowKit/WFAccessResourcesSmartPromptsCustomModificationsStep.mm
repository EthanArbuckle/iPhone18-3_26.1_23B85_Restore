@interface WFAccessResourcesSmartPromptsCustomModificationsStep
- (BOOL)performModificationsWithContext:(id)context error:(id *)error;
- (BOOL)shortcutHasSmartPromptsData:(id)data context:(id)context;
- (NSDictionary)accessResourceIdentifiersByContentDestination;
- (NSDictionary)actionIdentifiersByContentDestination;
- (NSDictionary)contentDestinationsByAccessResourceIdentifier;
- (NSDictionary)contentDestinationsByActionIdentifier;
- (id)actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:(id)identifiers;
- (id)bundleIdentifierForIntentBasedActionIdentifier:(id)identifier accessResourceIdentifiers:(id)identifiers;
- (id)contentLocationForActionIdentifier:(id)identifier statesByAccessResourceIdentifier:(id)resourceIdentifier;
- (id)extractBundleIdentifierFromIntentsAccessResourceIdentifier:(id)identifier;
- (id)fetchMigrationEligibleActionUUIDsForWorkflow:(id)workflow context:(id)context workflowAccessResourceIdentifiers:(id)identifiers;
- (id)fetchStatesByAccessResourceIdentifierForWorkflow:(id)workflow context:(id)context;
- (void)migrateAccessResourcesToSmartPromptsForWorkflow:(id)workflow context:(id)context;
@end

@implementation WFAccessResourcesSmartPromptsCustomModificationsStep

- (NSDictionary)contentDestinationsByActionIdentifier
{
  contentDestinationsByActionIdentifier = self->_contentDestinationsByActionIdentifier;
  if (!contentDestinationsByActionIdentifier)
  {
    v4 = objc_opt_new();
    actionIdentifiersByContentDestination = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self actionIdentifiersByContentDestination];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __93__WFAccessResourcesSmartPromptsCustomModificationsStep_contentDestinationsByActionIdentifier__block_invoke;
    v10[3] = &unk_1E837EBB0;
    v6 = v4;
    v11 = v6;
    [actionIdentifiersByContentDestination enumerateKeysAndObjectsUsingBlock:v10];

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
    contentDestinationsByAccessResourceIdentifier = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByAccessResourceIdentifier];
    v5 = [contentDestinationsByAccessResourceIdentifier count];

    v6 = v12 - ((8 * v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v6, 8 * v5);
    bzero(v6, 8 * v5);
    contentDestinationsByAccessResourceIdentifier2 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByAccessResourceIdentifier];
    [contentDestinationsByAccessResourceIdentifier2 getObjects:v6 andKeys:v6 count:v5];

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

- (id)actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:(id)identifiers
{
  v31 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x1E695DFA8] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = identifiersCopy;
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
            allObjects = [v13 allObjects];
            goto LABEL_11;
          }

          contentDestinationsByAccessResourceIdentifier = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByAccessResourceIdentifier];
          v13 = [contentDestinationsByAccessResourceIdentifier objectForKeyedSubscript:v12];

          if (v13)
          {
            actionIdentifiersByContentDestination = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self actionIdentifiersByContentDestination];
            allObjects = [actionIdentifiersByContentDestination objectForKeyedSubscript:v13];

            if (allObjects)
            {
LABEL_11:
              [v5 addObjectsFromArray:allObjects];
            }

            else
            {
              v17 = getWFWorkflowMigrationLogObject();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                identifier = [v13 identifier];
                *buf = v21;
                v27 = "[WFAccessResourcesSmartPromptsCustomModificationsStep actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:]";
                v28 = 2112;
                v29 = identifier;
                _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_ERROR, "%s Content destination %@ doesn't map to any action identifiers", buf, 0x16u);
              }

              allObjects = 0;
            }
          }

          else
          {
            allObjects = getWFWorkflowMigrationLogObject();
            if (os_log_type_enabled(allObjects, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v27 = "[WFAccessResourcesSmartPromptsCustomModificationsStep actionIdentifiersThatRequireMigrationForAccessResourceIdentifiers:]";
              v28 = 2112;
              v29 = v12;
              _os_log_impl(&dword_1CA256000, allObjects, OS_LOG_TYPE_ERROR, "%s Access resource %@ doesn't map to any content destination", buf, 0x16u);
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

- (BOOL)shortcutHasSmartPromptsData:(id)data context:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  dataCopy = data;
  v7 = +[WFCoreDataSmartPromptPermission fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  identifier = [dataCopy identifier];

  v10 = [v8 predicateWithFormat:@"%K = %@", @"shortcut.workflowID", identifier];
  [v7 setPredicate:v10];

  v17 = 0;
  v11 = [contextCopy countForFetchRequest:v7 error:&v17];

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

- (id)extractBundleIdentifierFromIntentsAccessResourceIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"."];
  firstObject = [v3 firstObject];
  v5 = [firstObject isEqualToString:@"WFIntentsAccessResource"];

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

- (id)fetchMigrationEligibleActionUUIDsForWorkflow:(id)workflow context:(id)context workflowAccessResourceIdentifiers:(id)identifiers
{
  v83 = *MEMORY[0x1E69E9840];
  workflowCopy = workflow;
  contextCopy = context;
  identifiersCopy = identifiers;
  v10 = +[WFCoreDataWorkflowActions fetchRequest];
  v11 = MEMORY[0x1E696AE18];
  identifier = [workflowCopy identifier];
  v13 = [v11 predicateWithFormat:@"%K = %@", @"shortcut.workflowID", identifier];
  [v10 setPredicate:v13];

  [v10 setFetchLimit:1];
  v76 = 0;
  v14 = [contextCopy executeFetchRequest:v10 error:&v76];
  v15 = v76;
  firstObject = [v14 firstObject];
  v17 = firstObject;
  if (firstObject)
  {
    data = [firstObject data];
    if (data)
    {
      v75 = 0;
      v19 = [MEMORY[0x1E696AE40] propertyListWithData:data options:1 format:0 error:&v75];
      v20 = v75;
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v53 = v20;
        v54 = data;
        v55 = v17;
        v56 = v15;
        v57 = v14;
        v58 = v10;
        v59 = contextCopy;
        v60 = workflowCopy;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = v19;
        v22 = [obj countByEnumeratingWithState:&v71 objects:v78 count:16];
        v23 = identifiersCopy;
        v62 = dictionary;
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

                dictionary = v62;
                v23 = identifiersCopy;
                if (v34)
                {
LABEL_21:
                  dictionary2 = [v26 objectForKey:@"WFWorkflowActionParameters"];
                  if (!dictionary2)
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

                    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
                    [v26 setObject:dictionary2 forKey:@"WFWorkflowActionParameters"];
                  }

                  uUIDString = [dictionary2 objectForKey:@"UUID"];
                  if (!uUIDString)
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

                    uUID = [MEMORY[0x1E696AFB0] UUID];
                    uUIDString = [uUID UUIDString];

                    [dictionary2 setObject:uUIDString forKey:@"UUID"];
                  }

                  v44 = [dictionary objectForKey:v27];

                  if (v44)
                  {
                    v45 = [dictionary objectForKey:v27];
                    [v45 addObject:uUIDString];
                  }

                  else
                  {
                    v45 = [MEMORY[0x1E695DF70] arrayWithObject:uUIDString];
                    [dictionary setObject:v45 forKey:v27];
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

              dictionary2 = getWFWorkflowMigrationLogObject();
              if (os_log_type_enabled(dictionary2, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
                v81 = 2112;
                v82 = v27;
                _os_log_impl(&dword_1CA256000, dictionary2, OS_LOG_TYPE_DEBUG, "%s Action with identifier %@ does not require migration.", buf, 0x16u);
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
          contextCopy = v59;
          workflowCopy = v60;
          v14 = v57;
          v10 = v58;
          v15 = v56;
          data = v54;
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
          contextCopy = v59;
          workflowCopy = v60;
          v14 = v57;
          v10 = v58;
          v15 = v56;
          data = v54;
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

      v49 = identifiersCopy;
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
      v49 = identifiersCopy;
    }
  }

  else
  {
    data = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v80 = "[WFAccessResourcesSmartPromptsCustomModificationsStep fetchMigrationEligibleActionUUIDsForWorkflow:context:workflowAccessResourceIdentifiers:]";
      v81 = 2112;
      v82 = workflowCopy;
      _os_log_impl(&dword_1CA256000, data, OS_LOG_TYPE_ERROR, "%s No WFCoreDataWorkflowActions object found for workflow: %@.", buf, 0x16u);
    }

    v62 = MEMORY[0x1E695E0F8];
    v49 = identifiersCopy;
  }

  v51 = *MEMORY[0x1E69E9840];

  return v62;
}

- (id)fetchStatesByAccessResourceIdentifierForWorkflow:(id)workflow context:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  workflowCopy = workflow;
  v7 = +[WFCoreDataAccessResourcePermission fetchRequest];
  v8 = MEMORY[0x1E696AE18];
  identifier = [workflowCopy identifier];

  v10 = [v8 predicateWithFormat:@"%K = %@", @"shortcut.workflowID", identifier];
  [v7 setPredicate:v10];

  v20 = 0;
  v11 = [contextCopy executeFetchRequest:v7 error:&v20];

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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __113__WFAccessResourcesSmartPromptsCustomModificationsStep_fetchStatesByAccessResourceIdentifierForWorkflow_context___block_invoke;
    v18[3] = &unk_1E837EB58;
    v14 = dictionary;
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

- (id)bundleIdentifierForIntentBasedActionIdentifier:(id)identifier accessResourceIdentifiers:(id)identifiers
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  identifiersCopy = identifiers;
  v8 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(identifiersCopy);
      }

      v12 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self extractBundleIdentifierFromIntentsAccessResourceIdentifier:*(*(&v15 + 1) + 8 * v11), v15];
      if (v12)
      {
        if ([identifierCopy hasPrefix:v12])
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [identifiersCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)contentLocationForActionIdentifier:(id)identifier statesByAccessResourceIdentifier:(id)resourceIdentifier
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  resourceIdentifierCopy = resourceIdentifier;
  v8 = [MEMORY[0x1E6996C90] locationWithSystemAppBundleIdentifier:*MEMORY[0x1E69E0E88]];
  v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4A9B488];
  v10 = [v9 containsObject:identifierCopy];

  if (v10)
  {
    v11 = [resourceIdentifierCopy objectForKeyedSubscript:@"WFRemoteServerAccessResource"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v44 = 1;
        array = [MEMORY[0x1E695DF70] array];
        v13 = v11[1];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __124__WFAccessResourcesSmartPromptsCustomModificationsStep_contentLocationForActionIdentifier_statesByAccessResourceIdentifier___block_invoke;
        v40[3] = &unk_1E837EB08;
        v42 = buf;
        v14 = array;
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

  contentDestinationsByActionIdentifier = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByActionIdentifier];
  v19 = [contentDestinationsByActionIdentifier objectForKey:identifierCopy];
  v20 = [v19 isEqual:v8];

  if (v20)
  {
    v11 = [resourceIdentifierCopy objectForKeyedSubscript:@"WFHealthKitAccessResource"];
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

  allKeys = [resourceIdentifierCopy allKeys];
  v23 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self bundleIdentifierForIntentBasedActionIdentifier:identifierCopy accessResourceIdentifiers:allKeys];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E696E720]);
    allKeys2 = [resourceIdentifierCopy allKeys];
    v26 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self bundleIdentifierForIntentBasedActionIdentifier:identifierCopy accessResourceIdentifiers:allKeys2];
    v27 = [v24 initWithBundleIdentifier:v26];

    mEMORY[0x1E696E748] = [MEMORY[0x1E696E748] sharedResolver];
    v29 = [mEMORY[0x1E696E748] resolvedAppMatchingDescriptor:v27];

    v17 = [MEMORY[0x1E6996C90] locationWithAppDescriptor:v29];

    goto LABEL_31;
  }

  contentDestinationsByActionIdentifier2 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self contentDestinationsByActionIdentifier];
  v31 = [contentDestinationsByActionIdentifier2 objectForKey:identifierCopy];

  if (v31)
  {
    accessResourceIdentifiersByContentDestination = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self accessResourceIdentifiersByContentDestination];
    v33 = [accessResourceIdentifiersByContentDestination objectForKey:v31];

    if (v33)
    {
      v34 = [resourceIdentifierCopy objectForKeyedSubscript:v33];
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
        identifier = [v31 identifier];
        *buf = 136315394;
        *&buf[4] = "[WFAccessResourcesSmartPromptsCustomModificationsStep contentLocationForActionIdentifier:statesByAccessResourceIdentifier:]";
        *&buf[12] = 2114;
        *&buf[14] = identifier;
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

- (void)migrateAccessResourcesToSmartPromptsForWorkflow:(id)workflow context:(id)context
{
  v47 = *MEMORY[0x1E69E9840];
  workflowCopy = workflow;
  contextCopy = context;
  if ([(WFAccessResourcesSmartPromptsCustomModificationsStep *)self shortcutHasSmartPromptsData:workflowCopy context:contextCopy])
  {
    array = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(array, OS_LOG_TYPE_DEBUG))
    {
      name = [workflowCopy name];
      *buf = 136315394;
      v44 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]";
      v45 = 2112;
      v46 = name;
      _os_log_impl(&dword_1CA256000, array, OS_LOG_TYPE_DEBUG, "%s Skipping migration of shortcut '%@' as it already has smart prompts data.", buf, 0x16u);
    }
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    v10 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self fetchStatesByAccessResourceIdentifierForWorkflow:workflowCopy context:contextCopy];
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

      allKeys = [v10 allKeys];
      v15 = workflowCopy;
      v16 = contextCopy;
      v17 = [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self fetchMigrationEligibleActionUUIDsForWorkflow:workflowCopy context:contextCopy workflowAccessResourceIdentifiers:allKeys];

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __112__WFAccessResourcesSmartPromptsCustomModificationsStep_migrateAccessResourcesToSmartPromptsForWorkflow_context___block_invoke;
      v39[3] = &unk_1E837EAE0;
      v39[4] = self;
      v32 = v10;
      v40 = v10;
      v33 = array;
      v18 = array;
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
              actionUUID = [v24 actionUUID];
              [v27 setActionUUID:actionUUID];

              [v27 setData:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v42 count:16];
        }

        while (v21);
      }

      workflowCopy = v15;
      contextCopy = v16;
      v10 = v32;
      array = v33;
      v12 = v31;
    }

    else if (v13)
    {
      name2 = [workflowCopy name];
      *buf = 136315394;
      v44 = "[WFAccessResourcesSmartPromptsCustomModificationsStep migrateAccessResourcesToSmartPromptsForWorkflow:context:]";
      v45 = 2112;
      v46 = name2;
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

- (BOOL)performModificationsWithContext:(id)context error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = getWFWorkflowMigrationLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v34 = "[WFAccessResourcesSmartPromptsCustomModificationsStep performModificationsWithContext:error:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEBUG, "%s Starting migration of access resources into smart prompts.", buf, 0xCu);
  }

  errorCopy = error;

  v22 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Shortcut"];
  [v8 setFetchLimit:5];
  v31 = 0;
  v9 = [contextCopy executeFetchRequest:v8 error:&v31];
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
          [(WFAccessResourcesSmartPromptsCustomModificationsStep *)self migrateAccessResourcesToSmartPromptsForWorkflow:v16 context:contextCopy];
          objc_autoreleasePoolPop(v17);
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v13);
    }

    v26 = v10;
    [contextCopy save:&v26];
    v18 = v26;

    [contextCopy reset];
    [v8 setFetchOffset:{objc_msgSend(v8, "fetchOffset") + objc_msgSend(v8, "fetchLimit")}];
    v25 = v18;
    v9 = [contextCopy executeFetchRequest:v8 error:&v25];
    v10 = v25;

    objc_autoreleasePoolPop(context);
  }

  objc_autoreleasePoolPop(v22);
  if (errorCopy)
  {
    v19 = v10;
    *errorCopy = v10;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

@end
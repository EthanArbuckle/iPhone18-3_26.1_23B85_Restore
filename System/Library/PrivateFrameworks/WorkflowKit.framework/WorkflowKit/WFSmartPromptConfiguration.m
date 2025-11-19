@interface WFSmartPromptConfiguration
- (WFSmartPromptConfiguration)initWithCoder:(id)a3;
- (WFSmartPromptConfiguration)initWithDeletionAuthorizationState:(id)a3 contentCollection:(id)a4 action:(id)a5 reference:(id)a6 source:(id)a7;
- (WFSmartPromptConfiguration)initWithOutputContentCollection:(id)a3 reference:(id)a4 source:(id)a5;
- (WFSmartPromptConfiguration)initWithSmartPromptStates:(id)a3 attributionSet:(id)a4 previousAttributions:(id)a5 contentItemCache:(id)a6 action:(id)a7 contentDestination:(id)a8 reference:(id)a9 workflowName:(id)a10 source:(id)a11 isWebpageCoercion:(BOOL)a12;
- (id)authorizationDialogRequestWithAttribution:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSmartPromptConfiguration

- (void)encodeWithCoder:(id)a3
{
  v14.receiver = self;
  v14.super_class = WFSmartPromptConfiguration;
  v4 = a3;
  [(WFWorkflowAuthorizationConfiguration *)&v14 encodeWithCoder:v4];
  v5 = [(WFSmartPromptConfiguration *)self requestType:v14.receiver];
  [v4 encodeObject:v5 forKey:@"requestType"];

  v6 = [(WFSmartPromptConfiguration *)self requestSource];
  [v4 encodeObject:v6 forKey:@"requestSource"];

  v7 = [(WFSmartPromptConfiguration *)self smartPromptStates];
  [v4 encodeObject:v7 forKey:@"smartPromptStates"];

  v8 = [(WFSmartPromptConfiguration *)self deletionAuthorizationState];
  [v4 encodeObject:v8 forKey:@"deletionAuthorizationState"];

  v9 = [(WFSmartPromptConfiguration *)self workflowReference];
  [v4 encodeObject:v9 forKey:@"workflowReference"];

  v10 = [(WFSmartPromptConfiguration *)self workflowName];
  [v4 encodeObject:v10 forKey:@"workflowName"];

  v11 = [(WFSmartPromptConfiguration *)self actionUUID];
  [v4 encodeObject:v11 forKey:@"actionUUID"];

  v12 = [(WFSmartPromptConfiguration *)self archivedSourceContentCollection];
  [v4 encodeObject:v12 forKey:@"archivedSourceContentCollection"];

  v13 = [(WFSmartPromptConfiguration *)self localizedPrompt];
  [v4 encodeObject:v13 forKey:@"localizedPrompt"];
}

- (WFSmartPromptConfiguration)initWithCoder:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = WFSmartPromptConfiguration;
  v5 = [(WFWorkflowAuthorizationConfiguration *)&v30 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestType"];
    requestType = v5->_requestType;
    v5->_requestType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestSource"];
    requestSource = v5->_requestSource;
    v5->_requestSource = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"archivedSourceContentCollection"];
    archivedSourceContentCollection = v5->_archivedSourceContentCollection;
    v5->_archivedSourceContentCollection = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedPrompt"];
    localizedPrompt = v5->_localizedPrompt;
    v5->_localizedPrompt = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deletionAuthorizationState"];
    deletionAuthorizationState = v5->_deletionAuthorizationState;
    v5->_deletionAuthorizationState = v14;

    v16 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v18 = [v16 setWithArray:v17];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"smartPromptStates"];
    smartPromptStates = v5->_smartPromptStates;
    v5->_smartPromptStates = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowReference"];
    workflowReference = v5->_workflowReference;
    v5->_workflowReference = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowName"];
    workflowName = v5->_workflowName;
    v5->_workflowName = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
    actionUUID = v5->_actionUUID;
    v5->_actionUUID = v25;

    v27 = v5;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)authorizationDialogRequestWithAttribution:(id)a3
{
  v4 = a3;
  v5 = [[WFSmartPromptDialogRequest alloc] initWithConfiguration:self attribution:v4];

  return v5;
}

- (WFSmartPromptConfiguration)initWithOutputContentCollection:(id)a3 reference:(id)a4 source:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = WFSmartPromptConfiguration;
  v11 = [(WFWorkflowAuthorizationConfiguration *)&v31 init];
  v12 = v11;
  if (v11)
  {
    requestType = v11->_requestType;
    v11->_requestType = @"SmartPrompt";

    objc_storeStrong(&v12->_requestSource, a5);
    deletionAuthorizationState = v12->_deletionAuthorizationState;
    v12->_deletionAuthorizationState = 0;

    objc_storeStrong(&v12->_workflowReference, a4);
    smartPromptStates = v12->_smartPromptStates;
    v12->_smartPromptStates = 0;

    v16 = [WFSmartPromptStringGenerator localizedOutputContentDescriptionWithContentCollection:v8];
    v17 = MEMORY[0x1E696AEC0];
    v18 = WFLocalizedString(@"Allow “%1$@” to output %2$@?");
    v19 = [v9 name];
    v20 = [v16 localizedLowercaseString];
    v21 = [v17 localizedStringWithFormat:v18, v19, v20];
    localizedPrompt = v12->_localizedPrompt;
    v12->_localizedPrompt = v21;

    v23 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v8];
    archivedSourceContentCollection = v12->_archivedSourceContentCollection;
    v12->_archivedSourceContentCollection = v23;

    if (v12->_archivedSourceContentCollection)
    {
      v25 = [v8 copy];
      cachedSourceContentCollection = v12->_cachedSourceContentCollection;
      v12->_cachedSourceContentCollection = v25;

      v12->_isSpecialRequest = 0;
      v27 = v12;
    }

    else
    {
      v28 = getWFGeneralLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v33 = "[WFSmartPromptConfiguration initWithOutputContentCollection:reference:source:]";
        _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_FAULT, "%s Unable to archive output smart prompt content collection", buf, 0xCu);
      }

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (WFSmartPromptConfiguration)initWithDeletionAuthorizationState:(id)a3 contentCollection:(id)a4 action:(id)a5 reference:(id)a6 source:(id)a7
{
  v50 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v47.receiver = self;
  v47.super_class = WFSmartPromptConfiguration;
  v18 = [(WFWorkflowAuthorizationConfiguration *)&v47 init];
  v19 = v18;
  if (v18)
  {
    requestType = v18->_requestType;
    v18->_requestType = @"DeletionAuthorization";

    objc_storeStrong(&v19->_requestSource, a7);
    v21 = [v15 UUID];
    actionUUID = v19->_actionUUID;
    v19->_actionUUID = v21;

    objc_storeStrong(&v19->_deletionAuthorizationState, a3);
    objc_storeStrong(&v19->_workflowReference, a6);
    smartPromptStates = v19->_smartPromptStates;
    v19->_smartPromptStates = 0;

    v24 = [v13 contentItemClassName];
    if ([(NSString *)v24 length])
    {
      v25 = NSClassFromString(v24);
      if (v25)
      {
        v26 = v25;
        v45 = v17;
        if (objc_opt_respondsToSelector())
        {
          v27 = -[objc_class localizedCountDescriptionWithValue:](v26, "localizedCountDescriptionWithValue:", [v14 numberOfItems]);
        }

        else
        {
          v30 = MEMORY[0x1E696AEC0];
          v31 = [(objc_class *)v26 countDescription];
          v27 = [v30 localizedStringWithFormat:v31, objc_msgSend(v14, "numberOfItems")];
        }

        v32 = MEMORY[0x1E696AEC0];
        v33 = WFLocalizedString(@"Allow “%1$@” to delete %2$@?");
        v46 = v16;
        v34 = [v16 name];
        v35 = [v27 localizedLowercaseString];
        v36 = [v32 localizedStringWithFormat:v33, v34, v35];
        localizedPrompt = v19->_localizedPrompt;
        v19->_localizedPrompt = v36;

        v38 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v14];
        archivedSourceContentCollection = v19->_archivedSourceContentCollection;
        v19->_archivedSourceContentCollection = v38;

        if (v19->_archivedSourceContentCollection)
        {
          v40 = [v14 copy];
          cachedSourceContentCollection = v19->_cachedSourceContentCollection;
          v19->_cachedSourceContentCollection = v40;

          v19->_isSpecialRequest = 0;
          v28 = v19;
          v17 = v45;
          v16 = v46;
        }

        else
        {
          v42 = getWFGeneralLogObject();
          v17 = v45;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315138;
            v49 = "[WFSmartPromptConfiguration initWithDeletionAuthorizationState:contentCollection:action:reference:source:]";
            _os_log_impl(&dword_1CA256000, v42, OS_LOG_TYPE_FAULT, "%s Unable to archive deletion prompt content collection", buf, 0xCu);
          }

          v28 = 0;
          v16 = v46;
        }

        goto LABEL_19;
      }

      v27 = getWFSecurityLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v49 = "[WFSmartPromptConfiguration initWithDeletionAuthorizationState:contentCollection:action:reference:source:]";
        v29 = "%s Failed to init contentItemClass from name";
        goto LABEL_11;
      }
    }

    else
    {
      v27 = getWFSecurityLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v49 = "[WFSmartPromptConfiguration initWithDeletionAuthorizationState:contentCollection:action:reference:source:]";
        v29 = "%s No contentItemClassName in WFDeletionAuthorizationState";
LABEL_11:
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, v29, buf, 0xCu);
      }
    }

    v28 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v28 = 0;
LABEL_20:

  v43 = *MEMORY[0x1E69E9840];
  return v28;
}

- (WFSmartPromptConfiguration)initWithSmartPromptStates:(id)a3 attributionSet:(id)a4 previousAttributions:(id)a5 contentItemCache:(id)a6 action:(id)a7 contentDestination:(id)a8 reference:(id)a9 workflowName:(id)a10 source:(id)a11 isWebpageCoercion:(BOOL)a12
{
  v65 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v57 = a4;
  v56 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v55 = a9;
  v22 = a10;
  v53 = a11;
  v61.receiver = self;
  v61.super_class = WFSmartPromptConfiguration;
  v23 = [(WFWorkflowAuthorizationConfiguration *)&v61 init];
  v24 = v23;
  if (v23)
  {
    requestType = v23->_requestType;
    v23->_requestType = @"SmartPrompt";

    objc_storeStrong(&v24->_requestSource, a11);
    v26 = [v20 UUID];
    actionUUID = v24->_actionUUID;
    v24->_actionUUID = v26;

    objc_storeStrong(&v24->_smartPromptStates, a3);
    deletionAuthorizationState = v24->_deletionAuthorizationState;
    v24->_deletionAuthorizationState = 0;

    objc_storeStrong(&v24->_workflowReference, a9);
    v29 = v22;
    if (!v22)
    {
      v29 = [v55 name];
    }

    objc_storeStrong(&v24->_workflowName, v29);
    if (!v22)
    {
    }

    if ([v21 promptingBehaviour] == 2 && (objc_msgSend(v20, "identifier"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", @"is.workflow.actions.askllm"), v30, (v31 & 1) == 0))
    {
      v37 = [MEMORY[0x1E695DEC8] array];
    }

    else
    {
      v32 = MEMORY[0x1E695DFB8];
      v33 = [v57 attributions];
      v34 = [v33 if_flatMap:&__block_literal_global_41238];
      v35 = [v32 orderedSetWithArray:v34];

      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __183__WFSmartPromptConfiguration_initWithSmartPromptStates_attributionSet_previousAttributions_contentItemCache_action_contentDestination_reference_workflowName_source_isWebpageCoercion___block_invoke_2;
      v59[3] = &unk_1E8379A58;
      v60 = v19;
      v36 = [v35 if_compactMap:v59];
      v37 = [v36 array];
    }

    v39 = [MEMORY[0x1E6996D40] collectionWithItems:v37];
    v40 = [MEMORY[0x1E696ACC8] wf_securelyArchivedDataWithRootObject:v39];
    archivedSourceContentCollection = v24->_archivedSourceContentCollection;
    v24->_archivedSourceContentCollection = v40;

    if (v24->_archivedSourceContentCollection)
    {
      v42 = [v39 copy];
      cachedSourceContentCollection = v24->_cachedSourceContentCollection;
      v24->_cachedSourceContentCollection = v42;

      LOBYTE(v51) = a12;
      v44 = [WFSmartPromptStringGenerator localizedPromptForWorkflowName:v22 attributionSet:v57 contentCollection:v24->_cachedSourceContentCollection contentItemCache:v19 contentDestination:v21 action:v20 isWebpageCoercion:v51];
      localizedPrompt = v24->_localizedPrompt;
      v24->_localizedPrompt = v44;

      LOBYTE(v52) = a12;
      v46 = [WFSmartPromptStringGenerator localizedSubtitleForWorkflowName:v22 attributionSet:v57 previousAttributions:v56 contentItemCache:v19 contentDestination:v21 action:v20 isWebpageCoercion:v52];
      localizedSubtitle = v24->_localizedSubtitle;
      v24->_localizedSubtitle = v46;

      if ([v39 numberOfItems] < 1)
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v63 = 0x2020000000;
        v64 = 1;
        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __183__WFSmartPromptConfiguration_initWithSmartPromptStates_attributionSet_previousAttributions_contentItemCache_action_contentDestination_reference_workflowName_source_isWebpageCoercion___block_invoke_205;
        v58[3] = &unk_1E8379A80;
        v58[4] = &buf;
        [v54 enumerateObjectsUsingBlock:v58];
        v24->_isSpecialRequest = *(*(&buf + 1) + 24);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v24->_isSpecialRequest = 0;
      }

      v38 = v24;
    }

    else
    {
      v48 = getWFGeneralLogObject();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[WFSmartPromptConfiguration initWithSmartPromptStates:attributionSet:previousAttributions:contentItemCache:action:contentDestination:reference:workflowName:source:isWebpageCoercion:]";
        _os_log_impl(&dword_1CA256000, v48, OS_LOG_TYPE_FAULT, "%s Unable to archive smart prompt source content collection", &buf, 0xCu);
      }

      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v38;
}

void __183__WFSmartPromptConfiguration_initWithSmartPromptStates_attributionSet_previousAttributions_contentItemCache_action_contentDestination_reference_workflowName_source_isWebpageCoercion___block_invoke_205(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 mode];
  if ([v6 isEqualToString:@"UserWildcard"])
  {
  }

  else
  {
    v7 = [v9 mode];
    v8 = [v7 isEqualToString:@"ActionWildcard"];

    if ((v8 & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void *__183__WFSmartPromptConfiguration_initWithSmartPromptStates_attributionSet_previousAttributions_contentItemCache_action_contentDestination_reference_workflowName_source_isWebpageCoercion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 privateItemIdentifiers];
  v3 = [v2 array];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

@end
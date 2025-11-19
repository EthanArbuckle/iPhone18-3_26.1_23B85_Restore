@interface WFIntentActionProvider
+ (id)disabledPlatformsForIntentWithTypeName:(id)a3;
+ (void)initialize;
- (BOOL)shouldCreateActionForIntentClassName:(id)a3 actionIdentifier:(id)a4 bundleIdentifier:(id)a5 inSchema:(id)a6;
- (NSSet)cachedSystemIntentActions;
- (WFIntentActionProvider)initWithOptions:(unint64_t)a3;
- (id)actionIdentifiersForBundleIdentifier:(id)a3 schema:(id)a4;
- (id)actionIdentifiersRequiringBundledActionProvider;
- (id)actionIdentifiersRequiringBundledActionProviderMappedByApp;
- (id)availableActionIdentifiers;
- (id)createActionsForBundleIdentifier:(id)a3;
- (id)createAllAvailableActions;
- (id)schemaForBundleIdentifier:(id)a3 ignoreCache:(BOOL)a4;
- (id)schemasByBundleIdentifier;
- (void)handleApplicationDidChangeNotification:(id)a3;
- (void)installedApplicationsDidChange:(id)a3;
- (void)observeInstalledApplicationsChangesIfNeeded;
@end

@implementation WFIntentActionProvider

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    WFDisableAppTrustChecking();
  }
}

- (void)handleApplicationDidChangeNotification:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(WFIntentActionProvider *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:@"bundleIDs"];

  v8 = v7;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = getWFActionRegistryLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v46 = "[WFIntentActionProvider handleApplicationDidChangeNotification:]";
      v47 = 2114;
      v48 = v8;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_INFO, "%s Installed applications changed: %{public}@", buf, 0x16u);
    }

    v10 = [(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier];
    v11 = [v10 mutableCopy];

    v40 = v11;
    if (v11)
    {
      v33 = v4;
      v38 = objc_opt_new();
      v37 = objc_opt_new();
      v39 = objc_opt_new();
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v32 = v8;
      obj = v8;
      v12 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
      if (v12)
      {
        v13 = v12;
        v35 = *v42;
        v36 = self;
        v14 = 0x1E695D000uLL;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v42 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v41 + 1) + 8 * i);
            v17 = *(v14 + 4056);
            v18 = objc_opt_new();
            v19 = [v40 objectForKey:v16];
            if (v19)
            {
              v20 = [(WFIntentActionProvider *)self actionIdentifiersForBundleIdentifier:v16 schema:v19];

              v18 = v20;
            }

            v21 = [(WFIntentActionProvider *)self schemaForBundleIdentifier:v16 ignoreCache:1];
            v22 = *(v14 + 4056);
            v23 = objc_opt_new();
            if (v21)
            {
              v24 = [(WFIntentActionProvider *)self actionIdentifiersForBundleIdentifier:v16 schema:v21];

              v23 = v24;
            }

            v25 = [v18 mutableCopy];
            [v25 minusSet:v23];
            v26 = [v23 mutableCopy];
            [v26 minusSet:v18];
            v27 = [v23 mutableCopy];
            [v27 intersectSet:v18];
            [v38 unionSet:v25];
            [v37 unionSet:v26];
            [v39 unionSet:v27];
            [v40 setValue:v21 forKey:v16];

            self = v36;
            v14 = 0x1E695D000;
          }

          v13 = [obj countByEnumeratingWithState:&v41 objects:v53 count:16];
        }

        while (v13);
      }

      [(WFIntentActionProvider *)self setCachedSchemasByBundleIdentifier:v40];
      v28 = getWFActionRegistryLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v46 = "[WFIntentActionProvider handleApplicationDidChangeNotification:]";
        v47 = 2114;
        v48 = v39;
        v49 = 2114;
        v50 = v37;
        v51 = 2114;
        v52 = v38;
        _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_INFO, "%s Updated: %{public}@, Added: %{public}@, Removed: %{public}@", buf, 0x2Au);
      }

      v8 = v32;
      v4 = v33;
      if ([v38 count] || objc_msgSend(v37, "count") || -[NSObject count](v39, "count"))
      {
        v29 = [(WFActionProvider *)self delegate];
        [v29 actionProviderDidChange:self updatedActions:v39 removedActions:v38 addedActions:v37];
      }
    }

    v30 = v8;
  }

  else
  {

    v30 = getWFActionRegistryLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v46 = "[WFIntentActionProvider handleApplicationDidChangeNotification:]";
      _os_log_impl(&dword_1CA256000, v30, OS_LOG_TYPE_FAULT, "%s Got an application did change notification, but couldn't extract bundle identifiers out of it", buf, 0xCu);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)installedApplicationsDidChange:(id)a3
{
  v4 = a3;
  v5 = [(WFIntentActionProvider *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__WFIntentActionProvider_installedApplicationsDidChange___block_invoke;
  v7[3] = &unk_1E837F870;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)observeInstalledApplicationsChangesIfNeeded
{
  if (![(WFIntentActionProvider *)self isObservingInstalledApplicationsChanges])
  {
    [(WFIntentActionProvider *)self setObservingInstalledApplicationsChanges:1];
    v3 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v3 addObserver:self selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v3 addObserver:self selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
  }
}

- (BOOL)shouldCreateActionForIntentClassName:(id)a3 actionIdentifier:(id)a4 bundleIdentifier:(id)a5 inSchema:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 isEqualToString:@"com.apple.mobilemail.MSGetMailIntent"])
  {
    goto LABEL_8;
  }

  if (![v11 hasSuffix:@"Intent"])
  {
    goto LABEL_8;
  }

  if ([v12 isEqualToString:@"com.apple.WorkflowKit.ShortcutsIntents"])
  {
    goto LABEL_8;
  }

  if ([v12 isEqualToString:@"com.apple.ActionKit.BundledIntentHandler"])
  {
    goto LABEL_8;
  }

  if ([v12 isEqualToString:@"com.apple.shortcuts"])
  {
    goto LABEL_8;
  }

  v14 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v12];
  v15 = [v14 isHidden];

  if (v15 & 1) != 0 || (-[WFIntentActionProvider actionIdentifiersRequiringBundledActionProvider](self, "actionIdentifiersRequiringBundledActionProvider"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 containsObject:v11], v16, (v17))
  {
LABEL_8:
    v18 = 0;
  }

  else if (v13)
  {
    v20 = [v13 intentCodableDescriptionWithIntentClassName:v10];
    v21 = [v13 _parameterCombinationsForClassName:v10];
    v22 = [v20 resolvableParameterCombinationsWithParameterCombinations:v21];
    v23 = [v22 count];

    NSClassFromString(v10);
    v24 = INIntentSchemaGetIntentDescriptionWithFacadeClass();

    v25 = [v20 isConfigurable];
    if (v23)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    if (v24)
    {
      v18 = 0;
    }

    else
    {
      v18 = v26;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (id)actionIdentifiersRequiringBundledActionProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WFIntentActionProvider_actionIdentifiersRequiringBundledActionProvider__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  if (actionIdentifiersRequiringBundledActionProvider_onceToken != -1)
  {
    dispatch_once(&actionIdentifiersRequiringBundledActionProvider_onceToken, block);
  }

  return actionIdentifiersRequiringBundledActionProvider_actionIdentifiersRequiringBundledActionProvider;
}

void __73__WFIntentActionProvider_actionIdentifiersRequiringBundledActionProvider__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = actionIdentifiersRequiringBundledActionProvider_actionIdentifiersRequiringBundledActionProvider;
  actionIdentifiersRequiringBundledActionProvider_actionIdentifiersRequiringBundledActionProvider = v2;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*(a1 + 32) actionIdentifiersRequiringBundledActionProviderMappedByApp];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = actionIdentifiersRequiringBundledActionProvider_actionIdentifiersRequiringBundledActionProvider;
        v11 = [*(*(&v13 + 1) + 8 * v9) allKeys];
        [v10 addObjectsFromArray:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)actionIdentifiersRequiringBundledActionProviderMappedByApp
{
  if (actionIdentifiersRequiringBundledActionProviderMappedByApp_onceToken != -1)
  {
    dispatch_once(&actionIdentifiersRequiringBundledActionProviderMappedByApp_onceToken, &__block_literal_global_202_56895);
  }

  v3 = actionIdentifiersRequiringBundledActionProviderMappedByApp_map;

  return v3;
}

void __84__WFIntentActionProvider_actionIdentifiersRequiringBundledActionProviderMappedByApp__block_invoke()
{
  v0 = actionIdentifiersRequiringBundledActionProviderMappedByApp_map;
  actionIdentifiersRequiringBundledActionProviderMappedByApp_map = &unk_1F4A99FA0;
}

- (id)actionIdentifiersForBundleIdentifier:(id)a3 schema:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [v7 _classNamesForClass:objc_opt_class()];
  v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, v12];
        if ([(WFIntentActionProvider *)self shouldCreateActionForIntentClassName:v12 actionIdentifier:v13 bundleIdentifier:v6 inSchema:v7])
        {
          [v16 addObject:v13];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSSet)cachedSystemIntentActions
{
  if (!self->_cachedSystemIntentActions && [(WFIntentActionProvider *)self shouldConsiderSystemIntents])
  {
    v3 = WFLoadAllSystemIntentActions(self);
    cachedSystemIntentActions = self->_cachedSystemIntentActions;
    self->_cachedSystemIntentActions = v3;
  }

  v5 = self->_cachedSystemIntentActions;

  return v5;
}

- (id)schemaForBundleIdentifier:(id)a3 ignoreCache:(BOOL)a4
{
  v6 = a3;
  if (a4 || ([(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [MEMORY[0x1E696E878] sharedConnection];
    v10 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    v11 = [v8 loadSchemasForBundleIdentifiers:v10 error:0];
    v9 = [v11 objectForKey:v6];
  }

  else
  {
    v8 = [(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier];
    v9 = [v8 objectForKey:v6];
  }

  return v9;
}

- (id)schemasByBundleIdentifier
{
  v3 = [(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier];

  if (!v3)
  {
    v4 = [MEMORY[0x1E696E878] sharedConnection];
    v5 = [v4 availableSchemasWithError:0];
    [(WFIntentActionProvider *)self setCachedSchemasByBundleIdentifier:v5];
  }

  return [(WFIntentActionProvider *)self cachedSchemasByBundleIdentifier];
}

- (id)createActionsForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = [MEMORY[0x1E696E878] sharedConnection];
  v7 = [MEMORY[0x1E695DFD8] setWithObject:v4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__WFIntentActionProvider_createActionsForBundleIdentifier___block_invoke;
  v13[3] = &unk_1E837C1E8;
  v13[4] = self;
  v14 = v4;
  v8 = v5;
  v15 = v8;
  v9 = v4;
  [v6 wf_accessBundleContentForBundleIdentifiers:v7 withBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __59__WFIntentActionProvider_createActionsForBundleIdentifier___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) schemaForBundleIdentifier:*(a1 + 40) ignoreCache:0];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v2 _classNamesForClass:objc_opt_class()];
  v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    v6 = 0x1E696A000uLL;
    v19 = *v23;
    do
    {
      v7 = 0;
      v20 = v4;
      do
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        v10 = [*(v6 + 3776) stringWithFormat:@"%@.%@", *(a1 + 40), v8];
        if ([*(a1 + 32) shouldCreateActionForIntentClassName:v8 actionIdentifier:v10 bundleIdentifier:*(a1 + 40) inSchema:v2])
        {
          v11 = [WFHandleCustomIntentAction alloc];
          v12 = [*(a1 + 32) defaultActionDefinition];
          v13 = v2;
          v14 = *(a1 + 40);
          v15 = [*(a1 + 32) stringLocalizer];
          v18 = v14;
          v2 = v13;
          v16 = [(WFHandleCustomIntentAction *)v11 initWithIdentifier:v10 definition:v12 serializedParameters:0 schema:v13 intent:0 className:v8 bundleIdentifier:v18 stringLocalizer:v15];

          if (v16)
          {
            [*(a1 + 48) addObject:v16];
          }

          v5 = v19;
          v4 = v20;
          v6 = 0x1E696A000;
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __73__WFIntentActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v3 = [v43 actionIdentifier];
  v44 = [v3 componentsSeparatedByString:@"."];
  v4 = v44;
  if ([v44 count] >= 2)
  {
    v5 = [v44 subarrayWithRange:{0, objc_msgSend(v44, "count") - 1}];
    v40 = [v5 componentsJoinedByString:@"."];

    v45 = [v44 lastObject];
    if ([*(a1 + 32) shouldConsiderSystemIntents] && (WFSupportedSystemIntentClasses(), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v45), v6, v7) && (WFGetSystemIntentActionForBundleIdentifierAndIntentClassName(v40, v45, *(a1 + 32)), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [v43 setResult:v8];
    }

    else if ([v45 hasSuffix:@"Intent"])
    {
      v9 = [v43 serializedParameters];
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v38 = v11;
      v12 = [v11 objectForKey:@"AppIntentDescriptor"];

      if (!v12)
      {
        v13 = [v43 serializedParameters];
        v37 = [v13 objectForKey:@"SerializedIntentDescriptor"];

        if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v14 = [objc_alloc(MEMORY[0x1E696E890]) initWithSerializedRepresentation:v37];
        }

        else
        {

          v14 = [objc_alloc(MEMORY[0x1E696E890]) initWithIntentClassName:v45 launchableAppBundleId:v40];
          v37 = 0;
        }

        v15 = [MEMORY[0x1E696E748] sharedResolver];
        v39 = [v15 resolvedIntentMatchingDescriptor:v14];

        v16 = objc_opt_new();
        v17 = [v39 extensionBundleIdentifier];

        if (v17)
        {
          v18 = [v39 extensionBundleIdentifier];
          [v16 addObject:v18];
        }

        v19 = [v39 bundleIdentifier];

        if (v19)
        {
          v20 = [v39 bundleIdentifier];
          [v16 addObject:v20];
        }

        v21 = [v39 intentClassName];
        v22 = [v21 length];

        if (v22)
        {
          v23 = [v39 intentClassName];

          v45 = v23;
        }

        [v16 addObject:v40];
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        obj = v16;
        v24 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
        if (!v24)
        {

          v26 = 0;
          v42 = 0;
          goto LABEL_40;
        }

        v42 = 0;
        v25 = 0;
        v26 = 0;
        v27 = *v58;
LABEL_25:
        v28 = 0;
        while (1)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v57 + 1) + 8 * v28);
          v30 = [*(a1 + 32) schemaForBundleIdentifier:v29 ignoreCache:0];

          v26 = v30;
          if ([*(a1 + 32) shouldCreateActionForIntentClassName:v45 actionIdentifier:v3 bundleIdentifier:v29 inSchema:v30])
          {
            if (v30)
            {
              v31 = v29;

              v42 = v31;
              goto LABEL_38;
            }

            if (!v42)
            {
              v42 = v29;
            }

            v25 = 1;
          }

          if (v24 == ++v28)
          {
            v24 = [obj countByEnumeratingWithState:&v57 objects:v61 count:16];
            if (v24)
            {
              goto LABEL_25;
            }

            if ((v25 & 1) == 0)
            {
LABEL_40:

              break;
            }

LABEL_38:
            v51 = 0;
            v52 = &v51;
            v53 = 0x3032000000;
            v54 = __Block_byref_object_copy__56969;
            v55 = __Block_byref_object_dispose__56970;
            v56 = 0;
            v32 = [MEMORY[0x1E696E878] sharedConnection];
            v33 = [MEMORY[0x1E695DFD8] setWithObject:v42];
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __73__WFIntentActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke_186;
            v46[3] = &unk_1E837C238;
            v50 = &v51;
            v34 = *(a1 + 32);
            v46[4] = v3;
            v46[5] = v34;
            v35 = v43;
            v47 = v35;
            v26 = v30;
            v48 = v26;
            v49 = v39;
            [v32 wf_accessBundleContentForBundleIdentifiers:v33 withBlock:v46];

            [v35 setResult:v52[5]];
            _Block_object_dispose(&v51, 8);

            goto LABEL_40;
          }
        }
      }
    }

    v4 = v44;
  }

  v36 = *MEMORY[0x1E69E9840];
}

void __73__WFIntentActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke_186(uint64_t a1)
{
  v2 = [WFHandleCustomIntentAction alloc];
  v3 = *(a1 + 32);
  v11 = [*(a1 + 40) defaultActionDefinition];
  v4 = [*(a1 + 48) serializedParameters];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(a1 + 40) stringLocalizer];
  v8 = [(WFHandleCustomIntentAction *)v2 initWithIdentifier:v3 definition:v11 serializedParameters:v4 schema:v5 intent:0 resolvedIntentDescriptor:v6 stringLocalizer:v7];
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)availableActionIdentifiers
{
  v3 = objc_opt_new();
  v4 = [(WFIntentActionProvider *)self schemasByBundleIdentifier];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__WFIntentActionProvider_availableActionIdentifiers__block_invoke;
  v9[3] = &unk_1E837C1C0;
  v9[4] = v3;
  v9[5] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  if ([(WFIntentActionProvider *)self shouldConsiderSystemIntents])
  {
    v5 = [(WFIntentActionProvider *)self cachedSystemIntentActions];
    v6 = [v5 if_compactMap:&__block_literal_global_56976];

    [v3 unionSet:v6];
  }

  v7 = v3;

  return v3;
}

void __52__WFIntentActionProvider_availableActionIdentifiers__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) actionIdentifiersForBundleIdentifier:a2 schema:a3];
  [v3 unionSet:v4];
}

- (id)createAllAvailableActions
{
  [(WFIntentActionProvider *)self observeInstalledApplicationsChangesIfNeeded];
  v3 = objc_opt_new();
  v4 = [(WFIntentActionProvider *)self schemasByBundleIdentifier];
  if (v4)
  {
    v5 = [MEMORY[0x1E696E878] sharedConnection];
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v4 allKeys];
    v8 = [v6 setWithArray:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __51__WFIntentActionProvider_createAllAvailableActions__block_invoke;
    v12[3] = &unk_1E837C1E8;
    v12[4] = v4;
    v12[5] = self;
    v12[6] = v3;
    [v5 wf_accessBundleContentForBundleIdentifiers:v8 withBlock:v12];

    if ([(WFIntentActionProvider *)self shouldConsiderSystemIntents])
    {
      v9 = [(WFIntentActionProvider *)self cachedSystemIntentActions];
      [v3 unionSet:v9];
    }

    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __51__WFIntentActionProvider_createAllAvailableActions__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__WFIntentActionProvider_createAllAvailableActions__block_invoke_2;
  v3[3] = &unk_1E837C1C0;
  v4 = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __51__WFIntentActionProvider_createAllAvailableActions__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = a2;
  v5 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v5 _classNamesForClass:objc_opt_class()];
  v22 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v22)
  {
    v6 = *v25;
    v7 = 0x1E696A000uLL;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(v7 + 3776) stringWithFormat:@"%@.%@", v23, v9];
        if ([*(a1 + 32) shouldCreateActionForIntentClassName:v9 actionIdentifier:v11 bundleIdentifier:v23 inSchema:v5])
        {
          v12 = v6;
          v13 = v5;
          v14 = [WFHandleCustomIntentAction alloc];
          v15 = [*(a1 + 32) defaultActionDefinition];
          [*(a1 + 32) stringLocalizer];
          v17 = v16 = a1;
          v18 = v14;
          v5 = v13;
          v19 = [(WFHandleCustomIntentAction *)v18 initWithIdentifier:v11 definition:v15 serializedParameters:0 schema:v13 intent:0 className:v9 bundleIdentifier:v23 stringLocalizer:v17];

          a1 = v16;
          if (v19)
          {
            [*(v16 + 40) addObject:v19];
          }

          v6 = v12;
          v7 = 0x1E696A000;
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v22 != v8);
      v22 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v22);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (WFIntentActionProvider)initWithOptions:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = WFIntentActionProvider;
  v4 = [(WFIntentActionProvider *)&v11 init];
  if (v4)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_get_global_queue(21, 0);
    v7 = dispatch_queue_create_with_target_V2("com.apple.shortcuts.intentsactionprovider", v5, v6);
    queue = v4->_queue;
    v4->_queue = v7;

    v4->_options = a3;
    v9 = v4;
  }

  return v4;
}

+ (id)disabledPlatformsForIntentWithTypeName:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 == @"sirikit.intents.custom.com.apple.mobilecal.EKUICreateEventIntent")
  {
    goto LABEL_6;
  }

  if (v3)
  {
    v5 = [(__CFString *)v3 isEqualToString:@"sirikit.intents.custom.com.apple.mobilecal.EKUICreateEventIntent"];

    if ((v5 & 1) != 0 || (v6 = v4, v6 == @"sirikit.intents.custom.com.apple.mobilesafari.OpenURLsIntent") || (v7 = v6, v8 = [(__CFString *)v6 isEqualToString:@"sirikit.intents.custom.com.apple.mobilesafari.OpenURLsIntent"], v7, v8))
    {
LABEL_6:
      v21 = @"Watch";
      v9 = &v21;
LABEL_7:
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:{1, v19, v20, v21, v22}];
      goto LABEL_15;
    }

    v11 = v7;
    if (v11 == @"sirikit.intents.custom.com.apple.weather.WeatherIntent" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"sirikit.intents.custom.com.apple.weather.WeatherIntent"], v12, v13))
    {
      v20 = @"Watch";
      v9 = &v20;
      goto LABEL_7;
    }

    v14 = v12;
    if (v14 == @"sirikit.intent.payments.SendPaymentIntent" || (v15 = v14, v16 = [(__CFString *)v14 isEqualToString:@"sirikit.intent.payments.SendPaymentIntent"], v15, v16))
    {
      v19 = @"Desktop";
      v9 = &v19;
      goto LABEL_7;
    }
  }

  v10 = MEMORY[0x1E695E0F0];
LABEL_15:

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

@end
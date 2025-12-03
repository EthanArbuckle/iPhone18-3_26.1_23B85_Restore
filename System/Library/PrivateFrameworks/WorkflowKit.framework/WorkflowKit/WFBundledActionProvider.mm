@interface WFBundledActionProvider
- (NSSet)identifiersOfActionsDisabledOnWatch;
- (id)actionDefinitionsWithIdentifiers:(id)identifiers;
- (id)availableActionIdentifiers;
- (id)createAllAvailableActionsForLocalization;
- (void)createActionsForRequests:(id)requests forceLocalActionsOnly:(BOOL)only;
@end

@implementation WFBundledActionProvider

- (NSSet)identifiersOfActionsDisabledOnWatch
{
  v3 = os_transaction_create();
  v4 = objc_opt_new();
  v5 = objc_autoreleasePoolPush();
  v6 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:0];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__WFBundledActionProvider_DisabledOnWatch__identifiersOfActionsDisabledOnWatch__block_invoke;
  v9[3] = &unk_1E8373260;
  v7 = v4;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  objc_autoreleasePoolPop(v5);

  return v7;
}

void __79__WFBundledActionProvider_DisabledOnWatch__identifiersOfActionsDisabledOnWatch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 objectForKey:@"DisabledOnPlatforms"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 containsObject:@"Watch"];
  if (v10)
  {
    [*(a1 + 32) addObject:v11];
  }

  objc_autoreleasePoolPop(v6);
}

- (id)createAllAvailableActionsForLocalization
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:0];
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v15}];
        v12 = [(WFBundledActionProvider *)self createActionWithIdentifier:v10 definition:v11 serializedParameters:0 fallbackToMissing:1 isForLocalization:1];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)createActionsForRequests:(id)requests forceLocalActionsOnly:(BOOL)only
{
  v42 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v5 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = requestsCopy;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        actionIdentifier = [*(*(&v32 + 1) + 8 * i) actionIdentifier];
        [v5 addObject:actionIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v8);
  }

  v26 = v5;
  v12 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:v5];
  v13 = getWFActionRegistryLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [v12 allKeys];
    *buf = 136315394;
    v38 = "[WFBundledActionProvider createActionsForRequests:forceLocalActionsOnly:]";
    v39 = 2114;
    v40 = allKeys;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_DEFAULT, "%s Found actions: %{public}@", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        actionIdentifier2 = [v20 actionIdentifier];
        v22 = [v12 objectForKey:actionIdentifier2];
        if (v22)
        {
          serializedParameters = [v20 serializedParameters];
          v24 = [(WFBundledActionProvider *)self createActionWithIdentifier:actionIdentifier2 definition:v22 serializedParameters:serializedParameters fallbackToMissing:1 isForLocalization:0];

          if (v24)
          {
            [v20 setResult:v24];
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v17);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)availableActionIdentifiers
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(WFBundledActionProvider *)self actionDefinitionsWithIdentifiers:0];
  allKeys = [v4 allKeys];
  v6 = [v3 initWithArray:allKeys];

  return v6;
}

- (id)actionDefinitionsWithIdentifiers:(id)identifiers
{
  v50 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = +[WFActionDefinitionRegistry registeredDefinitions];
  v6 = objc_opt_new();
  v7 = v6;
  v30 = identifiersCopy;
  if (identifiersCopy)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = identifiersCopy;
    v8 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v33 = *v41;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v40 + 1) + 8 * i);
          v12 = [v5 objectForKey:v11];
          if (v12)
          {
            [(WFActionProvider *)self defaultActionDefinition];
            v13 = v7;
            selfCopy = self;
            v16 = v15 = v5;
            v17 = v12[2](v12);
            v18 = [v16 definitionByMergingWithDefinition:v17];

            v5 = v15;
            self = selfCopy;
            v7 = v13;
            [v13 setObject:v18 forKey:v11];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
      }

      while (v9);
    }

    identifiersCopy = v30;
  }

  else
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __60__WFBundledActionProvider_actionDefinitionsWithIdentifiers___block_invoke;
    v38[3] = &unk_1E837DED0;
    v38[4] = self;
    v39 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:v38];
  }

  v19 = WFActionSkipList();
  if ([v19 count])
  {
    v29 = v19;
    obja = v5;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = WFActionSkipList();
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v34 + 1) + 8 * j);
          v26 = getWFActionRegistryLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v45 = "[WFBundledActionProvider actionDefinitionsWithIdentifiers:]";
            v46 = 2114;
            v47 = v25;
            _os_log_impl(&dword_1CA256000, v26, OS_LOG_TYPE_INFO, "%s Skipping action with identifier: %{public}@", buf, 0x16u);
          }

          [v7 removeObjectForKey:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v34 objects:v48 count:16];
      }

      while (v22);
    }

    identifiersCopy = v30;
    v5 = obja;
    v19 = v29;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v7;
}

void __60__WFBundledActionProvider_actionDefinitionsWithIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 defaultActionDefinition];
  v9 = v6[2](v6);

  v10 = [v8 definitionByMergingWithDefinition:v9];

  [*(a1 + 40) setObject:v10 forKey:v7];
}

@end
@interface WFActionRegistry
+ (id)sharedRegistry;
+ (id)supportedContentItemClassesForContentSelection;
+ (id)toolKitRegistry;
- (NSSet)actions;
- (NSSet)identifiersOfActionsDisabledOnWatch;
- (NSString)description;
- (WFActionRegistry)initWithClient:(unint64_t)a3;
- (id)actionsForAppWithIdentifier:(id)a3;
- (id)createActionForSelectingContentOfType:(Class)a3 serializedParameters:(id)a4;
- (id)createActionWithDonation:(id)a3;
- (id)createActionWithIdentifier:(id)a3 serializedParameters:(id)a4;
- (id)createActionWithShortcut:(id)a3 error:(id *)a4;
- (id)createActionsForSelectingContentOfTypes:(id)a3 serializedParameterArray:(id)a4;
- (id)defaultSerializedParametersForActionSelectingContentOfType:(Class)a3;
- (id)placeholderForActionIdentifier:(id)a3 serializedParameters:(id)a4;
- (id)replacementActionForActionIdentifier:(id)a3 serializedParameters:(id)a4;
- (id)replacementActionForDonatedIntent:(id)a3;
- (id)residentCompatibleActionsForHome:(id)a3;
- (id)residentCompatibleActionsFromActions:(id)a3 inHome:(id)a4;
- (id)suggestionsForHome:(id)a3 includingRelatedActions:(BOOL)a4;
- (id)updatedActionForResidentCompatibility:(id)a3 inHome:(id)a4;
- (unint64_t)state;
- (void)actionProviderDidChange:(id)a3 updatedActions:(id)a4 removedActions:(id)a5 addedActions:(id)a6;
- (void)addActions:(id)a3 fromActionProvider:(id)a4;
- (void)fill;
- (void)fillActionProviders:(id)a3;
- (void)removeActionsWithIdentifiers:(id)a3 fromActionProvider:(id)a4;
- (void)setActions:(id)a3 forProvider:(id)a4;
@end

@implementation WFActionRegistry

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__WFActionRegistry_sharedRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedRegistry_onceToken_25539 != -1)
  {
    dispatch_once(&sharedRegistry_onceToken_25539, block);
  }

  v2 = sharedRegistry_sharedRegistry_25540;

  return v2;
}

void __34__WFActionRegistry_sharedRegistry__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithClient:0];
  v2 = sharedRegistry_sharedRegistry_25540;
  sharedRegistry_sharedRegistry_25540 = v1;
}

- (id)createActionWithShortcut:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 intent];
  if (v7)
  {
    v8 = [(WFActionRegistry *)self replacementActionForDonatedIntent:v7];
    v9 = v8;
    if (v8 && ([v8 serializedParametersForDonatedIntent:v7 allowDroppingUnconfigurableValues:1], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
      v12 = [v9 copyWithSerializedParameters:v10];
      v13 = [v6 intent];
      v14 = [v13 _title];
      v15 = v12;
      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v18 = v16;

      [v18 setOverrideLocalizedName:v14];
    }

    else
    {
      v15 = [WFHandleDonatedIntentAction intentActionWithShortcut:v6 forceExecutionOnPhone:0 groupIdentifier:0 error:a4];
    }
  }

  else
  {
    v17 = [v6 userActivity];

    if (v17)
    {
      v15 = [WFOpenUserActivityAction userActivityActionWithShortcut:v6 launchOrigin:0 error:a4];
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)replacementActionForDonatedIntent:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696E890]) initWithIntent:v4];
  v6 = [MEMORY[0x1E696E748] sharedResolver];
  v7 = [v6 resolvedIntentMatchingDescriptor:v5];

  v8 = [v7 displayableBundleIdentifier];
  if (!v8)
  {
    v17 = 0;
    goto LABEL_40;
  }

  v9 = v8;
  v10 = v4;
  v11 = v9;
  v12 = v10;
  if (!v12)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = v12;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v18 = v13;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = @"com.apple.facetime.facetime";
        goto LABEL_15;
      }

      v20 = v18;
      objc_opt_class();
      v21 = objc_opt_isKindOfClass();

      if (v21)
      {
        if (([(__CFString *)v11 isEqualToString:@"com.apple.Music"]& 1) != 0)
        {
          v16 = @"is.workflow.actions.playmusic";
        }

        else if ([(__CFString *)v11 isEqualToString:@"com.apple.podcasts"])
        {
          v16 = @"is.workflow.actions.playpodcast";
        }

        else
        {
          v16 = 0;
        }

        goto LABEL_15;
      }

LABEL_14:
      v16 = 0;
      goto LABEL_15;
    }
  }

  v14 = [v12 preferredCallProvider];
  v15 = @"com.apple.mobilephone.call";
  if (v14 == 2)
  {
    v15 = @"com.apple.facetime.facetime";
  }

  v16 = v15;

LABEL_15:
  if (!v16)
  {
    v22 = [v12 typeName];
    v23 = [&unk_1F4A99C80 objectForKey:v22];

    v24 = [v12 typeName];
    if (v23)
    {
      v25 = &unk_1F4A99C80;
    }

    else
    {
      v25 = &unk_1F4A99CA8;
    }

    v16 = [v25 objectForKey:v24];
  }

  v26 = [v7 extensionBundleIdentifier];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = [v7 bundleIdentifier];
  }

  v29 = v28;

  if (!v16 && v29)
  {
    if ([v12 _type] != 2)
    {
      goto LABEL_36;
    }

    v30 = [v12 _className];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v29, v30];
  }

  if (v16)
  {
    v11 = v11;
    if (v11 == @"com.apple.Spotlight" || (v31 = [@"com.apple.Spotlight" isEqualToString:v11], v11, v31))
    {
      v32 = v16;
      if (v32 == @"is.workflow.actions.addnewevent" || (v33 = v32, v34 = [@"is.workflow.actions.addnewevent" isEqualToString:v32], v33, v34))
      {
        v35 = *MEMORY[0x1E69E0E48];

        v11 = v35;
      }
    }

    v36 = [(WFActionRegistry *)self createActionWithIdentifier:v16 serializedParameters:0];
    if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v17 = [v36 actionForAppIdentifier:v11];
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_39;
  }

LABEL_36:
  v17 = 0;
LABEL_39:

LABEL_40:

  return v17;
}

- (id)createActionWithDonation:(id)a3
{
  v4 = [a3 shortcut];
  v5 = [(WFActionRegistry *)self createActionWithShortcut:v4 error:0];

  return v5;
}

- (NSSet)identifiersOfActionsDisabledOnWatch
{
  if ([(WFActionRegistry *)self state]== 2)
  {
    v3 = [(WFActionRegistry *)self actions];
    [v3 if_compactMap:&__block_literal_global_24148];
  }

  else
  {
    v3 = objc_opt_new();
    [v3 identifiersOfActionsDisabledOnWatch];
  }
  v4 = ;

  return v4;
}

id __72__WFActionRegistry_DisabledOnWatch__identifiersOfActionsDisabledOnWatch__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 disabledOnPlatforms];
  v4 = [v3 containsObject:@"Watch"];

  if (v4)
  {
    v5 = [v2 identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFActionRegistry;
  v4 = [(WFActionRegistry *)&v8 description];
  v5 = [(WFActionRegistry *)self actionsByIdentifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)actionProviderDidChange:(id)a3 updatedActions:(id)a4 removedActions:(id)a5 addedActions:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  stateAccessQueue = self->_stateAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke;
  block[3] = &unk_1E837C910;
  block[4] = self;
  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v13;
  v15 = v13;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  dispatch_async(stateAccessQueue, block);
}

void __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8) == 2)
  {
    if ([*(a1 + 40) count] || objc_msgSend(*(a1 + 48), "count"))
    {
      v2 = *(a1 + 32);
      v3 = [*(a1 + 40) setByAddingObjectsFromSet:*(a1 + 48)];
      [v2 removeActionsWithIdentifiers:v3 fromActionProvider:*(a1 + 56)];
    }

    v4 = *(*(a1 + 32) + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke_222;
    v9[3] = &unk_1E837F848;
    v10 = *(a1 + 48);
    v5 = *(a1 + 64);
    v6 = *(a1 + 32);
    v11 = v5;
    v12 = v6;
    v13 = *(a1 + 56);
    dispatch_async(v4, v9);

    v7 = v10;
  }

  else
  {
    v7 = getWFActionRegistryLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[WFActionRegistry actionProviderDidChange:updatedActions:removedActions:addedActions:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Ignoring action provider change notification because the registry is not yet filled.", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke_222(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [*(a1 + 32) setByAddingObjectsFromSet:*(a1 + 40)];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [[WFActionRequest alloc] initWithActionIdentifier:*(*(&v19 + 1) + 8 * v7) serializedParameters:0];
        [v2 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = *(a1 + 56);
    v10 = [v2 allObjects];
    [v9 createActionsForRequests:v10];

    v11 = [v2 if_compactMap:&__block_literal_global_225];
    v13 = *(a1 + 48);
    v12 = *(a1 + 56);
    v14 = *(v13 + 24);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke_4;
    v16[3] = &unk_1E837C1E8;
    v16[4] = v13;
    v16[5] = v11;
    v17 = v12;
    dispatch_async(v14, v16);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke_2;
    block[3] = &unk_1E837FA70;
    block[4] = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WFActionRegistryFilledNotification" object:*(a1 + 32)];
}

void __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) addActions:*(a1 + 40) fromActionProvider:*(a1 + 48)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke_5;
  block[3] = &unk_1E837FA70;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __87__WFActionRegistry_actionProviderDidChange_updatedActions_removedActions_addedActions___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WFActionRegistryFilledNotification" object:*(a1 + 32)];
}

- (void)addActions:(id)a3 fromActionProvider:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_stateAccessQueue);
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"WFActionRegistry.m" lineNumber:411 description:{@"Invalid parameter not satisfying: %@", @"actions"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v30 = [MEMORY[0x1E696AAA8] currentHandler];
  [v30 handleFailureInMethod:a2 object:self file:@"WFActionRegistry.m" lineNumber:412 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

LABEL_3:
  v9 = [(WFActionRegistry *)self actionsByActionProvider];
  v10 = [v9 objectForKey:v8];
  v11 = [v10 mutableCopy];
  v12 = v11;
  v31 = v8;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  [v14 unionSet:v7];
  v15 = [(WFActionRegistry *)self actionsByIdentifier];
  v16 = [v15 mutableCopy];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v32 + 1) + 8 * i);
        v23 = objc_autoreleasePoolPush();
        v24 = [v22 identifier];
        [v16 setObject:v22 forKey:v24];

        objc_autoreleasePoolPop(v23);
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v19);
  }

  v25 = [v16 copy];
  actionsByIdentifier = self->_actionsByIdentifier;
  self->_actionsByIdentifier = v25;

  v27 = [(WFActionRegistry *)self actionsByActionProvider];
  [v27 setObject:v14 forKey:v31];

  v28 = *MEMORY[0x1E69E9840];
}

- (void)removeActionsWithIdentifiers:(id)a3 fromActionProvider:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_stateAccessQueue);
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFActionRegistry.m" lineNumber:385 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifiers"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFActionRegistry.m" lineNumber:386 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

LABEL_3:
  v9 = [(WFActionRegistry *)self actionsByActionProvider];
  v30 = v8;
  v10 = [v9 objectForKey:v8];
  v11 = [v10 mutableCopy];

  v12 = [(WFActionRegistry *)self actionsByIdentifier];
  v13 = [v12 mutableCopy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v7;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        v21 = [v13 objectForKeyedSubscript:v19];
        if (v21)
        {
          [v13 removeObjectForKey:v19];
          [v11 removeObject:v21];
        }

        objc_autoreleasePoolPop(v20);
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v16);
  }

  v22 = [v11 count];
  v23 = [(WFActionRegistry *)self actionsByActionProvider];
  v24 = v23;
  if (v22)
  {
    [v23 setObject:v11 forKey:v30];
  }

  else
  {
    [v23 removeObjectForKey:v30];
  }

  v25 = [v13 copy];
  actionsByIdentifier = self->_actionsByIdentifier;
  self->_actionsByIdentifier = v25;

  v27 = *MEMORY[0x1E69E9840];
}

- (void)setActions:(id)a3 forProvider:(id)a4
{
  v14 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_stateAccessQueue);
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFActionRegistry.m" lineNumber:363 description:{@"Invalid parameter not satisfying: %@", @"provider"}];
  }

  v8 = [(WFActionRegistry *)self actionsByActionProvider];
  v9 = [v8 objectForKey:v7];

  if (v9 != v14)
  {
    v10 = [v9 isEqualToSet:v14];
    v11 = v14;
    if ((v10 & 1) == 0)
    {
      if (v9)
      {
        v12 = [v9 if_compactMap:&__block_literal_global_214];
        [(WFActionRegistry *)self removeActionsWithIdentifiers:v12 fromActionProvider:v7];

        v11 = v14;
      }

      if (v11)
      {
        [(WFActionRegistry *)self addActions:v14 fromActionProvider:v7];
      }
    }
  }
}

- (void)fillActionProviders:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_cacheUpdateAndFillQueue);
  v5 = [v4 if_map:&__block_literal_global_205_25486];
  v6 = [v5 mutableCopy];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__WFActionRegistry_fillActionProviders___block_invoke_2;
  v15[3] = &unk_1E83776B8;
  v7 = v6;
  v16 = v7;
  [v4 enumerateObjectsUsingBlock:v15];
  stateAccessQueue = self->_stateAccessQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__WFActionRegistry_fillActionProviders___block_invoke_207;
  v11[3] = &unk_1E837C1E8;
  v12 = v4;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v4;
  dispatch_async(stateAccessQueue, v11);
}

void __40__WFActionRegistry_fillActionProviders___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = objc_autoreleasePoolPush();
  v7 = getWFActionRegistryLogObject();
  v8 = os_signpost_id_generate(v7);

  v9 = getWFActionRegistryLogObject();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v20 = 138543362;
    v21 = v12;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FillProvider", " enableTelemetry=YES provider=%{public, signpost.telemetry:string1, Name=Provider}@", &v20, 0xCu);
  }

  v13 = [v5 createAllAvailableActions];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;

  [*(a1 + 32) setObject:v16 atIndexedSubscript:a3];
  v17 = getWFActionRegistryLogObject();
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v18, OS_SIGNPOST_INTERVAL_END, v8, "FillProvider", " enableTelemetry=YES ", &v20, 2u);
  }

  objc_autoreleasePoolPop(v6);
  v19 = *MEMORY[0x1E69E9840];
}

void __40__WFActionRegistry_fillActionProviders___block_invoke_207(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__WFActionRegistry_fillActionProviders___block_invoke_2_208;
  v5[3] = &unk_1E83776E0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __40__WFActionRegistry_fillActionProviders___block_invoke_2_208(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = getWFActionRegistryLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315906;
    v10 = "[WFActionRegistry fillActionProviders:]_block_invoke_2";
    v11 = 2048;
    v12 = [v6 count];
    v13 = 2112;
    v14 = v5;
    v15 = 2048;
    v16 = a3;
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Found %lu actions for provider %@ at %lu", &v9, 0x2Au);
  }

  [*(a1 + 40) setActions:v6 forProvider:v5];
  v8 = *MEMORY[0x1E69E9840];
}

id __40__WFActionRegistry_fillActionProviders___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v0;
}

- (void)fill
{
  stateAccessQueue = self->_stateAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__WFActionRegistry_fill__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(stateAccessQueue, block);
}

void __24__WFActionRegistry_fill__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 8))
  {
    block[7] = v1;
    block[8] = v2;
    *(v3 + 8) = 1;
    [MEMORY[0x1E6996E58] log:*MEMORY[0x1E6997080]];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __24__WFActionRegistry_fill__block_invoke_2;
    block[3] = &unk_1E837FA70;
    block[4] = v5;
    dispatch_async(v6, block);
  }
}

void __24__WFActionRegistry_fill__block_invoke_2(uint64_t a1)
{
  v2 = getWFActionRegistryLogObject();
  v3 = os_signpost_id_generate(v2);

  v4 = getWFActionRegistryLogObject();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Fill", " enableTelemetry=YES ", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = [v6 actionProvidersForFilling];
  [v6 fillActionProviders:v7];

  v8 = getWFActionRegistryLogObject();
  v9 = v8;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1CA256000, v9, OS_SIGNPOST_INTERVAL_END, v3, "Fill", " enableTelemetry=YES ", buf, 2u);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__WFActionRegistry_fill__block_invoke_201;
  block[3] = &unk_1E837FA70;
  block[4] = v10;
  dispatch_async(v11, block);
}

void __24__WFActionRegistry_fill__block_invoke_201(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__WFActionRegistry_fill__block_invoke_2_202;
  block[3] = &unk_1E837FA70;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __24__WFActionRegistry_fill__block_invoke_2_202(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"WFActionRegistryFilledNotification" object:*(a1 + 32)];
}

- (id)actionsForAppWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFActionRegistry *)self actions];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__WFActionRegistry_actionsForAppWithIdentifier___block_invoke;
  v9[3] = &unk_1E8377670;
  v10 = v4;
  v6 = v4;
  v7 = [v5 if_compactMap:v9];

  return v7;
}

- (NSSet)actions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__25502;
  v10 = __Block_byref_object_dispose__25503;
  v11 = 0;
  stateAccessQueue = self->_stateAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__WFActionRegistry_actions__block_invoke;
  v5[3] = &unk_1E837F898;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __27__WFActionRegistry_actions__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v6 = [*(*(a1 + 32) + 56) allValues];
  v3 = [v2 initWithArray:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)placeholderForActionIdentifier:(id)a3 serializedParameters:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(WFActionRegistry *)self actionProvidersForLoading];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__WFActionRegistry_placeholderForActionIdentifier_serializedParameters___block_invoke;
  v17[3] = &unk_1E8377648;
  v18 = v6;
  v9 = v6;
  v10 = [v8 if_compactMap:v17];

  if ([v10 count] >= 2)
  {
    v11 = getWFActionRegistryLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = "[WFActionRegistry placeholderForActionIdentifier:serializedParameters:]";
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, "%s Conflicting definitions for missing action", buf, 0xCu);
    }
  }

  v12 = [WFMissingAction alloc];
  v13 = [v10 firstObject];
  v14 = [(WFAction *)v12 initWithIdentifier:v7 definition:v13 serializedParameters:v9];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)replacementActionForActionIdentifier:(id)a3 serializedParameters:(id)a4
{
  v6 = a4;
  v7 = [a3 isEqualToString:@"is.workflow.actions.sirikit.donation.handle"];
  v8 = 0;
  if (v6 && v7)
  {
    v9 = WFExtractDonatedIntentFromSerializedParameters(v6);
    if (v9)
    {
      v10 = v9;
      v11 = [(WFActionRegistry *)self replacementActionForDonatedIntent:v9];
      v12 = [v11 serializedParametersForDonatedIntent:v10 allowDroppingUnconfigurableValues:0];
      v13 = v12;
      v8 = 0;
      if (v11 && v12)
      {
        v8 = [v11 copyWithSerializedParameters:v12];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id __96__WFActionRegistry_createActionsWithIdentifiers_serializedParameterArray_forceLocalActionsOnly___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndex:a3];
  v7 = [*(a1 + 40) replacementActionForActionIdentifier:v5 serializedParameters:v6];
  if (v7)
  {
LABEL_2:
    v8 = v7;
    goto LABEL_4;
  }

  v9 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:v5];
  v8 = [v9 copyWithSerializedParameters:v6];

  if (!v8)
  {
    v22 = v5;
    v12 = [[WFActionRequest alloc] initWithActionIdentifier:v5 serializedParameters:v6];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = [*(a1 + 40) actionProvidersForLoading];
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (!v14)
    {
LABEL_15:

LABEL_18:
      v21 = getWFActionRegistryLogObject();
      v5 = v22;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v28 = "[WFActionRegistry createActionsWithIdentifiers:serializedParameterArray:forceLocalActionsOnly:]_block_invoke_2";
        v29 = 2114;
        v30 = v22;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_DEFAULT, "%s Action (%{public}@) is missing", buf, 0x16u);
      }

      v7 = [*(a1 + 40) placeholderForActionIdentifier:v22 serializedParameters:v6];
      goto LABEL_2;
    }

    v15 = v14;
    v16 = *v24;
LABEL_9:
    v17 = 0;
    while (1)
    {
      if (*v24 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v23 + 1) + 8 * v17);
      v31 = v12;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      [v18 createActionsForRequests:v19];

      v20 = [(WFActionRequest *)v12 result];

      if (v20)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v23 objects:v32 count:16];
        if (v15)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    v8 = [(WFActionRequest *)v12 result];

    if (!v8)
    {
      goto LABEL_18;
    }

    v5 = v22;
  }

LABEL_4:

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

void __96__WFActionRegistry_createActionsWithIdentifiers_serializedParameterArray_forceLocalActionsOnly___block_invoke_188(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) objectAtIndex:a3];
  v6 = [*(a1 + 40) replacementActionForActionIdentifier:v9 serializedParameters:v5];
  v7 = *(a1 + 48);
  if (v6)
  {
    [v7 addObject:v6];
  }

  else
  {
    v8 = [[WFActionRequest alloc] initWithActionIdentifier:v9 serializedParameters:v5];
    [v7 addObject:v8];
  }
}

id __96__WFActionRegistry_createActionsWithIdentifiers_serializedParameterArray_forceLocalActionsOnly___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3 || (objc_opt_class(), v4 = v3, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v5 = v3;
    v6 = [v5 result];

    if (v6)
    {
      v4 = [v5 result];
    }

    else
    {
      v7 = getWFActionRegistryLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v5 actionIdentifier];
        v14 = 136315394;
        v15 = "[WFActionRegistry createActionsWithIdentifiers:serializedParameterArray:forceLocalActionsOnly:]_block_invoke_3";
        v16 = 2114;
        v17 = v8;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_ERROR, "%s Action %{public}@ is missing", &v14, 0x16u);
      }

      v9 = *(a1 + 32);
      v10 = [v5 actionIdentifier];
      v11 = [v5 serializedParameters];
      v4 = [v9 placeholderForActionIdentifier:v10 serializedParameters:v11];
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

BOOL __96__WFActionRegistry_createActionsWithIdentifiers_serializedParameterArray_forceLocalActionsOnly___block_invoke_2_190(uint64_t a1, void *a2)
{
  v2 = [a2 result];
  v3 = v2 == 0;

  return v3;
}

- (id)createActionWithIdentifier:(id)a3 serializedParameters:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFActionRegistry.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"actionIdentifier"}];
  }

  v17[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  if (v8)
  {
    v16 = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(WFActionRegistry *)self createActionsWithIdentifiers:v9 serializedParameterArray:v10 forceLocalActionsOnly:0];
  v12 = [v11 firstObject];

  if (v8)
  {
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (unint64_t)state
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateAccessQueue = self->_stateAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__WFActionRegistry_state__block_invoke;
  v5[3] = &unk_1E837F898;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateAccessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (WFActionRegistry)initWithClient:(unint64_t)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = WFActionRegistry;
  v4 = [(WFActionRegistry *)&v40 init];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    v7 = +[WFLinkActionProvider sharedProvider];
    v8 = [[WFIntentActionProvider alloc] initWithOptions:a3 == 1];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v6, v5, v7, v8, 0}];
    actionProvidersForLoading = v4->_actionProvidersForLoading;
    v4->_actionProvidersForLoading = v9;

    v34 = v6;
    v35 = v5;
    v11 = [MEMORY[0x1E695DF70] arrayWithObjects:{v5, v6, v8, 0}];
    v33 = v7;
    [v11 addObject:v7];
    objc_storeStrong(&v4->_actionProvidersForFilling, v11);
    v12 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = v4->_actionProvidersForFilling;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v36 + 1) + 8 * i);
          [v18 setDelegate:v4];
          [v18 setStringLocalizer:v12];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v15);
    }

    v4->_state = 0;
    v4->_client = a3;
    v19 = objc_opt_new();
    actionsByIdentifier = v4->_actionsByIdentifier;
    v4->_actionsByIdentifier = v19;

    v21 = [MEMORY[0x1E696AD18] mapTableWithStrongToStrongObjects];
    actionsByActionProvider = v4->_actionsByActionProvider;
    v4->_actionsByActionProvider = v21;

    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create("com.apple.shortcuts.WFActionRegistry.stateAccessQueue", v23);
    stateAccessQueue = v4->_stateAccessQueue;
    v4->_stateAccessQueue = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_USER_INITIATED, 0);

    v28 = dispatch_queue_create("com.apple.shortcuts.WFActionRegistry.cacheUpdateAndFillQueue", v27);
    cacheUpdateAndFillQueue = v4->_cacheUpdateAndFillQueue;
    v4->_cacheUpdateAndFillQueue = v28;

    v30 = v4;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)toolKitRegistry
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__WFActionRegistry_toolKitRegistry__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (toolKitRegistry_onceToken != -1)
  {
    dispatch_once(&toolKitRegistry_onceToken, block);
  }

  v2 = toolKitRegistry_sharedRegistry;

  return v2;
}

void __35__WFActionRegistry_toolKitRegistry__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initWithClient:1];
  v2 = toolKitRegistry_sharedRegistry;
  toolKitRegistry_sharedRegistry = v1;
}

- (id)defaultSerializedParametersForActionSelectingContentOfType:(Class)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = WFActionIdentifierForSelectingContentOfType(a3);
  v4 = v3;
  if (v3 && [v3 isEqualToString:@"is.workflow.actions.date"])
  {
    v13[0] = @"WFDateActionMode";
    v13[1] = @"WFDateActionDate";
    v14[0] = @"Specified Date";
    v5 = [WFVariableString alloc];
    v6 = objc_opt_new();
    v7 = [(WFVariableString *)v5 initWithVariable:v6];

    v8 = [[WFVariableStringParameterState alloc] initWithVariableString:v7];
    v9 = [(WFVariableStringParameterState *)v8 serializedRepresentation];

    v14[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)createActionsForSelectingContentOfTypes:(id)a3 serializedParameterArray:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFActionRegistry+ContentSelection.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"contentItemClasses"}];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  v10 = [v7 count];
  if (v10 != [v9 count])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFActionRegistry+ContentSelection.m" lineNumber:65 description:@"Number of content item classes don't match number of serialized parameters passed in."];
  }

LABEL_5:
  v11 = [v7 if_compactMap:&__block_literal_global_34574];
  v12 = [v11 count];
  if (v12 == [v7 count])
  {
    v13 = [(WFActionRegistry *)self createActionsWithIdentifiers:v11 serializedParameterArray:v9];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)createActionForSelectingContentOfType:(Class)a3 serializedParameters:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = a3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = a4;
  v7 = [v5 arrayWithObjects:v15 count:1];
  v8 = MEMORY[0x1E695E0F8];
  if (v6)
  {
    v8 = v6;
  }

  v14 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];

  v10 = [(WFActionRegistry *)self createActionsForSelectingContentOfTypes:v7 serializedParameterArray:v9];
  v11 = [v10 firstObject];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)supportedContentItemClassesForContentSelection
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

- (id)updatedActionForResidentCompatibility:(id)a3 inHome:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 definition];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 objectForKey:@"Parameters"];
    v8 = [v7 if_map:&__block_literal_global_44233];

    v15 = @"Parameters";
    v16[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v6 definitionByAddingEntriesInDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 serializedParameters];
  v12 = [v4 copyWithDefinition:v10 serializedParameters:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

id __71__WFActionRegistry_Home__updatedActionForResidentCompatibility_inHome___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKey:@"DisallowedVariableTypes"];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  [v7 addObject:@"Ask"];
  [v7 addObject:@"Clipboard"];
  v12 = @"DisallowedVariableTypes";
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v2 definitionByAddingEntriesInDictionary:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)residentCompatibleActionsFromActions:(id)a3 inHome:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__WFActionRegistry_Home__residentCompatibleActionsFromActions_inHome___block_invoke;
  v10[3] = &unk_1E837A3B8;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [a3 if_compactMap:v10];

  return v8;
}

id __70__WFActionRegistry_Home__residentCompatibleActionsFromActions_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isResidentCompatible])
  {
    v4 = [*(a1 + 32) updatedActionForResidentCompatibility:v3 inHome:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)suggestionsForHome:(id)a3 includingRelatedActions:(BOOL)a4
{
  v22[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(WFActionRegistry *)self createActionWithIdentifier:@"is.workflow.actions.weather.currentconditions" serializedParameters:0];
  v8 = [(WFActionRegistry *)self createActionWithIdentifier:@"is.workflow.actions.conditional" serializedParameters:0];
  v9 = [(WFActionRegistry *)self createActionWithIdentifier:@"is.workflow.actions.delay" serializedParameters:0];
  v10 = v9;
  if (a4)
  {
    v22[0] = v7;
    v22[1] = v8;
    v22[2] = v9;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v22;
    v13 = 3;
  }

  else
  {
    v21[0] = v8;
    v21[1] = v9;
    v11 = MEMORY[0x1E695DEC8];
    v12 = v21;
    v13 = 2;
  }

  v14 = [v11 arrayWithObjects:v12 count:v13];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __69__WFActionRegistry_Home__suggestionsForHome_includingRelatedActions___block_invoke;
  v19[3] = &unk_1E837A390;
  v19[4] = self;
  v20 = v6;
  v15 = v6;
  v16 = [v14 if_map:v19];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)residentCompatibleActionsForHome:(id)a3
{
  v4 = a3;
  v5 = [(WFActionRegistry *)self actions];
  v6 = [(WFActionRegistry *)self residentCompatibleActionsFromActions:v5 inHome:v4];

  return v6;
}

@end
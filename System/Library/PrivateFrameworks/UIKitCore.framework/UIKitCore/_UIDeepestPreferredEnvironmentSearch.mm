@interface _UIDeepestPreferredEnvironmentSearch
- (id)_overridingPreferredFocusEnvironmentForPreferredEnvironment:(id)environment visitedFocusEnvironments:(id)environments;
- (id)deepestPreferredFocusEnvironmentForEnvironment:(id)environment;
- (id)deepestPreferredFocusableItemForEnvironment:(id)environment withRequest:(id)request;
- (void)_reportDidFindLockedFocusEnvironment:(id)environment;
- (void)_reportDidFindOverridingPreferredFocusEnvironment:(id)environment source:(id)source;
- (void)_reportDidFinishEnumeratingPreferencesWithDeepestPreferredFocusableItem:(id)item;
- (void)_reportFinishedEvaluatingAllPreferencesForEnvironmentInContext:(id)context result:(int64_t)result;
- (void)_reportFoundFocusableItem:(id)item inContext:(id)context;
- (void)_reportStartingSearch;
@end

@implementation _UIDeepestPreferredEnvironmentSearch

- (void)_reportStartingSearch
{
  debugLog = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];
  v2 = [off_1E70ECC50 messageWithString:@"Starting preferred focus search."];
  [debugLog addMessage:v2];
}

- (id)deepestPreferredFocusableItemForEnvironment:(id)environment withRequest:(id)request
{
  environmentCopy = environment;
  requestCopy = request;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:572 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  [(_UIDeepestPreferredEnvironmentSearch *)self _reportStartingSearch];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__84;
  v56 = __Block_byref_object_dispose__84;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__84;
  v50 = __Block_byref_object_dispose__84;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__84;
  v44 = __Block_byref_object_dispose__84;
  v45 = 0;
  v24 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  focusSystem = [requestCopy focusSystem];
  _deepestPreferredFocusableItemCacheForCurrentUpdate = [focusSystem _deepestPreferredFocusableItemCacheForCurrentUpdate];

  if (dyld_program_sdk_at_least())
  {
    v10 = [requestCopy isMovementRequest] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [[_UIFocusEnvironmentPreferenceEnumerator alloc] initWithEnumerationMode:v10];
  [(_UIFocusEnvironmentPreferenceEnumerator *)v11 setDebugLog:self->_debugLog];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke;
  v35[3] = &unk_1E7108468;
  v38 = &v46;
  v39 = &v52;
  v12 = _deepestPreferredFocusableItemCacheForCurrentUpdate;
  v36 = v12;
  selfCopy = self;
  [(_UIFocusEnvironmentPreferenceEnumerator *)v11 setDidVisitAllPreferencesForEnvironmentHandler:v35];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke_2;
  v34[3] = &unk_1E7108490;
  v34[4] = &v52;
  [(_UIFocusEnvironmentPreferenceEnumerator *)v11 setShouldInferPreferenceForEnvironmentHandler:v34];
  allowsOverridingPreferedFocusEnvironments = [(_UIDeepestPreferredEnvironmentSearch *)self allowsOverridingPreferedFocusEnvironments];
  v23 = environmentCopy;
  if (environmentCopy)
  {
    v14 = v23;
    do
    {
      v15 = v53[5];
      v53[5] = 0;

      v16 = v47[5];
      v47[5] = 0;

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __96___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusableItemForEnvironment_withRequest___block_invoke_3;
      v26[3] = &unk_1E71084B8;
      v27 = v12;
      v31 = &v46;
      v17 = v14;
      v28 = v17;
      v32 = &v52;
      v18 = requestCopy;
      v33 = &v40;
      v29 = v18;
      selfCopy2 = self;
      [(_UIFocusEnvironmentPreferenceEnumerator *)v11 enumeratePreferencesForEnvironment:v17 usingBlock:v26];
      if (v41[5])
      {
        [(_UIDeepestPreferredEnvironmentSearch *)self _reportDidFindLockedFocusEnvironment:?];
      }

      [(_UIDeepestPreferredEnvironmentSearch *)self _reportDidFinishEnumeratingPreferencesWithDeepestPreferredFocusableItem:v53[5]];
      if (v41[5] == 0 && allowsOverridingPreferedFocusEnvironments && (v19 = v47[5]) != 0)
      {
        v14 = [(_UIDeepestPreferredEnvironmentSearch *)self _overridingPreferredFocusEnvironmentForPreferredEnvironment:v19 visitedFocusEnvironments:v24];
      }

      else
      {
        v14 = 0;
      }
    }

    while (v14);
  }

  v20 = v53[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);

  return v20;
}

- (id)deepestPreferredFocusEnvironmentForEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:699 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = [UIFocusSystem focusSystemForEnvironment:environmentCopy];
  v7 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
  v16 = environmentCopy;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__84;
  v31 = __Block_byref_object_dispose__84;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__84;
  v25 = __Block_byref_object_dispose__84;
  v26 = 0;
  v8 = [[_UIFocusEnvironmentPreferenceEnumerator alloc] initWithEnumerationMode:1];
  [(_UIFocusEnvironmentPreferenceEnumerator *)v8 setAllowsInferringPreferences:0];
  if (environmentCopy)
  {
    v9 = v16;
    while (1)
    {
      v10 = v28[5];
      v28[5] = 0;

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __87___UIDeepestPreferredEnvironmentSearch_deepestPreferredFocusEnvironmentForEnvironment___block_invoke;
      v17[3] = &unk_1E71084E0;
      v19 = &v21;
      v18 = v6;
      v20 = &v27;
      [(_UIFocusEnvironmentPreferenceEnumerator *)v8 enumeratePreferencesForEnvironment:v9 usingBlock:v17];
      if (v22[5])
      {
        [(_UIDeepestPreferredEnvironmentSearch *)self _reportDidFindLockedFocusEnvironment:?];
        if (v22[5])
        {
          break;
        }
      }

      v11 = v28[5];
      if (!v11)
      {
        break;
      }

      v12 = [(_UIDeepestPreferredEnvironmentSearch *)self _overridingPreferredFocusEnvironmentForPreferredEnvironment:v11 visitedFocusEnvironments:v7];

      v9 = v12;
      if (!v12)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:
  v13 = v28[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (id)_overridingPreferredFocusEnvironmentForPreferredEnvironment:(id)environment visitedFocusEnvironments:(id)environments
{
  environmentCopy = environment;
  environmentsCopy = environments;
  v9 = environmentsCopy;
  if (environmentCopy)
  {
    if (environmentsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:745 description:{@"Invalid parameter not satisfying: %@", @"preferredDestinationEnvironment"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:746 description:{@"Invalid parameter not satisfying: %@", @"visitedFocusEnvironments"}];

LABEL_3:
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__84;
  v31 = __Block_byref_object_dispose__84;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__84;
  v25 = __Block_byref_object_dispose__84;
  v26 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __125___UIDeepestPreferredEnvironmentSearch__overridingPreferredFocusEnvironmentForPreferredEnvironment_visitedFocusEnvironments___block_invoke;
  v17[3] = &unk_1E7108508;
  v10 = v9;
  v18 = v10;
  v19 = &v27;
  v20 = &v21;
  _UIFocusEnvironmentEnumerateAncestorEnvironments(environmentCopy, v17);
  v11 = v28[5];
  if (v11)
  {
    [(_UIDeepestPreferredEnvironmentSearch *)self _reportDidFindOverridingPreferredFocusEnvironment:v11 source:v22[5]];
    v12 = v28[5];
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (void)_reportFoundFocusableItem:(id)item inContext:(id)context
{
  debugStack = [context debugStack];
  v4 = [off_1E70ECC50 messageWithStyle:2 string:@"It's focusable!"];
  [debugStack addMessage:v4];
}

- (void)_reportFinishedEvaluatingAllPreferencesForEnvironmentInContext:(id)context result:(int64_t)result
{
  contextCopy = context;
  debugStack = [contextCopy debugStack];
  if (debugStack)
  {
    v7 = debugStack;
    isPreferredByItself = [contextCopy isPreferredByItself];

    if (result != 3 && (isPreferredByItself & 1) == 0)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      preferredEnvironments = [contextCopy preferredEnvironments];
      environment = [contextCopy environment];
      v11 = [preferredEnvironments indexOfObject:environment];

      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        preferredEnvironments2 = [contextCopy preferredEnvironments];
        v13 = [preferredEnvironments2 count];

        preferredEnvironments3 = [contextCopy preferredEnvironments];
        v15 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11 + 1, v13 - (v11 + 1)}];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __110___UIDeepestPreferredEnvironmentSearch__reportFinishedEvaluatingAllPreferencesForEnvironmentInContext_result___block_invoke;
        v18[3] = &unk_1E7108530;
        v19 = contextCopy;
        v20 = &v21;
        [preferredEnvironments3 enumerateObjectsAtIndexes:v15 options:0 usingBlock:v18];
      }

      if (*(v22 + 24) == 1)
      {
        debugStack2 = [contextCopy debugStack];
        v17 = [off_1E70ECC50 messageWithStyle:3 string:@"Found nothing."];
        [debugStack2 addMessage:v17];
      }

      _Block_object_dispose(&v21, 8);
    }
  }
}

- (void)_reportDidFinishEnumeratingPreferencesWithDeepestPreferredFocusableItem:(id)item
{
  itemCopy = item;
  debugLog = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];

  if (debugLog)
  {
    debugLog2 = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];
    v6 = MEMORY[0x1E696AEC0];
    v7 = itemCopy;
    if (v7)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [v8 stringWithFormat:@"<%@: %p>", v10, v7];
    }

    else
    {
      v11 = @"(nil)";
    }

    v12 = [v6 stringWithFormat:@"Finished enumerating preferred environments. Preferring %@", v11];
    v13 = [off_1E70ECC50 messageWithStyle:2 string:v12];
    [debugLog2 addMessage:v13];
  }
}

- (void)_reportDidFindOverridingPreferredFocusEnvironment:(id)environment source:(id)source
{
  environmentCopy = environment;
  sourceCopy = source;
  debugLog = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];
  v9 = MEMORY[0x1E696AEC0];
  v10 = environmentCopy;
  v22 = v10;
  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v22];

    v10 = v22;
  }

  else
  {
    v14 = @"(nil)";
  }

  v15 = sourceCopy;
  if (v15)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = [v16 stringWithFormat:@"<%@: %p>", v18, v15];
  }

  else
  {
    v19 = @"(nil)";
  }

  v20 = [v9 stringWithFormat:@"Found overide to environment %@. (source: %@)", v14, v19];
  v21 = [off_1E70ECC50 messageWithStyle:2 string:v20];
  [debugLog addMessage:v21];
}

- (void)_reportDidFindLockedFocusEnvironment:(id)environment
{
  environmentCopy = environment;
  debugLog = [(_UIDeepestPreferredEnvironmentSearch *)self debugLog];
  v6 = MEMORY[0x1E696AEC0];
  v13 = environmentCopy;
  if (v13)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"<%@: %p>", v9, v13];
  }

  else
  {
    v10 = @"(nil)";
  }

  v11 = [v6 stringWithFormat:@"Found locked focus environment %@.", v10];
  v12 = [off_1E70ECC50 messageWithStyle:3 string:v11];
  [debugLog addMessage:v12];
}

@end
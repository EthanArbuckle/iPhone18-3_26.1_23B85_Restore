@interface _UISceneOpenItemProvidersBSActionsHandler
- (BOOL)currentAppSupportsOpenInPlace;
- (id)URLContextsFetchedFromItemProviders:(id)providers collectionIdentifier:(id)identifier contentOwner:(int64_t)owner payload:(id)payload;
- (id)URLContextsFromOpenItemProvidersActions:(id)actions payload:(id)payload;
- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (id)_substituteActionsForAction:(id)action forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (id)bestUTIForAppFromProviderRegisteredTypeIdentifiers:(id)identifiers;
- (id)dragContinuationFromEndpoint:(id)endpoint;
- (id)itemCollectionFromDragContinuation:(id)continuation;
- (id)itemProvidersFromPBItemCollection:(id)collection userInfo:(id)info;
- (id)openURLOptionsFromBasePayload:(id)payload sourceProcessHandle:(id)handle dragContentOwner:(int64_t)owner;
- (id)uniqueFileNameWithStakedClaims:(id)claims hint:(id)hint extension:(id)extension;
@end

@implementation _UISceneOpenItemProvidersBSActionsHandler

- (id)_substituteActionsForAction:(id)action forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  contextCopy = context;
  if ([UIApp _appSupportsSceneItemProviders])
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    v11 = actionCopy;
    v28 = actionCopy;
    if ([contextCopy isUISubclass])
    {
      payload = [contextCopy payload];
    }

    else
    {
      payload = 0;
    }

    v27 = v11;
    v13 = [MEMORY[0x1E695DFD8] setWithObject:v11];
    v26 = payload;
    v14 = [(_UISceneOpenItemProvidersBSActionsHandler *)self URLContextsFromOpenItemProvidersActions:v13 payload:payload];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = [UIOpenURLAction alloc];
          v22 = [v20 URL];
          options = [v20 options];
          v24 = [(UIOpenURLAction *)v21 initWithURL:v22 openURLOptions:options workspaceOriginatingProcess:0 responder:0];
          [v10 addObject:v24];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    actionCopy = v28;
  }

  return v10;
}

- (id)_launchOptionsFromActions:(id)actions forFBSScene:(id)scene uiSceneSession:(id)session transitionContext:(id)context
{
  v55 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  sceneCopy = scene;
  sessionCopy = session;
  contextCopy = context;
  _appSupportsSceneItemProviders = [UIApp _appSupportsSceneItemProviders];
  v34 = actionsCopy;
  v37 = [actionsCopy objectsPassingTest:&__block_literal_global_409];
  if ([contextCopy isUISubclass])
  {
    payload = [contextCopy payload];
  }

  else
  {
    payload = 0;
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__140;
  v52 = __Block_byref_object_dispose__140;
  v53 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116___UISceneOpenItemProvidersBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke_5;
  aBlock[3] = &unk_1E70F7F68;
  aBlock[4] = &v48;
  v35 = _Block_copy(aBlock);
  if (_appSupportsSceneItemProviders)
  {
    newValue = [MEMORY[0x1E695DFA8] set];
    v12 = [MEMORY[0x1E695DFA8] set];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v37;
    v13 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
    v39 = v12;
    if (v13)
    {
      v14 = *v44;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          continuationEndpoint = [v16 continuationEndpoint];
          v18 = [(_UISceneOpenItemProvidersBSActionsHandler *)self dragContinuationFromEndpoint:continuationEndpoint];

          v19 = [(_UISceneOpenItemProvidersBSActionsHandler *)self itemCollectionFromDragContinuation:v18];
          userInfo = [v16 userInfo];
          v21 = [(_UISceneOpenItemProvidersBSActionsHandler *)self itemProvidersFromPBItemCollection:v19 userInfo:userInfo];

          v22 = [[_UISceneOpenItemProvidersDataTransferSession alloc] initWithItemProviders:v21 itemCollection:v19 continuation:v18];
          v23 = +[_UISceneOpenItemProvidersDataTransferSessionManager sharedInstance];
          [v23 addSession:v22];

          [v39 addObject:v21];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __116___UISceneOpenItemProvidersBSActionsHandler__launchOptionsFromActions_forFBSScene_uiSceneSession_transitionContext___block_invoke_2;
          v41[3] = &unk_1E70F3590;
          v24 = v22;
          v42 = v24;
          v25 = _Block_copy(v41);
          [newValue addObject:v25];
        }

        v13 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v13);
    }

    v26 = v39;
    v35[2](v35, v39, @"_UISceneConnectionOptionsItemProvidersKey");
  }

  else
  {
    v26 = [(_UISceneOpenItemProvidersBSActionsHandler *)self URLContextsFromOpenItemProvidersActions:v37 payload:payload];
    v35[2](v35, v26, @"_UISceneConnectionOptionsURLContextKey");
    newValue = 0;
  }

  v27 = objc_alloc_init(_UISceneConnectionOptionsContext);
  [(_UISceneConnectionOptionsContext *)v27 setLaunchOptionsDictionary:v49[5]];
  v28 = [MEMORY[0x1E695DFA8] setWithSet:v34];
  [v28 minusSet:v37];
  [(_UISceneConnectionOptionsContext *)v27 setUnprocessedActions:v28];
  if (v27)
  {
    objc_setProperty_nonatomic_copy(v27, v29, newValue, 32);
  }

  _Block_object_dispose(&v48, 8);

  return v27;
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v47 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  iSceneCopy = iScene;
  v10 = [actionsCopy objectsPassingTest:&__block_literal_global_13_1];
  array = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DFA8] set];
  if (iSceneCopy && (iSceneCopy[208] & 0x80) != 0)
  {
    v33 = iSceneCopy;
    v34 = actionsCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v32 = v10;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          continuationEndpoint = [v16 continuationEndpoint];
          v18 = [(_UISceneOpenItemProvidersBSActionsHandler *)self dragContinuationFromEndpoint:continuationEndpoint];

          v19 = [(_UISceneOpenItemProvidersBSActionsHandler *)self itemCollectionFromDragContinuation:v18];
          userInfo = [v16 userInfo];
          v21 = [(_UISceneOpenItemProvidersBSActionsHandler *)self itemProvidersFromPBItemCollection:v19 userInfo:userInfo];

          v22 = [[_UISceneOpenItemProvidersDataTransferSession alloc] initWithItemProviders:v21 itemCollection:v19 continuation:v18];
          v23 = +[_UISceneOpenItemProvidersDataTransferSessionManager sharedInstance];
          [v23 addSession:v22];

          [array addObject:v22];
          [v11 addObject:v21];
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v13);
    }

    iSceneCopy = v33;
    if ([v11 count])
    {
      delegate = [v33 delegate];
      [delegate _scene:v33 openItemProviders:v11];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = array;
    v26 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v37 + 1) + 8 * j) didFinishSendingRequests];
        }

        v27 = [v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v27);
    }

    actionsCopy = v34;
    v10 = v32;
  }

  v30 = [actionsCopy mutableCopy];
  [v30 minusSet:v10];

  return v30;
}

- (id)URLContextsFromOpenItemProvidersActions:(id)actions payload:(id)payload
{
  v29 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  payloadCopy = payload;
  v6 = [MEMORY[0x1E695DFA8] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = actionsCopy;
  v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      v21 = v8;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        if ([v11 providerSource] == 1)
        {
          continuationEndpoint = [v11 continuationEndpoint];
          v13 = [(_UISceneOpenItemProvidersBSActionsHandler *)self dragContinuationFromEndpoint:continuationEndpoint];

          v14 = [(_UISceneOpenItemProvidersBSActionsHandler *)self itemCollectionFromDragContinuation:v13];
          if (objc_opt_respondsToSelector())
          {
            [v14 setLoadsDataSynchronously:1];
          }

          v15 = [(_UISceneOpenItemProvidersBSActionsHandler *)self itemProvidersFromPBItemCollection:v14 userInfo:0];
          uUID = [v14 UUID];
          uUIDString = [uUID UUIDString];
          v18 = -[_UISceneOpenItemProvidersBSActionsHandler URLContextsFetchedFromItemProviders:collectionIdentifier:contentOwner:payload:](self, "URLContextsFetchedFromItemProviders:collectionIdentifier:contentOwner:payload:", v15, uUIDString, [v14 originatorDataOwner], payloadCopy);

          [v13 dragContinuationDidFinishRequestingData];
          v6 = v18;
          v8 = v21;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)bestUTIForAppFromProviderRegisteredTypeIdentifiers:(id)identifiers
{
  v39[3] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identifier = [*MEMORY[0x1E6982E48] identifier];
  v39[0] = identifier;
  identifier2 = [*MEMORY[0x1E6982D60] identifier];
  v39[1] = identifier2;
  identifier3 = [*MEMORY[0x1E6982D50] identifier];
  v39[2] = identifier3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];

  v8 = [identifiersCopy arrayByExcludingObjectsInArray:v7];
  bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v10 = bundleRecordForCurrentProcess;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__140;
  v37 = __Block_byref_object_dispose__140;
  v38 = 0;
  if (bundleRecordForCurrentProcess)
  {
    claimRecords = [bundleRecordForCurrentProcess claimRecords];
  }

  else
  {
    claimRecords = 0;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke;
  v29[3] = &unk_1E7118750;
  v12 = claimRecords;
  v30 = v12;
  v13 = v7;
  v31 = v13;
  v32 = &v33;
  [v8 enumerateObjectsUsingBlock:v29];
  v14 = v34[5];
  if (!v14)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_4;
    v25[3] = &unk_1E7118750;
    v15 = v12;
    v26 = v15;
    v16 = v13;
    v27 = v16;
    v28 = &v33;
    [v8 enumerateObjectsUsingBlock:v25];

    v14 = v34[5];
    if (!v14)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __96___UISceneOpenItemProvidersBSActionsHandler_bestUTIForAppFromProviderRegisteredTypeIdentifiers___block_invoke_7;
      v21[3] = &unk_1E7118750;
      v22 = v15;
      v23 = v16;
      v24 = &v33;
      [v8 enumerateObjectsUsingBlock:v21];

      v14 = v34[5];
      if (!v14)
      {
        firstObject = [identifiersCopy firstObject];
        v18 = v34[5];
        v34[5] = firstObject;

        v14 = v34[5];
      }
    }
  }

  v19 = v14;

  _Block_object_dispose(&v33, 8);

  return v19;
}

- (BOOL)currentAppSupportsOpenInPlace
{
  bundleRecordForCurrentProcess = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    supportsOpenInPlace = [bundleRecordForCurrentProcess supportsOpenInPlace];
  }

  else
  {
    supportsOpenInPlace = 0;
  }

  return supportsOpenInPlace;
}

- (id)openURLOptionsFromBasePayload:(id)payload sourceProcessHandle:(id)handle dragContentOwner:(int64_t)owner
{
  payloadCopy = payload;
  handleCopy = handle;
  if (payloadCopy)
  {
    dictionary = [payloadCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = dictionary;
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:owner];
  [v11 setObject:v12 forKey:@"_UISceneOpenURLOptionsContentOwnerKey"];

  v13 = *MEMORY[0x1E69635A0];
  v14 = [v11 objectForKeyedSubscript:*MEMORY[0x1E69635A0]];
  bOOLValue = [v14 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_UISceneOpenItemProvidersBSActionsHandler currentAppSupportsOpenInPlace](self, "currentAppSupportsOpenInPlace")}];
    [v11 setObject:v16 forKeyedSubscript:v13];
  }

  v17 = [UISceneOpenURLOptions _optionsFromPayload:v11 sourceProcessHandle:handleCopy];

  return v17;
}

- (id)URLContextsFetchedFromItemProviders:(id)providers collectionIdentifier:(id)identifier contentOwner:(int64_t)owner payload:(id)payload
{
  v54 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  identifierCopy = identifier;
  payloadCopy = payload;
  v34 = [MEMORY[0x1E695DFA8] set];
  v33 = [MEMORY[0x1E695DFA8] set];
  v10 = dispatch_group_create();
  if ([providersCopy count] && !-[_UISceneOpenItemProvidersBSActionsHandler currentAppSupportsReceivingMultipleItems](self, "currentAppSupportsReceivingMultipleItems"))
  {
    v11 = [providersCopy subarrayWithRange:{0, 1}];

    providersCopy = v11;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = providersCopy;
  v12 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    v29 = &v41;
    v30 = v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        registeredTypeIdentifiers = [v16 registeredTypeIdentifiers];
        v18 = [(_UISceneOpenItemProvidersBSActionsHandler *)self bestUTIForAppFromProviderRegisteredTypeIdentifiers:registeredTypeIdentifiers];

        if (v18)
        {
          dispatch_group_enter(v10);
          currentAppSupportsOpenInPlace = [(_UISceneOpenItemProvidersBSActionsHandler *)self currentAppSupportsOpenInPlace];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __123___UISceneOpenItemProvidersBSActionsHandler_URLContextsFetchedFromItemProviders_collectionIdentifier_contentOwner_payload___block_invoke;
          aBlock[3] = &unk_1E71187A0;
          aBlock[4] = v16;
          aBlock[5] = self;
          v43 = v33;
          v44 = identifierCopy;
          v45 = payloadCopy;
          ownerCopy = owner;
          v46 = v34;
          v47 = v10;
          v20 = _Block_copy(aBlock);
          v21 = v20;
          if (currentAppSupportsOpenInPlace)
          {
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v40[0] = __123___UISceneOpenItemProvidersBSActionsHandler_URLContextsFetchedFromItemProviders_collectionIdentifier_contentOwner_payload___block_invoke_3;
            v40[1] = &unk_1E71187C8;
            v41 = v20;
            v22 = v20;
            v23 = [v16 loadInPlaceFileRepresentationForTypeIdentifier:v18 completionHandler:v39];
            v24 = v29;
          }

          else
          {
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __123___UISceneOpenItemProvidersBSActionsHandler_URLContextsFetchedFromItemProviders_collectionIdentifier_contentOwner_payload___block_invoke_4;
            v37[3] = &unk_1E71187F0;
            v38 = v20;
            v25 = v20;
            v26 = [v16 loadFileRepresentationForTypeIdentifier:v18 completionHandler:v37];
            v24 = &v38;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v13);
  }

  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v27 = [v34 copy];

  return v27;
}

- (id)uniqueFileNameWithStakedClaims:(id)claims hint:(id)hint extension:(id)extension
{
  claimsCopy = claims;
  hintCopy = hint;
  extensionCopy = extension;
  if ([hintCopy length])
  {
    if ([extensionCopy length])
    {
      v10 = [hintCopy stringByAppendingPathExtension:extensionCopy];
    }

    else
    {
      v10 = hintCopy;
    }

    v13 = v10;
    if ([claimsCopy containsObject:v10])
    {
      LODWORD(v19) = 0;
      do
      {
        if (v19)
        {
          v19 = (v19 + 1);
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %d", hintCopy, v19];

          if ([extensionCopy length])
          {
            v13 = [v20 stringByAppendingPathExtension:extensionCopy];
          }

          else
          {
            v13 = v20;
          }
        }

        else
        {
          LODWORD(v19) = 1;
        }
      }

      while (([claimsCopy containsObject:v13] & 1) != 0);
    }
  }

  else
  {
    v11 = _UIKitBundle();
    v12 = [v11 localizedStringForKey:@"DROPPED_DOCUMENT" value:@"Dropped Document" table:@"Localizable"];

    v22 = v12;
    v13 = [v12 stringByAppendingPathExtension:extensionCopy];
    if ([claimsCopy containsObject:v13])
    {
      LODWORD(v14) = 0;
      do
      {
        if (v14)
        {
          v15 = MEMORY[0x1E696AEC0];
          v16 = _UIKitBundle();
          v17 = [v16 localizedStringForKey:@"DROPPED_DOCUMENT_N" value:@"Dropped Document %d" table:@"Localizable"];
          v14 = (v14 + 1);
          v18 = [v15 localizedStringWithFormat:v17, v14];

          if ([extensionCopy length])
          {
            v13 = [v18 stringByAppendingPathExtension:extensionCopy];
          }

          else
          {
            v13 = v18;
          }
        }

        else
        {
          LODWORD(v14) = 1;
        }
      }

      while (([claimsCopy containsObject:v13] & 1) != 0);
    }
  }

  return v13;
}

- (id)itemProvidersFromPBItemCollection:(id)collection userInfo:(id)info
{
  v25 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  infoCopy = info;
  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  items = [collectionCopy items];
  v9 = [v7 initWithCapacity:{objc_msgSend(items, "count")}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [collectionCopy items];
  v10 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [[UIItemProvider alloc] initWithPBItem:*(*(&v20 + 1) + 8 * i)];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __88___UISceneOpenItemProvidersBSActionsHandler_itemProvidersFromPBItemCollection_userInfo___block_invoke;
        v18[3] = &unk_1E70F7970;
        v19 = v14;
        v15 = v14;
        [infoCopy enumerateKeysAndObjectsUsingBlock:v18];
        [v9 addObject:v15];
      }

      v11 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  return v9;
}

- (id)dragContinuationFromEndpoint:(id)endpoint
{
  v3 = MEMORY[0x1E696B0B8];
  endpointCopy = endpoint;
  v5 = [[v3 alloc] initWithListenerEndpoint:endpointCopy];

  v6 = _DUINewDragContinuationInterface();
  [v5 setRemoteObjectInterface:v6];

  [v5 resume];
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_55_3];

  return v7;
}

- (id)itemCollectionFromDragContinuation:(id)continuation
{
  continuationCopy = continuation;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__140;
  v11 = __Block_byref_object_dispose__140;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80___UISceneOpenItemProvidersBSActionsHandler_itemCollectionFromDragContinuation___block_invoke;
  v6[3] = &unk_1E7118818;
  v6[4] = &v7;
  [continuationCopy requestItemCollectionWithReply:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end
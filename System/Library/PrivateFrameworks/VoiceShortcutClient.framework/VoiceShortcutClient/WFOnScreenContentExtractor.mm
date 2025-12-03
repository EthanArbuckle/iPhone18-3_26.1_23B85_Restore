@interface WFOnScreenContentExtractor
- (CGRect)applicationFrame;
- (CGRect)applicationFrameForScene:(id)scene;
- (WFOnScreenContentExtractor)init;
- (id)activityItemsConfigurationFromScene:(id)scene;
- (id)expectedQueue;
- (id)nodeWithContentCollection:(id)collection file:(id)file linkPresentationMetadata:(id)metadata;
- (id)responseWithError:(id)error;
- (void)handleAction:(id)action completionHandler:(id)handler;
- (void)loadActivityItemsConfigurationItemsForScene:(id)scene serviceOptions:(id)options completionHandler:(id)handler;
@end

@implementation WFOnScreenContentExtractor

- (CGRect)applicationFrame
{
  x = self->_applicationFrame.origin.x;
  y = self->_applicationFrame.origin.y;
  width = self->_applicationFrame.size.width;
  height = self->_applicationFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)nodeWithContentCollection:(id)collection file:(id)file linkPresentationMetadata:(id)metadata
{
  v49 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  fileCopy = file;
  metadataCopy = metadata;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  items = [collectionCopy items];
  firstObject = [items firstObject];

  items2 = [collectionCopy items];
  v16 = [items2 count];

  if (v16 >= 2)
  {
    name = [firstObject name];
    v17 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    items3 = [collectionCopy items];
    v19 = [items3 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v41 = metadataCopy;
      v42 = fileCopy;
      v21 = *v45;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v45 != v21)
          {
            objc_enumerationMutation(items3);
          }

          v23 = *(*(&v44 + 1) + 8 * i);
          getWFStringContentItemClass();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v17 = 0;
            goto LABEL_12;
          }

          string = [v23 string];
          [v17 appendString:string];
        }

        v20 = [items3 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_12:
      metadataCopy = v41;
      fileCopy = v42;
    }

    if ([v17 length])
    {
      WFStringContentItemClass = getWFStringContentItemClass();
      v26 = [v17 copy];
      v27 = [WFStringContentItemClass itemWithObject:v26 named:name];

      firstObject = v27;
    }
  }

  v28 = [WFOnScreenContentNode alloc];
  [(WFOnScreenContentExtractor *)self applicationFrame];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFOnScreenContentExtractor applicationLevel](self, "applicationLevel")}];
  v38 = [(WFOnScreenContentNode *)v28 initWithContentItem:firstObject file:fileCopy applicationBundleIdentifier:bundleIdentifier applicationFrame:v37 applicationLevel:@"UIActivityItemsConfiguration" source:metadataCopy linkPresentationMetadata:v30, v32, v34, v36];

  v39 = *MEMORY[0x1E69E9840];

  return v38;
}

- (id)responseWithError:(id)error
{
  v3 = MEMORY[0x1E696E850];
  errorCopy = error;
  v5 = [[v3 alloc] initWithNode:0 error:errorCopy];

  return v5;
}

- (id)activityItemsConfigurationFromScene:(id)scene
{
  v23 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  windows = [sceneCopy windows];
  v5 = [windows countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(windows);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isKeyWindow])
        {
          v11 = v10;

          v7 = v11;
        }
      }

      v6 = [windows countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  _focusResponder = [v7 _focusResponder];
  if (_focusResponder)
  {
    v13 = _focusResponder;
    while (1)
    {
      activityItemsConfiguration = [v13 activityItemsConfiguration];

      if (activityItemsConfiguration)
      {
        break;
      }

      nextResponder = [v13 nextResponder];

      if (!nextResponder)
      {
        goto LABEL_20;
      }

      nextResponder = [v13 nextResponder];

      v13 = nextResponder;
      if (!nextResponder)
      {
        goto LABEL_21;
      }
    }

    nextResponder = [v13 activityItemsConfiguration];
LABEL_20:
  }

  else
  {
    nextResponder = 0;
  }

LABEL_21:

  v16 = *MEMORY[0x1E69E9840];

  return nextResponder;
}

- (void)loadActivityItemsConfigurationItemsForScene:(id)scene serviceOptions:(id)options completionHandler:(id)handler
{
  sceneCopy = scene;
  optionsCopy = options;
  handlerCopy = handler;
  expectedQueue = [(WFOnScreenContentExtractor *)self expectedQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke;
  v15[3] = &unk_1E7B024B0;
  v15[4] = self;
  v16 = sceneCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v14 = sceneCopy;
  dispatch_async(expectedQueue, v15);
}

void __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityItemsConfigurationFromScene:*(a1 + 40)];
  v3 = [v2 itemProvidersForActivityItemsConfiguration];
  if (v3)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__19005;
    v12[4] = __Block_byref_object_dispose__19006;
    v4 = [*(a1 + 48) supportedItemClasses];
    v13 = [v4 copy];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke_2;
    v7[3] = &unk_1E7B02488;
    v11 = v12;
    v8 = *(a1 + 48);
    v5 = v2;
    v6 = *(a1 + 32);
    v9 = v5;
    v10 = v6;
    [v3 if_mapAsynchronously:v7 completionHandler:*(a1 + 56)];

    _Block_object_dispose(v12, 8);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2050000000;
  v8 = getWFContentItemClass_softClass_19008;
  v42 = getWFContentItemClass_softClass_19008;
  if (!getWFContentItemClass_softClass_19008)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __getWFContentItemClass_block_invoke_19009;
    v38[3] = &unk_1E7B02C60;
    v38[4] = &v39;
    __getWFContentItemClass_block_invoke_19009(v38);
    v8 = v40[3];
  }

  v26 = v7;
  v9 = v8;
  _Block_object_dispose(&v39, 8);
  v10 = [v8 itemWithObject:v6 named:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [v10 outputTypes];
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v12)
  {
    v13 = *v35;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v35 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(*(&v34 + 1) + 8 * v14);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 string];
        v17 = [v16 isEqualToString:@"public.rtf"];

        if (v17)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    if (![*(*(*(a1 + 56) + 8) + 40) containsObject:@"WFStringContentItem"])
    {
      goto LABEL_16;
    }

    v43 = @"WFStringContentItem";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
    v19 = *(*(a1 + 56) + 8);
    v11 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

LABEL_15:

LABEL_16:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke_3;
  v27[3] = &unk_1E7B02460;
  v20 = *(a1 + 56);
  v32 = v26;
  v33 = v20;
  v28 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v29 = v21;
  v30 = v22;
  v31 = v10;
  v23 = v10;
  v24 = v26;
  [v23 preloadImportantItemsWithCompletionHandler:v27];

  v25 = *MEMORY[0x1E69E9840];
}

void __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(*(a1 + 72) + 8) + 40) if_compactMap:&__block_literal_global_19015];
  WFCoercionRequestClass = getWFCoercionRequestClass();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke_5;
  v10[3] = &unk_1E7B02438;
  v13 = *(a1 + 64);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = *(a1 + 48);
  v6 = *(&v9 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v12 = v9;
  v11 = v7;
  v8 = [WFCoercionRequestClass requestForCoercingToContentClasses:v2 completionHandler:v10];
  [*(a1 + 56) performCoercion:v8];
}

void __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [v6 items];
  v9 = [v8 count];

  if (v9)
  {
    WFCoercionRequestClass = getWFCoercionRequestClass();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke_6;
    v14[3] = &unk_1E7B02410;
    v15 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v16 = v11;
    v17 = v12;
    v18 = v6;
    v19 = *(a1 + 64);
    v13 = [WFCoercionRequestClass requestForCoercingToFileType:0 completionHandler:v14];
    [*(a1 + 56) performCoercion:v13];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __107__WFOnScreenContentExtractor_loadActivityItemsConfigurationItemsForScene_serviceOptions_completionHandler___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    v8 = MEMORY[0x1E696E840];
    v9 = [v7 fileURL];
    v10 = [v7 filename];
    v11 = [v7 wfType];
    v12 = [v11 string];
    v13 = [v8 fileWithFileURL:v9 filename:v10 typeIdentifier:v12];

    if ([v7 deletesFileOnDeallocation])
    {
      [v13 _setMarkedForDeletionOnDeallocation:1];
    }

    v14 = [v7 fileURL];
    if (v14)
    {
      v15 = v14;
      v16 = [v7 fileURL];
      v17 = [v16 isFileURL];

      if (v17)
      {
        v18 = *MEMORY[0x1E69E9BB0];
        v19 = [v7 fileURL];
        v20 = [v19 path];
        [v20 fileSystemRepresentation];
        v21 = *MEMORY[0x1E69E9BE0];
        v22 = sandbox_extension_issue_file();

        if (v22)
        {
          v23 = *(a1 + 32);
          if (v23)
          {
            [v23 originatingProcessAuditToken];
          }

          else
          {
            v35 = 0u;
            v36 = 0u;
          }

          [v13 _setAssociatedAuditToken:&v35];
          v24 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v22 length:strlen(v22) + 1];
          v25 = [v7 fileURL];
          MEMORY[0x1B273E920](v25, v24);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v26 = *(a1 + 40);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v31 = 0;
    goto LABEL_19;
  }

  v27 = *(a1 + 40);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v28 = getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_ptr;
  v41 = getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_ptr;
  if (!getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_ptr)
  {
    *&v35 = MEMORY[0x1E69E9820];
    *(&v35 + 1) = 3221225472;
    *&v36 = __getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_block_invoke;
    *(&v36 + 1) = &unk_1E7B02C60;
    v37 = &v38;
    v29 = UIKitLibrary();
    v30 = dlsym(v29, "UIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata");
    *(v37[1] + 24) = v30;
    getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadataSymbolLoc_ptr = *(v37[1] + 24);
    v28 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (v28)
  {
    v31 = [v27 activityItemsConfigurationMetadataForKey:*v28];
LABEL_19:
    v32 = [*(a1 + 48) nodeWithContentCollection:*(a1 + 56) file:v13 linkPresentationMetadata:v31];
    (*(*(a1 + 64) + 16))();

    return;
  }

  v33 = [MEMORY[0x1E696AAA8] currentHandler];
  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UIActivityItemsConfigurationMetadataKey getUIActivityItemsConfigurationMetadataKeyLinkPresentationMetadata(void)"];
  [v33 handleFailureInFunction:v34 file:@"WFOnScreenContentExtractor.m" lineNumber:37 description:{@"%s", dlerror()}];

  __break(1u);
}

- (id)expectedQueue
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([&unk_1F29315C0 containsObject:bundleIdentifier])
  {
    itemProviderQueue = [(WFOnScreenContentExtractor *)self itemProviderQueue];
  }

  else
  {
    itemProviderQueue = MEMORY[0x1E69E96A0];
    v6 = MEMORY[0x1E69E96A0];
  }

  return itemProviderQueue;
}

- (CGRect)applicationFrameForScene:(id)scene
{
  settings = [scene settings];
  [settings frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([settings interfaceOrientation] == 1 || objc_msgSend(settings, "interfaceOrientation") == 2 || objc_msgSend(settings, "interfaceOrientation") != 4 && objc_msgSend(settings, "interfaceOrientation") != 3)
  {
    v12 = v9;
    v9 = v11;
  }

  else
  {
    v12 = v11;
  }

  v13 = v5;
  v14 = v7;
  v15 = v12;
  v16 = v9;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)handleAction:(id)action completionHandler:(id)handler
{
  v53 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  handlerCopy = handler;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2050000000;
  v5 = getUIApplicationClass_softClass;
  v51 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __getUIApplicationClass_block_invoke;
    v41 = &unk_1E7B02C60;
    v42 = &v48;
    __getUIApplicationClass_block_invoke(&v38);
    v5 = v49[3];
  }

  v6 = v5;
  _Block_object_dispose(&v48, 8);
  sharedApplication = [v5 sharedApplication];
  connectedScenes = [sharedApplication connectedScenes];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = connectedScenes;
  v8 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v8)
  {

    v34 = 0;
LABEL_23:
    v27 = [(WFOnScreenContentExtractor *)self responseWithError:0];
    handlerCopy[2](handlerCopy, v27);

    v9 = 0;
    goto LABEL_24;
  }

  v34 = 0;
  v9 = 0;
  v10 = *v45;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v45 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v44 + 1) + 8 * i);
      v48 = 0;
      v49 = &v48;
      v50 = 0x2050000000;
      v13 = getUIWindowSceneClass_softClass;
      v51 = getUIWindowSceneClass_softClass;
      if (!getUIWindowSceneClass_softClass)
      {
        v38 = MEMORY[0x1E69E9820];
        v39 = 3221225472;
        v40 = __getUIWindowSceneClass_block_invoke;
        v41 = &unk_1E7B02C60;
        v42 = &v48;
        __getUIWindowSceneClass_block_invoke(&v38);
        v13 = v49[3];
      }

      v14 = v13;
      _Block_object_dispose(&v48, 8);
      if (objc_opt_isKindOfClass())
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = v16;
      if (v16)
      {
        _FBSScene = [v16 _FBSScene];
        identifier = [_FBSScene identifier];
        sceneIdentifier = [actionCopy sceneIdentifier];
        v21 = [identifier isEqualToString:sceneIdentifier];

        if (v21)
        {
          v22 = v17;

          v23 = _FBSScene;
          v34 = v23;
        }

        else
        {
          v12 = v9;
        }

        v9 = v12;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  }

  while (v8);

  if (!v9)
  {
    goto LABEL_23;
  }

  [(WFOnScreenContentExtractor *)self applicationFrameForScene:v34];
  [(WFOnScreenContentExtractor *)self setApplicationFrame:?];
  settings = [v34 settings];
  [settings level];
  [(WFOnScreenContentExtractor *)self setApplicationLevel:v25];

  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__19005;
  v42 = __Block_byref_object_dispose__19006;
  v43 = objc_alloc_init(WFOnScreenContentNode);
  serviceOptions = [actionCopy serviceOptions];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __61__WFOnScreenContentExtractor_handleAction_completionHandler___block_invoke;
  v35[3] = &unk_1E7B023C8;
  v37 = &v38;
  v36 = handlerCopy;
  [(WFOnScreenContentExtractor *)self loadActivityItemsConfigurationItemsForScene:v9 serviceOptions:serviceOptions completionHandler:v35];

  _Block_object_dispose(&v38, 8);
LABEL_24:

  v28 = *MEMORY[0x1E69E9840];
}

void __61__WFOnScreenContentExtractor_handleAction_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v11 count] >= 2)
  {
    [*(*(*(a1 + 40) + 8) + 40) addChildren:v11];
    goto LABEL_8;
  }

  if ([v11 count] == 1)
  {
    v6 = [v11 firstObject];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    if (v11)
    {
      goto LABEL_8;
    }

    v9 = *(*(a1 + 40) + 8);
    v8 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

LABEL_8:
  v10 = [objc_alloc(MEMORY[0x1E696E850]) initWithNode:*(*(*(a1 + 40) + 8) + 40) error:v5];

  (*(*(a1 + 32) + 16))();
}

- (WFOnScreenContentExtractor)init
{
  v9.receiver = self;
  v9.super_class = WFOnScreenContentExtractor;
  v2 = [(WFOnScreenContentExtractor *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.shortcuts.WFOnScreenContentExtractor.ItemProviderExtraction", v4);
    itemProviderQueue = v2->_itemProviderQueue;
    v2->_itemProviderQueue = v5;

    v7 = v2;
  }

  return v2;
}

@end
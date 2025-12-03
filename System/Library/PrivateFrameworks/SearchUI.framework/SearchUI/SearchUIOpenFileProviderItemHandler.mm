@interface SearchUIOpenFileProviderItemHandler
+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment;
- (BOOL)openFileURLInPlaceInDefaultApplicationIfPossible:(id)possible;
- (NSURL)fileProviderURL;
- (id)blockAndFetchFileProviderURL;
- (id)createViewControllerForCommand:(id)command environment:(id)environment;
- (id)destinationApplicationIconImage;
- (id)itemProvider;
- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller;
- (void)fetchPreviewItemIfNeeded:(id)needed;
- (void)fetchShareableURLWithCompletionHandler:(id)handler;
- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment;
@end

@implementation SearchUIOpenFileProviderItemHandler

+ (id)fallbackCommandForRowModel:(id)model environment:(id)environment
{
  modelCopy = model;
  coreSpotlightIdentifier = [modelCopy coreSpotlightIdentifier];
  fileProviderIdentifier = [modelCopy fileProviderIdentifier];

  v7 = 0;
  if (coreSpotlightIdentifier && fileProviderIdentifier)
  {
    v7 = objc_opt_new();
    [v7 setCoreSpotlightIdentifier:coreSpotlightIdentifier];
    [v7 setFileProviderIdentifier:fileProviderIdentifier];
  }

  return v7;
}

- (void)performCommand:(id)command triggerEvent:(unint64_t)event environment:(id)environment
{
  commandCopy = command;
  environmentCopy = environment;
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SearchUIOpenFileProviderItemHandler_performCommand_triggerEvent_environment___block_invoke;
  v13[3] = &unk_1E85B3A08;
  v14 = commandCopy;
  selfCopy = self;
  v16 = environmentCopy;
  eventCopy = event;
  v11 = environmentCopy;
  v12 = commandCopy;
  [rowModel fetchFileProviderURLWithCompletionHandler:v13];
}

void __79__SearchUIOpenFileProviderItemHandler_performCommand_triggerEvent_environment___block_invoke(uint64_t a1, void *a2)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [v3 startAccessingSecurityScopedResource];
    v6 = *MEMORY[0x1E695DB78];
    v7 = *MEMORY[0x1E695DBA0];
    v36[0] = *MEMORY[0x1E695DB78];
    v36[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    v9 = [v4 resourceValuesForKeys:v8 error:0];

    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:v6];
      if ([v10 BOOLValue])
      {
        v11 = [v9 objectForKeyedSubscript:v7];
        v12 = [v11 BOOLValue] ^ 1;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v17 = [*(a1 + 32) shouldRevealFile];
    v18 = v17;
    if (v12 & 1) == 0 && (v17 & 1) == 0 && ([*(a1 + 40) openFileURLInPlaceInDefaultApplicationIfPossible:v4])
    {
      goto LABEL_21;
    }

    v19 = [SearchUIUtilities bundleIdentifierForApp:6];
    if ([SearchUIUtilities isAppInstalledWithBundleId:v19])
    {
    }

    else
    {
      v20 = [MEMORY[0x1E697A0C8] canPreviewItem:v4];

      if (v20)
      {
        v21 = *(a1 + 32);
        v23 = *(a1 + 48);
        v22 = *(a1 + 56);
        v34.receiver = *(a1 + 40);
        v34.super_class = SearchUIOpenFileProviderItemHandler;
        objc_msgSendSuper2(&v34, sel_performCommand_triggerEvent_environment_, v21, v22, v23);
LABEL_21:

        return;
      }
    }

    v24 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:0];
    [v24 setScheme:@"shareddocuments"];
    if (v18)
    {
      v25 = [MEMORY[0x1E696AF60] queryItemWithName:@"reveal" value:@"true"];
      v35 = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      [v24 setQueryItems:v26];
    }

    v27 = [v24 URL];

    v28 = [MEMORY[0x1E69CA320] punchoutWithURL:v27];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __79__SearchUIOpenFileProviderItemHandler_performCommand_triggerEvent_environment___block_invoke_2;
    v30[3] = &unk_1E85B24F0;
    v33 = v5;
    v4 = v27;
    v29 = *(a1 + 40);
    v31 = v4;
    v32 = v29;
    [SearchUIUtilities openPunchout:v28 completion:v30];

    goto LABEL_21;
  }

  v13 = SearchUIGeneralLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __79__SearchUIOpenFileProviderItemHandler_performCommand_triggerEvent_environment___block_invoke_cold_1(v13);
  }

  v14 = objc_opt_new();
  v15 = [*(a1 + 40) rowModel];
  v16 = [SearchUIOpenPunchoutHandler fallbackCommandForRowModel:v15 environment:*(a1 + 48)];
  [v14 performCommand:v16 triggerEvent:*(a1 + 56) environment:*(a1 + 48)];

  [*(a1 + 40) notifyDelegateDidPerformCommandIfNecessary];
}

uint64_t __79__SearchUIOpenFileProviderItemHandler_performCommand_triggerEvent_environment___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  v2 = *(a1 + 40);

  return [v2 notifyDelegateDidPerformCommandIfNecessary];
}

- (id)createViewControllerForCommand:(id)command environment:(id)environment
{
  v5 = objc_opt_new();
  [v5 setDataSource:self];
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__SearchUIOpenFileProviderItemHandler_createViewControllerForCommand_environment___block_invoke;
  v9[3] = &unk_1E85B3A30;
  v7 = v5;
  v10 = v7;
  [rowModel fetchFileProviderURLWithCompletionHandler:v9];

  return v7;
}

void __82__SearchUIOpenFileProviderItemHandler_createViewControllerForCommand_environment___block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __82__SearchUIOpenFileProviderItemHandler_createViewControllerForCommand_environment___block_invoke_2;
  v1[3] = &unk_1E85B24C8;
  v2 = *(a1 + 32);
  [SearchUIUtilities dispatchMainIfNecessary:v1];
}

- (int64_t)numberOfPreviewItemsInPreviewController:(id)controller
{
  fileProviderURL = [(SearchUIOpenFileProviderItemHandler *)self fileProviderURL];
  v4 = fileProviderURL != 0;

  return v4;
}

- (NSURL)fileProviderURL
{
  rowModel = [(SearchUICommandHandler *)self rowModel];
  fileProviderFetchedURL = [rowModel fileProviderFetchedURL];

  return fileProviderFetchedURL;
}

- (void)fetchPreviewItemIfNeeded:(id)needed
{
  neededCopy = needed;
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__SearchUIOpenFileProviderItemHandler_fetchPreviewItemIfNeeded___block_invoke;
  v7[3] = &unk_1E85B3A58;
  v8 = neededCopy;
  v6 = neededCopy;
  [rowModel fetchFileProviderURLWithCompletionHandler:v7];
}

uint64_t __64__SearchUIOpenFileProviderItemHandler_fetchPreviewItemIfNeeded___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2 != 0);
  }

  return result;
}

- (BOOL)openFileURLInPlaceInDefaultApplicationIfPossible:(id)possible
{
  possibleCopy = possible;
  if (possibleCopy)
  {
    v4 = [MEMORY[0x1E69CDA18] interactionControllerWithURL:possibleCopy];
    _defaultApplication = [v4 _defaultApplication];
    supportsOpenInPlace = [_defaultApplication supportsOpenInPlace];

    if (supportsOpenInPlace)
    {
      [v4 openDocumentWithDefaultApplication];
    }
  }

  else
  {
    LOBYTE(supportsOpenInPlace) = 0;
  }

  return supportsOpenInPlace;
}

- (void)fetchShareableURLWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  rowModel = [(SearchUICommandHandler *)self rowModel];
  [rowModel fetchFileProviderURLWithCompletionHandler:handlerCopy];
}

- (id)blockAndFetchFileProviderURL
{
  v3 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__SearchUIOpenFileProviderItemHandler_blockAndFetchFileProviderURL__block_invoke;
  v9[3] = &unk_1E85B3A80;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  [rowModel fetchFileProviderURLWithCompletionHandler:v9];

  v6 = dispatch_time(0, 10000000000);
  v7 = 0;
  if (!dispatch_semaphore_wait(v5, v6))
  {
    v7 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __67__SearchUIOpenFileProviderItemHandler_blockAndFetchFileProviderURL__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)itemProvider
{
  v3 = objc_opt_new();
  rowModel = [(SearchUICommandHandler *)self rowModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__SearchUIOpenFileProviderItemHandler_itemProvider__block_invoke;
  v7[3] = &unk_1E85B3A30;
  v5 = v3;
  v8 = v5;
  [rowModel fetchFileProviderURLWithCompletionHandler:v7];

  return v5;
}

void __51__SearchUIOpenFileProviderItemHandler_itemProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E6982C40];
    v6 = [v3 pathExtension];
    v7 = [v5 typeWithFilenameExtension:v6];
    v8 = [v7 identifier];
    v9 = v8;
    v10 = &stru_1F55BC4E8;
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;

    v12 = *(a1 + 32);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__SearchUIOpenFileProviderItemHandler_itemProvider__block_invoke_2;
    v13[3] = &unk_1E85B3AA8;
    v14 = v4;
    [v12 registerFileRepresentationForTypeIdentifier:v11 fileOptions:1 visibility:0 loadHandler:v13];
  }
}

- (id)destinationApplicationIconImage
{
  v3 = objc_opt_new();
  command = [(SearchUICommandHandler *)self command];
  coreSpotlightIdentifier = [command coreSpotlightIdentifier];
  [v3 setCoreSpotlightIdentifier:coreSpotlightIdentifier];

  command2 = [(SearchUICommandHandler *)self command];
  fileProviderIdentifier = [command2 fileProviderIdentifier];
  [v3 setFileProviderIdentifier:fileProviderIdentifier];

  return v3;
}

@end
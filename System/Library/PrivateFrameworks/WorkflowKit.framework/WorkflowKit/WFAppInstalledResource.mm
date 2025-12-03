@interface WFAppInstalledResource
- (BOOL)appDescriptorOrAccompanyingExtensionIsInstalled:(id)installed;
- (BOOL)descriptorIsIntentDescriptor;
- (BOOL)intentIsEligibleForRemoteExecution;
- (BOOL)intentIsLocallyAvailable;
- (WFAppInstalledResourceDelegate)delegate;
- (id)_initWithDescriptor:(id)descriptor requiresAppToBeInstalled:(BOOL)installed isSyncedFromOtherDevice:(BOOL)device;
- (id)appNeedsUpdateErrorWithAppName:(id)name;
- (id)appNotInstalledError;
- (id)appNotResolvedError;
- (id)bundleIdentifier;
- (id)eventDictionary;
- (id)intentDescriptor;
- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler;
- (void)dealloc;
- (void)fetchiTunesStoreObjectForAppWithCompletionBlock:(id)block;
- (void)notifyDelegateWithUpdatedDescriptor:(id)descriptor;
- (void)refreshAvailability;
- (void)updateDescriptorsWithSelectedApp:(id)app;
@end

@implementation WFAppInstalledResource

- (WFAppInstalledResourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  if ([error code])
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __95__WFAppInstalledResource_attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke;
    v11[3] = &unk_1E8378A08;
    v13 = handlerCopy;
    v12 = interfaceCopy;
    [(WFAppInstalledResource *)self fetchiTunesStoreObjectForAppWithCompletionBlock:v11];
  }
}

void __95__WFAppInstalledResource_attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__WFAppInstalledResource_attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke_2;
    block[3] = &unk_1E837ECE0;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __95__WFAppInstalledResource_attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6996CA8] sharedContext];
  v3 = [*(a1 + 32) viewURL];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__WFAppInstalledResource_attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke_3;
  v5[3] = &unk_1E837F0F0;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v2 openURL:v3 userInterface:v4 completionHandler:v5];
}

uint64_t __95__WFAppInstalledResource_attemptRecoveryFromError_optionIndex_userInterface_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)appNeedsUpdateErrorWithAppName:(id)name
{
  v19[4] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = WFLocalizedString(@"This action requires an updated version of %@.");
    nameCopy = [v5 localizedStringWithFormat:v6, nameCopy];

    v8 = MEMORY[0x1E696AEC0];
    v9 = WFLocalizedString(@"This shortcut requires an updated version of %@.");
    nameCopy2 = [v8 localizedStringWithFormat:v9, nameCopy];
  }

  else
  {
    nameCopy = WFLocalizedString(@"This action cannot be run because a required app is missing.");
    nameCopy2 = WFLocalizedString(@"This shortcut cannot be imported because a required app is missing");
  }

  v18[0] = *MEMORY[0x1E696A588];
  v18[1] = @"WFResourceErrorImportErrorReason";
  v19[0] = nameCopy;
  v19[1] = nameCopy2;
  v18[2] = *MEMORY[0x1E696A590];
  v11 = WFLocalizedString(@"View in App Store");
  v17 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v18[3] = *MEMORY[0x1E6997138];
  v19[2] = v12;
  v19[3] = self;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ResourceErrorDomain" code:0 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)appNotResolvedError
{
  v21[4] = *MEMORY[0x1E69E9840];
  appName = [(WFAppInstalledResource *)self appName];
  if ([appName length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = WFLocalizedString(@"This action requires %@ but it may not be installed.");
    v6 = [v4 localizedStringWithFormat:v5, appName];

    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"This shortcut requires %@ but it may not be installed.");
    v9 = [v7 localizedStringWithFormat:v8, appName];
  }

  else
  {
    v6 = WFLocalizedString(@"This action requires an app but it may not be installed.");
    v9 = WFLocalizedString(@"This shortcut requires an app but it may not be installed.");
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A588];
  v20[0] = *MEMORY[0x1E6997138];
  v20[1] = v11;
  v21[0] = self;
  v21[1] = v6;
  v21[2] = v9;
  v12 = *MEMORY[0x1E696A590];
  v20[2] = @"WFResourceErrorImportErrorReason";
  v20[3] = v12;
  v13 = WFLocalizedString(@"Select App");
  v19 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v16 = [v10 errorWithDomain:@"ResourceErrorDomain" code:1 userInfo:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)appNotInstalledError
{
  v21[4] = *MEMORY[0x1E69E9840];
  appName = [(WFAppInstalledResource *)self appName];
  if ([appName length])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = WFLocalizedString(@"This action requires %@ to be installed.");
    v6 = [v4 localizedStringWithFormat:v5, appName];

    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"This shortcut requires %@ to be installed.");
    v9 = [v7 localizedStringWithFormat:v8, appName];
  }

  else
  {
    v6 = WFLocalizedString(@"This action requires an app to be installed.");
    v9 = WFLocalizedString(@"This shortcut requires an app to be installed.");
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A588];
  v20[0] = *MEMORY[0x1E6997138];
  v20[1] = v11;
  v21[0] = self;
  v21[1] = v6;
  v21[2] = v9;
  v12 = *MEMORY[0x1E696A590];
  v20[2] = @"WFResourceErrorImportErrorReason";
  v20[3] = v12;
  v13 = WFLocalizedString(@"View in App Store");
  v19 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  v16 = [v10 errorWithDomain:@"ResourceErrorDomain" code:0 userInfo:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)intentIsLocallyAvailable
{
  if ([(WFAppInstalledResource *)self intentIsEligibleForRemoteExecution])
  {
    descriptor = [(WFAppInstalledResource *)self descriptor];
    isInstalled = [descriptor isInstalled];

    if (isInstalled)
    {
      if ([(WFAppInstalledResource *)self descriptorIsIntentDescriptor])
      {
        intentDescriptor = [(WFAppInstalledResource *)self intentDescriptor];
        canRunOnLocalDevice = [intentDescriptor canRunOnLocalDevice];
      }

      else
      {
        canRunOnLocalDevice = 1;
      }
    }

    else
    {
      canRunOnLocalDevice = 0;
    }

    return canRunOnLocalDevice & 1;
  }

  else
  {

    return [(WFResource *)self isAvailable];
  }
}

- (BOOL)intentIsEligibleForRemoteExecution
{
  descriptorIsIntentDescriptor = [(WFAppInstalledResource *)self descriptorIsIntentDescriptor];
  if (descriptorIsIntentDescriptor)
  {

    LOBYTE(descriptorIsIntentDescriptor) = [(WFAppInstalledResource *)self intentIsSynced];
  }

  return descriptorIsIntentDescriptor;
}

- (id)intentDescriptor
{
  descriptor = [(WFAppInstalledResource *)self descriptor];
  if (descriptor)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = descriptor;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)descriptorIsIntentDescriptor
{
  descriptor = [(WFAppInstalledResource *)self descriptor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)fetchiTunesStoreObjectForAppWithCompletionBlock:(id)block
{
  blockCopy = block;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WFAppInstalledResource_fetchiTunesStoreObjectForAppWithCompletionBlock___block_invoke;
  block[3] = &unk_1E8379538;
  v9 = blockCopy;
  v10 = a2;
  block[4] = self;
  v7 = blockCopy;
  dispatch_async(stateQueue, block);
}

void __74__WFAppInstalledResource_fetchiTunesStoreObjectForAppWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentAppNameLookupSessionManager];

  if (v2)
  {
    v3 = [*(a1 + 32) pendingAppLookupCompletions];

    if (!v3)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"WFAppInstalledResource.m" lineNumber:186 description:@"Pending app lookup completions unexpectedly nil"];
    }

    v14 = [*(a1 + 32) pendingAppLookupCompletions];
    v4 = [*(a1 + 40) copy];
    v5 = _Block_copy(v4);
    [v14 addObject:v5];
  }

  else
  {
    v6 = objc_alloc_init(WFiTunesSessionManager);
    [*(a1 + 32) setCurrentAppNameLookupSessionManager:v6];
    v7 = MEMORY[0x1E695DF70];
    v8 = [*(a1 + 40) copy];
    v9 = [v7 arrayWithObject:v8];
    [*(a1 + 32) setPendingAppLookupCompletions:v9];

    objc_initWeak(&location, *(a1 + 32));
    v10 = [*(a1 + 32) bundleIdentifier];
    v11 = [MEMORY[0x1E695DF58] currentLocale];
    v12 = [v11 countryCode];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __74__WFAppInstalledResource_fetchiTunesStoreObjectForAppWithCompletionBlock___block_invoke_2;
    v15[3] = &unk_1E83789E0;
    objc_copyWeak(&v16, &location);
    v15[4] = *(a1 + 32);
    [(WFiTunesSessionManager *)v6 lookupMediaWithBundleIdentifier:v10 countryCode:v12 completion:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __74__WFAppInstalledResource_fetchiTunesStoreObjectForAppWithCompletionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained stateQueue];
  dispatch_assert_queue_not_V2(v8);

  v9 = [v5 firstObject];
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

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__35573;
  v27 = __Block_byref_object_dispose__35574;
  v28 = 0;
  v12 = *(*(a1 + 32) + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__WFAppInstalledResource_fetchiTunesStoreObjectForAppWithCompletionBlock___block_invoke_188;
  block[3] = &unk_1E837F898;
  block[4] = WeakRetained;
  block[5] = &v23;
  dispatch_sync(v12, block);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v24[5];
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        (*(*(*(&v18 + 1) + 8 * i) + 16))(*(*(&v18 + 1) + 8 * i));
      }

      v14 = [v13 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v14);
  }

  _Block_object_dispose(&v23, 8);
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t __74__WFAppInstalledResource_fetchiTunesStoreObjectForAppWithCompletionBlock___block_invoke_188(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingAppLookupCompletions];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) setPendingAppLookupCompletions:0];
  v5 = *(a1 + 32);

  return [v5 setCurrentAppNameLookupSessionManager:0];
}

- (void)notifyDelegateWithUpdatedDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  delegate = [(WFAppInstalledResource *)self delegate];

  if (delegate)
  {
    delegate2 = [(WFAppInstalledResource *)self delegate];
    [delegate2 appInstalledResource:self didUpdateAppDescriptor:descriptorCopy];
  }
}

- (void)updateDescriptorsWithSelectedApp:(id)app
{
  appCopy = app;
  if ([(WFAppInstalledResource *)self descriptorIsIntentDescriptor])
  {
    descriptor = [(WFAppInstalledResource *)self descriptor];
    v16 = objc_alloc(MEMORY[0x1E696E890]);
    v17 = descriptor;
    intentClassName = [descriptor intentClassName];
    localizedName = [appCopy localizedName];
    bundleIdentifier = [appCopy bundleIdentifier];
    bundleIdentifier2 = [appCopy bundleIdentifier];
    extensionBundleIdentifier = [appCopy extensionBundleIdentifier];
    uiExtensionBundleIdentifier = [descriptor uiExtensionBundleIdentifier];
    counterpartIdentifiers = [appCopy counterpartIdentifiers];
    teamIdentifier = [appCopy teamIdentifier];
    preferredCallProvider = [descriptor preferredCallProvider];
    supportedIntents = [appCopy supportedIntents];
    bundleURL = [appCopy bundleURL];
    documentTypes = [appCopy documentTypes];
    v13 = [v16 initWithIntentClassName:intentClassName localizedName:localizedName bundleIdentifier:bundleIdentifier displayableBundleIdentifier:bundleIdentifier2 extensionBundleIdentifier:extensionBundleIdentifier uiExtensionBundleIdentifier:uiExtensionBundleIdentifier counterpartIdentifiers:counterpartIdentifiers teamIdentifier:teamIdentifier preferredCallProvider:preferredCallProvider supportedIntents:supportedIntents bundleURL:bundleURL documentTypes:documentTypes];
    [(WFAppInstalledResource *)self setDescriptor:v13];
  }

  else
  {
    [(WFAppInstalledResource *)self setDescriptor:appCopy];
  }
}

- (void)refreshAvailability
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  descriptor = [(WFAppInstalledResource *)self descriptor];
  bundleIdentifier = [descriptor bundleIdentifier];
  if (bundleIdentifier)
  {
    v5 = bundleIdentifier;
    v6 = MEMORY[0x1E698B0D0];
    descriptor2 = [(WFAppInstalledResource *)self descriptor];
    bundleIdentifier2 = [descriptor2 bundleIdentifier];
    v9 = [v6 applicationWithBundleIdentifier:bundleIdentifier2];
    isHidden = [v9 isHidden];

    if (isHidden)
    {
      appNotInstalledError = [(WFAppInstalledResource *)self appNotInstalledError];
      [(WFResource *)self updateAvailability:0 withError:appNotInstalledError];

      return;
    }
  }

  else
  {
  }

  if (![(WFAppInstalledResource *)self intentIsEligibleForRemoteExecution])
  {
    descriptor3 = [(WFAppInstalledResource *)self descriptor];
    if ([descriptor3 requiresUserConfirmation])
    {
      appNotResolvedError = [(WFAppInstalledResource *)self appNotResolvedError];
      [(WFResource *)self updateAvailability:0 withError:appNotResolvedError];
    }

    else
    {
      if (![(WFAppInstalledResource *)self requiresAppToBeInstalled]|| [(WFAppInstalledResource *)self appDescriptorOrAccompanyingExtensionIsInstalled:descriptor3])
      {
        [(WFResource *)self updateAvailability:1 withError:0];
        goto LABEL_21;
      }

      if (!-[WFAppInstalledResource descriptorIsIntentDescriptor](self, "descriptorIsIntentDescriptor") || -[WFAppInstalledResource intentIsSynced](self, "intentIsSynced") || (-[WFAppInstalledResource intentDescriptor](self, "intentDescriptor"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 canRunOnLocalDevice], v13, (v14 & 1) != 0))
      {
        stateQueue = self->_stateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __45__WFAppInstalledResource_refreshAvailability__block_invoke;
        block[3] = &unk_1E837F870;
        v21 = descriptor3;
        selfCopy = self;
        dispatch_sync(stateQueue, block);
        appNotInstalledError2 = [(WFAppInstalledResource *)self appNotInstalledError];
        [(WFResource *)self updateAvailability:0 withError:appNotInstalledError2];

        goto LABEL_21;
      }

      appNotResolvedError = [(WFAppInstalledResource *)self descriptor];
      localizedName = [appNotResolvedError localizedName];
      v18 = [(WFAppInstalledResource *)self appNeedsUpdateErrorWithAppName:localizedName];
      [(WFResource *)self updateAvailability:0 withError:v18];
    }

LABEL_21:
    return;
  }

  [(WFResource *)self updateAvailability:1 withError:0];
}

void __45__WFAppInstalledResource_refreshAvailability__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) localizedName];
  v3 = [v2 length];

  if (v3)
  {
    v7 = [*(a1 + 32) localizedName];
    [*(a1 + 40) setAppName:v7];
LABEL_6:

    return;
  }

  v7 = [*(a1 + 40) appName];
  if ([v7 length])
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 40) currentAppNameLookupSessionManager];
  if (v4)
  {

    goto LABEL_6;
  }

  v5 = [*(a1 + 40) skipLookup];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __45__WFAppInstalledResource_refreshAvailability__block_invoke_2;
    v8[3] = &unk_1E83789B8;
    v8[4] = v6;
    [v6 fetchiTunesStoreObjectForAppWithCompletionBlock:v8];
  }
}

void __45__WFAppInstalledResource_refreshAvailability__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__WFAppInstalledResource_refreshAvailability__block_invoke_3;
  v7[3] = &unk_1E837F870;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __45__WFAppInstalledResource_refreshAvailability__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 name];
    [*(a1 + 40) setAppName:v3];

    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__WFAppInstalledResource_refreshAvailability__block_invoke_4;
    block[3] = &unk_1E837FA70;
    block[4] = *(a1 + 40);
    dispatch_async(v4, block);
  }

  else
  {
    v5 = *(a1 + 40);

    [v5 setSkipLookup:1];
  }
}

- (BOOL)appDescriptorOrAccompanyingExtensionIsInstalled:(id)installed
{
  installedCopy = installed;
  if ([installedCopy isInstalled])
  {
    goto LABEL_4;
  }

  extensionBundleIdentifier = [installedCopy extensionBundleIdentifier];
  v5 = [extensionBundleIdentifier length];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = objc_alloc(MEMORY[0x1E69635D0]);
  extensionBundleIdentifier2 = [installedCopy extensionBundleIdentifier];
  v8 = [v6 initWithBundleIdentifier:extensionBundleIdentifier2 error:0];

  if (v8)
  {
LABEL_4:
    v9 = 1;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  return v9;
}

- (id)eventDictionary
{
  v7.receiver = self;
  v7.super_class = WFAppInstalledResource;
  eventDictionary = [(WFResource *)&v7 eventDictionary];
  v4 = [eventDictionary mutableCopy];

  bundleIdentifier = [(WFAppInstalledResource *)self bundleIdentifier];
  [v4 setValue:bundleIdentifier forKey:@"resource_app"];

  return v4;
}

- (id)bundleIdentifier
{
  descriptor = [(WFAppInstalledResource *)self descriptor];
  bundleIdentifier = [descriptor bundleIdentifier];

  return bundleIdentifier;
}

- (void)dealloc
{
  v9[1] = *MEMORY[0x1E69E9840];
  descriptor = [(WFAppInstalledResource *)self descriptor];
  bundleIdentifier = [descriptor bundleIdentifier];

  if (bundleIdentifier && [(WFAppInstalledResource *)self requiresAppToBeInstalled])
  {
    v5 = +[WFInterchangeAppRegistry sharedRegistry];
    v9[0] = bundleIdentifier;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v5 removeInstallStatusObserver:self forAppIdentifiers:v6];
  }

  v8.receiver = self;
  v8.super_class = WFAppInstalledResource;
  [(WFResource *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (id)_initWithDescriptor:(id)descriptor requiresAppToBeInstalled:(BOOL)installed isSyncedFromOtherDevice:(BOOL)device
{
  installedCopy = installed;
  v25[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v24.receiver = self;
  v24.super_class = WFAppInstalledResource;
  v10 = [(WFResource *)&v24 initWithDefinition:MEMORY[0x1E695E0F8]];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_descriptor, descriptor);
    localizedName = [descriptorCopy localizedName];
    appName = v11->_appName;
    v11->_appName = localizedName;

    v14 = dispatch_queue_create("WFAppInstalledResource-state", 0);
    stateQueue = v11->_stateQueue;
    v11->_stateQueue = v14;

    v11->_skipLookup = 0;
    v11->_requiresAppToBeInstalled = installedCopy;
    v11->_intentIsSynced = device;
    bundleIdentifier = [(INAppDescriptor *)v11->_descriptor bundleIdentifier];

    if (bundleIdentifier)
    {
      v17 = !installedCopy;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v18 = +[WFInterchangeAppRegistry sharedRegistry];
      bundleIdentifier2 = [(INAppDescriptor *)v11->_descriptor bundleIdentifier];
      v25[0] = bundleIdentifier2;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
      [v18 addInstallStatusObserver:v11 forAppIdentifiers:v20];
    }

    v21 = v11;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
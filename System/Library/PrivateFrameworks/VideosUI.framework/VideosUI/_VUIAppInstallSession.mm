@interface _VUIAppInstallSession
+ (id)_matchingAppProxyFromProxies:(id)proxies forInstallable:(id)installable;
- (BOOL)_canOpenAppWithBundleID:(id)d;
- (_VUIAppInstallSession)initWithInstallable:(id)installable offer:(id)offer sceneIdentifier:(id)identifier;
- (void)_doPurchaseWithAppAdamID:(id)d offerBuyParams:(id)params;
- (void)_sendCompletionWithError:(id)error;
- (void)applicationInstallsDidChange:(id)change;
- (void)applicationInstallsDidStart:(id)start;
- (void)applicationsDidFailToInstall:(id)install;
- (void)applicationsDidInstall:(id)install;
- (void)applicationsWillInstall:(id)install;
- (void)beginInstallationWithProgressHandler:(id)handler completion:(id)completion;
- (void)dealloc;
@end

@implementation _VUIAppInstallSession

- (_VUIAppInstallSession)initWithInstallable:(id)installable offer:(id)offer sceneIdentifier:(id)identifier
{
  installableCopy = installable;
  offerCopy = offer;
  v16.receiver = self;
  v16.super_class = _VUIAppInstallSession;
  v10 = [(_VUIAppInstallSession *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_installable, installable);
    objc_storeStrong(&v11->_offer, offer);
    v12 = dispatch_queue_create("com.apple.VideosUI._VUIAppInstallSession", 0);
    queue = v11->_queue;
    v11->_queue = v12;

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace addObserver:v11];
  }

  return v11;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = _VUIAppInstallSession;
  [(_VUIAppInstallSession *)&v4 dealloc];
}

- (void)applicationsWillInstall:(id)install
{
  installCopy = install;
  v6 = [objc_opt_class() _matchingAppProxyFromProxies:installCopy forInstallable:self->_installable];

  v5 = v6;
  if (v6)
  {
    NSLog(&cfstr_AppWillInstall.isa, v6);
    v5 = v6;
  }
}

- (void)applicationInstallsDidStart:(id)start
{
  startCopy = start;
  v5 = [objc_opt_class() _matchingAppProxyFromProxies:startCopy forInstallable:self->_installable];

  if (v5)
  {
    NSLog(&cfstr_AppInstallDidS.isa, v5);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53___VUIAppInstallSession_applicationInstallsDidStart___block_invoke;
    block[3] = &unk_1E872D990;
    block[4] = self;
    v8 = v5;
    dispatch_async(queue, block);
  }
}

- (void)applicationInstallsDidChange:(id)change
{
  changeCopy = change;
  v5 = [objc_opt_class() _matchingAppProxyFromProxies:changeCopy forInstallable:self->_installable];

  if (v5)
  {
    NSLog(&cfstr_AppInstallDidC.isa, v5);
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___VUIAppInstallSession_applicationInstallsDidChange___block_invoke;
    block[3] = &unk_1E872D990;
    block[4] = self;
    v8 = v5;
    dispatch_async(queue, block);
  }
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v6 = [objc_opt_class() _matchingAppProxyFromProxies:installCopy forInstallable:self->_installable];

  if (v6)
  {
    NSLog(&cfstr_AppInstallDidF.isa, v6);
    bundleIdentifier = [v6 bundleIdentifier];
    [(_VUIAppInstallSession *)self _canOpenAppWithBundleID:bundleIdentifier];

    [(_VUIAppInstallSession *)self _sendCompletionWithError:0];
  }
}

- (void)applicationsDidFailToInstall:(id)install
{
  installCopy = install;
  v7 = [objc_opt_class() _matchingAppProxyFromProxies:installCopy forInstallable:self->_installable];

  v5 = v7;
  if (v7)
  {
    NSLog(&cfstr_AppInstallDidF_0.isa, v7);
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIAppInstallerErrorDomain" code:-1 userInfo:0];
    [(_VUIAppInstallSession *)self _sendCompletionWithError:v6];

    v5 = v7;
  }
}

- (void)beginInstallationWithProgressHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___VUIAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke;
  block[3] = &unk_1E872EED8;
  block[4] = self;
  v12 = completionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_doPurchaseWithAppAdamID:(id)d offerBuyParams:(id)params
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  paramsCopy = params;
  NSLog(&cfstr_CallingPurchas.isa, dCopy, paramsCopy);
  if ([paramsCopy length])
  {
    v8 = objc_alloc_init(MEMORY[0x1E698B518]);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(dCopy, "longLongValue")}];
    [v8 setItemID:v9];

    activeAccount = [MEMORY[0x1E69D5920] activeAccount];
    v11 = activeAccount;
    if (activeAccount && ([activeAccount ams_DSID], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      ams_DSID = [v11 ams_DSID];
      [v8 setAccountIdentifier:ams_DSID];

      ams_DSID2 = [v11 ams_DSID];
      NSLog(&cfstr_Vuiappinstalle_6.isa, ams_DSID2);
    }

    else
    {
      NSLog(&cfstr_Vuiappinstalle_7.isa);
    }

    installable = [(_VUIAppInstallSession *)self installable];
    if (objc_opt_respondsToSelector())
    {
      installable2 = [(_VUIAppInstallSession *)self installable];
      forceDSIDlessInstall = [installable2 forceDSIDlessInstall];

      query = paramsCopy;
      if (forceDSIDlessInstall)
      {
        v37 = v11;
        v38 = v8;
        selfCopy = self;
        NSLog(&cfstr_InstallableFor.isa, dCopy);
        v19 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v19 setPercentEncodedQuery:paramsCopy];
        queryItems = [v19 queryItems];
        v21 = [queryItems mutableCopy];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = v19;
        queryItems2 = [v19 queryItems];
        v23 = [queryItems2 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v44;
          v35 = v21;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v44 != v25)
              {
                objc_enumerationMutation(queryItems2);
              }

              v27 = *(*(&v43 + 1) + 8 * i);
              name = [v27 name];
              v29 = [name isEqualToString:@"appExtVrsId"];

              if (v29)
              {
                v31 = MEMORY[0x1E696AF60];
                value = [v27 value];
                v33 = [v31 queryItemWithName:@"externalVersionId" value:value];

                v21 = v35;
                [v35 addObject:v33];

                goto LABEL_20;
              }
            }

            v24 = [queryItems2 countByEnumeratingWithState:&v43 objects:v47 count:16];
            v21 = v35;
            if (v24)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        [v36 setQueryItems:v21];
        query = [v36 query];

        v8 = v38;
        [v38 setIsDSIDLess:1];

        self = selfCopy;
        v11 = v37;
      }
    }

    else
    {

      query = paramsCopy;
    }

    [v8 setBuyParameters:query];
    NSLog(&cfstr_StartingRedown.isa, dCopy, v8);
    mEMORY[0x1E698B540] = [MEMORY[0x1E698B540] sharedManager];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __65___VUIAppInstallSession__doPurchaseWithAppAdamID_offerBuyParams___block_invoke;
    v40[3] = &unk_1E872EF00;
    v41 = dCopy;
    selfCopy2 = self;
    [mEMORY[0x1E698B540] processPurchase:v8 withResponseHandler:v40];
  }

  else
  {
    NSLog(&cfstr_RedownloadFail_0.isa, dCopy);
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIAppInstallerErrorDomain" code:-1 userInfo:0];
    [(_VUIAppInstallSession *)self _sendCompletionWithError:v30];

    query = paramsCopy;
  }
}

+ (id)_matchingAppProxyFromProxies:(id)proxies forInstallable:(id)installable
{
  v21 = *MEMORY[0x1E69E9840];
  proxiesCopy = proxies;
  installableCopy = installable;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = proxiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        appBundleIDs = [installableCopy appBundleIDs];
        bundleIdentifier = [v11 bundleIdentifier];
        v14 = [appBundleIDs containsObject:bundleIdentifier];

        if (v14)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)_sendCompletionWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___VUIAppInstallSession__sendCompletionWithError___block_invoke;
  v7[3] = &unk_1E872D990;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(queue, v7);
}

- (BOOL)_canOpenAppWithBundleID:(id)d
{
  dCopy = d;
  v4 = 1;
  sleep(1u);
  v10 = 0;
  serviceWithDefaultShellEndpoint = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
  v6 = [serviceWithDefaultShellEndpoint canOpenApplication:dCopy reason:&v10];
  NSLog(&cfstr_CheckingIfCanO.isa, dCopy, 5, v10);
  if ((v6 & 1) == 0)
  {
    v7 = 5;
    do
    {
      sleep(1u);
      v4 = [serviceWithDefaultShellEndpoint canOpenApplication:dCopy reason:&v10];
      NSLog(&cfstr_ReCheckingIfCa.isa, dCopy, v7 - 1, v10);
      if (v4)
      {
        break;
      }
    }

    while (v7-- > 1);
  }

  return v4;
}

@end
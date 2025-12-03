@interface _WLKAppInstallSession
+ (id)_matchingAppProxyFromProxies:(id)proxies forInstallable:(id)installable;
- (BOOL)_canOpenAppWithBundleID:(id)d;
- (_WLKAppInstallSession)initWithInstallable:(id)installable offer:(id)offer sceneIdentifier:(id)identifier;
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

@implementation _WLKAppInstallSession

- (_WLKAppInstallSession)initWithInstallable:(id)installable offer:(id)offer sceneIdentifier:(id)identifier
{
  installableCopy = installable;
  offerCopy = offer;
  v16.receiver = self;
  v16.super_class = _WLKAppInstallSession;
  v10 = [(_WLKAppInstallSession *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_installable, installable);
    objc_storeStrong(&v11->_offer, offer);
    v12 = dispatch_queue_create("com.apple.WatchListKit._WLKAppInstallSession", 0);
    queue = v11->_queue;
    v11->_queue = v12;

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace addObserver:v11];
  }

  return v11;
}

- (void)dealloc
{
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  [defaultWorkspace removeObserver:self];

  v4.receiver = self;
  v4.super_class = _WLKAppInstallSession;
  [(_WLKAppInstallSession *)&v4 dealloc];
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
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53___WLKAppInstallSession_applicationInstallsDidStart___block_invoke;
    block[3] = &unk_279E5E5F8;
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
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54___WLKAppInstallSession_applicationInstallsDidChange___block_invoke;
    block[3] = &unk_279E5E5F8;
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
    [(_WLKAppInstallSession *)self _canOpenAppWithBundleID:bundleIdentifier];

    [(_WLKAppInstallSession *)self _sendCompletionWithError:0];
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
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:0];
    [(_WLKAppInstallSession *)self _sendCompletionWithError:v6];

    v5 = v7;
  }
}

- (void)beginInstallationWithProgressHandler:(id)handler completion:(id)completion
{
  handlerCopy = handler;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73___WLKAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke;
  block[3] = &unk_279E5FC80;
  block[4] = self;
  v12 = completionCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

- (void)_doPurchaseWithAppAdamID:(id)d offerBuyParams:(id)params
{
  v49 = *MEMORY[0x277D85DE8];
  dCopy = d;
  paramsCopy = params;
  NSLog(&cfstr_CallingPurchas.isa, dCopy, paramsCopy);
  if ([paramsCopy length])
  {
    v8 = objc_alloc_init(MEMORY[0x277CEC400]);
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(dCopy, "longLongValue")}];
    [v8 setItemID:v9];

    activeAccount = [MEMORY[0x277D6C478] activeAccount];
    v11 = activeAccount;
    if (activeAccount && ([activeAccount ams_DSID], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      ams_DSID = [v11 ams_DSID];
      [v8 setAccountIdentifier:ams_DSID];

      ams_DSID2 = [v11 ams_DSID];
      NSLog(&cfstr_Wlkappinstalle_6.isa, ams_DSID2);
    }

    else
    {
      NSLog(&cfstr_Wlkappinstalle_7.isa);
    }

    installable = [(_WLKAppInstallSession *)self installable];
    if (objc_opt_respondsToSelector())
    {
      installable2 = [(_WLKAppInstallSession *)self installable];
      forceDSIDlessInstall = [installable2 forceDSIDlessInstall];

      query = paramsCopy;
      if (forceDSIDlessInstall)
      {
        v38 = v11;
        v39 = v8;
        selfCopy = self;
        NSLog(&cfstr_InstallableFor.isa, dCopy);
        v19 = objc_alloc_init(MEMORY[0x277CCACE0]);
        [v19 setPercentEncodedQuery:paramsCopy];
        queryItems = [v19 queryItems];
        v21 = [queryItems mutableCopy];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v37 = v19;
        queryItems2 = [v19 queryItems];
        v23 = [queryItems2 countByEnumeratingWithState:&v44 objects:v48 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v45;
          v36 = v21;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v45 != v25)
              {
                objc_enumerationMutation(queryItems2);
              }

              v27 = *(*(&v44 + 1) + 8 * i);
              name = [v27 name];
              v29 = [name isEqualToString:@"appExtVrsId"];

              if (v29)
              {
                v31 = MEMORY[0x277CCAD18];
                value = [v27 value];
                v33 = [v31 queryItemWithName:@"externalVersionId" value:value];

                v21 = v36;
                [v36 addObject:v33];

                goto LABEL_20;
              }
            }

            v24 = [queryItems2 countByEnumeratingWithState:&v44 objects:v48 count:16];
            v21 = v36;
            if (v24)
            {
              continue;
            }

            break;
          }
        }

LABEL_20:

        [v37 setQueryItems:v21];
        query = [v37 query];

        v8 = v39;
        [v39 setIsDSIDLess:1];

        self = selfCopy;
        v11 = v38;
      }
    }

    else
    {

      query = paramsCopy;
    }

    [v8 setBuyParameters:query];
    NSLog(&cfstr_StartingRedown.isa, dCopy, v8);
    mEMORY[0x277CEC428] = [MEMORY[0x277CEC428] sharedManager];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __65___WLKAppInstallSession__doPurchaseWithAppAdamID_offerBuyParams___block_invoke;
    v41[3] = &unk_279E5FCA8;
    v42 = dCopy;
    selfCopy2 = self;
    [mEMORY[0x277CEC428] processPurchase:v8 withResponseHandler:v41];
  }

  else
  {
    NSLog(&cfstr_RedownloadFail_0.isa, dCopy);
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:0];
    [(_WLKAppInstallSession *)self _sendCompletionWithError:v30];

    query = paramsCopy;
  }

  v35 = *MEMORY[0x277D85DE8];
}

+ (id)_matchingAppProxyFromProxies:(id)proxies forInstallable:(id)installable
{
  v22 = *MEMORY[0x277D85DE8];
  proxiesCopy = proxies;
  installableCopy = installable;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = proxiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        appBundleIDs = [installableCopy appBundleIDs];
        bundleIdentifier = [v11 bundleIdentifier];
        v14 = [appBundleIDs containsObject:bundleIdentifier];

        if (v14)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_sendCompletionWithError:(id)error
{
  errorCopy = error;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50___WLKAppInstallSession__sendCompletionWithError___block_invoke;
  v7[3] = &unk_279E5E5F8;
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
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
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
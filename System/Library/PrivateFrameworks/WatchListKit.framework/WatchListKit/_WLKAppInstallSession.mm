@interface _WLKAppInstallSession
+ (id)_matchingAppProxyFromProxies:(id)a3 forInstallable:(id)a4;
- (BOOL)_canOpenAppWithBundleID:(id)a3;
- (_WLKAppInstallSession)initWithInstallable:(id)a3 offer:(id)a4 sceneIdentifier:(id)a5;
- (void)_doPurchaseWithAppAdamID:(id)a3 offerBuyParams:(id)a4;
- (void)_sendCompletionWithError:(id)a3;
- (void)applicationInstallsDidChange:(id)a3;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationsDidFailToInstall:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsWillInstall:(id)a3;
- (void)beginInstallationWithProgressHandler:(id)a3 completion:(id)a4;
- (void)dealloc;
@end

@implementation _WLKAppInstallSession

- (_WLKAppInstallSession)initWithInstallable:(id)a3 offer:(id)a4 sceneIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _WLKAppInstallSession;
  v10 = [(_WLKAppInstallSession *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_installable, a3);
    objc_storeStrong(&v11->_offer, a4);
    v12 = dispatch_queue_create("com.apple.WatchListKit._WLKAppInstallSession", 0);
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v14 addObserver:v11];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _WLKAppInstallSession;
  [(_WLKAppInstallSession *)&v4 dealloc];
}

- (void)applicationsWillInstall:(id)a3
{
  v4 = a3;
  v6 = [objc_opt_class() _matchingAppProxyFromProxies:v4 forInstallable:self->_installable];

  v5 = v6;
  if (v6)
  {
    NSLog(&cfstr_AppWillInstall.isa, v6);
    v5 = v6;
  }
}

- (void)applicationInstallsDidStart:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _matchingAppProxyFromProxies:v4 forInstallable:self->_installable];

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

- (void)applicationInstallsDidChange:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _matchingAppProxyFromProxies:v4 forInstallable:self->_installable];

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

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v6 = [objc_opt_class() _matchingAppProxyFromProxies:v4 forInstallable:self->_installable];

  if (v6)
  {
    NSLog(&cfstr_AppInstallDidF.isa, v6);
    v5 = [v6 bundleIdentifier];
    [(_WLKAppInstallSession *)self _canOpenAppWithBundleID:v5];

    [(_WLKAppInstallSession *)self _sendCompletionWithError:0];
  }
}

- (void)applicationsDidFailToInstall:(id)a3
{
  v4 = a3;
  v7 = [objc_opt_class() _matchingAppProxyFromProxies:v4 forInstallable:self->_installable];

  v5 = v7;
  if (v7)
  {
    NSLog(&cfstr_AppInstallDidF_0.isa, v7);
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:0];
    [(_WLKAppInstallSession *)self _sendCompletionWithError:v6];

    v5 = v7;
  }
}

- (void)beginInstallationWithProgressHandler:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73___WLKAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke;
  block[3] = &unk_279E5FC80;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)_doPurchaseWithAppAdamID:(id)a3 offerBuyParams:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  NSLog(&cfstr_CallingPurchas.isa, v6, v7);
  if ([v7 length])
  {
    v8 = objc_alloc_init(MEMORY[0x277CEC400]);
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "longLongValue")}];
    [v8 setItemID:v9];

    v10 = [MEMORY[0x277D6C478] activeAccount];
    v11 = v10;
    if (v10 && ([v10 ams_DSID], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [v11 ams_DSID];
      [v8 setAccountIdentifier:v13];

      v14 = [v11 ams_DSID];
      NSLog(&cfstr_Wlkappinstalle_6.isa, v14);
    }

    else
    {
      NSLog(&cfstr_Wlkappinstalle_7.isa);
    }

    v15 = [(_WLKAppInstallSession *)self installable];
    if (objc_opt_respondsToSelector())
    {
      v16 = [(_WLKAppInstallSession *)self installable];
      v17 = [v16 forceDSIDlessInstall];

      v18 = v7;
      if (v17)
      {
        v38 = v11;
        v39 = v8;
        v40 = self;
        NSLog(&cfstr_InstallableFor.isa, v6);
        v19 = objc_alloc_init(MEMORY[0x277CCACE0]);
        [v19 setPercentEncodedQuery:v7];
        v20 = [v19 queryItems];
        v21 = [v20 mutableCopy];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v37 = v19;
        v22 = [v19 queryItems];
        v23 = [v22 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v44 + 1) + 8 * i);
              v28 = [v27 name];
              v29 = [v28 isEqualToString:@"appExtVrsId"];

              if (v29)
              {
                v31 = MEMORY[0x277CCAD18];
                v32 = [v27 value];
                v33 = [v31 queryItemWithName:@"externalVersionId" value:v32];

                v21 = v36;
                [v36 addObject:v33];

                goto LABEL_20;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v44 objects:v48 count:16];
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
        v18 = [v37 query];

        v8 = v39;
        [v39 setIsDSIDLess:1];

        self = v40;
        v11 = v38;
      }
    }

    else
    {

      v18 = v7;
    }

    [v8 setBuyParameters:v18];
    NSLog(&cfstr_StartingRedown.isa, v6, v8);
    v34 = [MEMORY[0x277CEC428] sharedManager];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __65___WLKAppInstallSession__doPurchaseWithAppAdamID_offerBuyParams___block_invoke;
    v41[3] = &unk_279E5FCA8;
    v42 = v6;
    v43 = self;
    [v34 processPurchase:v8 withResponseHandler:v41];
  }

  else
  {
    NSLog(&cfstr_RedownloadFail_0.isa, v6);
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:0];
    [(_WLKAppInstallSession *)self _sendCompletionWithError:v30];

    v18 = v7;
  }

  v35 = *MEMORY[0x277D85DE8];
}

+ (id)_matchingAppProxyFromProxies:(id)a3 forInstallable:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
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
        v12 = [v6 appBundleIDs];
        v13 = [v11 bundleIdentifier];
        v14 = [v12 containsObject:v13];

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

- (void)_sendCompletionWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50___WLKAppInstallSession__sendCompletionWithError___block_invoke;
  v7[3] = &unk_279E5E5F8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)_canOpenAppWithBundleID:(id)a3
{
  v3 = a3;
  v4 = 1;
  sleep(1u);
  v10 = 0;
  v5 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v6 = [v5 canOpenApplication:v3 reason:&v10];
  NSLog(&cfstr_CheckingIfCanO.isa, v3, 5, v10);
  if ((v6 & 1) == 0)
  {
    v7 = 5;
    do
    {
      sleep(1u);
      v4 = [v5 canOpenApplication:v3 reason:&v10];
      NSLog(&cfstr_ReCheckingIfCa.isa, v3, v7 - 1, v10);
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
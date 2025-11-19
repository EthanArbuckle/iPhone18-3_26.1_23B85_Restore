@interface _VUIAppInstallSession
+ (id)_matchingAppProxyFromProxies:(id)a3 forInstallable:(id)a4;
- (BOOL)_canOpenAppWithBundleID:(id)a3;
- (_VUIAppInstallSession)initWithInstallable:(id)a3 offer:(id)a4 sceneIdentifier:(id)a5;
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

@implementation _VUIAppInstallSession

- (_VUIAppInstallSession)initWithInstallable:(id)a3 offer:(id)a4 sceneIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _VUIAppInstallSession;
  v10 = [(_VUIAppInstallSession *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_installable, a3);
    objc_storeStrong(&v11->_offer, a4);
    v12 = dispatch_queue_create("com.apple.VideosUI._VUIAppInstallSession", 0);
    queue = v11->_queue;
    v11->_queue = v12;

    v14 = [MEMORY[0x1E6963608] defaultWorkspace];
    [v14 addObserver:v11];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _VUIAppInstallSession;
  [(_VUIAppInstallSession *)&v4 dealloc];
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53___VUIAppInstallSession_applicationInstallsDidStart___block_invoke;
    block[3] = &unk_1E872D990;
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
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54___VUIAppInstallSession_applicationInstallsDidChange___block_invoke;
    block[3] = &unk_1E872D990;
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
    [(_VUIAppInstallSession *)self _canOpenAppWithBundleID:v5];

    [(_VUIAppInstallSession *)self _sendCompletionWithError:0];
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
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIAppInstallerErrorDomain" code:-1 userInfo:0];
    [(_VUIAppInstallSession *)self _sendCompletionWithError:v6];

    v5 = v7;
  }
}

- (void)beginInstallationWithProgressHandler:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73___VUIAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke;
  block[3] = &unk_1E872EED8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)_doPurchaseWithAppAdamID:(id)a3 offerBuyParams:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  NSLog(&cfstr_CallingPurchas.isa, v6, v7);
  if ([v7 length])
  {
    v8 = objc_alloc_init(MEMORY[0x1E698B518]);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "longLongValue")}];
    [v8 setItemID:v9];

    v10 = [MEMORY[0x1E69D5920] activeAccount];
    v11 = v10;
    if (v10 && ([v10 ams_DSID], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
    {
      v13 = [v11 ams_DSID];
      [v8 setAccountIdentifier:v13];

      v14 = [v11 ams_DSID];
      NSLog(&cfstr_Vuiappinstalle_6.isa, v14);
    }

    else
    {
      NSLog(&cfstr_Vuiappinstalle_7.isa);
    }

    v15 = [(_VUIAppInstallSession *)self installable];
    if (objc_opt_respondsToSelector())
    {
      v16 = [(_VUIAppInstallSession *)self installable];
      v17 = [v16 forceDSIDlessInstall];

      v18 = v7;
      if (v17)
      {
        v37 = v11;
        v38 = v8;
        v39 = self;
        NSLog(&cfstr_InstallableFor.isa, v6);
        v19 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v19 setPercentEncodedQuery:v7];
        v20 = [v19 queryItems];
        v21 = [v20 mutableCopy];

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v36 = v19;
        v22 = [v19 queryItems];
        v23 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v43 + 1) + 8 * i);
              v28 = [v27 name];
              v29 = [v28 isEqualToString:@"appExtVrsId"];

              if (v29)
              {
                v31 = MEMORY[0x1E696AF60];
                v32 = [v27 value];
                v33 = [v31 queryItemWithName:@"externalVersionId" value:v32];

                v21 = v35;
                [v35 addObject:v33];

                goto LABEL_20;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
        v18 = [v36 query];

        v8 = v38;
        [v38 setIsDSIDLess:1];

        self = v39;
        v11 = v37;
      }
    }

    else
    {

      v18 = v7;
    }

    [v8 setBuyParameters:v18];
    NSLog(&cfstr_StartingRedown.isa, v6, v8);
    v34 = [MEMORY[0x1E698B540] sharedManager];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __65___VUIAppInstallSession__doPurchaseWithAppAdamID_offerBuyParams___block_invoke;
    v40[3] = &unk_1E872EF00;
    v41 = v6;
    v42 = self;
    [v34 processPurchase:v8 withResponseHandler:v40];
  }

  else
  {
    NSLog(&cfstr_RedownloadFail_0.isa, v6);
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIAppInstallerErrorDomain" code:-1 userInfo:0];
    [(_VUIAppInstallSession *)self _sendCompletionWithError:v30];

    v18 = v7;
  }
}

+ (id)_matchingAppProxyFromProxies:(id)a3 forInstallable:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
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
        v12 = [v6 appBundleIDs];
        v13 = [v11 bundleIdentifier];
        v14 = [v12 containsObject:v13];

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

- (void)_sendCompletionWithError:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50___VUIAppInstallSession__sendCompletionWithError___block_invoke;
  v7[3] = &unk_1E872D990;
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
  v5 = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
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
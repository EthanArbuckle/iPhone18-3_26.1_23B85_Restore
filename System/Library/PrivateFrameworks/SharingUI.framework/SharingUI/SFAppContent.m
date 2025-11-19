@interface SFAppContent
- (BOOL)installed;
- (SFAppContent)initWithAdamIDs:(id)a3;
- (id)_amsAppNameFromResult:(id)a3;
- (id)_amsArtworkDictionaryFromResult:(id)a3;
- (id)_amsFirstResponseDataItemFromResult:(id)a3;
- (id)_amsLaunchURLFromResult:(id)a3;
- (void)_amsFetchAppResultsWithCompletion:(id)a3;
- (void)_amsFetchArtworkIfNeeded;
- (void)_amsFetchArtworkWithRequest:(id)a3;
- (void)_amsFetchResults;
- (void)_amsLaunchIfNeeded;
- (void)_amsRun;
- (void)_fetchNameAndIconWithSize:(CGSize)a3 completion:(id)a4;
- (void)_launchWithCompletion:(id)a3;
- (void)fetchNameAndIconWithSize:(CGSize)a3 completion:(id)a4;
- (void)launchWithCompletion:(id)a3;
@end

@implementation SFAppContent

- (SFAppContent)initWithAdamIDs:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v32.receiver = self;
  v32.super_class = SFAppContent;
  v6 = [(SFAppContent *)&v32 init];
  v7 = v6;
  if (v6)
  {
    v27 = v5;
    objc_storeStrong(&v6->_adamIDs, a3);
    v8 = MEMORY[0x1BFAEA9F0]();
    dispatchQueue = v7->_dispatchQueue;
    v7->_dispatchQueue = v8;

    v10 = objc_opt_new();
    infoFetchRequests = v7->_infoFetchRequests;
    v7->_infoFetchRequests = v10;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v7->_adamIDs;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = MEMORY[0x1E69635E0];
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "integerValue")}];
          v19 = [v17 applicationProxyForItemID:v18];

          v20 = [v19 appState];
          v21 = [v20 isInstalled];

          if (v21)
          {
            appProxy = v7->_appProxy;
            v7->_appProxy = v19;
            v23 = v19;

            v24 = [(LSApplicationProxy *)v7->_appProxy itemName];
            appName = v7->_appName;
            v7->_appName = v24;

            goto LABEL_12;
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v5 = v27;
  }

  return v7;
}

- (BOOL)installed
{
  v2 = [(LSApplicationProxy *)self->_appProxy appState];
  v3 = [v2 isInstalled];

  return v3;
}

- (void)_amsRun
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (![(SFAppContent *)self installed])
  {
    if (self->_amsResultsState != 4 && ([(NSMutableArray *)self->_infoFetchRequests count]|| self->_launchRequest))
    {
      [(SFAppContent *)self _amsFetchResults];
    }

    [(SFAppContent *)self _amsFetchArtworkIfNeeded];
    [(SFAppContent *)self _amsLaunchIfNeeded];
    if (self->_amsResultsState == 3)
    {
      self->_amsResultsState = 0;
      amsResultsError = self->_amsResultsError;
      self->_amsResultsError = 0;
    }
  }
}

- (void)_amsFetchResults
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_amsResultsState)
  {
    self->_amsResultsState = 1;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __32__SFAppContent__amsFetchResults__block_invoke;
    v3[3] = &unk_1E7EE38D0;
    v3[4] = self;
    [(SFAppContent *)self _amsFetchAppResultsWithCompletion:v3];
  }
}

void __32__SFAppContent__amsFetchResults__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__SFAppContent__amsFetchResults__block_invoke_2;
  block[3] = &unk_1E7EE3770;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __32__SFAppContent__amsFetchResults__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 48) _amsAppNameFromResult:v4];
    v6 = *(a1 + 48);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    v8 = [*(a1 + 48) _amsArtworkDictionaryFromResult:v4];
    v9 = *(a1 + 48);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [*(a1 + 48) _amsLaunchURLFromResult:v4];
    v12 = *(a1 + 48);
    v13 = *(v12 + 48);
    *(v12 + 48) = v11;

    v14 = *(a1 + 48);
    if (v14[4] && v14[5] && v14[6])
    {
      v15 = 0;
    }

    else
    {
      v15 = NSErrorWithOSStatusF();
    }

    v2 = v15;
  }

  v16 = *(a1 + 48);
  v17 = *(v16 + 56);
  *(v16 + 56) = v2;
  v19 = v2;

  [*(a1 + 48) _amsRun];
  if (v19)
  {
    v18 = 3;
  }

  else
  {
    v18 = 4;
  }

  *(*(a1 + 48) + 64) = v18;
}

- (void)_amsFetchAppResultsWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [getAMSMediaTaskClass[0]() bagSubProfile];
  v6 = [getAMSMediaTaskClass[0]() bagSubProfileVersion];
  v7 = getAMSBagKeySetClass[0]();
  v8 = [getAMSMediaTaskClass[0]() bagKeySet];
  [(objc_class *)v7 registerBagKeySet:v8 forProfile:v5 profileVersion:v6];

  v9 = [getAMSBagClass[0]() bagForProfile:v5 profileVersion:v6];
  v10 = [objc_alloc(getAMSMediaTaskClass[0]()) initWithType:0 clientIdentifier:@"com.apple.sharing" clientVersion:@"1" bag:v9];
  [v10 setItemIdentifiers:self->_adamIDs];
  [v10 setIncludedResultKeys:&unk_1F37F3F90];
  if (gLogCategory_SFSubCredentialAppContent <= 50 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
  {
    [SFAppContent _amsFetchAppResultsWithCompletion:];
  }

  v11 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v12 = [v10 perform];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__SFAppContent__amsFetchAppResultsWithCompletion___block_invoke;
  v17[3] = &unk_1E7EE38F8;
  v17[4] = v11;
  v18 = v4;
  v13 = v4;
  [v12 addFinishBlock:v17];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __50__SFAppContent__amsFetchAppResultsWithCompletion___block_invoke_2;
  handler[3] = &unk_1E7EE3720;
  v16 = v12;
  v14 = v12;
  dispatch_source_set_event_handler(v11, handler);
  CUDispatchTimerSet();
  dispatch_activate(v11);
}

void __50__SFAppContent__amsFetchAppResultsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  dispatch_source_cancel(v5);
  (*(*(a1 + 40) + 16))();
}

uint64_t __50__SFAppContent__amsFetchAppResultsWithCompletion___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFSubCredentialAppContent <= 90 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
  {
    __50__SFAppContent__amsFetchAppResultsWithCompletion___block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 cancel];
}

- (void)_amsFetchArtworkIfNeeded
{
  v1 = [a1 objectForKeyedSubscript:@"storefrontID"];
  LogPrintF();
}

- (void)_amsFetchArtworkWithRequest:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [objc_alloc(getAMSMediaArtworkClass[0]()) initWithDictionary:self->_amsArtworkDict];
  [v4 iconSize];
  v7 = v6;
  v9 = v8;
  v10 = getAMSMediaArtworkCropStyleBoundedBox[0]();
  v11 = [v5 URLWithSize:v10 cropStyle:getAMSMediaArtworkFormatPNG[0]() format:{v7, v9}];
  v12 = objc_alloc_init(MEMORY[0x1E696AD68]);
  [v12 setURL:v11];
  [v12 setTimeoutInterval:5.0];
  v13 = [MEMORY[0x1E696AF78] sharedSession];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __44__SFAppContent__amsFetchArtworkWithRequest___block_invoke;
  v19 = &unk_1E7EE3948;
  v20 = self;
  v21 = v4;
  v14 = v4;
  v15 = [v13 dataTaskWithRequest:v12 completionHandler:&v16];

  [v15 resume];
}

void __44__SFAppContent__amsFetchArtworkWithRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFAppContent__amsFetchArtworkWithRequest___block_invoke_2;
  block[3] = &unk_1E7EE3920;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  v20 = v11;
  v21 = v12;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v10, block);
}

void __44__SFAppContent__amsFetchArtworkWithRequest___block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFSubCredentialAppContent <= 50 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
  {
    __44__SFAppContent__amsFetchArtworkWithRequest___block_invoke_2_cold_1(a1);
  }

  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x1E69DCAB8] imageWithData:?];
  }

  else
  {
    v4 = 0;
  }

  v2 = [*(a1 + 56) infoResponseHandler];
  v3 = v2;
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1 + 64) + 32), v4, *(a1 + 48));
  }

  else if (gLogCategory_SFSubCredentialAppContent <= 90 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
  {
    __44__SFAppContent__amsFetchArtworkWithRequest___block_invoke_2_cold_2();
  }
}

- (void)_amsLaunchIfNeeded
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  launchRequest = self->_launchRequest;
  if (launchRequest)
  {
    if (self->_amsLaunchURL)
    {
      amsURLOverride = self->_amsURLOverride;
      if (amsURLOverride)
      {
        v5 = amsURLOverride;
      }

      else
      {
        v5 = [MEMORY[0x1E695DFF8] URLWithString:?];
      }

      v7 = v5;
      if (gLogCategory_SFSubCredentialAppContent <= 50 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
      {
        [SFAppContent _amsLaunchIfNeeded];
      }

      v8 = [MEMORY[0x1E6963608] defaultWorkspace];
      v9 = [(SFAppContent *)self _launchOptions];
      v15 = 0;
      [v8 openURL:v7 withOptions:v9 error:&v15];
      v10 = v15;

      v11 = [(SFLaunchRequest *)self->_launchRequest completionHandler];

      if (v11)
      {
        v12 = [(SFLaunchRequest *)self->_launchRequest completionHandler];
        (v12)[2](v12, v10);
      }

      else if (gLogCategory_SFSubCredentialAppContent <= 90 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
      {
        [SFAppContent _amsLaunchIfNeeded];
      }

      v13 = self->_launchRequest;
      self->_launchRequest = 0;
    }

    else if (self->_amsResultsError)
    {
      v6 = [(SFLaunchRequest *)launchRequest completionHandler];

      if (v6)
      {
        v14 = [(SFLaunchRequest *)self->_launchRequest completionHandler];
        v14[2](v14, self->_amsResultsError);
      }
    }
  }
}

- (id)_amsAppNameFromResult:(id)a3
{
  v3 = [(SFAppContent *)self _amsFirstResponseDataItemFromResult:a3];
  v4 = [v3 valueForKeyPath:@"attributes.name"];

  return v4;
}

- (id)_amsArtworkDictionaryFromResult:(id)a3
{
  v3 = [(SFAppContent *)self _amsFirstResponseDataItemFromResult:a3];
  v4 = [v3 valueForKeyPath:@"attributes.platformAttributes.ios.artwork"];

  return v4;
}

- (id)_amsFirstResponseDataItemFromResult:(id)a3
{
  v3 = [a3 responseDataItems];
  v4 = [v3 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_amsLaunchURLFromResult:(id)a3
{
  v3 = [(SFAppContent *)self _amsFirstResponseDataItemFromResult:a3];
  v4 = [v3 valueForKeyPath:@"attributes.url"];

  return v4;
}

- (void)fetchNameAndIconWithSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__SFAppContent_fetchNameAndIconWithSize_completion___block_invoke;
  v10[3] = &unk_1E7EE3970;
  v12 = width;
  v13 = height;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(dispatchQueue, v10);
}

- (void)_fetchNameAndIconWithSize:(CGSize)a3 completion:(id)a4
{
  height = a3.height;
  width = a3.width;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (v7)
  {
    if ([(SFAppContent *)self installed])
    {
      v8 = [(LSApplicationProxy *)self->_appProxy bundleIdentifier];
      if (v8)
      {
        v9 = [objc_alloc(getISIconClass[0]()) initWithBundleIdentifier:v8];
        if (gLogCategory_SFSubCredentialAppContent <= 50 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
        {
          [SFAppContent _fetchNameAndIconWithSize:completion:];
        }

        v10 = [objc_alloc(getISImageDescriptorClass[0]()) initWithSize:width scale:{height, 2.0}];
        v15[0] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
        [v9 prepareImagesForImageDescriptors:v11];

        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __53__SFAppContent__fetchNameAndIconWithSize_completion___block_invoke;
        v13[3] = &unk_1E7EE39C0;
        v13[4] = self;
        v14 = v7;
        [v9 getCGImageForImageDescriptor:v10 completion:v13];
      }

      else
      {
        v12 = NSErrorWithOSStatusF();
        (*(v7 + 2))(v7, 0, 0, v12);
      }
    }

    else
    {
      if (gLogCategory_SFSubCredentialAppContent <= 50 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
      {
        [SFAppContent _fetchNameAndIconWithSize:completion:];
      }

      v8 = objc_opt_new();
      [v8 setIconSize:{width, height}];
      [v8 setInfoResponseHandler:v7];
      [(NSMutableArray *)self->_infoFetchRequests addObject:v8];
      [(SFAppContent *)self _amsRun];
    }
  }
}

void __53__SFAppContent__fetchNameAndIconWithSize_completion___block_invoke(uint64_t a1, CGImageRef image)
{
  if (image)
  {
    CGImageRetain(image);
  }

  v4 = *(*(a1 + 32) + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__SFAppContent__fetchNameAndIconWithSize_completion___block_invoke_2;
  block[3] = &unk_1E7EE3998;
  v8 = image;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

void __53__SFAppContent__fetchNameAndIconWithSize_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v3 = [MEMORY[0x1E69DCAB8] imageWithCGImage:?];
    (*(*(a1 + 40) + 16))();
    CGImageRelease(*(a1 + 48));
  }

  else
  {
    v2 = *(a1 + 40);
    v3 = NSErrorWithOSStatusF();
    (*(v2 + 16))(v2, 0, 0);
  }
}

- (void)launchWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SFAppContent_launchWithCompletion___block_invoke;
  v7[3] = &unk_1E7EE39E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_launchWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(SFAppContent *)self installed])
  {
    v5 = [MEMORY[0x1E6963608] defaultWorkspace];
    v6 = objc_alloc_init(MEMORY[0x1E69636B8]);
    v7 = [(SFAppContent *)self _launchOptions];
    [v6 setFrontBoardOptions:v7];

    v8 = [(LSApplicationProxy *)self->_appProxy bundleIdentifier];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__SFAppContent__launchWithCompletion___block_invoke;
    v11[3] = &unk_1E7EE3A38;
    v11[4] = self;
    v12 = v4;
    [v5 openApplicationWithBundleIdentifier:v8 configuration:v6 completionHandler:v11];
  }

  else
  {
    v9 = objc_opt_new();
    [(SFLaunchRequest *)v9 setCompletionHandler:v4];
    launchRequest = self->_launchRequest;
    self->_launchRequest = v9;

    [(SFAppContent *)self _amsRun];
  }
}

void __38__SFAppContent__launchWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (gLogCategory_SFSubCredentialAppContent <= 50 && (gLogCategory_SFSubCredentialAppContent != -1 || _LogCategory_Initialize()))
  {
    __38__SFAppContent__launchWithCompletion___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 32) + 104);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__SFAppContent__launchWithCompletion___block_invoke_2;
  v8[3] = &unk_1E7EE3A10;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

uint64_t __38__SFAppContent__launchWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __38__SFAppContent__launchWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) applicationIdentifier];
  LogPrintF();
}

@end
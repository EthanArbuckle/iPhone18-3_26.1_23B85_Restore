@interface VUIAppInstallSession
@end

@implementation VUIAppInstallSession

void __53___VUIAppInstallSession_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = [*(a1 + 40) installProgress];
    [v2 fractionCompleted];
    (*(v1 + 16))(v1);
  }
}

void __54___VUIAppInstallSession_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = [*(a1 + 40) installProgress];
    [v2 fractionCompleted];
    (*(v1 + 16))(v1);
  }
}

void __73___VUIAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke(id *a1)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v2 = [a1[5] copy];
  v3 = a1[4];
  v4 = v3[1];
  v3[1] = v2;

  v5 = [a1[6] copy];
  v6 = a1[4];
  v7 = v6[3];
  v6[3] = v5;

  v8 = *(a1[4] + 4);
  v9 = [v8 appAdamIDs];
  NSLog(&cfstr_InstallingAppF.isa, v8, v9);

  v10 = [*(a1[4] + 4) appAdamIDs];
  v11 = [v10 firstObject];

  v12 = *(a1[4] + 5);
  if (v12)
  {
    v13 = [v12 buyParameters];
    [a1[4] _doPurchaseWithAppAdamID:v11 offerBuyParams:v13];
  }

  else
  {
    v13 = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v14 = [objc_alloc(MEMORY[0x1E698C9E0]) initWithType:0 clientIdentifier:@"com.tv.videosui" clientVersion:@"1" bag:v13];
    v19[0] = v11;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [v14 setItemIdentifiers:v15];

    v16 = [v14 perform];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73___VUIAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke_2;
    v17[3] = &unk_1E872EEB0;
    v17[4] = a1[4];
    v18 = v11;
    [v16 addFinishBlock:v17];
  }
}

void __73___VUIAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    NSLog(&cfstr_Vuiappinstalle_3.isa, v5);
    [*(a1 + 32) _sendCompletionWithError:v6];
  }

  v7 = [VUIAMSMediaProxy alloc];
  v8 = [v15 responseDictionary];
  v9 = [(VUIAMSMediaProxy *)v7 initWithDictionary:v8];

  v10 = [(VUIAMSMediaProxy *)v9 buyParameters];
  v11 = [v10 count];

  if (v11)
  {
    NSLog(&cfstr_Vuiappinstalle_5.isa);
    v12 = [(VUIAMSMediaProxy *)v9 buyParameters];
    v13 = [v12 firstObject];

    [*(a1 + 32) _doPurchaseWithAppAdamID:*(a1 + 40) offerBuyParams:v13];
  }

  else
  {
    NSLog(&cfstr_Vuiappinstalle_4.isa);
    v14 = *(a1 + 32);
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIAppInstallerErrorDomain" code:-1 userInfo:0];
    [v14 _sendCompletionWithError:v13];
  }
}

void __65___VUIAppInstallSession__doPurchaseWithAppAdamID_offerBuyParams___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_RedownloadFail.isa, *(a1 + 32), v6);
    v8 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696AA08];
    v18[0] = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v10 = [v8 errorWithDomain:@"VUIAppInstallerErrorDomain" code:-1 userInfo:v9];

    [*(a1 + 40) _sendCompletionWithError:v10];
  }

  else
  {
    if (![v5 success])
    {
      NSLog(&cfstr_RedownloadCanc.isa, *(a1 + 32));
      [*(a1 + 40) _sendCompletionWithError:0];
      goto LABEL_4;
    }

    v11 = [v5 items];
    if ([v11 count])
    {
      v12 = [v5 items];
      v10 = [v12 firstObject];

      if (v10 && ([v10 success] & 1) == 0)
      {
        v13 = [v10 error];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIAppInstallerErrorDomain" code:-1 userInfo:0];
        }

        v16 = v15;

        NSLog(&cfstr_RedownloadFail.isa, *(a1 + 32), v16);
        [*(a1 + 40) _sendCompletionWithError:v16];

        goto LABEL_3;
      }
    }

    else
    {

      v10 = 0;
    }

    NSLog(&cfstr_RedownloadComp.isa, *(a1 + 32));
  }

LABEL_3:

LABEL_4:
}

void __50___VUIAppInstallSession__sendCompletionWithError___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 8));
  if (v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50___VUIAppInstallSession__sendCompletionWithError___block_invoke_2;
    v8[3] = &unk_1E872DC10;
    v10 = v2;
    v9 = *(a1 + 40);
    dispatch_async(v3, v8);
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;
}

@end
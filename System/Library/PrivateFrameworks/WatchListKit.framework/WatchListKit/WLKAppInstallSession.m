@interface WLKAppInstallSession
@end

@implementation WLKAppInstallSession

void __53___WLKAppInstallSession_applicationInstallsDidStart___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = [*(a1 + 40) installProgress];
    [v2 fractionCompleted];
    (*(v1 + 16))(v1);
  }
}

void __54___WLKAppInstallSession_applicationInstallsDidChange___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1)
  {
    v2 = [*(a1 + 40) installProgress];
    [v2 fractionCompleted];
    (*(v1 + 16))(v1);
  }
}

void __73___WLKAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = *(*(a1 + 32) + 32);
  v9 = [v8 appAdamIDs];
  NSLog(&cfstr_InstallingAppF.isa, v8, v9);

  v10 = [*(*(a1 + 32) + 32) appAdamIDs];
  v11 = [v10 firstObject];

  v12 = *(a1 + 32);
  v13 = v12[5];
  if (v13)
  {
    v14 = [v13 buyParameters];
    [v12 _doPurchaseWithAppAdamID:v11 offerBuyParams:v14];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CEE570]);
    v16 = [MEMORY[0x277CEE3F8] wlk_defaultBag];
    v17 = [v15 initWithType:0 clientIdentifier:@"com.tv.videosui" clientVersion:@"1" bag:v16];

    v23[0] = v11;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [v17 setItemIdentifiers:v18];

    v19 = [v17 perform];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73___WLKAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke_2;
    v21[3] = &unk_279E5FC58;
    v21[4] = *(a1 + 32);
    v22 = v11;
    [v19 addFinishBlock:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __73___WLKAppInstallSession_beginInstallationWithProgressHandler_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    NSLog(&cfstr_Wlkappinstalle_3.isa, v5);
    [*(a1 + 32) _sendCompletionWithError:v6];
  }

  v7 = [WLKAMSMediaProxy alloc];
  v8 = [v17 responseDictionary];
  v9 = [(WLKAMSMediaProxy *)v7 initWithDictionary:v8];

  v10 = [(WLKAMSMediaProxy *)v9 buyParameters];
  v11 = [v10 count];

  if (v11)
  {
    NSLog(&cfstr_Wlkappinstalle_5.isa);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [(WLKAMSMediaProxy *)v9 buyParameters];
    v15 = [v14 firstObject];
    [v12 _doPurchaseWithAppAdamID:v13 offerBuyParams:v15];
  }

  else
  {
    NSLog(&cfstr_Wlkappinstalle_4.isa);
    v16 = *(a1 + 32);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:0];
    [v16 _sendCompletionWithError:v14];
  }
}

void __65___WLKAppInstallSession__doPurchaseWithAppAdamID_offerBuyParams___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    NSLog(&cfstr_RedownloadFail.isa, *(a1 + 32), v6);
    v8 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v7;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v8 errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:v9];

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

    v12 = [v5 items];
    if ([v12 count])
    {
      v13 = [v5 items];
      v10 = [v13 firstObject];

      if (v10 && ([v10 success] & 1) == 0)
      {
        v14 = [v10 error];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WLKAppInstallerErrorDomain" code:-1 userInfo:0];
        }

        v17 = v16;

        NSLog(&cfstr_RedownloadFail.isa, *(a1 + 32), v17);
        [*(a1 + 40) _sendCompletionWithError:v17];

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
  v11 = *MEMORY[0x277D85DE8];
}

void __50___WLKAppInstallSession__sendCompletionWithError___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x2743D2DF0](*(*(a1 + 32) + 8));
  if (v2)
  {
    v3 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50___WLKAppInstallSession__sendCompletionWithError___block_invoke_2;
    v8[3] = &unk_279E5F6A8;
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
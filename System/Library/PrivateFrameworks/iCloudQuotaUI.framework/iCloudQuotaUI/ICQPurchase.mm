@interface ICQPurchase
+ (id)clearCacheAndNotifyClientsWithCompletion:(id)a3;
+ (id)parseParameters:(id)a3 action:(int64_t)a4;
+ (id)upgradeStorageKeyBagForOffer:(id)a3 buttonID:(id)a4;
+ (id)upgradeStorageQueryDictionaryForOffer:(id)a3 buttonID:(id)a4;
+ (id)userAgentForBundleIdentifier:(id)a3 appVersion:(id)a4 attributionSuffix:(id)a5;
+ (void)clearCacheAndNotifyClients;
- (ICQPurchase)initWithOffer:(id)a3 clientInfo:(id)a4;
- (ICQPurchaseDelegate)delegate;
- (id)actionString;
- (int64_t)offerAction;
- (void)_enableCloudPhotoLibraryIfApplicable;
- (void)beginPurchaseFlow;
- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)handleDialogRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)handlePurchaseCompletionWithError:(id)a3;
- (void)preparePurchase;
- (void)startPurchaseWithCompletion:(id)a3;
@end

@implementation ICQPurchase

- (ICQPurchase)initWithOffer:(id)a3 clientInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ICQPurchase;
  v8 = [(ICQPurchase *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(ICQPurchase *)v8 setOffer:v6];
    objc_storeStrong(&v9->_clientInfo, a4);
    v10 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v11 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQPurchaseURLSession"];
    [v10 set_appleIDContext:v11];

    v12 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v10];
    session = v9->_session;
    v9->_session = v12;
  }

  return v9;
}

- (id)actionString
{
  v2 = [(ICQPurchase *)self clientInfo];
  v3 = [v2 objectForKeyedSubscript:@"action"];

  return v3;
}

- (int64_t)offerAction
{
  v2 = [(ICQPurchase *)self actionString];
  v3 = _ICQActionForServerActionString();

  return v3;
}

- (void)startPurchaseWithCompletion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICQPurchase *)self clientInfo];
  v6 = [v5 objectForKeyedSubscript:@"parameters"];

  v7 = [(ICQPurchase *)self offerAction];
  [(ICQPurchase *)self preparePurchase];
  v8 = [ICQPurchase parseParameters:v6 action:v7];
  if (v8)
  {
    v9 = [v4 copy];
    [(ICQPurchase *)self setCompletionHandler:v9];

    v10 = [(ICQPurchase *)self offer];
    v11 = [(ICQPurchase *)self actionString];
    [v10 updateOfferWithPlanDetails:v8 actionString:v11];

    [(ICQPurchase *)self beginPurchaseFlow];
  }

  else
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(ICQPurchase *)self actionString];
      v15 = 138412546;
      v16 = 0;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "No plan details found for planDetails %@ and actionString %@.", &v15, 0x16u);
    }

    v14 = ICQCreateError();
    (*(v4 + 2))(v4, 0, v14);
  }
}

- (void)preparePurchase
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)beginPurchaseFlow
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CEE650]);
  v4 = [MEMORY[0x277CEE3F8] quotaBag];
  v5 = [v3 initWithBag:v4];

  [v5 setDelegate:self];
  v6 = [objc_alloc(MEMORY[0x277CEE648]) initWithConfiguration:v5];
  v7 = [(ICQPurchase *)self offer];
  v8 = [ICQPurchase upgradeStorageKeyBagForOffer:v7 buttonID:0];
  v9 = [v8 objectForKey:@"buyParams"];

  v10 = objc_alloc(MEMORY[0x277CEE640]);
  v11 = [MEMORY[0x277CEE438] buyParamsWithString:v9];
  v12 = [v10 initWithPurchaseType:0 buyParams:v11];

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    presentingSceneIdentifier = self->_presentingSceneIdentifier;
    *buf = 138412290;
    v44 = presentingSceneIdentifier;
    _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Setting sceneIdentifier: %@ to AMSPurchase.", buf, 0xCu);
  }

  [v12 setPresentingSceneIdentifier:self->_presentingSceneIdentifier];
  v41 = @"mtTopic";
  v42 = @"xp_its_main";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  [v12 setMetricsOverlay:v15];

  v16 = [MEMORY[0x277CCA8D8] mainBundle];
  v17 = [v16 bundleIdentifier];
  v18 = [v17 isEqualToString:@"com.apple.iCloudQuotaUI.RemoteiCloudQuotaUI"];

  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x277CEE620]) initWithBundleIdentifier:@"com.apple.RemoteiCloudQuotaUI"];
  }

  else
  {
    v19 = [MEMORY[0x277CEE620] currentProcess];
  }

  v20 = v19;
  if (self->_presentingSceneBundleIdentifier)
  {
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      presentingSceneBundleIdentifier = self->_presentingSceneBundleIdentifier;
      *buf = 138412290;
      v44 = presentingSceneBundleIdentifier;
      _os_log_impl(&dword_275623000, v21, OS_LOG_TYPE_DEFAULT, "Setting app bundleID: %@ to AMSPurchase.", buf, 0xCu);
    }

    [v20 setProxyAppBundleID:self->_presentingSceneBundleIdentifier];
  }

  v23 = [(ICQPurchase *)self offer];
  v24 = [v23 appVersionId];

  v25 = [(ICQPurchase *)self offer];
  v26 = [v25 bundleIdentifier];
  v27 = [ICQPurchase userAgentForBundleIdentifier:v26 appVersion:v24 attributionSuffix:self->_userAgentSuffix];
  [v20 setUserAgentSuffix:v27];

  [v12 setClientInfo:v20];
  if (objc_opt_respondsToSelector())
  {
    v28 = [MEMORY[0x277CB8F48] defaultStore];
    v29 = [v28 aa_primaryAppleAccount];
    if (v29)
    {
      [v12 setAccount:v29];
      v30 = _ICQGetLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v29;
        v31 = "Account %@ successfully added";
        v32 = v30;
        v33 = 12;
LABEL_18:
        _os_log_impl(&dword_275623000, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
      }
    }

    else
    {
      v30 = _ICQGetLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v31 = "Account not found";
        v32 = v30;
        v33 = 2;
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  v28 = _ICQGetLogSystem();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [ICQPurchase beginPurchaseFlow];
  }

LABEL_20:

  [v12 setUserInitiated:1];
  v39[0] = @"X-Apple-iCloud-No-Success-Dialog";
  v39[1] = @"X-Apple-iCloud-Freshmint-Flow";
  v40[0] = @"true";
  v40[1] = @"true";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [v12 setAdditionalHeaders:v34];

  v38 = v12;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v36 = [v6 enquePurchases:v35];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __32__ICQPurchase_beginPurchaseFlow__block_invoke;
  v37[3] = &unk_27A65AE30;
  v37[4] = self;
  [v36 addFinishBlock:v37];
}

- (void)handlePurchaseCompletionWithError:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICQPurchase handlePurchaseCompletionWithError:];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v41) = 0;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Oslo purchase completed without any error!", &v41, 2u);
  }

  v7 = [(ICQPurchase *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(ICQPurchase *)self delegate];
    [v9 stopActivityIndicator];
  }

  [(ICQPurchase *)self setAmsServerErrorCode:0];
  v10 = [v4 domain];
  v11 = [v10 isEqualToString:*MEMORY[0x277CEE188]];

  if (!v11)
  {
LABEL_20:
    if ([v4 code] == 305)
    {
      interruptedBuyErrorCodes = self->_interruptedBuyErrorCodes;
      if (interruptedBuyErrorCodes)
      {
        v29 = [MEMORY[0x277CCABB0] numberWithLong:{-[ICQPurchase amsServerErrorCode](self, "amsServerErrorCode")}];
        v30 = [(NSArray *)interruptedBuyErrorCodes containsObject:v29];

        v31 = _ICQGetLogSystem();
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
        if (v30)
        {
          if (v32)
          {
            v33 = [(ICQPurchase *)self amsServerErrorCode];
            v41 = 134217984;
            v42 = v33;
            v34 = "interrupted flow with error code = %ld";
            v35 = v31;
            v36 = 12;
LABEL_31:
            _os_log_impl(&dword_275623000, v35, OS_LOG_TYPE_DEFAULT, v34, &v41, v36);
            goto LABEL_32;
          }

          goto LABEL_32;
        }

        if (v32)
        {
          v37 = [(ICQPurchase *)self amsServerErrorCode];
          v41 = 134217984;
          v42 = v37;
          _os_log_impl(&dword_275623000, v31, OS_LOG_TYPE_DEFAULT, "uninterrupted flow with error code = %ld", &v41, 0xCu);
        }
      }
    }

    if (![v4 icq_isPSD2StepUpError])
    {
      if (v4 && [(ICQPurchase *)self amsServerErrorCode]!= 3067 && [(ICQPurchase *)self amsServerErrorCode]!= 3068 && [(ICQPurchase *)self amsServerErrorCode]!= 8067 && [(ICQPurchase *)self amsServerErrorCode]!= 8068)
      {
        v19 = self;
        v18 = 1;
LABEL_16:
        [(ICQPurchase *)v19 setStatusCode:v18];
        v20 = [(ICQPurchase *)self completionHandler];
        v21 = v20[2];
LABEL_44:
        v21();
        goto LABEL_45;
      }

      [(ICQPurchase *)self setStatusCode:0];
      [(ICQPurchase *)self _enableCloudPhotoLibraryIfApplicable];
      if (![(ICQPurchase *)self isLegacyNativeFlow]|| [(ICQPurchase *)self amsServerErrorCode]!= 3068 && [(ICQPurchase *)self amsServerErrorCode]!= 8068)
      {
        v20 = [(ICQPurchase *)self completionHandler];
        v21 = v20[2];
        goto LABEL_44;
      }

      v20 = [(ICQPurchase *)self completionHandler];
      v40 = ICQCreateErrorWithMessage();
      (v20[2])(v20, 1, v40);

      goto LABEL_45;
    }

    v31 = _ICQGetLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      v34 = "PSD2 step-up detected. Registering for darwin notifications.";
      v35 = v31;
      v36 = 2;
      goto LABEL_31;
    }

LABEL_32:

    v38 = [(ICQPurchase *)self delegate];
    v39 = objc_opt_respondsToSelector();

    if ((v39 & 1) == 0)
    {
      goto LABEL_46;
    }

    v20 = [(ICQPurchase *)self delegate];
    [v20 registerForDarwinNotifications];
LABEL_45:

    goto LABEL_46;
  }

  if ([v4 code] != 6)
  {
    if ([v4 code] == 305)
    {
      v22 = [v4 userInfo];
      v23 = *MEMORY[0x277CEE198];
      v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277CEE198]];
      v25 = objc_opt_respondsToSelector();

      if (v25)
      {
        v26 = [v4 userInfo];
        v27 = [v26 objectForKeyedSubscript:v23];
        -[ICQPurchase setAmsServerErrorCode:](self, "setAmsServerErrorCode:", [v27 longValue]);
      }
    }

    goto LABEL_20;
  }

  v12 = [(ICQPurchase *)self delegate];
  v13 = [v12 isLiftUIFlow];

  if (v13)
  {
    [(ICQPurchase *)self setStatusCode:1];
    v14 = [(ICQPurchase *)self completionHandler];
    (v14)[2](v14, 0, v4);
  }

  v15 = [(ICQPurchase *)self offer];
  v16 = [v15 action];

  if (v16 == 118)
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "Purchase cancelled during direct to oslo, running completion", &v41, 2u);
    }

    v18 = [v4 code];
    v19 = self;
    goto LABEL_16;
  }

LABEL_46:
}

- (void)_enableCloudPhotoLibraryIfApplicable
{
  v3 = [(ICQPurchase *)self clientInfo];
  v4 = [v3 objectForKeyedSubscript:@"action"];
  v5 = [v4 isEqualToString:@"UPGRADE_ENABLE_ICPL_OSLO"];

  if (v5)
  {
    v6 = [(ICQPurchase *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v9 = [(ICQPurchase *)self delegate];
      [v9 enableCloudPhotoLibraryWithCompletion:&__block_literal_global_2];
    }

    else
    {
      v8 = _ICQGetLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ICQPurchase _enableCloudPhotoLibraryIfApplicable];
      }
    }
  }
}

void __51__ICQPurchase__enableCloudPhotoLibraryIfApplicable__block_invoke(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  v5 = _ICQGetLogSystem();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "ICQPurchase: Enable photo sync success!", v7, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __51__ICQPurchase__enableCloudPhotoLibraryIfApplicable__block_invoke_cold_1();
  }
}

+ (id)upgradeStorageQueryDictionaryForOffer:(id)a3 buttonID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [ICQPurchase upgradeStorageKeyBagForOffer:v6 buttonID:v7];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a1 upgradeStorageQueryKeySet];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v9 objectForKey:v15];
        if (v16)
        {
          [v8 setObject:v16 forKey:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v8;
}

+ (id)upgradeStorageKeyBagForOffer:(id)a3 buttonID:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = [v5 storagePurchaseKeybagForButtonId:a4];
  }

  else
  {
    v8 = [v5 buttonSpecification];
    v9 = [v8 buttonLink];
    v10 = [v9 parameters];

    v11 = [v10 objectForKeyedSubscript:@"ServerLinkId"];
    v7 = [v6 storagePurchaseKeybagForButtonId:v11];

    v6 = v10;
  }

  return v7;
}

+ (id)parseParameters:(id)a3 action:(int64_t)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  v7 = 0;
  v8 = a4 - 105;
  if ((a4 - 105) <= 0x16)
  {
    if (((1 << v8) & 0x403800) != 0)
    {
      v9 = objc_alloc(MEMORY[0x277CBEB38]);
      v14 = @"buyParams";
      v15[0] = v6;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v11 = [v9 initWithDictionary:v10];
    }

    else
    {
      if (((1 << v8) & 9) == 0)
      {
        goto LABEL_7;
      }

      v10 = [v5 dataUsingEncoding:4];
      v13 = 0;
      v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v10 options:0 error:&v13];
    }

    v7 = v11;
  }

LABEL_7:

  return v7;
}

+ (id)userAgentForBundleIdentifier:(id)a3 appVersion:(id)a4 attributionSuffix:(id)a5
{
  if (a5)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@ %@%@", a3, a4, a5, @" CastleSettings/1.0"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@%@", a3, a4, @" CastleSettings/1.0", v7];
  }
  v5 = ;

  return v5;
}

+ (id)clearCacheAndNotifyClientsWithCompletion:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ICQPurchase_clearCacheAndNotifyClientsWithCompletion___block_invoke;
  v8[3] = &unk_27A65A778;
  v9 = v4;
  v10 = a1;
  v5 = v4;
  v6 = _Block_copy(v8);

  return v6;
}

uint64_t __56__ICQPurchase_clearCacheAndNotifyClientsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (a2)
  {
    [*(a1 + 40) clearCacheAndNotifyClients];
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }

  return MEMORY[0x2821F9730]();
}

+ (void)clearCacheAndNotifyClients
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "+[ICQPurchase clearCacheAndNotifyClients]";
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  [MEMORY[0x277CFB450] clearCacheAndNotify];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = getINDaemonConnectionClass_softClass_1;
  v12 = getINDaemonConnectionClass_softClass_1;
  if (!getINDaemonConnectionClass_softClass_1)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v14 = __getINDaemonConnectionClass_block_invoke_1;
    v15 = &unk_27A65A9F8;
    v16 = &v9;
    __getINDaemonConnectionClass_block_invoke_1(&buf);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = objc_alloc_init(v3);
  v6 = [v5 daemonWithErrorHandler:{&__block_literal_global_131, v9}];
  v7 = [MEMORY[0x277CB8F48] defaultStore];
  v8 = [v7 aa_primaryAppleAccount];
  [v6 teardownOffersForAccount:v8 withCompletion:&__block_literal_global_135];
}

void __41__ICQPurchase_clearCacheAndNotifyClients__block_invoke()
{
  v0 = _ICQGetLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __41__ICQPurchase_clearCacheAndNotifyClients__block_invoke_cold_1();
  }
}

void __41__ICQPurchase_clearCacheAndNotifyClients__block_invoke_132()
{
  v0 = _ICQGetLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_275623000, v0, OS_LOG_TYPE_DEFAULT, "Offers teardown has completed.", v2, 2u);
  }

  v1 = [MEMORY[0x277D7F390] sharedOfferManager];
  [v1 getDefaultOfferWithCompletion:&__block_literal_global_140];
}

void __41__ICQPurchase_clearCacheAndNotifyClients__block_invoke_137(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__ICQPurchase_clearCacheAndNotifyClients__block_invoke_137_cold_1();
    }
  }
}

- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a3;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "We were asked to authenticate.  Attempting silent authentication.", v12, 2u);
  }

  v11 = [(ICQPurchase *)self delegate];
  [v11 handleAuthenticateRequest:v9 purchase:self completion:v8];
}

- (void)handleDialogRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a3;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "We were asked to handle a dialog request", v12, 2u);
  }

  v11 = [(ICQPurchase *)self delegate];
  [v11 handleDialogRequest:v9 purchase:self completion:v8];
}

- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a3;
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "We were asked to handle an engagement request", v12, 2u);
  }

  v11 = [(ICQPurchase *)self delegate];
  [v11 handleEngagementRequest:v9 purchase:self completion:v8];
}

- (ICQPurchaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handlePurchaseCompletionWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__ICQPurchase__enableCloudPhotoLibraryIfApplicable__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __41__ICQPurchase_clearCacheAndNotifyClients__block_invoke_137_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end
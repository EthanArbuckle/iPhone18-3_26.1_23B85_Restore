@interface ICQUILegacyPurchaseFlowManager
- (BOOL)_loadNativeURL:(id)a3;
- (ICQUILegacyPurchaseFlowManager)initWithPresenter:(id)a3;
- (id)_presentationContext;
- (void)_beginRUIFlowWithAMSURLResult:(id)a3;
- (void)_beginURLOperationWithURLRequest:(id)a3;
- (void)_clearRetailFollowUpItem;
- (void)_didCompletePurchaseFlowWithStatusCode:(int64_t)a3;
- (void)_dismissPurchaseFlow;
- (void)_fetchURLRequestWithURL:(id)a3 completion:(id)a4;
- (void)_handleAuthenticateRequest:(id)a3 completion:(id)a4;
- (void)_handleDialogRequest:(id)a3 completion:(id)a4;
- (void)_handleEngagementRequest:(id)a3 completion:(id)a4;
- (void)_popObjectModelAnimated:(BOOL)a3;
- (void)_updatePage:(id)a3;
- (void)beginFlowWithCompletion:(id)a3;
- (void)makeBuyRequest:(id)a3;
- (void)makeBuyRequestWithParams:(id)a3 completion:(id)a4;
- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5;
- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5 completion:(id)a6;
- (void)objectModelPressedBack:(id)a3;
@end

@implementation ICQUILegacyPurchaseFlowManager

- (ICQUILegacyPurchaseFlowManager)initWithPresenter:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ICQUILegacyPurchaseFlowManager;
  v5 = [(ICQUILegacyPurchaseFlowManager *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_presenter, v4);
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objectModels = v6->_objectModels;
    v6->_objectModels = v7;

    v6->_isDowngradePurchaseInProgress = 0;
  }

  return v6;
}

- (void)beginFlowWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  flowCompletion = self->_flowCompletion;
  self->_flowCompletion = v4;

  v6 = [MEMORY[0x277CEE3F8] quotaBag];
  v7 = [v6 URLForKey:@"mint-offers"];
  v8 = [v7 valuePromise];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__ICQUILegacyPurchaseFlowManager_beginFlowWithCompletion___block_invoke;
  v9[3] = &unk_27A65C460;
  v9[4] = self;
  [v8 addFinishBlock:v9];
}

void __58__ICQUILegacyPurchaseFlowManager_beginFlowWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = @"mint-offers";
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Successfully fetched the url (%@) for key (%@)", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__ICQUILegacyPurchaseFlowManager_beginFlowWithCompletion___block_invoke_41;
    v10[3] = &unk_27A65C438;
    v10[4] = v9;
    v11 = v5;
    [v9 _fetchURLRequestWithURL:v11 completion:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__ICQUILegacyPurchaseFlowManager_beginFlowWithCompletion___block_invoke_cold_1();
    }

    [*(a1 + 32) _didCompletePurchaseFlowWithStatusCode:3];
  }
}

void __58__ICQUILegacyPurchaseFlowManager_beginFlowWithCompletion___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [(ICQUsageQuotaRequest *)ICQQuotaInfoRequest addHeadersForPrimaryAccountToRequest:v5];
    [v5 addValue:@" CastleSettings/1.0" forHTTPHeaderField:@"User-agent"];
    [*(a1 + 32) _beginURLOperationWithURLRequest:v5];
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__ICQUILegacyPurchaseFlowManager_beginFlowWithCompletion___block_invoke_41_cold_1();
    }

    [*(a1 + 32) _didCompletePurchaseFlowWithStatusCode:3];
  }
}

- (id)_presentationContext
{
  v12 = *MEMORY[0x277D85DE8];
  navController = self->_navController;
  if (navController)
  {
    WeakRetained = navController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
  }

  v4 = WeakRetained;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(UINavigationController *)v4 presentedViewController];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Presentation Context: %@ - %@", &v8, 0x16u);
  }

  return v4;
}

- (void)_fetchURLRequestWithURL:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v26 = "[ICQUILegacyPurchaseFlowManager _fetchURLRequestWithURL:completion:]";
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "%s called with url: %@", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__ICQUILegacyPurchaseFlowManager__fetchURLRequestWithURL_completion___block_invoke;
  aBlock[3] = &unk_27A65C488;
  v9 = v6;
  v23 = v9;
  v10 = v7;
  v24 = v10;
  v11 = _Block_copy(aBlock);
  v12 = objc_alloc(MEMORY[0x277CEE6D8]);
  v13 = [MEMORY[0x277CEE3F8] quotaBag];
  v14 = [v12 initWithBag:v13];

  if (self->_amsAccount)
  {
    [v14 setAccount:?];
    v11[2](v11, v14);
  }

  else
  {
    v15 = [MEMORY[0x277CB8F48] defaultStore];
    v16 = [v15 aa_primaryAppleAccount];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v15 ams_iTunesAccountForAccount:v16 forMediaType:*MEMORY[0x277CEE160] createIfNeeded:1];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __69__ICQUILegacyPurchaseFlowManager__fetchURLRequestWithURL_completion___block_invoke_2;
      v19[3] = &unk_27A65C4B0;
      v20 = v14;
      v21 = v11;
      [v17 addFinishBlock:v19];
    }

    else
    {
      v18 = [v15 ams_iTunesAccountForAccount:v16];
      [v14 setAccount:v18];

      v11[2](v11, v14);
    }
  }
}

void __69__ICQUILegacyPurchaseFlowManager__fetchURLRequestWithURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestWithMethod:2 URL:*(a1 + 32) parameters:0];
  [v3 resultWithCompletion:*(a1 + 40)];
}

void __69__ICQUILegacyPurchaseFlowManager__fetchURLRequestWithURL_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setAccount:a2];
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__ICQUILegacyPurchaseFlowManager__fetchURLRequestWithURL_completion___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_beginURLOperationWithURLRequest:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[ICQUILegacyPurchaseFlowManager _beginURLOperationWithURLRequest:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s called with urlRequest: %@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277CEE6F0] defaultSession];
  defaultAMSURLSession = self->_defaultAMSURLSession;
  self->_defaultAMSURLSession = v6;

  [self->_defaultAMSURLSession setDelegate:self];
  v8 = [self->_defaultAMSURLSession dataTaskPromiseWithRequest:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__ICQUILegacyPurchaseFlowManager__beginURLOperationWithURLRequest___block_invoke;
  v10[3] = &unk_27A65C4D8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 addFinishBlock:v10];
}

void __67__ICQUILegacyPurchaseFlowManager__beginURLOperationWithURLRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(*(a1 + 32) + 56) == 1)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "This AMS request has been intercepted to perform AMS purchase for downgrade and need no action here.", buf, 2u);
    }
  }

  else
  {
    v8 = _ICQGetLogSystem();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __67__ICQUILegacyPurchaseFlowManager__beginURLOperationWithURLRequest___block_invoke_cold_1();
      }

      [*(a1 + 32) _didCompletePurchaseFlowWithStatusCode:3];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        *buf = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Successfully completed AMS request %@, with result: %@", buf, 0x16u);
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __67__ICQUILegacyPurchaseFlowManager__beginURLOperationWithURLRequest___block_invoke_57;
      v11[3] = &unk_27A65A708;
      v11[4] = *(a1 + 32);
      v12 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }
  }
}

- (void)_beginRUIFlowWithAMSURLResult:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v33 = "[ICQUILegacyPurchaseFlowManager _beginRUIFlowWithAMSURLResult:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v6 = objc_alloc(MEMORY[0x277D461F8]);
  v7 = [v4 data];
  v8 = [v6 initWithXML:v7];

  if ([v8 succeeded])
  {
    v9 = [v8 uiObjectModel];
    v10 = [v8 actionSignal];
    [v9 setDelegate:self];
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v33 = v9;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "objectModel: %@, actionSignal: %@", buf, 0x16u);
    }

    if (!-[NSMutableArray count](self->_objectModels, "count") && [v10 topSignal] == 3)
    {
      [v10 setTopSignal:2];
    }

    navController = self->_navController;
    if (!navController)
    {
      v13 = objc_alloc_init(MEMORY[0x277D757A0]);
      v14 = self->_navController;
      self->_navController = v13;

      [(UINavigationController *)self->_navController setModalPresentationStyle:2];
      [(UINavigationController *)self->_navController setModalTransitionStyle:0];
    }

    if (![v10 topSignal])
    {
      [v10 setTopSignal:2];
    }

    if ([v10 topSignal] == 2)
    {
      [(NSMutableArray *)self->_objectModels addObject:v9];
      v15 = [v9 defaultPages];
      v16 = [v15 firstObject];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [ICQUILegacyPurchaseFlowManager _beginRUIFlowWithAMSURLResult:];
      }

      if (v16)
      {
        [(ICQUILegacyPurchaseFlowManager *)self _updatePage:v16];
      }

      v17 = [(UINavigationController *)self->_navController topViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v19 = self->_navController;
      if (isKindOfClass)
      {
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __64__ICQUILegacyPurchaseFlowManager__beginRUIFlowWithAMSURLResult___block_invoke;
        v31[3] = &unk_27A65A820;
        v31[4] = self;
        [v9 presentInParentViewController:v19 animated:0 completion:v31];

        goto LABEL_32;
      }

      [v9 presentInParentViewController:v19 animated:navController != 0];
      goto LABEL_30;
    }

    if ([v10 topSignal] == 3)
    {
      v21 = [(UINavigationController *)self->_navController viewControllers];
      v16 = [v21 mutableCopy];

      [(NSMutableArray *)self->_objectModels removeLastObject];
      [v16 removeLastObject];
      v22 = [v9 defaultPages];
      v23 = [v22 lastObject];
      [v16 addObject:v23];

      [(NSMutableArray *)self->_objectModels addObject:v9];
      [(UINavigationController *)self->_navController setViewControllers:v16 animated:0];
LABEL_30:

      goto LABEL_31;
    }

    if ([v10 topSignal] != 4)
    {
      goto LABEL_31;
    }

    v24 = [v9 defaultPages];
    v25 = [v24 count];

    if (v25)
    {
      if ([(NSMutableArray *)self->_objectModels count]<= 1)
      {
        v16 = _ICQGetLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ICQUILegacyPurchaseFlowManager _beginRUIFlowWithAMSURLResult:];
        }

        goto LABEL_30;
      }

      [(NSMutableArray *)self->_objectModels removeLastObject];
      [(NSMutableArray *)self->_objectModels removeLastObject];
      v27 = [(UINavigationController *)self->_navController viewControllers];
      v28 = [v27 mutableCopy];

      [v28 removeLastObject];
      [v28 removeLastObject];
      [(NSMutableArray *)self->_objectModels addObject:v9];
      v29 = [v9 defaultPages];
      v30 = [v29 lastObject];
      [v28 addObject:v30];

      [(UINavigationController *)self->_navController setViewControllers:v28 animated:0];
    }

    else
    {
      [(ICQUILegacyPurchaseFlowManager *)self _popObjectModelAnimated:1];
    }

LABEL_31:
    if (navController)
    {
LABEL_33:

      goto LABEL_34;
    }

LABEL_32:
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained presentViewController:self->_navController animated:1 completion:0];

    goto LABEL_33;
  }

  v20 = _ICQGetLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [ICQUILegacyPurchaseFlowManager _beginRUIFlowWithAMSURLResult:];
  }

  [(ICQUILegacyPurchaseFlowManager *)self _didCompletePurchaseFlowWithStatusCode:3];
LABEL_34:
}

void __64__ICQUILegacyPurchaseFlowManager__beginRUIFlowWithAMSURLResult___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__ICQUILegacyPurchaseFlowManager__beginRUIFlowWithAMSURLResult___block_invoke_2;
  block[3] = &unk_27A65A820;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__ICQUILegacyPurchaseFlowManager__beginRUIFlowWithAMSURLResult___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [*(*(a1 + 32) + 40) topViewController];
  v4 = [v2 arrayWithObject:v3];

  [*(*(a1 + 32) + 40) setViewControllers:v4];
}

- (void)_updatePage:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v31 = self;
  if (self->_requiredStorageThreshold)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      requiredStorageThreshold = self->_requiredStorageThreshold;
      *buf = 134217984;
      v43 = requiredStorageThreshold;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "May need to update row for requiredStorageThreshold: %lld", buf, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [v30 tableViewOM];
    v7 = [v6 sections];

    obj = v7;
    v28 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    v8 = 0;
    if (v28)
    {
      v27 = *v37;
      do
      {
        v9 = 0;
        do
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v29 = v9;
          v10 = *(*(&v36 + 1) + 8 * v9);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v11 = [v10 rows];
          v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v33;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v33 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v32 + 1) + 8 * i);
                v17 = [v16 attributes];
                v18 = [v17 objectForKeyedSubscript:@"totalStorage"];

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && (v19 = strtoull([v18 UTF8String], 0, 0), v19 < -[ICQUILegacyPurchaseFlowManager requiredStorageThreshold](v31, "requiredStorageThreshold")))
                {
                  [v16 setEnabled:0];
                  if ([v16 isSelected])
                  {
                    v20 = [v16 attributes];
                    v21 = [v20 objectForKeyedSubscript:@"radioGroup"];

                    [v16 setSelected:0];
                    v8 = v21;
                  }
                }

                else
                {
                  v22 = [v16 attributes];
                  v23 = [v22 objectForKeyedSubscript:@"radioGroup"];
                  v24 = [v23 isEqualToString:v8];

                  if (v24)
                  {
                    v25 = [v30 tableViewOM];
                    [v25 setSelectedRadioGroupRow:v16];

                    v8 = 0;
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v13);
          }

          v9 = v29 + 1;
        }

        while (v29 + 1 != v28);
        v28 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v28);
    }
  }
}

- (void)_popObjectModelAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(NSMutableArray *)self->_objectModels count])
  {
    v5 = [(NSMutableArray *)self->_objectModels lastObject];
    v13 = [v5 defaultPages];

    [(NSMutableArray *)self->_objectModels removeLastObject];
    v6 = [v13 count] - 1;
    if (v6 >= 0)
    {
      do
      {
        v7 = [v13 objectAtIndex:v6];
        v8 = [(UINavigationController *)self->_navController topViewController];

        if (v8 == v7)
        {
          if (v6)
          {
            v9 = 0;
          }

          else
          {
            v9 = v3;
          }

          v10 = [(UINavigationController *)self->_navController popViewControllerAnimated:v9];
        }
      }

      while (v6-- > 0);
    }
  }

  else
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICQUILegacyPurchaseFlowManager _popObjectModelAnimated:];
    }
  }
}

- (void)objectModelPressedBack:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ICQUILegacyPurchaseFlowManager objectModelPressedBack:]";
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v6 = [(UINavigationController *)self->_navController topViewController];
  v7 = [(UINavigationController *)self->_navController popViewControllerAnimated:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    if (v8)
    {
      v9 = [v4 defaultPages];
      v10 = [v9 containsObject:v8];

      if (v10)
      {
        [(NSMutableArray *)self->_objectModels removeLastObject];
      }
    }
  }

  else
  {
    v8 = 0;
  }
}

- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315650;
    v24 = "[ICQUILegacyPurchaseFlowManager objectModel:pressedButton:attributes:]";
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "%s called with element name: %@, attributes: %@", &v23, 0x20u);
  }

  v12 = [v10 objectForKeyedSubscript:@"ams_followup"];
  if ([v12 isEqualToString:@"clear"])
  {
    [(ICQUILegacyPurchaseFlowManager *)self _clearRetailFollowUpItem];
  }

  if ([v9 isEqualToString:@"cancel"])
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Purchase flow cancelled!", &v23, 2u);
    }

    [(ICQUILegacyPurchaseFlowManager *)self _didCompletePurchaseFlowWithStatusCode:2];
  }

  else if ([v9 isEqualToString:@"buy"])
  {
    v14 = [v8 defaultPages];
    v15 = [v14 lastObject];
    v16 = [v15 navTitle];

    [v8 startNavigationBarSpinnerWithTitle:v16];
    v17 = [MEMORY[0x277CBEB38] dictionary];
    v18 = [v8 defaultPages];
    v19 = [v18 lastObject];
    [v19 populatePostbackDictionary:v17];

    v20 = [v17 objectForKey:@"quota"];
    if (!v20)
    {
      v21 = [v10 objectForKeyedSubscript:@"id"];
      v22 = [v21 isEqualToString:@"quota"];

      if (v22)
      {
        v20 = [v10 objectForKeyedSubscript:@"value"];
      }

      else
      {
        v20 = 0;
      }
    }

    [(ICQUILegacyPurchaseFlowManager *)self makeBuyRequest:v20];
  }

  else if ([v9 isEqualToString:@"pop"])
  {
    [(ICQUILegacyPurchaseFlowManager *)self _popObjectModelAnimated:1];
  }
}

- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[ICQUILegacyPurchaseFlowManager objectModel:pressedLink:httpMethod:completion:]";
    v31 = 2112;
    v32 = v11;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "%s called with URL: %@", buf, 0x16u);
  }

  if ([(ICQUILegacyPurchaseFlowManager *)self _loadNativeURL:v11])
  {
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Successfully handled native url/deep link URL.", buf, 2u);
    }

    v13[2](v13, 1, 0);
  }

  else
  {
    v16 = [v12 lowercaseString];
    v17 = [v16 isEqualToString:@"post"];

    if (v17)
    {
      v18 = [MEMORY[0x277CBEB38] dictionary];
      v19 = [v10 defaultPages];
      v20 = [v19 lastObject];
      [v20 populatePostbackDictionary:v18];

      v21 = [MEMORY[0x277CCAC58] dataWithPropertyList:v18 format:100 options:0 error:0];
    }

    else
    {
      v21 = 0;
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __80__ICQUILegacyPurchaseFlowManager_objectModel_pressedLink_httpMethod_completion___block_invoke;
    v23[3] = &unk_27A65C500;
    v24 = v21;
    v25 = v12;
    v26 = self;
    v28 = v13;
    v27 = v11;
    v22 = v21;
    [(ICQUILegacyPurchaseFlowManager *)self _fetchURLRequestWithURL:v27 completion:v23];
  }
}

void __80__ICQUILegacyPurchaseFlowManager_objectModel_pressedLink_httpMethod_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [v5 addValue:@" CastleSettings/1.0" forHTTPHeaderField:@"User-agent"];
    if (*(a1 + 32))
    {
      [v5 setHTTPMethod:*(a1 + 40)];
      [v5 setHTTPBody:*(a1 + 32)];
      [v5 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
      [(ICQUsageQuotaRequest *)ICQQuotaInfoRequest addHeadersForPrimaryAccountToRequest:v5];
    }

    [*(a1 + 48) _beginURLOperationWithURLRequest:v5];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__ICQUILegacyPurchaseFlowManager_objectModel_pressedLink_httpMethod_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))();
    [*(a1 + 48) _didCompletePurchaseFlowWithStatusCode:3];
  }
}

- (void)makeBuyRequestWithParams:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = _Block_copy(a4);
  flowCompletion = self->_flowCompletion;
  self->_flowCompletion = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = MEMORY[0x277CCAD18];
        v17 = [v10 objectForKeyedSubscript:{v15, v22}];
        v18 = [v16 queryItemWithName:v15 value:v17];
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v19 setQueryItems:v9];
  v20 = [v19 query];

  if (v20)
  {
    v21 = [v19 query];
    [(ICQUILegacyPurchaseFlowManager *)self makeBuyRequest:v21];
  }

  else
  {
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ICQUILegacyPurchaseFlowManager makeBuyRequestWithParams:completion:];
    }
  }
}

- (void)makeBuyRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Performing AMSPurchase request with buyParams: %@", buf, 0xCu);
  }

  v6 = objc_alloc(MEMORY[0x277CEE650]);
  v7 = [MEMORY[0x277CEE3F8] quotaBag];
  v8 = [v6 initWithBag:v7];

  [v8 setDelegate:self];
  v9 = [objc_alloc(MEMORY[0x277CEE648]) initWithConfiguration:v8];
  v10 = objc_alloc(MEMORY[0x277CEE640]);
  v11 = [MEMORY[0x277CEE438] buyParamsWithString:v4];
  v12 = [v10 initWithPurchaseType:0 buyParams:v11];

  [v12 setUserInitiated:1];
  [v12 setAdditionalHeaders:&unk_28847A180];
  v32 = @"mtTopic";
  v33 = @"xp_its_main";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  [v12 setMetricsOverlay:v13];

  v14 = [(ICQUILegacyPurchaseFlowManager *)self _presentationContext];
  v15 = [v14 view];
  v16 = [v15 window];
  v17 = [v16 windowScene];
  v18 = [v17 _sceneIdentifier];
  [v12 setPresentingSceneIdentifier:v18];

  v19 = _ICQGetLogSystem();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v12 presentingSceneIdentifier];
    *buf = 138412290;
    v35 = v20;
    _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "Setting sceneIdentifier: %@ to AMSPurchase.", buf, 0xCu);
  }

  v21 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  if ([v21 ams_isActiveAccountCombined])
  {
    [v21 ams_activeiTunesAccount];
  }

  else
  {
    [v21 ams_activeiCloudAccount];
  }
  v22 = ;
  [v12 setAccount:v22];

  v23 = [MEMORY[0x277CEE620] currentProcess];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"CastleSettings/1.0"];
  [v23 setUserAgentSuffix:v24];

  if (self->_presentingSceneBundleIdentifier)
  {
    v25 = _ICQGetLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      presentingSceneBundleIdentifier = self->_presentingSceneBundleIdentifier;
      *buf = 138412290;
      v35 = presentingSceneBundleIdentifier;
      _os_log_impl(&dword_275623000, v25, OS_LOG_TYPE_DEFAULT, "Setting app bundleID: %@ to AMSPurchase.", buf, 0xCu);
    }

    [v23 setProxyAppBundleID:self->_presentingSceneBundleIdentifier];
  }

  [v12 setClientInfo:v23];
  v31 = v12;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v28 = [v9 enquePurchases:v27];

  objc_initWeak(buf, self);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke;
  v29[3] = &unk_27A65C528;
  objc_copyWeak(&v30, buf);
  v29[4] = self;
  [v28 addFinishBlock:v29];
  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

void __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke_cold_2(a1, v7);
    }

    goto LABEL_7;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke_127;
  block[3] = &unk_27A65A820;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if (v4)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke_cold_1();
    }

LABEL_7:

    v8 = *(a1 + 32);
    v9 = 3;
LABEL_8:
    [v8 _didCompletePurchaseFlowWithStatusCode:v9];
    goto LABEL_9;
  }

  v10 = *(*(a1 + 32) + 56);
  v11 = _ICQGetLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 != 1)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "AMSPurchase for upgrade completed successfully. Dismissing the flow.", buf, 2u);
    }

    v8 = *(a1 + 32);
    v9 = 0;
    goto LABEL_8;
  }

  if (v12)
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "AMSPurchase for downgrade completed successfully. Navigating back to previous page.", buf, 2u);
  }

  *(*(a1 + 32) + 56) = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke_128;
  v14[3] = &unk_27A65A820;
  v14[4] = *(a1 + 32);
  v13 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v14);

LABEL_9:
}

void __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke_127(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 32) lastObject];
  [v1 stopNavigationBarSpinner];
}

- (void)_handleAuthenticateRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "We've been asked to handle Authenticate request. Attempting silent authentication.", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ICQUILegacyPurchaseFlowManager__handleAuthenticateRequest_completion___block_invoke;
  block[3] = &unk_27A65B060;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __72__ICQUILegacyPurchaseFlowManager__handleAuthenticateRequest_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEE878]);
  v3 = [*(a1 + 32) account];
  v4 = [*(a1 + 40) _presentationContext];
  v5 = [*(a1 + 32) options];
  v6 = [v2 initWithAccount:v3 presentingViewController:v4 options:v5];

  v7 = [v6 performAuthentication];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__ICQUILegacyPurchaseFlowManager__handleAuthenticateRequest_completion___block_invoke_2;
  v9[3] = &unk_27A65C550;
  v8 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v8;
  [v7 addFinishBlock:v9];
}

void __72__ICQUILegacyPurchaseFlowManager__handleAuthenticateRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _ICQGetLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__ICQUILegacyPurchaseFlowManager__handleAuthenticateRequest_completion___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Successfully finished silent authentication.", v12, 2u);
  }

  v9 = [v6 account];
  v10 = *(a1 + 32);
  v11 = *(v10 + 48);
  *(v10 + 48) = v9;

  (*(*(a1 + 40) + 16))();
}

- (void)_handleDialogRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "We've been asked to handle AMS dialog request.", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ICQUILegacyPurchaseFlowManager__handleDialogRequest_completion___block_invoke;
  block[3] = &unk_27A65B060;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__ICQUILegacyPurchaseFlowManager__handleDialogRequest_completion___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CEE868]);
  v18 = a1;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) _presentationContext];
  v19 = [v2 initWithRequest:v3 presentingViewController:v4];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__10;
  v38 = __Block_byref_object_dispose__10;
  v39 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__10;
  v32 = __Block_byref_object_dispose__10;
  v33 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [*(a1 + 32) buttonActions];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v44 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [v9 userInfo];
        v11 = [v10 objectForKeyedSubscript:@"AMSDialogRequestUserInfoKeyServerPayload"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 objectForKey:@"buyParams"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong(v29 + 5, v12);
            objc_storeStrong(v35 + 5, v9);
            v13 = _ICQGetLogSystem();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = v35[5];
              v15 = v29[5];
              *buf = 138412546;
              v41 = v14;
              v42 = 2112;
              v43 = v15;
              _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "It's a confirm downgrade action: %@, buyParams: %@", buf, 0x16u);
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v44 count:16];
    }

    while (v6);
  }

  v16 = [v19 present];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__ICQUILegacyPurchaseFlowManager__handleDialogRequest_completion___block_invoke_139;
  v20[3] = &unk_27A65C578;
  v22 = &v34;
  v23 = &v28;
  v17 = *(v18 + 48);
  v20[4] = *(v18 + 40);
  v21 = v17;
  [v16 addFinishBlock:v20];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v34, 8);
}

void __66__ICQUILegacyPurchaseFlowManager__handleDialogRequest_completion___block_invoke_139(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(*(*(a1 + 48) + 8) + 40) identifier];
  v8 = [v5 selectedActionIdentifier];
  v9 = [v7 isEqualToString:v8];

  v10 = _ICQGetLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "It's not a downgrade confirmation dialog or user chose to cancel.", &v18, 2u);
    }

    goto LABEL_10;
  }

  if (v11)
  {
    v12 = *(*(*(a1 + 56) + 8) + 40);
    v18 = 138412290;
    v19 = v12;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "User confirmed downgrade. Let's begin buy request with buyParams: %@", &v18, 0xCu);
  }

  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __66__ICQUILegacyPurchaseFlowManager__handleDialogRequest_completion___block_invoke_139_cold_1();
    }

LABEL_10:

    (*(*(a1 + 40) + 16))();
    goto LABEL_11;
  }

  [*(a1 + 32) makeBuyRequest:?];
  *(*(a1 + 32) + 56) = 1;
  v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.iCloudQuota.LegacyPurchase" code:1 userInfo:0];
  (*(*(a1 + 40) + 16))();

LABEL_11:
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
}

- (void)_handleEngagementRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "We were asked to handle an engagement request.", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__ICQUILegacyPurchaseFlowManager__handleEngagementRequest_completion___block_invoke;
  block[3] = &unk_27A65B060;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __70__ICQUILegacyPurchaseFlowManager__handleEngagementRequest_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEE8D8]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CEE3F8] quotaBag];
  v5 = [*(a1 + 40) _presentationContext];
  v8 = [v2 initWithRequest:v3 bag:v4 presentingViewController:v5];

  v6 = [MEMORY[0x277CEE620] currentProcess];
  [v6 setUserAgentSuffix:@"CastleSettings/1.0"];
  [v8 setClientInfo:v6];
  v7 = [v8 presentEngagement];
  [v7 addFinishBlock:*(a1 + 48)];
}

- (void)_clearRetailFollowUpItem
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &__block_literal_global_18);
}

void __58__ICQUILegacyPurchaseFlowManager__clearRetailFollowUpItem__block_invoke()
{
  v0 = _ICQGetLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_275623000, v0, OS_LOG_TYPE_DEFAULT, "Clearing iCloud follow up item.", v8, 2u);
  }

  v1 = AMSGenerateLogCorrelationKey();
  v2 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  v4 = MEMORY[0x277CEE3F8];
  v5 = [MEMORY[0x277CEE478] bagSubProfile];
  v6 = [MEMORY[0x277CEE478] bagSubProfileVersion];
  v7 = [v4 bagForProfile:v5 profileVersion:v6];

  [MEMORY[0x277CEE470] removeDeviceOfferWithIdentifier:*MEMORY[0x277CEE178] account:v3 bag:v7 logKey:v1];
}

- (BOOL)_loadNativeURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"ams-ui"];

  if (v5)
  {
    v6 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v6 openSensitiveURL:v3 withOptions:0];
  }

  return v5;
}

- (void)_didCompletePurchaseFlowWithStatusCode:(int64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = a3;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Legacy purchase flow has been completed with error code: %ld", buf, 0xCu);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__ICQUILegacyPurchaseFlowManager__didCompletePurchaseFlowWithStatusCode___block_invoke;
  v6[3] = &unk_27A65B1C8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __73__ICQUILegacyPurchaseFlowManager__didCompletePurchaseFlowWithStatusCode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _dismissPurchaseFlow];
  if (*(*(a1 + 32) + 16))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.iCloudQuota.LegacyPurchase" code:v2 userInfo:0];
      v4 = _ICQGetLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __73__ICQUILegacyPurchaseFlowManager__didCompletePurchaseFlowWithStatusCode___block_invoke_cold_1();
      }

      (*(*(*(a1 + 32) + 16) + 16))();
    }

    else
    {
      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        __73__ICQUILegacyPurchaseFlowManager__didCompletePurchaseFlowWithStatusCode___block_invoke_cold_2();
      }

      (*(*(*(a1 + 32) + 16) + 16))();
    }

    v7 = *(a1 + 32);
    v5 = *(v7 + 16);
    *(v7 + 16) = 0;
  }

  else
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __73__ICQUILegacyPurchaseFlowManager__didCompletePurchaseFlowWithStatusCode___block_invoke_cold_3();
    }
  }
}

- (void)_dismissPurchaseFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  [WeakRetained dismissViewControllerAnimated:1 completion:0];

  [(NSMutableArray *)self->_objectModels removeAllObjects];
  navController = self->_navController;
  self->_navController = 0;
}

void __69__ICQUILegacyPurchaseFlowManager__fetchURLRequestWithURL_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_beginRUIFlowWithAMSURLResult:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_beginRUIFlowWithAMSURLResult:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_popObjectModelAnimated:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)makeBuyRequestWithParams:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__ICQUILegacyPurchaseFlowManager_makeBuyRequest___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "%@ object got destroyed.", v5, 0xCu);
}

void __72__ICQUILegacyPurchaseFlowManager__handleAuthenticateRequest_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __66__ICQUILegacyPurchaseFlowManager__handleDialogRequest_completion___block_invoke_139_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __73__ICQUILegacyPurchaseFlowManager__didCompletePurchaseFlowWithStatusCode___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_275623000, v0, OS_LOG_TYPE_DEBUG, "Calling flow completion w/ error: %@", v1, 0xCu);
}

@end
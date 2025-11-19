@interface ICQCommerceRemoteUIDelegate
- (BOOL)_handleResponseForDialog:(id)a3 atIndex:(int64_t)a4;
- (BOOL)_hasUnfinishedOperations;
- (BOOL)_isPurchaseTokenOperation:(id)a3;
- (BOOL)_loadNativeURL:(id)a3;
- (BOOL)_shouldSuppressDialog:(id)a3 failureType:(int64_t)a4;
- (BOOL)didUserDismissAMSFlow:(id)a3;
- (ICQCommerceRemoteUIDelegate)initWithNavigationController:(id)a3 needsModalPresentation:(BOOL)a4;
- (ICQCommerceRemoteUIDelegateDelegate)delegate;
- (id)parentViewControllerForObjectModel:(id)a3;
- (id)presentationContext;
- (int64_t)_statusCodeForFinishedOperation:(id)a3;
- (void)_clearRetailFollowUpItem;
- (void)_dismissAccountPageViewController:(id)a3 keepCommerceSpinner:(BOOL)a4;
- (void)_dismissAlertsWithCompletion:(id)a3;
- (void)_forgetAccountPageViewController:(id)a3;
- (void)_handleFinishForOperation:(id)a3 withOutput:(id)a4;
- (void)_handleOperationError:(id)a3;
- (void)_popAccountPageViewController:(id)a3 keepCommerceSpinner:(BOOL)a4;
- (void)_popCommerceSpinnerIfNeeded;
- (void)_popObjectModelAnimated:(BOOL)a3;
- (void)_presentAlertWithDialog:(id)a3;
- (void)accountPageViewController:(id)a3 financeInterruptionResolved:(BOOL)a4;
- (void)accountPageViewControllerDidFinish:(id)a3;
- (void)cancelFlowBecause:(id)a3;
- (void)cancelRemoteUIKeeping:(id)a3;
- (void)cleanupLoader;
- (void)dealloc;
- (void)errorWithTitle:(id)a3 andExplanation:(id)a4 dismissedCompletion:(id)a5;
- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)handleDialog:(id)a3;
- (void)handleDialogRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6;
- (void)loadURLforKey:(id)a3;
- (void)makeBuyRequest:(id)a3;
- (void)makeBuyRequest:(id)a3 forceAuth:(BOOL)a4 usePurchaseToken:(BOOL)a5;
- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5;
- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5;
- (void)objectModelPressedBack:(id)a3;
- (void)operation:(id)a3 failedWithError:(id)a4;
- (void)operation:(id)a3 finishedWithOutput:(id)a4;
- (void)processLink:(id)a3 forceAuth:(BOOL)a4 needsAuth:(BOOL)a5 localAuth:(BOOL)a6 usePurchaseToken:(BOOL)a7;
- (void)purchaseWithToken:(id)a3 buyParameters:(id)a4 requestHeaders:(id)a5;
- (void)pushSpinner;
- (void)retryPurchaseWithoutToken;
- (void)unregisterAuthNotification;
- (void)userCompletedFlow:(int64_t)a3;
@end

@implementation ICQCommerceRemoteUIDelegate

- (BOOL)_isPurchaseTokenOperation:(id)a3
{
  v3 = [a3 requestProperties];
  v4 = [v3 HTTPHeaders];
  v5 = [v4 objectForKeyedSubscript:@"X-Apple-GS-Token"];
  v6 = v5 != 0;

  return v6;
}

- (int64_t)_statusCodeForFinishedOperation:(id)a3
{
  v3 = [a3 response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 statusCode];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)operation:(id)a3 finishedWithOutput:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ICQCommerceRemoteUIDelegate_operation_finishedWithOutput___block_invoke;
  block[3] = &unk_27A65B108;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __60__ICQCommerceRemoteUIDelegate_operation_finishedWithOutput___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 setNetworkActivityIndicatorVisible:0];

  v3 = *(a1 + 32);
  if ((*(v3 + 74) & 1) == 0)
  {
    if (*(v3 + 80))
    {
      objc_initWeak(&location, v3);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __60__ICQCommerceRemoteUIDelegate_operation_finishedWithOutput___block_invoke_2;
      v10[3] = &unk_27A65C608;
      objc_copyWeak(&v13, &location);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v4 = _Block_copy(v10);
      v5 = *(a1 + 32);
      v6 = *(v5 + 88);
      *(v5 + 88) = v4;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);

      [v9 _handleFinishForOperation:v7 withOutput:v8];
    }
  }
}

void __60__ICQCommerceRemoteUIDelegate_operation_finishedWithOutput___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleFinishForOperation:*(a1 + 32) withOutput:*(a1 + 40)];
}

- (void)_handleFinishForOperation:(id)a3 withOutput:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_finishingOperation, a3);
  v9 = [v7 dataProvider];
  if ([(ICQCommerceRemoteUIDelegate *)self skipGoBack])
  {
    v10 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "async operation in flight -- skipGoBack set", buf, 2u);
    }
  }

  v11 = [(ICQCommerceRemoteUIDelegate *)self skipGoBack];
  [(ICQCommerceRemoteUIDelegate *)self setSkipGoBack:0];
  if ([(ICQCommerceRemoteUIDelegate *)self didJustCancelDialog])
  {
    v12 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "server dialog was just canceled", buf, 2u);
    }
  }

  v13 = [(ICQCommerceRemoteUIDelegate *)self didJustCancelDialog];
  [(ICQCommerceRemoteUIDelegate *)self setDidJustCancelDialog:0];
  if (([v9 isPlist] & 1) == 0)
  {
    v19 = [objc_alloc(MEMORY[0x277D461F8]) initWithXML:v8];
    if (PSIsInternalInstall() && CFPreferencesGetAppBooleanValue(@"loggingEnabled", @"com.apple.RemoteUI", 0))
    {
      v22 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
        *buf = 138412290;
        v68 = v23;
        _os_log_impl(&dword_275623000, v22, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }

    if (([v19 succeeded] & 1) == 0)
    {
      v24 = ISError();
      [(ICQCommerceRemoteUIDelegate *)self _handleOperationError:v24];
LABEL_99:

      goto LABEL_100;
    }

    v24 = [v19 uiObjectModel];
    v25 = [v19 actionSignal];
    [v24 setDelegate:self];
    if (!-[NSMutableArray count](self->_objectModels, "count") && [v25 topSignal] == 3)
    {
      [v25 setTopSignal:2];
    }

    navigationController = self->_navigationController;
    if (!navigationController)
    {
      v27 = objc_alloc_init(ICQCommerceNavigationController);
      v28 = self->_navigationController;
      self->_navigationController = &v27->super;

      [(UINavigationController *)self->_navigationController setModalPresentationStyle:2];
      [(UINavigationController *)self->_navigationController setModalTransitionStyle:0];
    }

    if (![v25 topSignal])
    {
      [v25 setTopSignal:2];
    }

    v64 = v9;
    if ([v25 topSignal] == 2)
    {
      [(NSMutableArray *)self->_objectModels addObject:v24];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        v31 = [v24 defaultPages];
        v32 = [v31 firstObject];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [ICQCommerceRemoteUIDelegate _handleFinishForOperation:withOutput:];
        }

        if (v32)
        {
          v33 = objc_loadWeakRetained(&self->_delegate);
          [v33 commerceDelegate:self willPresentObjectModel:v24 page:v32];
        }
      }

      v34 = navigationController;
      v35 = [MEMORY[0x277CCA8D8] mainBundle];
      v36 = [v35 bundleIdentifier];

      v37 = [(UINavigationController *)self->_navigationController topViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [v36 isEqualToString:@"com.apple.Preferences"];

        if (v38)
        {
          self->_pseudoModallyPresented = 1;
          v39 = self->_navigationController;
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __68__ICQCommerceRemoteUIDelegate__handleFinishForOperation_withOutput___block_invoke;
          v66[3] = &unk_27A65A820;
          v66[4] = self;
          [v24 presentInParentViewController:v39 animated:0 completion:v66];

          goto LABEL_74;
        }
      }

      else
      {
      }

      [v24 presentInParentViewController:self->_navigationController animated:v34 != 0];
    }

    else
    {
      if ([v25 topSignal] != 3)
      {
        if ([v25 topSignal] == 4)
        {
          v47 = [v24 defaultPages];
          v48 = [v47 count];

          if (v48)
          {
            if ([(NSMutableArray *)self->_objectModels count]> 1)
            {
              [(NSMutableArray *)self->_objectModels removeLastObject];
              [(NSMutableArray *)self->_objectModels removeLastObject];
              v50 = [(UINavigationController *)self->_navigationController viewControllers];
              v51 = [v50 mutableCopy];

              [v51 removeLastObject];
              [v51 removeLastObject];
              [(NSMutableArray *)self->_objectModels addObject:v24];
              v52 = [v24 defaultPages];
              [v52 lastObject];
              v54 = v53 = navigationController;
              [v51 addObject:v54];

              [(UINavigationController *)self->_navigationController setViewControllers:v51 animated:0];
              if (!v53)
              {
LABEL_74:
                if (self->_modallyPresented)
                {
                  [(UINavigationController *)self->_parentNavigationController presentViewController:self->_navigationController animated:1 completion:0];
                }
              }

LABEL_76:

              v9 = v64;
              goto LABEL_99;
            }

            v49 = ICQUSLogForCategory(0);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_275623000, v49, OS_LOG_TYPE_DEFAULT, "Pop + Replace requires at least 2 existing object models.", buf, 2u);
            }
          }

          else
          {
            [(ICQCommerceRemoteUIDelegate *)self _popObjectModelAnimated:1];
          }
        }

        if (!navigationController)
        {
          goto LABEL_74;
        }

        goto LABEL_76;
      }

      v40 = [(UINavigationController *)self->_navigationController viewControllers];
      v36 = [v40 mutableCopy];

      [(NSMutableArray *)self->_objectModels removeLastObject];
      [v36 removeLastObject];
      v41 = [v24 defaultPages];
      [v41 lastObject];
      v42 = v34 = navigationController;
      [v36 addObject:v42];

      [(NSMutableArray *)self->_objectModels addObject:v24];
      [(UINavigationController *)self->_navigationController setViewControllers:v36 animated:0];
    }

    if (!v34)
    {
      goto LABEL_74;
    }

    goto LABEL_76;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v8;
      _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Store operation completed with response %@", buf, 0xCu);
    }

    v15 = [(ICQCommerceRemoteUIDelegate *)self _isPurchaseTokenOperation:v7];
    if (v15)
    {
      v16 = [(ICQCommerceRemoteUIDelegate *)self _statusCodeForFinishedOperation:v7];
      v17 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
        *buf = 138412290;
        v68 = v18;
        _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "Purchase token operation status code: %@", buf, 0xCu);
      }
    }

    v19 = [v8 objectForKeyedSubscript:@"failureType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      -[ICQCommerceRemoteUIDelegate setFailureType:](self, "setFailureType:", [v19 integerValue]);
      v20 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICQCommerceRemoteUIDelegate failureType](self, "failureType")}];
        *buf = 138412290;
        v68 = v21;
        _os_log_impl(&dword_275623000, v20, OS_LOG_TYPE_DEFAULT, "ft=%@", buf, 0xCu);
      }
    }

    else
    {
      [(ICQCommerceRemoteUIDelegate *)self setFailureType:0];
    }

    if (([(ICQCommerceRemoteUIDelegate *)self failureType]== 8067 || [(ICQCommerceRemoteUIDelegate *)self failureType]== 3067) && [(ICQCommerceRemoteUIDelegate *)self forRetailOffer])
    {
      [(ICQCommerceRemoteUIDelegate *)self _clearRetailFollowUpItem];
    }

    v43 = [v8 objectForKey:@"dialog"];

    if (!v43)
    {
      v44 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v44, OS_LOG_TYPE_DEFAULT, "no dialog; checking for message", buf, 2u);
      }

      v45 = [v8 objectForKey:@"customerMessage"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v45 length])
      {
        if (v15 && ![(ICQCommerceRemoteUIDelegate *)self skipRetryWithoutToken])
        {
          v55 = ICQUSLogForCategory(0);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_275623000, v55, OS_LOG_TYPE_DEFAULT, "retryPurchaseWithoutToken", buf, 2u);
          }

          [(ICQCommerceRemoteUIDelegate *)self retryPurchaseWithoutToken];
        }

        else
        {
          v46 = ICQUSLogForCategory(0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v68 = v45;
            _os_log_impl(&dword_275623000, v46, OS_LOG_TYPE_DEFAULT, "show error with title: %@", buf, 0xCu);
          }

          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __68__ICQCommerceRemoteUIDelegate__handleFinishForOperation_withOutput___block_invoke_111;
          v65[3] = &unk_27A65A820;
          v65[4] = self;
          [(ICQCommerceRemoteUIDelegate *)self errorWithTitle:v45 andExplanation:0 dismissedCompletion:v65];
        }
      }
    }

    if ([(ICQCommerceRemoteUIDelegate *)self skipCompletionAlert]&& ([(ICQCommerceRemoteUIDelegate *)self failureType]- 3067) <= 1)
    {
      [(ICQCommerceRemoteUIDelegate *)self userCompletedFlow:[(ICQCommerceRemoteUIDelegate *)self failureType]];
      v24 = [(UINavigationController *)self->_navigationController topViewController];
      [(ICQCommerceRemoteUIDelegate *)self cancelRemoteUIKeeping:v24];
      goto LABEL_99;
    }

    if (v11)
    {
LABEL_100:

      goto LABEL_101;
    }

    v56 = [v8 objectForKey:@"action"];
    v24 = v56;
    if (v56)
    {
      v57 = [v56 objectForKey:@"kind"];
      v58 = [v57 isEqualToString:@"GoBack"];

      if (v58)
      {
        v59 = @"server provided action GoBack";
        if (!v13)
        {
          goto LABEL_98;
        }

        v60 = 1;
LABEL_95:
        v61 = [(UINavigationController *)self->_navigationController topViewController];
        topViewController = self->_topViewController;

        if (v61 == topViewController)
        {
          v59 = @"dialog cancelled before any pages pushed";
        }

        else if (!v60)
        {
          goto LABEL_99;
        }

LABEL_98:
        [(ICQCommerceRemoteUIDelegate *)self cancelFlowBecause:v59];
        [(ICQCommerceRemoteUIDelegate *)self cancelRemoteUI];
        goto LABEL_99;
      }

      if (!v13)
      {
        goto LABEL_99;
      }
    }

    else if (!v13)
    {
      goto LABEL_99;
    }

    v60 = 0;
    v59 = 0;
    goto LABEL_95;
  }

LABEL_101:
  finishingOperation = self->_finishingOperation;
  self->_finishingOperation = 0;
}

void __68__ICQCommerceRemoteUIDelegate__handleFinishForOperation_withOutput___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__ICQCommerceRemoteUIDelegate__handleFinishForOperation_withOutput___block_invoke_2;
  block[3] = &unk_27A65A820;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__ICQCommerceRemoteUIDelegate__handleFinishForOperation_withOutput___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CBEA60];
  v3 = [*(*(a1 + 32) + 8) topViewController];
  v4 = [v2 arrayWithObject:v3];

  [*(*(a1 + 32) + 8) setViewControllers:v4];
}

uint64_t __68__ICQCommerceRemoteUIDelegate__handleFinishForOperation_withOutput___block_invoke_111(uint64_t a1)
{
  [*(a1 + 32) cancelFlowBecause:@"customer message shown & dismissed"];
  v2 = *(a1 + 32);

  return [v2 cancelRemoteUI];
}

- (void)_clearRetailFollowUpItem
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &__block_literal_global_20);
}

void __55__ICQCommerceRemoteUIDelegate__clearRetailFollowUpItem__block_invoke()
{
  v0 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_275623000, v0, OS_LOG_TYPE_DEFAULT, "Clearing iCloud follow up item", v8, 2u);
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

- (void)operation:(id)a3 failedWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ICQCommerceRemoteUIDelegate_operation_failedWithError___block_invoke;
  v7[3] = &unk_27A65A708;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __57__ICQCommerceRemoteUIDelegate_operation_failedWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10])
  {
    objc_initWeak(&location, v2);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__ICQCommerceRemoteUIDelegate_operation_failedWithError___block_invoke_2;
    aBlock[3] = &unk_27A65C718;
    objc_copyWeak(&v10, &location);
    v9 = *(a1 + 40);
    v3 = _Block_copy(aBlock);
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);

    [v7 _handleOperationError:v6];
  }
}

void __57__ICQCommerceRemoteUIDelegate_operation_failedWithError___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleOperationError:*(a1 + 32)];
}

- (void)_handleOperationError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 commerceDelegate:self loadDidFailWithError:v4];
  }

  v8 = [MEMORY[0x277D75128] sharedApplication];
  [v8 setNetworkActivityIndicatorVisible:0];

  if ([v4 code] == 16 || objc_msgSend(v4, "code") == 4)
  {
    v9 = [(UINavigationController *)self->_navigationController topViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v9 table];
        v12 = [v11 indexPathForSelectedRow];
        [v11 deselectRowAtIndexPath:v12 animated:1];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v9 tableViewOM];
          v16 = [v15 tableView];

          v17 = [v16 indexPathForSelectedRow];
          [v16 deselectRowAtIndexPath:v17 animated:1];
        }
      }
    }
  }

  else
  {
    v13 = [v4 localizedDescription];
    v14 = [v4 localizedFailureReason];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__ICQCommerceRemoteUIDelegate__handleOperationError___block_invoke;
    v18[3] = &unk_27A65A708;
    v18[4] = self;
    v19 = v4;
    [(ICQCommerceRemoteUIDelegate *)self errorWithTitle:v13 andExplanation:v14 dismissedCompletion:v18];
  }
}

uint64_t __53__ICQCommerceRemoteUIDelegate__handleOperationError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"operation error shown & dismissed (error:%@)", *(a1 + 40)];
  [v2 cancelFlowBecause:v3];

  v4 = *(a1 + 32);

  return [v4 cancelRemoteUI];
}

- (void)errorWithTitle:(id)a3 andExplanation:(id)a4 dismissedCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__ICQCommerceRemoteUIDelegate_errorWithTitle_andExplanation_dismissedCompletion___block_invoke;
  v14[3] = &unk_27A65C768;
  v15 = v8;
  v16 = v9;
  v17 = self;
  v18 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __81__ICQCommerceRemoteUIDelegate_errorWithTitle_andExplanation_dismissedCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (![v2 length] && !objc_msgSend(*(a1 + 40), "length"))
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v9 localizedStringForKey:@"DEFAULT_ERROR_TITLE" value:&stru_28844FC60 table:@"CloudGroup"];
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = SSError();
  v6 = [v5 localizedDescription];
  LODWORD(v4) = [v4 isEqualToString:v6];

  if (v4)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DEFAULT_ERROR_GENERIC" value:&stru_28844FC60 table:@"CloudGroup"];

    v2 = v7;
    v9 = v3;
    v3 = 0;
LABEL_6:

    v2 = v8;
  }

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:v2 message:v3 preferredStyle:1];
  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"DISMISS" value:&stru_28844FC60 table:@"CloudGroup"];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __81__ICQCommerceRemoteUIDelegate_errorWithTitle_andExplanation_dismissedCompletion___block_invoke_2;
  v20 = &unk_27A65C740;
  v14 = *(a1 + 56);
  v21 = *(a1 + 48);
  v22 = v14;
  v15 = [v11 actionWithTitle:v13 style:0 handler:&v17];
  [v10 addAction:{v15, v17, v18, v19, v20, v21}];

  v16 = [*(a1 + 48) presentationContext];
  [v16 presentViewController:v10 animated:1 completion:0];
}

void __81__ICQCommerceRemoteUIDelegate_errorWithTitle_andExplanation_dismissedCompletion___block_invoke_2(uint64_t a1)
{
  v9 = [*(*(a1 + 32) + 8) topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(*(a1 + 32) + 8) popViewControllerAnimated:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v9 table];
      v4 = [v3 indexPathForSelectedRow];
      [v3 deselectRowAtIndexPath:v4 animated:1];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v9 tableViewOM];
        v6 = [v5 tableView];

        v7 = [v6 indexPathForSelectedRow];
        [v6 deselectRowAtIndexPath:v7 animated:1];
      }
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

- (void)unregisterAuthNotification
{
  self->_registeredAuthNotification = 0;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6E0], 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x277D6A6D8], 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = *MEMORY[0x277D6A6D0];

  CFNotificationCenterRemoveObserver(v5, self, v6, 0);
}

- (BOOL)_hasUnfinishedOperations
{
  v3 = [(NSOperationQueue *)self->_queue operations];
  v6 = ([v3 count] != 1 || (objc_msgSend(v3, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), finishingOperation = self->_finishingOperation, v4, v4 != finishingOperation)) && objc_msgSend(v3, "count") != 0;

  return v6;
}

- (void)cleanupLoader
{
  if ([(ICQCommerceRemoteUIDelegate *)self _hasUnfinishedOperations])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.Preferences.cloud-storage-offers" code:1 userInfo:0];
      [v5 commerceDelegate:self loadDidFailWithError:v6];
    }

    v7 = [MEMORY[0x277D75128] sharedApplication];
    [v7 setNetworkActivityIndicatorVisible:0];
  }

  v8 = [(NSOperationQueue *)self->_queue operations];
  [v8 enumerateObjectsUsingBlock:&__block_literal_global_163];

  queue = self->_queue;

  [(NSOperationQueue *)queue cancelAllOperations];
}

void __44__ICQCommerceRemoteUIDelegate_cleanupLoader__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 setDelegate:0];
  }
}

- (void)pushSpinner
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ICQCommerceRemoteUIDelegate_pushSpinner__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__ICQCommerceRemoteUIDelegate_pushSpinner__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v18 = objc_alloc_init(ICQCommerceSpinner);
    v4 = [*(*(a1 + 32) + 8) topViewController];
    v5 = [v4 navigationItem];

    v6 = objc_alloc(MEMORY[0x277D751E0]);
    v7 = [v5 leftBarButtonItem];
    v8 = [v7 title];
    v9 = [v6 initWithTitle:v8 style:0 target:0 action:0];

    [v9 setEnabled:0];
    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v11 = [v5 rightBarButtonItem];
    v12 = [v11 title];
    v13 = [v10 initWithTitle:v12 style:2 target:0 action:0];

    [v13 setEnabled:0];
    v14 = [(ICQCommerceSpinner *)v18 navigationItem];
    [v14 setLeftBarButtonItem:v9];

    v15 = [(ICQCommerceSpinner *)v18 navigationItem];
    [v15 setRightBarButtonItem:v13];

    v16 = [v5 title];
    v17 = [(ICQCommerceSpinner *)v18 navigationItem];
    [v17 setTitle:v16];

    [*(*(a1 + 32) + 8) showViewController:v18 sender:?];
  }
}

- (void)_popCommerceSpinnerIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(UINavigationController *)self->_navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "popping commerce spinner", v7, 2u);
    }

    v6 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:1];
  }
}

- (void)purchaseWithToken:(id)a3 buyParameters:(id)a4 requestHeaders:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(ICQCommerceRemoteUIDelegate *)self setSkipCompletionAlert:1];
  [(ICQCommerceRemoteUIDelegate *)self setPurchaseToken:v10];

  [(ICQCommerceRemoteUIDelegate *)self setBuyParameters:v9];
  [(ICQCommerceRemoteUIDelegate *)self setRequestHeaders:v8];

  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 bundleIdentifier];

  v13 = [v12 isEqualToString:@"com.apple.preferences"];
  v14 = _ICQGetLogSystem();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Freshmint using AMSPurchase flow.", buf, 2u);
    }

    [(ICQCommerceRemoteUIDelegate *)self makeBuyRequest:&stru_28844FC60];
  }

  else
  {
    if (v15)
    {
      *v18 = 0;
      _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Freshmint using legacy purchase flow.", v18, 2u);
    }

    if (v10)
    {
      v16 = 0;
      v17 = 1;
    }

    else
    {
      v16 = 1;
      v17 = 0;
    }

    [(ICQCommerceRemoteUIDelegate *)self makeBuyRequest:&stru_28844FC60 forceAuth:v16 usePurchaseToken:v17];
  }
}

- (void)makeBuyRequest:(id)a3 forceAuth:(BOOL)a4 usePurchaseToken:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Preparing StoreService purchase request.", v26, 2u);
  }

  v10 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v10 setURLBagKey:@"buyProduct"];
  v11 = [(ICQCommerceRemoteUIDelegate *)self buyParameters];
  if (v11 && (v12 = v11, v13 = [v8 length], v12, !v13))
  {
    v15 = [(ICQCommerceRemoteUIDelegate *)self buyParameters];
    v16 = [v15 mutableCopy];
  }

  else
  {
    v14 = MEMORY[0x277CBEBC0];
    v15 = [v8 stringByRemovingPercentEncoding];
    v16 = [v14 copyDictionaryForQueryString:v15 unescapedValues:0];
  }

  v17 = v16;

  v18 = [v17 objectForKeyedSubscript:@"forRetailOffer"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 BOOLValue])
  {
    [(ICQCommerceRemoteUIDelegate *)self setForRetailOffer:1];
  }

  v19 = [MEMORY[0x277D7FCE0] sharedInstance];
  v20 = [v19 guid];
  [v17 setObject:v20 forKey:@"guid"];

  v21 = [MEMORY[0x277CCAC58] dataWithPropertyList:v17 format:100 options:0 error:0];
  [v10 setHTTPBody:v21];
  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  if (v5 && ([(ICQCommerceRemoteUIDelegate *)self purchaseToken], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    [(ICQCommerceRemoteUIDelegate *)self processLink:v10 forceAuth:0 needsAuth:0 localAuth:0 usePurchaseToken:1];
  }

  else
  {
    [(ICQCommerceRemoteUIDelegate *)self processLink:v10 forceAuth:v6 needsAuth:1 localAuth:1];
  }

  if (!self->_registeredAuthNotification)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, AuthSubmitted, *MEMORY[0x277D6A6E0], 0, CFNotificationSuspensionBehaviorCoalesce);
    v24 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v24, self, AuthSubmitted, *MEMORY[0x277D6A6D8], 0, CFNotificationSuspensionBehaviorCoalesce);
    v25 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v25, self, AuthCancelled, *MEMORY[0x277D6A6D0], 0, CFNotificationSuspensionBehaviorCoalesce);
    self->_registeredAuthNotification = 1;
  }
}

- (void)retryPurchaseWithoutToken
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICQCommerceRemoteUIDelegate_retryPurchaseWithoutToken__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __56__ICQCommerceRemoteUIDelegate_retryPurchaseWithoutToken__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) skipRetryWithoutToken];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setSkipRetryWithoutToken:1];
    v3 = *(a1 + 32);

    return [v3 makeBuyRequest:&stru_28844FC60];
  }

  return result;
}

- (void)loadURLforKey:(id)a3
{
  self->_cancelled = 0;
  v4 = MEMORY[0x277D69BD0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setURLBagKey:v5];
  LODWORD(v4) = [v5 isEqualToString:@"mint-offers"];

  if (v4)
  {
    if ([(ICQCommerceRemoteUIDelegate *)self shouldOfferFamilySharePlansOnly])
    {
      [v6 setValue:@"true" forRequestParameter:@"sharePlanOnly"];
    }

    if ([(ICQCommerceRemoteUIDelegate *)self shouldOfferDeviceOffers])
    {
      [v6 setValue:@"true" forRequestParameter:@"deviceOffers"];
    }
  }

  [(ICQCommerceRemoteUIDelegate *)self processLink:v6 forceAuth:0 needsAuth:0];
}

- (void)cancelFlowBecause:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_cancelled)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICQCommerceRemoteUIDelegate cancelFlowBecause:];
    }

    goto LABEL_10;
  }

  v6 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"reasons";
    if (v4)
    {
      v7 = v4;
    }

    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "user flow is ending because %{public}@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 commerceDelegateDidCancel:self];
LABEL_10:
  }
}

- (void)userCompletedFlow:(int64_t)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (self->_cancelled)
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [ICQCommerceRemoteUIDelegate userCompletedFlow:];
    }

    goto LABEL_24;
  }

  v6 = 0;
  if (a3 && a3 != 3067)
  {
    if (a3 == 3068)
    {
      v6 = 2;
      goto LABEL_12;
    }

    v7 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      v18 = a3;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "unexpected failure type %lld; handling as generic failure", &v17, 0xCu);
    }

    v6 = 3;
  }

  if (!a3)
  {
    v9 = 0;
LABEL_17:

LABEL_18:
    +[ICQPurchase clearCacheAndNotifyClients];
    v3 = 0;
    goto LABEL_19;
  }

LABEL_12:
  v8 = SSError();
  v9 = v8;
  if (!v6 || !v8)
  {
    goto LABEL_17;
  }

  v10 = MEMORY[0x277CCA9B8];
  v21 = *MEMORY[0x277CCA7E8];
  v22[0] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v3 = [v10 errorWithDomain:@"com.apple.Preferences.cloud-storage-offers" code:v6 userInfo:v11];

  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_19:
  v12 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    v17 = 138412546;
    v18 = v13;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "user completed flow with ft=%@, error %@", &v17, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 commerceDelegate:self didCompleteWithError:v3];
  }

  else
  {
    [(ICQCommerceRemoteUIDelegate *)self cancelFlowBecause:@"flow is complete and client did not implement commerceDelegate:didCompleteWithError:"];
  }

LABEL_24:
}

- (void)cancelRemoteUIKeeping:(id)a3
{
  v4 = a3;
  if (!self->_cancelled)
  {
    v11 = v4;
    [(ICQCommerceRemoteUIDelegate *)self cleanupLoader];
    if (self->_pseudoModallyPresented)
    {
      navigationController = self->_navigationController;
    }

    else
    {
      if (v11 || !self->_modallyPresented)
      {
        [(NSMutableArray *)self->_objectModels removeAllObjects];
        v8 = self->_navigationController;
        topViewController = self->_topViewController;
        if (v11)
        {
          [(UINavigationController *)v8 removeViewControllersAfter:topViewController before:v11 animated:0];
        }

        else
        {
          v10 = [(UINavigationController *)v8 popToViewController:topViewController animated:1];
        }

        goto LABEL_8;
      }

      navigationController = self->_parentNavigationController;
    }

    [(UINavigationController *)navigationController dismissViewControllerAnimated:1 completion:0];
LABEL_8:
    v6 = self->_navigationController;
    self->_navigationController = 0;

    v7 = dispatch_time(0, 1000000000);
    dispatch_after(v7, MEMORY[0x277D85CD0], &__block_literal_global_207);
    self->_cancelled = 1;
    v4 = v11;
  }
}

void __53__ICQCommerceRemoteUIDelegate_cancelRemoteUIKeeping___block_invoke()
{
  v0 = +[ICQQuotaRequestManager sharedManager];
  [v0 noteQuotaInfoChanged];
}

- (void)makeBuyRequest:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Performing AMSPurchase request.", buf, 2u);
  }

  v6 = [(ICQCommerceRemoteUIDelegate *)self buyParameters];
  if (v6 && (v7 = [v4 length] == 0, v6, v7))
  {
    v8 = [(ICQCommerceRemoteUIDelegate *)self buyParameters];
    v26 = [v8 mutableCopy];

    [v26 objectForKeyedSubscript:{@"forRetailOffer", v26}];
  }

  else
  {
    v24 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:v4 unescapedValues:0];
    [v24 objectForKeyedSubscript:{@"forRetailOffer", v24}];
  }
  v9 = ;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 BOOLValue])
  {
    [(ICQCommerceRemoteUIDelegate *)self setForRetailOffer:1];
  }

  v10 = objc_alloc(MEMORY[0x277CEE650]);
  v11 = [MEMORY[0x277CEE3F8] quotaBag];
  v12 = [v10 initWithBag:v11];

  [v12 setDelegate:self];
  v13 = [objc_alloc(MEMORY[0x277CEE648]) initWithConfiguration:v12];
  v14 = objc_alloc(MEMORY[0x277CEE640]);
  v15 = [MEMORY[0x277CEE438] buyParamsWithString:v4];
  v16 = [v14 initWithPurchaseType:0 buyParams:v15];

  [v16 setUserInitiated:1];
  [v16 setAdditionalHeaders:&unk_28847A1A8];
  v31 = @"mtTopic";
  v32[0] = @"xp_its_main";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v16 setMetricsOverlay:v17];

  v18 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  if ([v18 ams_isActiveAccountCombined])
  {
    [v18 ams_activeiTunesAccount];
  }

  else
  {
    [v18 ams_activeiCloudAccount];
  }
  v19 = ;
  [v16 setAccount:v19];

  v20 = [MEMORY[0x277CEE620] currentProcess];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"CastleSettings/1.0"];
  [v20 setUserAgentSuffix:v21];

  [v16 setClientInfo:v20];
  v30 = v16;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
  v23 = [v13 enquePurchases:v22];

  objc_initWeak(buf, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke;
  v27[3] = &unk_27A65C790;
  objc_copyWeak(&v28, buf);
  [v23 addFinishBlock:v27];
  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

void __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke_cold_1(v4, v6);
  }

  if (WeakRetained)
  {
    if ([WeakRetained didUserDismissAMSFlow:v4])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke_218;
      v13[3] = &unk_27A65A820;
      v13[4] = WeakRetained;
      v7 = MEMORY[0x277D85CD0];
      v8 = v13;
    }

    else
    {
      if (v4)
      {
        v10 = [v4 userInfo];
        v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CEE198]];

        [WeakRetained userCompletedFlow:{objc_msgSend(v11, "integerValue")}];
      }

      else
      {
        [WeakRetained userCompletedFlow:0];
      }

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke_2;
      v12[3] = &unk_27A65A820;
      v12[4] = WeakRetained;
      v7 = MEMORY[0x277D85CD0];
      v8 = v12;
    }

    dispatch_async(v7, v8);
  }

  else
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke_cold_2();
    }
  }
}

void __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke_218(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 48) lastObject];
  [v1 stopNavigationBarSpinner];
}

void __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if ((*(v1 + 40) & 1) != 0 || *(v1 + 104) == 1)
    {
      [*(a1 + 32) cancelRemoteUIKeeping:0];
    }

    else
    {
      v3 = [*(v1 + 8) topViewController];
      [v1 cancelRemoteUIKeeping:v3];
    }

    v4 = [*(*(a1 + 32) + 48) lastObject];
    [v4 stopNavigationBarSpinner];
  }
}

- (BOOL)didUserDismissAMSFlow:(id)a3
{
  v3 = a3;
  if ([v3 code] != 100)
  {
    v8 = [v3 domain];
    if ([v8 isEqualToString:*MEMORY[0x277CEE188]])
    {
      v9 = [v3 code];

      if (v9 == 6)
      {
        v4 = ICQUSLogForCategory(0);
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_5;
        }

        v11 = 0;
        v5 = "User Cancelled Oslo sheet";
        v6 = &v11;
        goto LABEL_4;
      }
    }

    else
    {
    }

    v7 = 0;
    goto LABEL_12;
  }

  v4 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = "Authentication failed";
    v6 = buf;
LABEL_4:
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
  }

LABEL_5:

  v7 = 1;
LABEL_12:

  return v7;
}

- (void)processLink:(id)a3 forceAuth:(BOOL)a4 needsAuth:(BOOL)a5 localAuth:(BOOL)a6 usePurchaseToken:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a4;
  v86 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = [(NSOperationQueue *)self->_queue operationCount];
  v13 = _ICQGetLogSystem();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICQCommerceRemoteUIDelegate processLink:forceAuth:needsAuth:localAuth:usePurchaseToken:];
    }

    goto LABEL_39;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Performing legacy ISStoreURLOperation for quota purchase.", buf, 2u);
  }

  v78 = v9;

  v14 = objc_alloc_init(MEMORY[0x277D7FD48]);
  v15 = +[(ISDataProvider *)ICQCommerceRemoteUIDataProvider];
  [v15 setParent:self];
  [v14 setDataProvider:v15];
  v16 = [MEMORY[0x277CEC748] sharedManager];
  v17 = [v16 primaryAccount];

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ISAlwaysSendGuid", @"com.apple.itunesstored", 0);
  v19 = [v11 URLBagKey];
  if (v19)
  {

    goto LABEL_8;
  }

  v74 = AppBooleanValue;
  v53 = [v11 URL];
  v54 = [v53 scheme];
  [v54 lowercaseString];
  v55 = v14;
  v56 = v8;
  v57 = v7;
  v58 = v17;
  v60 = v59 = v15;
  v76 = [v60 isEqualToString:@"https"];

  v15 = v59;
  v17 = v58;
  v7 = v57;
  v8 = v56;
  v14 = v55;

  if ((v76 & 1) != 0 || v74)
  {
LABEL_8:
    v20 = [MEMORY[0x277D69BC8] contextForSignIn];
    v21 = [v17 username];
    [v20 setAccountName:v21];

    v22 = MEMORY[0x277CCABB0];
    v23 = [v17 personID];
    v24 = [v22 numberWithUnsignedLongLong:{objc_msgSend(v23, "longLongValue")}];
    [v20 setRequiredUniqueIdentifier:v24];

    [v20 setAccountNameEditable:0];
    [v20 setShouldFollowAccountButtons:1];
    if (v78)
    {
      [v20 setPromptStyle:1];
    }

    else if (!v8)
    {
      goto LABEL_12;
    }

    [v14 setNeedsAuthentication:1];
LABEL_12:
    [v14 setAuthenticationContext:v20];
    v77 = v17;
    if (v7 && ([(ICQCommerceRemoteUIDelegate *)self purchaseToken], v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
    {
      v26 = [MEMORY[0x277CEC7B8] currentInfo];
      v27 = [v26 clientInfoHeader];

      if (v27)
      {
        [v11 setValue:v27 forHTTPHeaderField:@"X-MMe-Client-Info"];
      }

      v73 = v27;
      v75 = v20;
      v79 = v15;
      v28 = [v17 account];
      v29 = [v28 aa_altDSID];

      if (v29)
      {
        [v11 setValue:v29 forHTTPHeaderField:@"X-Apple-ADSID"];
      }

      v72 = v29;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v30 = [(ICQCommerceRemoteUIDelegate *)self requestHeaders];
      v31 = [v30 countByEnumeratingWithState:&v80 objects:v85 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v81;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v81 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v80 + 1) + 8 * i);
            v36 = [(ICQCommerceRemoteUIDelegate *)self requestHeaders];
            v37 = [v36 objectForKeyedSubscript:v35];

            [v11 setValue:v37 forHTTPHeaderField:v35];
          }

          v32 = [v30 countByEnumeratingWithState:&v80 objects:v85 count:16];
        }

        while (v32);
      }

      v38 = MGCopyAnswer();
      [v11 setValue:v38 forHTTPHeaderField:@"X-Mme-Device-Id"];
      v39 = [MEMORY[0x277CBEBB0] systemTimeZone];
      v40 = [v39 abbreviation];
      [v11 setValue:v40 forHTTPHeaderField:@"X-MMe-Timezone"];

      v41 = [MEMORY[0x277CBEAF8] currentLocale];
      v42 = [v41 objectForKey:*MEMORY[0x277CBE690]];
      v43 = [v42 uppercaseString];
      [v11 setValue:v43 forHTTPHeaderField:@"X-MMe-Country"];

      v44 = v72;
      if (v72)
      {
        v45 = v72;
      }

      else
      {
        v45 = [v77 personID];
      }

      v61 = v45;
      v20 = v75;
      v62 = MEMORY[0x277CCACA8];
      v63 = [(ICQCommerceRemoteUIDelegate *)self purchaseToken];
      v64 = [v62 stringWithFormat:@"%@:%@", v61, v63];

      v65 = [v64 dataUsingEncoding:4];
      v66 = [v65 base64EncodedStringWithOptions:0];
      if (v66)
      {
        [v11 setValue:v66 forHTTPHeaderField:@"X-Apple-GS-Token"];
      }

      v15 = v79;
      v50 = v73;
    }

    else
    {
      v46 = MEMORY[0x277CCACA8];
      v47 = [v17 personID];
      v48 = [v17 authToken];
      v49 = [v46 stringWithFormat:@"%@:%@", v47, v48];

      v50 = v49;
      v51 = [v49 dataUsingEncoding:4];
      v52 = [v51 base64EncodedStringWithOptions:0];

      v44 = v52;
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v52];
      [v11 setValue:v38 forHTTPHeaderField:@"Authorization"];
    }

    v67 = [MEMORY[0x277D7FCE0] sharedInstance];
    v68 = [v67 guid];
    [v11 setValue:v68 forRequestParameter:@"guid"];

    v17 = v77;
  }

  v69 = [MEMORY[0x277CBEA60] arrayWithObject:@"CastleSettings/1.0"];
  [v11 setUserAgentComponents:v69];

  [v14 setRequestProperties:v11];
  [v14 setDelegate:self];
  if (!self->_registeredDialogNotification)
  {
    v70 = [MEMORY[0x277CCAB98] defaultCenter];
    [v70 addObserver:self selector:sel_handleDialog_ name:*MEMORY[0x277D7FCB0] object:0];

    self->_registeredDialogNotification = 1;
  }

  v71 = [MEMORY[0x277D75128] sharedApplication];
  [v71 setNetworkActivityIndicatorVisible:1];

  [(NSOperationQueue *)self->_queue addOperation:v14];
LABEL_39:
}

- (id)parentViewControllerForObjectModel:(id)a3
{
  v4 = a3;
  navigationController = self->_navigationController;
  if (!navigationController)
  {
    [ICQCommerceRemoteUIDelegate parentViewControllerForObjectModel:];
  }

  v6 = v4;
  v7 = navigationController;

  return navigationController;
}

- (void)_popObjectModelAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(NSMutableArray *)self->_objectModels count])
  {
    [ICQCommerceRemoteUIDelegate _popObjectModelAnimated:];
  }

  v5 = [(NSMutableArray *)self->_objectModels lastObject];
  v12 = [v5 defaultPages];

  [(NSMutableArray *)self->_objectModels removeLastObject];
  v6 = [v12 count] - 1;
  if (v6 >= 0)
  {
    do
    {
      v7 = [v12 objectAtIndex:v6];
      v8 = [(UINavigationController *)self->_navigationController topViewController];

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

        v10 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:v9];
      }
    }

    while (v6-- > 0);
  }
}

- (void)objectModelPressedBack:(id)a3
{
  v9 = a3;
  v4 = [(UINavigationController *)self->_navigationController topViewController];
  v5 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
    if (v6)
    {
      v7 = [v9 defaultPages];
      v8 = [v7 containsObject:v6];

      if (v8)
      {
        [(NSMutableArray *)self->_objectModels removeLastObject];
      }
    }
  }

  else
  {
    v6 = 0;
  }
}

- (void)objectModel:(id)a3 pressedButton:(id)a4 attributes:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 objectForKeyedSubscript:@"ams_followup"];
  if ([v10 isEqualToString:@"clear"])
  {
    [(ICQCommerceRemoteUIDelegate *)self _clearRetailFollowUpItem];
  }

  if ([v8 isEqualToString:@"cancel"])
  {
    [(ICQCommerceRemoteUIDelegate *)self cancelFlowBecause:@"cancel button pressed in RUI object model"];
    [(ICQCommerceRemoteUIDelegate *)self cancelRemoteUI];
  }

  else if ([v8 isEqualToString:@"buy"])
  {
    v11 = [v20 defaultPages];
    v12 = [v11 lastObject];
    v13 = [v12 navTitle];

    [v20 startNavigationBarSpinnerWithTitle:v13];
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v15 = [v20 defaultPages];
    v16 = [v15 lastObject];
    [v16 populatePostbackDictionary:v14];

    v17 = [v14 objectForKey:@"quota"];
    if (!v17)
    {
      v18 = [v9 objectForKeyedSubscript:@"id"];
      v19 = [v18 isEqualToString:@"quota"];

      if (v19)
      {
        v17 = [v9 objectForKeyedSubscript:@"value"];
      }

      else
      {
        v17 = 0;
      }
    }

    [(ICQCommerceRemoteUIDelegate *)self makeBuyRequest:v17];
  }

  else if ([v8 isEqualToString:@"pop"])
  {
    [(ICQCommerceRemoteUIDelegate *)self _popObjectModelAnimated:1];
  }
}

- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  if (![(ICQCommerceRemoteUIDelegate *)self _loadNativeURL:v8])
  {
    v10 = [v9 lowercaseString];
    v11 = [v10 isEqualToString:@"post"];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEB38] dictionary];
      v13 = [v19 defaultPages];
      v14 = [v13 lastObject];
      [v14 populatePostbackDictionary:v12];

      v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:v12 format:100 options:0 error:0];
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:v8];
    [v16 setHTTPMethod:v9];
    if (v15)
    {
      [v16 setHTTPBody:v15];
      [v16 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    }

    v17 = [v8 scheme];
    v18 = [v17 lowercaseString];
    -[ICQCommerceRemoteUIDelegate processLink:forceAuth:needsAuth:](self, "processLink:forceAuth:needsAuth:", v16, 0, [v18 isEqualToString:@"https"]);
  }
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

- (void)accountPageViewControllerDidFinish:(id)a3
{
  v4 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "accountPageViewController finished", v5, 2u);
  }

  [(ICQCommerceRemoteUIDelegate *)self cancelFlowBecause:@"account page view controller did finish"];
  [(ICQCommerceRemoteUIDelegate *)self cancelRemoteUI];
}

- (void)accountPageViewController:(id)a3 financeInterruptionResolved:(BOOL)a4
{
  v4 = a4;
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_accountPageViewController != v6)
  {
    [ICQCommerceRemoteUIDelegate accountPageViewController:financeInterruptionResolved:];
  }

  v7 = v6;
  v8 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v4)
    {
      v9 = @"YES";
    }

    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "accountPageViewController finance interruption resolved: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__ICQCommerceRemoteUIDelegate_accountPageViewController_financeInterruptionResolved___block_invoke;
  block[3] = &unk_27A65A7D0;
  block[4] = self;
  v12 = v7;
  v13 = v4;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __85__ICQCommerceRemoteUIDelegate_accountPageViewController_financeInterruptionResolved___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _popAccountPageViewController:*(a1 + 40) keepCommerceSpinner:*(a1 + 48)];
  if (*(a1 + 48) == 1)
  {
    v2 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "retry the buy after fixing payment method", v5, 2u);
    }

    return [*(a1 + 32) makeBuyRequest:&stru_28844FC60];
  }

  else
  {
    [*(a1 + 32) cancelFlowBecause:@"payment method not established"];
    v4 = *(a1 + 32);

    return [v4 cancelRemoteUI];
  }
}

- (void)_dismissAccountPageViewController:(id)a3 keepCommerceSpinner:(BOOL)a4
{
  v6 = a3;
  if (self->_accountPageViewController != v6)
  {
    [ICQCommerceRemoteUIDelegate _dismissAccountPageViewController:keepCommerceSpinner:];
  }

  v7 = v6;
  v8 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "dismiss accountPageViewController", buf, 2u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__ICQCommerceRemoteUIDelegate__dismissAccountPageViewController_keepCommerceSpinner___block_invoke;
  v10[3] = &unk_27A65A7D0;
  v12 = a4;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [(SKAccountPageViewController *)v9 dismissViewControllerAnimated:1 completion:v10];
}

uint64_t __85__ICQCommerceRemoteUIDelegate__dismissAccountPageViewController_keepCommerceSpinner___block_invoke(uint64_t a1)
{
  v2 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "accountPageViewController dismissed", v4, 2u);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    [*(a1 + 32) _popCommerceSpinnerIfNeeded];
  }

  return [*(a1 + 32) _forgetAccountPageViewController:*(a1 + 40)];
}

- (void)_popAccountPageViewController:(id)a3 keepCommerceSpinner:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_accountPageViewController != v6)
  {
    [ICQCommerceRemoteUIDelegate _popAccountPageViewController:keepCommerceSpinner:];
  }

  v7 = v6;
  v8 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (v4)
    {
      v9 = @"YES";
    }

    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "pop accountPageViewController; keepCommerceSpinner: %@", &v18, 0xCu);
  }

  v10 = [(UINavigationController *)self->_navigationController topViewController];
  if (v10 == v7)
  {
LABEL_12:
    v15 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "popping accountPageViewController", &v18, 2u);
    }

    v16 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:v4];
  }

  else
  {
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      topViewController = self->_topViewController;
      v12 = ICQUSLogForCategory(0);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v10 == topViewController)
      {
        if (v13)
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "popped to initial view controller; not popping further", &v18, 2u);
        }

        goto LABEL_21;
      }

      if (v13)
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "popping unknown VC; assuming it's after the accountPageViewController", &v18, 2u);
      }

      v14 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:0];
      v10 = [(UINavigationController *)self->_navigationController topViewController];
      if (v10 == v7)
      {
        goto LABEL_12;
      }
    }

    v17 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "at CommerceSpinner", &v18, 2u);
    }
  }

LABEL_21:

  if (!v4)
  {
    [(ICQCommerceRemoteUIDelegate *)self _popCommerceSpinnerIfNeeded];
  }

  [(ICQCommerceRemoteUIDelegate *)self _forgetAccountPageViewController:v7];
}

- (void)_forgetAccountPageViewController:(id)a3
{
  v4 = a3;
  accountPageViewController = self->_accountPageViewController;
  if (accountPageViewController != v4)
  {
    [ICQCommerceRemoteUIDelegate _forgetAccountPageViewController:];
  }

  v7 = v4;
  [(SKAccountPageViewController *)accountPageViewController setDelegate:0];
  v6 = self->_accountPageViewController;
  self->_accountPageViewController = 0;
}

- (BOOL)_shouldSuppressDialog:(id)a3 failureType:(int64_t)a4
{
  result = [(ICQCommerceRemoteUIDelegate *)self skipCompletionAlert];
  if ((a4 - 3067) >= 2)
  {
    return 0;
  }

  return result;
}

- (void)handleDialog:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 object];
    *buf = 138412290;
    v11 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Dialog notification arrived... %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ICQCommerceRemoteUIDelegate_handleDialog___block_invoke;
  v8[3] = &unk_27A65A708;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __44__ICQCommerceRemoteUIDelegate_handleDialog___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__ICQCommerceRemoteUIDelegate_handleDialog___block_invoke_2;
  v2[3] = &unk_27A65A708;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 _dismissAlertsWithCompletion:v2];
}

void __44__ICQCommerceRemoteUIDelegate_handleDialog___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _shouldSuppressDialog:*(*(a1 + 32) + 64) failureType:{objc_msgSend(*(a1 + 32), "failureType")}])
  {
    v2 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) failureType];
      v4 = [*(*(a1 + 32) + 64) title];
      v5 = [*(*(a1 + 32) + 64) message];
      v15 = 134218498;
      v16 = v3;
      v17 = 2114;
      v18 = v4;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "suppressing dialog of failureType:%lld, title:%{public}@, message:%{public}@", &v15, 0x20u);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 64);
    *(v6 + 64) = 0;
  }

  else
  {
    v8 = [*(a1 + 40) object];
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;

    v11 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) failureType];
      v13 = [*(*(a1 + 32) + 64) title];
      v14 = [*(*(a1 + 32) + 64) message];
      v15 = 134218498;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Presenting dialog of failureType:%lld, title:%{public}@, message:%{public}@", &v15, 0x20u);
    }

    [*(a1 + 32) _presentAlertWithDialog:*(*(a1 + 32) + 64)];
  }
}

- (void)_dismissAlertsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  alertController = self->_alertController;
  if (alertController)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__ICQCommerceRemoteUIDelegate__dismissAlertsWithCompletion___block_invoke;
    v7[3] = &unk_27A65AF58;
    v7[4] = self;
    v8 = v4;
    [(UIAlertController *)alertController dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    v4[2](v4);
  }
}

uint64_t __60__ICQCommerceRemoteUIDelegate__dismissAlertsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  *(v2 + 64) = 0;

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)_presentAlertWithDialog:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D75110];
  v6 = [v4 title];
  v7 = [v4 message];
  v8 = [v5 alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v8;

  v10 = [v4 buttons];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __55__ICQCommerceRemoteUIDelegate__presentAlertWithDialog___block_invoke;
  v16 = &unk_27A65C7E0;
  v17 = self;
  v18 = v4;
  v11 = v4;
  [v10 enumerateObjectsUsingBlock:&v13];

  v12 = [(ICQCommerceRemoteUIDelegate *)self presentationContext:v13];
  [v12 presentViewController:self->_alertController animated:1 completion:0];
}

void __55__ICQCommerceRemoteUIDelegate__presentAlertWithDialog___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 80);
  v6 = MEMORY[0x277D750F8];
  v7 = [a2 title];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__ICQCommerceRemoteUIDelegate__presentAlertWithDialog___block_invoke_2;
  v10[3] = &unk_27A65C7B8;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v8;
  v12 = a3;
  v9 = [v6 actionWithTitle:v7 style:0 handler:v10];
  [v5 addAction:v9];
}

void __55__ICQCommerceRemoteUIDelegate__presentAlertWithDialog___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _handleResponseForDialog:*(a1 + 40) atIndex:*(a1 + 48)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;

  v5 = *(*(a1 + 32) + 88);
  if (v5)
  {
    if ((v2 & 1) == 0)
    {
      v6 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "need to wait for async response", v9, 2u);
      }

      *(*(a1 + 32) + 110) = 1;
      v5 = *(*(a1 + 32) + 88);
    }

    (*(v5 + 16))();
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = 0;
  }
}

- (id)presentationContext
{
  v11 = *MEMORY[0x277D85DE8];
  navigationController = self->_navigationController;
  if (!navigationController)
  {
    navigationController = self->_parentNavigationController;
  }

  v3 = navigationController;
  v4 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(UINavigationController *)v3 presentedViewController];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Presenting alert on controller: %@ - %@", &v7, 0x16u);
  }

  return v3;
}

- (BOOL)_handleResponseForDialog:(id)a3 atIndex:(int64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 buttons];
  if ([v7 count] > a4)
  {
    v8 = [v7 objectAtIndex:a4];
    v9 = [v8 actionType];
    if (v9 > 3)
    {
      if (v9 == 4)
      {
        v19 = [v8 parameter];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [MEMORY[0x277CBEBC0] URLWithString:v19];

          v19 = v20;
        }

        if ([v19 isSafeExternalURL])
        {
          v21 = [MEMORY[0x277D75128] sharedApplication];
          [v21 openURL:v19 options:MEMORY[0x277CBEC10] completionHandler:0];
        }
      }

      else
      {
        if (v9 == 5)
        {
          [(ICQCommerceRemoteUIDelegate *)self cancelFlowBecause:@"dialog button pressed with action GoBack"];
        }

        else
        {
          if (v9 != 11)
          {
            goto LABEL_21;
          }

          [v8 performDefaultActionForDialog:v6];
        }

        [(ICQCommerceRemoteUIDelegate *)self cancelRemoteUI];
      }
    }

    else
    {
      if (v9 == 1)
      {
        v10 = [v8 parameter];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x277CBEBC0] URLWithString:v10];

          v10 = v12;
        }

        v13 = [v10 schemeSwizzledURL];
        [v8 urlType];
        v14 = objc_alloc(MEMORY[0x277D69BD0]);
        v15 = [MEMORY[0x277CCAD20] requestWithURL:v13];
        v16 = [v14 initWithURLRequest:v15];

        v17 = [v13 scheme];
        v18 = [v17 lowercaseString];
        -[ICQCommerceRemoteUIDelegate processLink:forceAuth:needsAuth:](self, "processLink:forceAuth:needsAuth:", v16, 0, [v18 isEqualToString:@"https"]);

        goto LABEL_15;
      }

      if (v9 != 2)
      {
        if (v9 == 3)
        {
          v10 = [v8 parameter];
          [(ICQCommerceRemoteUIDelegate *)self makeBuyRequest:v10];
LABEL_15:

          v11 = 0;
LABEL_32:

          goto LABEL_33;
        }

LABEL_21:
        [(ICQCommerceRemoteUIDelegate *)self _popCommerceSpinnerIfNeeded];
        v11 = 1;
        [(ICQCommerceRemoteUIDelegate *)self setDidJustCancelDialog:1];
        goto LABEL_32;
      }

      v22 = [v8 parameter];
      v23 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v22;
        _os_log_impl(&dword_275623000, v23, OS_LOG_TYPE_DEFAULT, "GotoFinance %@", buf, 0xCu);
      }

      if (self->_accountPageViewController)
      {
        v24 = ICQUSLogForCategory(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [ICQCommerceRemoteUIDelegate _handleResponseForDialog:atIndex:];
        }
      }

      v25 = [objc_alloc(MEMORY[0x277CDD340]) initWithAccountURL:v22];
      accountPageViewController = self->_accountPageViewController;
      self->_accountPageViewController = v25;

      [(SKAccountPageViewController *)self->_accountPageViewController setDelegate:self];
      v27 = self->_accountPageViewController;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __64__ICQCommerceRemoteUIDelegate__handleResponseForDialog_atIndex___block_invoke;
      v29[3] = &unk_27A65A820;
      v29[4] = self;
      [(SKAccountPageViewController *)v27 loadWithCompletionBlock:v29];
    }

    v11 = 1;
    goto LABEL_32;
  }

  v11 = 1;
LABEL_33:

  return v11;
}

uint64_t __64__ICQCommerceRemoteUIDelegate__handleResponseForDialog_atIndex___block_invoke(uint64_t a1)
{
  v2 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "accountPageViewController completed loading; pushing with loaded HTML content", v4, 2u);
  }

  return [*(*(a1 + 32) + 8) pushViewController:*(*(a1 + 32) + 32) animated:1];
}

- (ICQCommerceRemoteUIDelegate)initWithNavigationController:(id)a3 needsModalPresentation:(BOOL)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = ICQCommerceRemoteUIDelegate;
  v7 = [(ICQCommerceRemoteUIDelegate *)&v20 init];
  v8 = v7;
  if (v7)
  {
    if (!v6)
    {
      [ICQCommerceRemoteUIDelegate initWithNavigationController:needsModalPresentation:];
    }

    v7->_modallyPresented = a4;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objectModels = v8->_objectModels;
    v8->_objectModels = v9;

    modallyPresented = v8->_modallyPresented;
    v12 = v6;
    v13 = v12;
    if (modallyPresented)
    {
      v14 = 16;
    }

    else
    {
      navigationController = v8->_navigationController;
      v8->_navigationController = v12;

      v13 = [v13 topViewController];
      v14 = 24;
    }

    v16 = *(&v8->super.isa + v14);
    *(&v8->super.isa + v14) = v13;

    v17 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v8->_queue;
    v8->_queue = v17;
  }

  return v8;
}

- (void)dealloc
{
  [(ICQCommerceRemoteUIDelegate *)self cleanupLoader];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D6A6E0], 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x277D6A6D8], 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, *MEMORY[0x277D6A6D0], 0);
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x277D7FCB0] object:0];

  v7.receiver = self;
  v7.super_class = ICQCommerceRemoteUIDelegate;
  [(ICQCommerceRemoteUIDelegate *)&v7 dealloc];
}

- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "We were asked to authenticate.  Attempting silent authentication.", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__ICQCommerceRemoteUIDelegate_handleAuthenticateRequest_purchase_purchaseQueue_completion___block_invoke;
  block[3] = &unk_27A65B060;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __91__ICQCommerceRemoteUIDelegate_handleAuthenticateRequest_purchase_purchaseQueue_completion___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x277CEE878]);
  v3 = [a1[4] account];
  v4 = [a1[5] presentationContext];
  v5 = [a1[4] options];
  v6 = [v2 initWithAccount:v3 presentingViewController:v4 options:v5];

  v7 = [v6 performAuthentication];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__ICQCommerceRemoteUIDelegate_handleAuthenticateRequest_purchase_purchaseQueue_completion___block_invoke_2;
  v8[3] = &unk_27A65B038;
  v9 = a1[6];
  [v7 addFinishBlock:v8];
}

void __91__ICQCommerceRemoteUIDelegate_handleAuthenticateRequest_purchase_purchaseQueue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = ICQUSLogForCategory(0);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__ICQUIOSLOPresenter_handleAuthenticateRequest_purchase_completion___block_invoke_2_cold_1(v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Successfully finished silent authentication.", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleDialogRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "We were asked to handle a dialog request", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__ICQCommerceRemoteUIDelegate_handleDialogRequest_purchase_purchaseQueue_completion___block_invoke;
  block[3] = &unk_27A65B060;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __85__ICQCommerceRemoteUIDelegate_handleDialogRequest_purchase_purchaseQueue_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEE868]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) presentationContext];
  v6 = [v2 initWithRequest:v3 presentingViewController:v4];

  v5 = [v6 present];
  [v5 addFinishBlock:*(a1 + 48)];
}

- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 purchaseQueue:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "We were asked to handle an engagement request", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ICQCommerceRemoteUIDelegate_handleEngagementRequest_purchase_purchaseQueue_completion___block_invoke;
  block[3] = &unk_27A65B060;
  v14 = v8;
  v15 = self;
  v16 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __89__ICQCommerceRemoteUIDelegate_handleEngagementRequest_purchase_purchaseQueue_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CEE8D8]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CEE3F8] quotaBag];
  v5 = [*(a1 + 40) presentationContext];
  v7 = [v2 initWithRequest:v3 bag:v4 presentingViewController:v5];

  v6 = [v7 presentEngagement];
  [v6 addFinishBlock:*(a1 + 48)];
}

- (ICQCommerceRemoteUIDelegateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __46__ICQCommerceRemoteUIDelegate_makeBuyRequest___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "AMS Purchase completed with error %@", &v2, 0xCu);
}

@end
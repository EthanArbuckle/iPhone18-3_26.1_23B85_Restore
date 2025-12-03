@interface ICQCommerceRemoteUIDelegate
- (BOOL)_handleResponseForDialog:(id)dialog atIndex:(int64_t)index;
- (BOOL)_hasUnfinishedOperations;
- (BOOL)_isPurchaseTokenOperation:(id)operation;
- (BOOL)_loadNativeURL:(id)l;
- (BOOL)_shouldSuppressDialog:(id)dialog failureType:(int64_t)type;
- (BOOL)didUserDismissAMSFlow:(id)flow;
- (ICQCommerceRemoteUIDelegate)initWithNavigationController:(id)controller needsModalPresentation:(BOOL)presentation;
- (ICQCommerceRemoteUIDelegateDelegate)delegate;
- (id)parentViewControllerForObjectModel:(id)model;
- (id)presentationContext;
- (int64_t)_statusCodeForFinishedOperation:(id)operation;
- (void)_clearRetailFollowUpItem;
- (void)_dismissAccountPageViewController:(id)controller keepCommerceSpinner:(BOOL)spinner;
- (void)_dismissAlertsWithCompletion:(id)completion;
- (void)_forgetAccountPageViewController:(id)controller;
- (void)_handleFinishForOperation:(id)operation withOutput:(id)output;
- (void)_handleOperationError:(id)error;
- (void)_popAccountPageViewController:(id)controller keepCommerceSpinner:(BOOL)spinner;
- (void)_popCommerceSpinnerIfNeeded;
- (void)_popObjectModelAnimated:(BOOL)animated;
- (void)_presentAlertWithDialog:(id)dialog;
- (void)accountPageViewController:(id)controller financeInterruptionResolved:(BOOL)resolved;
- (void)accountPageViewControllerDidFinish:(id)finish;
- (void)cancelFlowBecause:(id)because;
- (void)cancelRemoteUIKeeping:(id)keeping;
- (void)cleanupLoader;
- (void)dealloc;
- (void)errorWithTitle:(id)title andExplanation:(id)explanation dismissedCompletion:(id)completion;
- (void)handleAuthenticateRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
- (void)handleDialog:(id)dialog;
- (void)handleDialogRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
- (void)handleEngagementRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion;
- (void)loadURLforKey:(id)key;
- (void)makeBuyRequest:(id)request;
- (void)makeBuyRequest:(id)request forceAuth:(BOOL)auth usePurchaseToken:(BOOL)token;
- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method;
- (void)objectModelPressedBack:(id)back;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)processLink:(id)link forceAuth:(BOOL)auth needsAuth:(BOOL)needsAuth localAuth:(BOOL)localAuth usePurchaseToken:(BOOL)token;
- (void)purchaseWithToken:(id)token buyParameters:(id)parameters requestHeaders:(id)headers;
- (void)pushSpinner;
- (void)retryPurchaseWithoutToken;
- (void)unregisterAuthNotification;
- (void)userCompletedFlow:(int64_t)flow;
@end

@implementation ICQCommerceRemoteUIDelegate

- (BOOL)_isPurchaseTokenOperation:(id)operation
{
  requestProperties = [operation requestProperties];
  hTTPHeaders = [requestProperties HTTPHeaders];
  v5 = [hTTPHeaders objectForKeyedSubscript:@"X-Apple-GS-Token"];
  v6 = v5 != 0;

  return v6;
}

- (int64_t)_statusCodeForFinishedOperation:(id)operation
{
  response = [operation response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    statusCode = [response statusCode];
  }

  else
  {
    statusCode = 0;
  }

  return statusCode;
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  operationCopy = operation;
  outputCopy = output;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ICQCommerceRemoteUIDelegate_operation_finishedWithOutput___block_invoke;
  block[3] = &unk_27A65B108;
  block[4] = self;
  v11 = operationCopy;
  v12 = outputCopy;
  v8 = outputCopy;
  v9 = operationCopy;
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

- (void)_handleFinishForOperation:(id)operation withOutput:(id)output
{
  v69 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  outputCopy = output;
  objc_storeStrong(&self->_finishingOperation, operation);
  dataProvider = [operationCopy dataProvider];
  if ([(ICQCommerceRemoteUIDelegate *)self skipGoBack])
  {
    v10 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "async operation in flight -- skipGoBack set", buf, 2u);
    }
  }

  skipGoBack = [(ICQCommerceRemoteUIDelegate *)self skipGoBack];
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

  didJustCancelDialog = [(ICQCommerceRemoteUIDelegate *)self didJustCancelDialog];
  [(ICQCommerceRemoteUIDelegate *)self setDidJustCancelDialog:0];
  if (([dataProvider isPlist] & 1) == 0)
  {
    v19 = [objc_alloc(MEMORY[0x277D461F8]) initWithXML:outputCopy];
    if (PSIsInternalInstall() && CFPreferencesGetAppBooleanValue(@"loggingEnabled", @"com.apple.RemoteUI", 0))
    {
      v22 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:outputCopy encoding:4];
        *buf = 138412290;
        v68 = v23;
        _os_log_impl(&dword_275623000, v22, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }

    if (([v19 succeeded] & 1) == 0)
    {
      uiObjectModel = ISError();
      [(ICQCommerceRemoteUIDelegate *)self _handleOperationError:uiObjectModel];
LABEL_99:

      goto LABEL_100;
    }

    uiObjectModel = [v19 uiObjectModel];
    actionSignal = [v19 actionSignal];
    [uiObjectModel setDelegate:self];
    if (!-[NSMutableArray count](self->_objectModels, "count") && [actionSignal topSignal] == 3)
    {
      [actionSignal setTopSignal:2];
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

    if (![actionSignal topSignal])
    {
      [actionSignal setTopSignal:2];
    }

    v64 = dataProvider;
    if ([actionSignal topSignal] == 2)
    {
      [(NSMutableArray *)self->_objectModels addObject:uiObjectModel];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v30 = objc_opt_respondsToSelector();

      if (v30)
      {
        defaultPages = [uiObjectModel defaultPages];
        firstObject = [defaultPages firstObject];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [ICQCommerceRemoteUIDelegate _handleFinishForOperation:withOutput:];
        }

        if (firstObject)
        {
          v33 = objc_loadWeakRetained(&self->_delegate);
          [v33 commerceDelegate:self willPresentObjectModel:uiObjectModel page:firstObject];
        }
      }

      v34 = navigationController;
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      topViewController = [(UINavigationController *)self->_navigationController topViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [bundleIdentifier isEqualToString:@"com.apple.Preferences"];

        if (v38)
        {
          self->_pseudoModallyPresented = 1;
          v39 = self->_navigationController;
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __68__ICQCommerceRemoteUIDelegate__handleFinishForOperation_withOutput___block_invoke;
          v66[3] = &unk_27A65A820;
          v66[4] = self;
          [uiObjectModel presentInParentViewController:v39 animated:0 completion:v66];

          goto LABEL_74;
        }
      }

      else
      {
      }

      [uiObjectModel presentInParentViewController:self->_navigationController animated:v34 != 0];
    }

    else
    {
      if ([actionSignal topSignal] != 3)
      {
        if ([actionSignal topSignal] == 4)
        {
          defaultPages2 = [uiObjectModel defaultPages];
          v48 = [defaultPages2 count];

          if (v48)
          {
            if ([(NSMutableArray *)self->_objectModels count]> 1)
            {
              [(NSMutableArray *)self->_objectModels removeLastObject];
              [(NSMutableArray *)self->_objectModels removeLastObject];
              viewControllers = [(UINavigationController *)self->_navigationController viewControllers];
              v51 = [viewControllers mutableCopy];

              [v51 removeLastObject];
              [v51 removeLastObject];
              [(NSMutableArray *)self->_objectModels addObject:uiObjectModel];
              defaultPages3 = [uiObjectModel defaultPages];
              [defaultPages3 lastObject];
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

              dataProvider = v64;
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

      viewControllers2 = [(UINavigationController *)self->_navigationController viewControllers];
      bundleIdentifier = [viewControllers2 mutableCopy];

      [(NSMutableArray *)self->_objectModels removeLastObject];
      [bundleIdentifier removeLastObject];
      defaultPages4 = [uiObjectModel defaultPages];
      [defaultPages4 lastObject];
      v42 = v34 = navigationController;
      [bundleIdentifier addObject:v42];

      [(NSMutableArray *)self->_objectModels addObject:uiObjectModel];
      [(UINavigationController *)self->_navigationController setViewControllers:bundleIdentifier animated:0];
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
      v68 = outputCopy;
      _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Store operation completed with response %@", buf, 0xCu);
    }

    v15 = [(ICQCommerceRemoteUIDelegate *)self _isPurchaseTokenOperation:operationCopy];
    if (v15)
    {
      v16 = [(ICQCommerceRemoteUIDelegate *)self _statusCodeForFinishedOperation:operationCopy];
      v17 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
        *buf = 138412290;
        v68 = v18;
        _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "Purchase token operation status code: %@", buf, 0xCu);
      }
    }

    v19 = [outputCopy objectForKeyedSubscript:@"failureType"];
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

    v43 = [outputCopy objectForKey:@"dialog"];

    if (!v43)
    {
      v44 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v44, OS_LOG_TYPE_DEFAULT, "no dialog; checking for message", buf, 2u);
      }

      v45 = [outputCopy objectForKey:@"customerMessage"];
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
      uiObjectModel = [(UINavigationController *)self->_navigationController topViewController];
      [(ICQCommerceRemoteUIDelegate *)self cancelRemoteUIKeeping:uiObjectModel];
      goto LABEL_99;
    }

    if (skipGoBack)
    {
LABEL_100:

      goto LABEL_101;
    }

    v56 = [outputCopy objectForKey:@"action"];
    uiObjectModel = v56;
    if (v56)
    {
      v57 = [v56 objectForKey:@"kind"];
      v58 = [v57 isEqualToString:@"GoBack"];

      if (v58)
      {
        v59 = @"server provided action GoBack";
        if (!didJustCancelDialog)
        {
          goto LABEL_98;
        }

        v60 = 1;
LABEL_95:
        topViewController2 = [(UINavigationController *)self->_navigationController topViewController];
        topViewController = self->_topViewController;

        if (topViewController2 == topViewController)
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

      if (!didJustCancelDialog)
      {
        goto LABEL_99;
      }
    }

    else if (!didJustCancelDialog)
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

- (void)operation:(id)operation failedWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ICQCommerceRemoteUIDelegate_operation_failedWithError___block_invoke;
  v7[3] = &unk_27A65A708;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
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

- (void)_handleOperationError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 commerceDelegate:self loadDidFailWithError:errorCopy];
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setNetworkActivityIndicatorVisible:0];

  if ([errorCopy code] == 16 || objc_msgSend(errorCopy, "code") == 4)
  {
    topViewController = [(UINavigationController *)self->_navigationController topViewController];
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
        table = [topViewController table];
        indexPathForSelectedRow = [table indexPathForSelectedRow];
        [table deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          tableViewOM = [topViewController tableViewOM];
          tableView = [tableViewOM tableView];

          indexPathForSelectedRow2 = [tableView indexPathForSelectedRow];
          [tableView deselectRowAtIndexPath:indexPathForSelectedRow2 animated:1];
        }
      }
    }
  }

  else
  {
    localizedDescription = [errorCopy localizedDescription];
    localizedFailureReason = [errorCopy localizedFailureReason];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__ICQCommerceRemoteUIDelegate__handleOperationError___block_invoke;
    v18[3] = &unk_27A65A708;
    v18[4] = self;
    v19 = errorCopy;
    [(ICQCommerceRemoteUIDelegate *)self errorWithTitle:localizedDescription andExplanation:localizedFailureReason dismissedCompletion:v18];
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

- (void)errorWithTitle:(id)title andExplanation:(id)explanation dismissedCompletion:(id)completion
{
  titleCopy = title;
  explanationCopy = explanation;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__ICQCommerceRemoteUIDelegate_errorWithTitle_andExplanation_dismissedCompletion___block_invoke;
  v14[3] = &unk_27A65C768;
  v15 = titleCopy;
  v16 = explanationCopy;
  selfCopy = self;
  v18 = completionCopy;
  v11 = completionCopy;
  v12 = explanationCopy;
  v13 = titleCopy;
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
  operations = [(NSOperationQueue *)self->_queue operations];
  v6 = ([operations count] != 1 || (objc_msgSend(operations, "firstObject"), v4 = objc_claimAutoreleasedReturnValue(), finishingOperation = self->_finishingOperation, v4, v4 != finishingOperation)) && objc_msgSend(operations, "count") != 0;

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

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setNetworkActivityIndicatorVisible:0];
  }

  operations = [(NSOperationQueue *)self->_queue operations];
  [operations enumerateObjectsUsingBlock:&__block_literal_global_163];

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
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
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

- (void)purchaseWithToken:(id)token buyParameters:(id)parameters requestHeaders:(id)headers
{
  headersCopy = headers;
  parametersCopy = parameters;
  tokenCopy = token;
  [(ICQCommerceRemoteUIDelegate *)self setSkipCompletionAlert:1];
  [(ICQCommerceRemoteUIDelegate *)self setPurchaseToken:tokenCopy];

  [(ICQCommerceRemoteUIDelegate *)self setBuyParameters:parametersCopy];
  [(ICQCommerceRemoteUIDelegate *)self setRequestHeaders:headersCopy];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v13 = [bundleIdentifier isEqualToString:@"com.apple.preferences"];
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

    if (tokenCopy)
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

- (void)makeBuyRequest:(id)request forceAuth:(BOOL)auth usePurchaseToken:(BOOL)token
{
  tokenCopy = token;
  authCopy = auth;
  requestCopy = request;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v26 = 0;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Preparing StoreService purchase request.", v26, 2u);
  }

  v10 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v10 setURLBagKey:@"buyProduct"];
  buyParameters = [(ICQCommerceRemoteUIDelegate *)self buyParameters];
  if (buyParameters && (v12 = buyParameters, v13 = [requestCopy length], v12, !v13))
  {
    buyParameters2 = [(ICQCommerceRemoteUIDelegate *)self buyParameters];
    v16 = [buyParameters2 mutableCopy];
  }

  else
  {
    v14 = MEMORY[0x277CBEBC0];
    buyParameters2 = [requestCopy stringByRemovingPercentEncoding];
    v16 = [v14 copyDictionaryForQueryString:buyParameters2 unescapedValues:0];
  }

  v17 = v16;

  v18 = [v17 objectForKeyedSubscript:@"forRetailOffer"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v18 BOOLValue])
  {
    [(ICQCommerceRemoteUIDelegate *)self setForRetailOffer:1];
  }

  mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
  guid = [mEMORY[0x277D7FCE0] guid];
  [v17 setObject:guid forKey:@"guid"];

  v21 = [MEMORY[0x277CCAC58] dataWithPropertyList:v17 format:100 options:0 error:0];
  [v10 setHTTPBody:v21];
  [v10 setHTTPMethod:@"POST"];
  [v10 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
  if (tokenCopy && ([(ICQCommerceRemoteUIDelegate *)self purchaseToken], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    [(ICQCommerceRemoteUIDelegate *)self processLink:v10 forceAuth:0 needsAuth:0 localAuth:0 usePurchaseToken:1];
  }

  else
  {
    [(ICQCommerceRemoteUIDelegate *)self processLink:v10 forceAuth:authCopy needsAuth:1 localAuth:1];
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

- (void)loadURLforKey:(id)key
{
  self->_cancelled = 0;
  v4 = MEMORY[0x277D69BD0];
  keyCopy = key;
  v6 = objc_alloc_init(v4);
  [v6 setURLBagKey:keyCopy];
  LODWORD(v4) = [keyCopy isEqualToString:@"mint-offers"];

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

- (void)cancelFlowBecause:(id)because
{
  v12 = *MEMORY[0x277D85DE8];
  becauseCopy = because;
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
    if (becauseCopy)
    {
      v7 = becauseCopy;
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

- (void)userCompletedFlow:(int64_t)flow
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
  if (flow && flow != 3067)
  {
    if (flow == 3068)
    {
      v6 = 2;
      goto LABEL_12;
    }

    v7 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134217984;
      flowCopy = flow;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "unexpected failure type %lld; handling as generic failure", &v17, 0xCu);
    }

    v6 = 3;
  }

  if (!flow)
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
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:flow];
    v17 = 138412546;
    flowCopy = v13;
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

- (void)cancelRemoteUIKeeping:(id)keeping
{
  keepingCopy = keeping;
  if (!self->_cancelled)
  {
    v11 = keepingCopy;
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
    keepingCopy = v11;
  }
}

void __53__ICQCommerceRemoteUIDelegate_cancelRemoteUIKeeping___block_invoke()
{
  v0 = +[ICQQuotaRequestManager sharedManager];
  [v0 noteQuotaInfoChanged];
}

- (void)makeBuyRequest:(id)request
{
  v32[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Performing AMSPurchase request.", buf, 2u);
  }

  buyParameters = [(ICQCommerceRemoteUIDelegate *)self buyParameters];
  if (buyParameters && (v7 = [requestCopy length] == 0, buyParameters, v7))
  {
    buyParameters2 = [(ICQCommerceRemoteUIDelegate *)self buyParameters];
    v26 = [buyParameters2 mutableCopy];

    [v26 objectForKeyedSubscript:{@"forRetailOffer", v26}];
  }

  else
  {
    v24 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:requestCopy unescapedValues:0];
    [v24 objectForKeyedSubscript:{@"forRetailOffer", v24}];
  }
  v9 = ;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 BOOLValue])
  {
    [(ICQCommerceRemoteUIDelegate *)self setForRetailOffer:1];
  }

  v10 = objc_alloc(MEMORY[0x277CEE650]);
  quotaBag = [MEMORY[0x277CEE3F8] quotaBag];
  v12 = [v10 initWithBag:quotaBag];

  [v12 setDelegate:self];
  v13 = [objc_alloc(MEMORY[0x277CEE648]) initWithConfiguration:v12];
  v14 = objc_alloc(MEMORY[0x277CEE640]);
  v15 = [MEMORY[0x277CEE438] buyParamsWithString:requestCopy];
  v16 = [v14 initWithPurchaseType:0 buyParams:v15];

  [v16 setUserInitiated:1];
  [v16 setAdditionalHeaders:&unk_28847A1A8];
  v31 = @"mtTopic";
  v32[0] = @"xp_its_main";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  [v16 setMetricsOverlay:v17];

  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  if ([ams_sharedAccountStore ams_isActiveAccountCombined])
  {
    [ams_sharedAccountStore ams_activeiTunesAccount];
  }

  else
  {
    [ams_sharedAccountStore ams_activeiCloudAccount];
  }
  v19 = ;
  [v16 setAccount:v19];

  currentProcess = [MEMORY[0x277CEE620] currentProcess];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"CastleSettings/1.0"];
  [currentProcess setUserAgentSuffix:v21];

  [v16 setClientInfo:currentProcess];
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

- (BOOL)didUserDismissAMSFlow:(id)flow
{
  flowCopy = flow;
  if ([flowCopy code] != 100)
  {
    domain = [flowCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CEE188]])
    {
      code = [flowCopy code];

      if (code == 6)
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

- (void)processLink:(id)link forceAuth:(BOOL)auth needsAuth:(BOOL)needsAuth localAuth:(BOOL)localAuth usePurchaseToken:(BOOL)token
{
  tokenCopy = token;
  localAuthCopy = localAuth;
  authCopy = auth;
  v86 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  operationCount = [(NSOperationQueue *)self->_queue operationCount];
  v13 = _ICQGetLogSystem();
  v14 = v13;
  if (operationCount)
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

  v78 = authCopy;

  v14 = objc_alloc_init(MEMORY[0x277D7FD48]);
  v15 = +[(ISDataProvider *)ICQCommerceRemoteUIDataProvider];
  [v15 setParent:self];
  [v14 setDataProvider:v15];
  mEMORY[0x277CEC748] = [MEMORY[0x277CEC748] sharedManager];
  primaryAccount = [mEMORY[0x277CEC748] primaryAccount];

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ISAlwaysSendGuid", @"com.apple.itunesstored", 0);
  uRLBagKey = [linkCopy URLBagKey];
  if (uRLBagKey)
  {

    goto LABEL_8;
  }

  v74 = AppBooleanValue;
  v53 = [linkCopy URL];
  scheme = [v53 scheme];
  [scheme lowercaseString];
  v55 = v14;
  v56 = localAuthCopy;
  v57 = tokenCopy;
  v58 = primaryAccount;
  v60 = v59 = v15;
  v76 = [v60 isEqualToString:@"https"];

  v15 = v59;
  primaryAccount = v58;
  tokenCopy = v57;
  localAuthCopy = v56;
  v14 = v55;

  if ((v76 & 1) != 0 || v74)
  {
LABEL_8:
    contextForSignIn = [MEMORY[0x277D69BC8] contextForSignIn];
    username = [primaryAccount username];
    [contextForSignIn setAccountName:username];

    v22 = MEMORY[0x277CCABB0];
    personID = [primaryAccount personID];
    v24 = [v22 numberWithUnsignedLongLong:{objc_msgSend(personID, "longLongValue")}];
    [contextForSignIn setRequiredUniqueIdentifier:v24];

    [contextForSignIn setAccountNameEditable:0];
    [contextForSignIn setShouldFollowAccountButtons:1];
    if (v78)
    {
      [contextForSignIn setPromptStyle:1];
    }

    else if (!localAuthCopy)
    {
      goto LABEL_12;
    }

    [v14 setNeedsAuthentication:1];
LABEL_12:
    [v14 setAuthenticationContext:contextForSignIn];
    v77 = primaryAccount;
    if (tokenCopy && ([(ICQCommerceRemoteUIDelegate *)self purchaseToken], v25 = objc_claimAutoreleasedReturnValue(), v25, v25))
    {
      currentInfo = [MEMORY[0x277CEC7B8] currentInfo];
      clientInfoHeader = [currentInfo clientInfoHeader];

      if (clientInfoHeader)
      {
        [linkCopy setValue:clientInfoHeader forHTTPHeaderField:@"X-MMe-Client-Info"];
      }

      v73 = clientInfoHeader;
      v75 = contextForSignIn;
      v79 = v15;
      account = [primaryAccount account];
      aa_altDSID = [account aa_altDSID];

      if (aa_altDSID)
      {
        [linkCopy setValue:aa_altDSID forHTTPHeaderField:@"X-Apple-ADSID"];
      }

      v72 = aa_altDSID;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      requestHeaders = [(ICQCommerceRemoteUIDelegate *)self requestHeaders];
      v31 = [requestHeaders countByEnumeratingWithState:&v80 objects:v85 count:16];
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
              objc_enumerationMutation(requestHeaders);
            }

            v35 = *(*(&v80 + 1) + 8 * i);
            requestHeaders2 = [(ICQCommerceRemoteUIDelegate *)self requestHeaders];
            v37 = [requestHeaders2 objectForKeyedSubscript:v35];

            [linkCopy setValue:v37 forHTTPHeaderField:v35];
          }

          v32 = [requestHeaders countByEnumeratingWithState:&v80 objects:v85 count:16];
        }

        while (v32);
      }

      v38 = MGCopyAnswer();
      [linkCopy setValue:v38 forHTTPHeaderField:@"X-Mme-Device-Id"];
      systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
      abbreviation = [systemTimeZone abbreviation];
      [linkCopy setValue:abbreviation forHTTPHeaderField:@"X-MMe-Timezone"];

      currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
      v42 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
      uppercaseString = [v42 uppercaseString];
      [linkCopy setValue:uppercaseString forHTTPHeaderField:@"X-MMe-Country"];

      v44 = v72;
      if (v72)
      {
        personID2 = v72;
      }

      else
      {
        personID2 = [v77 personID];
      }

      v61 = personID2;
      contextForSignIn = v75;
      v62 = MEMORY[0x277CCACA8];
      purchaseToken = [(ICQCommerceRemoteUIDelegate *)self purchaseToken];
      v64 = [v62 stringWithFormat:@"%@:%@", v61, purchaseToken];

      v65 = [v64 dataUsingEncoding:4];
      v66 = [v65 base64EncodedStringWithOptions:0];
      if (v66)
      {
        [linkCopy setValue:v66 forHTTPHeaderField:@"X-Apple-GS-Token"];
      }

      v15 = v79;
      v50 = v73;
    }

    else
    {
      v46 = MEMORY[0x277CCACA8];
      personID3 = [primaryAccount personID];
      authToken = [primaryAccount authToken];
      v49 = [v46 stringWithFormat:@"%@:%@", personID3, authToken];

      v50 = v49;
      v51 = [v49 dataUsingEncoding:4];
      v52 = [v51 base64EncodedStringWithOptions:0];

      v44 = v52;
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v52];
      [linkCopy setValue:v38 forHTTPHeaderField:@"Authorization"];
    }

    mEMORY[0x277D7FCE0] = [MEMORY[0x277D7FCE0] sharedInstance];
    guid = [mEMORY[0x277D7FCE0] guid];
    [linkCopy setValue:guid forRequestParameter:@"guid"];

    primaryAccount = v77;
  }

  v69 = [MEMORY[0x277CBEA60] arrayWithObject:@"CastleSettings/1.0"];
  [linkCopy setUserAgentComponents:v69];

  [v14 setRequestProperties:linkCopy];
  [v14 setDelegate:self];
  if (!self->_registeredDialogNotification)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_handleDialog_ name:*MEMORY[0x277D7FCB0] object:0];

    self->_registeredDialogNotification = 1;
  }

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setNetworkActivityIndicatorVisible:1];

  [(NSOperationQueue *)self->_queue addOperation:v14];
LABEL_39:
}

- (id)parentViewControllerForObjectModel:(id)model
{
  modelCopy = model;
  navigationController = self->_navigationController;
  if (!navigationController)
  {
    [ICQCommerceRemoteUIDelegate parentViewControllerForObjectModel:];
  }

  v6 = modelCopy;
  v7 = navigationController;

  return navigationController;
}

- (void)_popObjectModelAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(NSMutableArray *)self->_objectModels count])
  {
    [ICQCommerceRemoteUIDelegate _popObjectModelAnimated:];
  }

  lastObject = [(NSMutableArray *)self->_objectModels lastObject];
  defaultPages = [lastObject defaultPages];

  [(NSMutableArray *)self->_objectModels removeLastObject];
  v6 = [defaultPages count] - 1;
  if (v6 >= 0)
  {
    do
    {
      v7 = [defaultPages objectAtIndex:v6];
      topViewController = [(UINavigationController *)self->_navigationController topViewController];

      if (topViewController == v7)
      {
        if (v6)
        {
          v9 = 0;
        }

        else
        {
          v9 = animatedCopy;
        }

        v10 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:v9];
      }
    }

    while (v6-- > 0);
  }
}

- (void)objectModelPressedBack:(id)back
{
  backCopy = back;
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  v5 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = topViewController;
    if (v6)
    {
      defaultPages = [backCopy defaultPages];
      v8 = [defaultPages containsObject:v6];

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

- (void)objectModel:(id)model pressedButton:(id)button attributes:(id)attributes
{
  modelCopy = model;
  buttonCopy = button;
  attributesCopy = attributes;
  v10 = [attributesCopy objectForKeyedSubscript:@"ams_followup"];
  if ([v10 isEqualToString:@"clear"])
  {
    [(ICQCommerceRemoteUIDelegate *)self _clearRetailFollowUpItem];
  }

  if ([buttonCopy isEqualToString:@"cancel"])
  {
    [(ICQCommerceRemoteUIDelegate *)self cancelFlowBecause:@"cancel button pressed in RUI object model"];
    [(ICQCommerceRemoteUIDelegate *)self cancelRemoteUI];
  }

  else if ([buttonCopy isEqualToString:@"buy"])
  {
    defaultPages = [modelCopy defaultPages];
    lastObject = [defaultPages lastObject];
    navTitle = [lastObject navTitle];

    [modelCopy startNavigationBarSpinnerWithTitle:navTitle];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    defaultPages2 = [modelCopy defaultPages];
    lastObject2 = [defaultPages2 lastObject];
    [lastObject2 populatePostbackDictionary:dictionary];

    v17 = [dictionary objectForKey:@"quota"];
    if (!v17)
    {
      v18 = [attributesCopy objectForKeyedSubscript:@"id"];
      v19 = [v18 isEqualToString:@"quota"];

      if (v19)
      {
        v17 = [attributesCopy objectForKeyedSubscript:@"value"];
      }

      else
      {
        v17 = 0;
      }
    }

    [(ICQCommerceRemoteUIDelegate *)self makeBuyRequest:v17];
  }

  else if ([buttonCopy isEqualToString:@"pop"])
  {
    [(ICQCommerceRemoteUIDelegate *)self _popObjectModelAnimated:1];
  }
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method
{
  modelCopy = model;
  linkCopy = link;
  methodCopy = method;
  if (![(ICQCommerceRemoteUIDelegate *)self _loadNativeURL:linkCopy])
  {
    lowercaseString = [methodCopy lowercaseString];
    v11 = [lowercaseString isEqualToString:@"post"];

    if (v11)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      defaultPages = [modelCopy defaultPages];
      lastObject = [defaultPages lastObject];
      [lastObject populatePostbackDictionary:dictionary];

      v15 = [MEMORY[0x277CCAC58] dataWithPropertyList:dictionary format:100 options:0 error:0];
    }

    else
    {
      v15 = 0;
    }

    v16 = [objc_alloc(MEMORY[0x277D69BD0]) initWithURL:linkCopy];
    [v16 setHTTPMethod:methodCopy];
    if (v15)
    {
      [v16 setHTTPBody:v15];
      [v16 setValue:@"application/x-apple-plist" forHTTPHeaderField:@"Content-Type"];
    }

    scheme = [linkCopy scheme];
    lowercaseString2 = [scheme lowercaseString];
    -[ICQCommerceRemoteUIDelegate processLink:forceAuth:needsAuth:](self, "processLink:forceAuth:needsAuth:", v16, 0, [lowercaseString2 isEqualToString:@"https"]);
  }
}

- (BOOL)_loadNativeURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme isEqualToString:@"ams-ui"];

  if (v5)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:lCopy withOptions:0];
  }

  return v5;
}

- (void)accountPageViewControllerDidFinish:(id)finish
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

- (void)accountPageViewController:(id)controller financeInterruptionResolved:(BOOL)resolved
{
  resolvedCopy = resolved;
  v16 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (self->_accountPageViewController != controllerCopy)
  {
    [ICQCommerceRemoteUIDelegate accountPageViewController:financeInterruptionResolved:];
  }

  v7 = controllerCopy;
  v8 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (resolvedCopy)
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
  v13 = resolvedCopy;
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

- (void)_dismissAccountPageViewController:(id)controller keepCommerceSpinner:(BOOL)spinner
{
  controllerCopy = controller;
  if (self->_accountPageViewController != controllerCopy)
  {
    [ICQCommerceRemoteUIDelegate _dismissAccountPageViewController:keepCommerceSpinner:];
  }

  v7 = controllerCopy;
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
  spinnerCopy = spinner;
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

- (void)_popAccountPageViewController:(id)controller keepCommerceSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  v20 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (self->_accountPageViewController != controllerCopy)
  {
    [ICQCommerceRemoteUIDelegate _popAccountPageViewController:keepCommerceSpinner:];
  }

  v7 = controllerCopy;
  v8 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (spinnerCopy)
    {
      v9 = @"YES";
    }

    v18 = 138412290;
    v19 = v9;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "pop accountPageViewController; keepCommerceSpinner: %@", &v18, 0xCu);
  }

  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  if (topViewController == v7)
  {
LABEL_12:
    v15 = ICQUSLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "popping accountPageViewController", &v18, 2u);
    }

    v16 = [(UINavigationController *)self->_navigationController popViewControllerAnimated:spinnerCopy];
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
      if (topViewController == topViewController)
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
      topViewController = [(UINavigationController *)self->_navigationController topViewController];
      if (topViewController == v7)
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

  if (!spinnerCopy)
  {
    [(ICQCommerceRemoteUIDelegate *)self _popCommerceSpinnerIfNeeded];
  }

  [(ICQCommerceRemoteUIDelegate *)self _forgetAccountPageViewController:v7];
}

- (void)_forgetAccountPageViewController:(id)controller
{
  controllerCopy = controller;
  accountPageViewController = self->_accountPageViewController;
  if (accountPageViewController != controllerCopy)
  {
    [ICQCommerceRemoteUIDelegate _forgetAccountPageViewController:];
  }

  v7 = controllerCopy;
  [(SKAccountPageViewController *)accountPageViewController setDelegate:0];
  v6 = self->_accountPageViewController;
  self->_accountPageViewController = 0;
}

- (BOOL)_shouldSuppressDialog:(id)dialog failureType:(int64_t)type
{
  result = [(ICQCommerceRemoteUIDelegate *)self skipCompletionAlert];
  if ((type - 3067) >= 2)
  {
    return 0;
  }

  return result;
}

- (void)handleDialog:(id)dialog
{
  v12 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  v5 = ICQUSLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    object = [dialogCopy object];
    *buf = 138412290;
    v11 = object;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Dialog notification arrived... %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ICQCommerceRemoteUIDelegate_handleDialog___block_invoke;
  v8[3] = &unk_27A65A708;
  v8[4] = self;
  v9 = dialogCopy;
  v7 = dialogCopy;
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

- (void)_dismissAlertsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  alertController = self->_alertController;
  if (alertController)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__ICQCommerceRemoteUIDelegate__dismissAlertsWithCompletion___block_invoke;
    v7[3] = &unk_27A65AF58;
    v7[4] = self;
    v8 = completionCopy;
    [(UIAlertController *)alertController dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    completionCopy[2](completionCopy);
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

- (void)_presentAlertWithDialog:(id)dialog
{
  dialogCopy = dialog;
  v5 = MEMORY[0x277D75110];
  title = [dialogCopy title];
  message = [dialogCopy message];
  v8 = [v5 alertControllerWithTitle:title message:message preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v8;

  buttons = [dialogCopy buttons];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __55__ICQCommerceRemoteUIDelegate__presentAlertWithDialog___block_invoke;
  v16 = &unk_27A65C7E0;
  selfCopy = self;
  v18 = dialogCopy;
  v11 = dialogCopy;
  [buttons enumerateObjectsUsingBlock:&v13];

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
    presentedViewController = [(UINavigationController *)v3 presentedViewController];
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = presentedViewController;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Presenting alert on controller: %@ - %@", &v7, 0x16u);
  }

  return v3;
}

- (BOOL)_handleResponseForDialog:(id)dialog atIndex:(int64_t)index
{
  v32 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  buttons = [dialogCopy buttons];
  if ([buttons count] > index)
  {
    v8 = [buttons objectAtIndex:index];
    actionType = [v8 actionType];
    if (actionType > 3)
    {
      if (actionType == 4)
      {
        parameter = [v8 parameter];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [MEMORY[0x277CBEBC0] URLWithString:parameter];

          parameter = v20;
        }

        if ([parameter isSafeExternalURL])
        {
          mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
          [mEMORY[0x277D75128] openURL:parameter options:MEMORY[0x277CBEC10] completionHandler:0];
        }
      }

      else
      {
        if (actionType == 5)
        {
          [(ICQCommerceRemoteUIDelegate *)self cancelFlowBecause:@"dialog button pressed with action GoBack"];
        }

        else
        {
          if (actionType != 11)
          {
            goto LABEL_21;
          }

          [v8 performDefaultActionForDialog:dialogCopy];
        }

        [(ICQCommerceRemoteUIDelegate *)self cancelRemoteUI];
      }
    }

    else
    {
      if (actionType == 1)
      {
        parameter2 = [v8 parameter];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MEMORY[0x277CBEBC0] URLWithString:parameter2];

          parameter2 = v12;
        }

        schemeSwizzledURL = [parameter2 schemeSwizzledURL];
        [v8 urlType];
        v14 = objc_alloc(MEMORY[0x277D69BD0]);
        v15 = [MEMORY[0x277CCAD20] requestWithURL:schemeSwizzledURL];
        v16 = [v14 initWithURLRequest:v15];

        scheme = [schemeSwizzledURL scheme];
        lowercaseString = [scheme lowercaseString];
        -[ICQCommerceRemoteUIDelegate processLink:forceAuth:needsAuth:](self, "processLink:forceAuth:needsAuth:", v16, 0, [lowercaseString isEqualToString:@"https"]);

        goto LABEL_15;
      }

      if (actionType != 2)
      {
        if (actionType == 3)
        {
          parameter2 = [v8 parameter];
          [(ICQCommerceRemoteUIDelegate *)self makeBuyRequest:parameter2];
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

      parameter3 = [v8 parameter];
      v23 = ICQUSLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = parameter3;
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

      v25 = [objc_alloc(MEMORY[0x277CDD340]) initWithAccountURL:parameter3];
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

- (ICQCommerceRemoteUIDelegate)initWithNavigationController:(id)controller needsModalPresentation:(BOOL)presentation
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = ICQCommerceRemoteUIDelegate;
  v7 = [(ICQCommerceRemoteUIDelegate *)&v20 init];
  v8 = v7;
  if (v7)
  {
    if (!controllerCopy)
    {
      [ICQCommerceRemoteUIDelegate initWithNavigationController:needsModalPresentation:];
    }

    v7->_modallyPresented = presentation;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objectModels = v8->_objectModels;
    v8->_objectModels = v9;

    modallyPresented = v8->_modallyPresented;
    v12 = controllerCopy;
    topViewController = v12;
    if (modallyPresented)
    {
      v14 = 16;
    }

    else
    {
      navigationController = v8->_navigationController;
      v8->_navigationController = v12;

      topViewController = [topViewController topViewController];
      v14 = 24;
    }

    v16 = *(&v8->super.isa + v14);
    *(&v8->super.isa + v14) = topViewController;

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D7FCB0] object:0];

  v7.receiver = self;
  v7.super_class = ICQCommerceRemoteUIDelegate;
  [(ICQCommerceRemoteUIDelegate *)&v7 dealloc];
}

- (void)handleAuthenticateRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
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
  v14 = requestCopy;
  selfCopy = self;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = requestCopy;
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

- (void)handleDialogRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
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
  v14 = requestCopy;
  selfCopy = self;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = requestCopy;
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

- (void)handleEngagementRequest:(id)request purchase:(id)purchase purchaseQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
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
  v14 = requestCopy;
  selfCopy = self;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = requestCopy;
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
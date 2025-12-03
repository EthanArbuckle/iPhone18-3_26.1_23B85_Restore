@interface PSCloudStorageOffersManager
- (PSCloudStorageOffersManagerDelegate)delegate;
- (void)_setupFlowWithNavigationController:(id)controller modally:(BOOL)modally;
- (void)beginFlowWithNavigationController:(id)controller modally:(BOOL)modally;
- (void)beginFlowWithNavigationController:(id)controller purchaseToken:(id)token buyParameters:(id)parameters requestHeaders:(id)headers modally:(BOOL)modally;
- (void)cancelLoad;
- (void)commerceDelegate:(id)delegate didCompleteWithError:(id)error;
- (void)commerceDelegate:(id)delegate loadDidFailWithError:(id)error;
- (void)commerceDelegate:(id)delegate willPresentObjectModel:(id)model page:(id)page;
- (void)commerceDelegateDidCancel:(id)cancel;
- (void)dealloc;
@end

@implementation PSCloudStorageOffersManager

- (void)_setupFlowWithNavigationController:(id)controller modally:(BOOL)modally
{
  modallyCopy = modally;
  controllerCopy = controller;
  [(PSCloudStorageOffersManager *)self cancelLoad];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v7 = getCommerceRemoteUIDelegateClass_softClass;
  v15 = getCommerceRemoteUIDelegateClass_softClass;
  if (!getCommerceRemoteUIDelegateClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getCommerceRemoteUIDelegateClass_block_invoke;
    v11[3] = &unk_1E71DBC78;
    v11[4] = &v12;
    __getCommerceRemoteUIDelegateClass_block_invoke(v11);
    v7 = v13[3];
  }

  v8 = v7;
  _Block_object_dispose(&v12, 8);
  v9 = [[v7 alloc] initWithNavigationController:controllerCopy needsModalPresentation:modallyCopy];
  commerceDelegate = self->_commerceDelegate;
  self->_commerceDelegate = v9;

  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setDelegate:self];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setShouldOfferFamilySharePlansOnly:[(PSCloudStorageOffersManager *)self shouldOfferFamilySharePlansOnly]];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setShouldOfferDeviceOffers:[(PSCloudStorageOffersManager *)self shouldOfferDeviceOffers]];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setSkipRetryWithoutToken:[(PSCloudStorageOffersManager *)self skipRetryWithoutToken]];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setSkipCompletionAlert:[(PSCloudStorageOffersManager *)self skipCompletionAlert]];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setSupportsModernAlerts:[(PSCloudStorageOffersManager *)self supportsModernAlerts]];
}

- (void)beginFlowWithNavigationController:(id)controller modally:(BOOL)modally
{
  modallyCopy = modally;
  controllerCopy = controller;
  [(PSCloudStorageOffersManager *)self _setupFlowWithNavigationController:controllerCopy modally:modallyCopy];
  commerceDelegate = self->_commerceDelegate;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = getCommerceOffersSymbolLoc_ptr;
  v14 = getCommerceOffersSymbolLoc_ptr;
  if (!getCommerceOffersSymbolLoc_ptr)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getCommerceOffersSymbolLoc_block_invoke;
    v10[3] = &unk_1E71DBC78;
    v10[4] = &v11;
    __getCommerceOffersSymbolLoc_block_invoke(v10);
    v8 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v8)
  {
    v9 = [PSContactsAuthorizationLevelController dealloc];
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v9);
  }

  [(CommerceRemoteUIDelegate *)commerceDelegate loadURLforKey:*v8];
}

- (void)beginFlowWithNavigationController:(id)controller purchaseToken:(id)token buyParameters:(id)parameters requestHeaders:(id)headers modally:(BOOL)modally
{
  modallyCopy = modally;
  headersCopy = headers;
  parametersCopy = parameters;
  tokenCopy = token;
  [(PSCloudStorageOffersManager *)self _setupFlowWithNavigationController:controller modally:modallyCopy];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate purchaseWithToken:tokenCopy buyParameters:parametersCopy requestHeaders:headersCopy];
}

- (void)cancelLoad
{
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate cancelRemoteUI];
  commerceDelegate = self->_commerceDelegate;
  self->_commerceDelegate = 0;
}

- (void)dealloc
{
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate cancelRemoteUI];
  v3.receiver = self;
  v3.super_class = PSCloudStorageOffersManager;
  [(PSCloudStorageOffersManager *)&v3 dealloc];
}

- (void)commerceDelegate:(id)delegate willPresentObjectModel:(id)model page:(id)page
{
  v51 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  modelCopy = model;
  pageCopy = page;
  if ([(PSCloudStorageOffersManager *)self requiredStorageThreshold])
  {
    selfCopy = self;
    v33 = modelCopy;
    v34 = delegateCopy;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    tableViewOM = [pageCopy tableViewOM];
    sections = [tableViewOM sections];

    obj = sections;
    v37 = [sections countByEnumeratingWithState:&v45 objects:v50 count:16];
    v12 = 0;
    if (v37)
    {
      v36 = *v46;
      do
      {
        v13 = 0;
        do
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v13;
          v14 = *(*(&v45 + 1) + 8 * v13);
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          rows = [v14 rows];
          v16 = [rows countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v42;
            do
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v42 != v18)
                {
                  objc_enumerationMutation(rows);
                }

                v20 = *(*(&v41 + 1) + 8 * i);
                attributes = [v20 attributes];
                v22 = [attributes objectForKeyedSubscript:@"totalStorage"];

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && (v23 = strtoull([v22 UTF8String], 0, 0), v23 < -[PSCloudStorageOffersManager requiredStorageThreshold](selfCopy, "requiredStorageThreshold")))
                {
                  [v20 setEnabled:0];
                  if ([v20 isSelected])
                  {
                    attributes2 = [v20 attributes];
                    v25 = [attributes2 objectForKeyedSubscript:@"radioGroup"];

                    [v20 setSelected:0];
                    v12 = v25;
                  }
                }

                else
                {
                  attributes3 = [v20 attributes];
                  v27 = [attributes3 objectForKeyedSubscript:@"radioGroup"];
                  v28 = [v27 isEqualToString:v12];

                  if (v28)
                  {
                    tableViewOM2 = [pageCopy tableViewOM];
                    [tableViewOM2 setSelectedRadioGroupRow:v20];

                    v12 = 0;
                  }
                }
              }

              v17 = [rows countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v17);
          }

          v13 = v38 + 1;
        }

        while (v38 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v37);
    }

    modelCopy = v33;
    delegateCopy = v34;
    self = selfCopy;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = objc_loadWeakRetained(&self->_delegate);
    [v32 manager:self willPresentViewController:pageCopy];
  }
}

- (void)commerceDelegate:(id)delegate loadDidFailWithError:(id)error
{
  errorCopy = error;
  NSLog(&cfstr_ErrorLoadingCo.isa, errorCopy);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 manager:self loadDidFailWithError:errorCopy];
  }
}

- (void)commerceDelegateDidCancel:(id)cancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  v6 = _PSLoggingFacility();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "calling delegate managerDidCancel:", buf, 2u);
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 managerDidCancel:self];
  }

  else if (v7)
  {
    *v8 = 0;
    _os_log_impl(&dword_18B008000, v6, OS_LOG_TYPE_DEFAULT, "client did not implement managerDidCancel: -- will not be notified", v8, 2u);
  }
}

- (void)commerceDelegate:(id)delegate didCompleteWithError:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  v10 = _PSLoggingFacility();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v13 = 138543362;
      v14 = errorCopy;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "calling delegate manager:didCompleteWithError:%{public}@", &v13, 0xCu);
    }

    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 manager:self didCompleteWithError:errorCopy];
  }

  else
  {
    if (v11)
    {
      v13 = 138543362;
      v14 = errorCopy;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "client did not implement manager:didCompleteWithError: (error:%{public}@)", &v13, 0xCu);
    }

    [(PSCloudStorageOffersManager *)self commerceDelegateDidCancel:delegateCopy];
  }
}

- (PSCloudStorageOffersManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface PSCloudStorageOffersManager
- (PSCloudStorageOffersManagerDelegate)delegate;
- (void)_setupFlowWithNavigationController:(id)a3 modally:(BOOL)a4;
- (void)beginFlowWithNavigationController:(id)a3 modally:(BOOL)a4;
- (void)beginFlowWithNavigationController:(id)a3 purchaseToken:(id)a4 buyParameters:(id)a5 requestHeaders:(id)a6 modally:(BOOL)a7;
- (void)cancelLoad;
- (void)commerceDelegate:(id)a3 didCompleteWithError:(id)a4;
- (void)commerceDelegate:(id)a3 loadDidFailWithError:(id)a4;
- (void)commerceDelegate:(id)a3 willPresentObjectModel:(id)a4 page:(id)a5;
- (void)commerceDelegateDidCancel:(id)a3;
- (void)dealloc;
@end

@implementation PSCloudStorageOffersManager

- (void)_setupFlowWithNavigationController:(id)a3 modally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
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
  v9 = [[v7 alloc] initWithNavigationController:v6 needsModalPresentation:v4];
  commerceDelegate = self->_commerceDelegate;
  self->_commerceDelegate = v9;

  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setDelegate:self];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setShouldOfferFamilySharePlansOnly:[(PSCloudStorageOffersManager *)self shouldOfferFamilySharePlansOnly]];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setShouldOfferDeviceOffers:[(PSCloudStorageOffersManager *)self shouldOfferDeviceOffers]];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setSkipRetryWithoutToken:[(PSCloudStorageOffersManager *)self skipRetryWithoutToken]];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setSkipCompletionAlert:[(PSCloudStorageOffersManager *)self skipCompletionAlert]];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate setSupportsModernAlerts:[(PSCloudStorageOffersManager *)self supportsModernAlerts]];
}

- (void)beginFlowWithNavigationController:(id)a3 modally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(PSCloudStorageOffersManager *)self _setupFlowWithNavigationController:v6 modally:v4];
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

- (void)beginFlowWithNavigationController:(id)a3 purchaseToken:(id)a4 buyParameters:(id)a5 requestHeaders:(id)a6 modally:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  [(PSCloudStorageOffersManager *)self _setupFlowWithNavigationController:a3 modally:v7];
  [(CommerceRemoteUIDelegate *)self->_commerceDelegate purchaseWithToken:v14 buyParameters:v13 requestHeaders:v12];
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

- (void)commerceDelegate:(id)a3 willPresentObjectModel:(id)a4 page:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v39 = a5;
  if ([(PSCloudStorageOffersManager *)self requiredStorageThreshold])
  {
    v40 = self;
    v33 = v9;
    v34 = v8;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v10 = [v39 tableViewOM];
    v11 = [v10 sections];

    obj = v11;
    v37 = [v11 countByEnumeratingWithState:&v45 objects:v50 count:16];
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
          v15 = [v14 rows];
          v16 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v41 + 1) + 8 * i);
                v21 = [v20 attributes];
                v22 = [v21 objectForKeyedSubscript:@"totalStorage"];

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && (v23 = strtoull([v22 UTF8String], 0, 0), v23 < -[PSCloudStorageOffersManager requiredStorageThreshold](v40, "requiredStorageThreshold")))
                {
                  [v20 setEnabled:0];
                  if ([v20 isSelected])
                  {
                    v24 = [v20 attributes];
                    v25 = [v24 objectForKeyedSubscript:@"radioGroup"];

                    [v20 setSelected:0];
                    v12 = v25;
                  }
                }

                else
                {
                  v26 = [v20 attributes];
                  v27 = [v26 objectForKeyedSubscript:@"radioGroup"];
                  v28 = [v27 isEqualToString:v12];

                  if (v28)
                  {
                    v29 = [v39 tableViewOM];
                    [v29 setSelectedRadioGroupRow:v20];

                    v12 = 0;
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v41 objects:v49 count:16];
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

    v9 = v33;
    v8 = v34;
    self = v40;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = objc_loadWeakRetained(&self->_delegate);
    [v32 manager:self willPresentViewController:v39];
  }
}

- (void)commerceDelegate:(id)a3 loadDidFailWithError:(id)a4
{
  v8 = a4;
  NSLog(&cfstr_ErrorLoadingCo.isa, v8);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 manager:self loadDidFailWithError:v8];
  }
}

- (void)commerceDelegateDidCancel:(id)a3
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

- (void)commerceDelegate:(id)a3 didCompleteWithError:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  v10 = _PSLoggingFacility();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "calling delegate manager:didCompleteWithError:%{public}@", &v13, 0xCu);
    }

    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 manager:self didCompleteWithError:v7];
  }

  else
  {
    if (v11)
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "client did not implement manager:didCompleteWithError: (error:%{public}@)", &v13, 0xCu);
    }

    [(PSCloudStorageOffersManager *)self commerceDelegateDidCancel:v6];
  }
}

- (PSCloudStorageOffersManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface ICQUICloudStorageOffersManager
- (ICQUICloudStorageOffersManagerDelegate)delegate;
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

@implementation ICQUICloudStorageOffersManager

- (void)_setupFlowWithNavigationController:(id)a3 modally:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(ICQUICloudStorageOffersManager *)self cancelLoad];
  v7 = [[ICQCommerceRemoteUIDelegate alloc] initWithNavigationController:v6 needsModalPresentation:v4];

  commerceDelegate = self->_commerceDelegate;
  self->_commerceDelegate = v7;

  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setDelegate:self];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setShouldOfferFamilySharePlansOnly:[(ICQUICloudStorageOffersManager *)self shouldOfferFamilySharePlansOnly]];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setShouldOfferDeviceOffers:[(ICQUICloudStorageOffersManager *)self shouldOfferDeviceOffers]];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setSkipRetryWithoutToken:[(ICQUICloudStorageOffersManager *)self skipRetryWithoutToken]];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setSkipCompletionAlert:[(ICQUICloudStorageOffersManager *)self skipCompletionAlert]];
  v9 = [(ICQUICloudStorageOffersManager *)self supportsModernAlerts];
  v10 = self->_commerceDelegate;

  [(ICQCommerceRemoteUIDelegate *)v10 setSupportsModernAlerts:v9];
}

- (void)beginFlowWithNavigationController:(id)a3 modally:(BOOL)a4
{
  [(ICQUICloudStorageOffersManager *)self _setupFlowWithNavigationController:a3 modally:a4];
  commerceDelegate = self->_commerceDelegate;

  [(ICQCommerceRemoteUIDelegate *)commerceDelegate loadURLforKey:@"mint-offers"];
}

- (void)beginFlowWithNavigationController:(id)a3 purchaseToken:(id)a4 buyParameters:(id)a5 requestHeaders:(id)a6 modally:(BOOL)a7
{
  v7 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  [(ICQUICloudStorageOffersManager *)self _setupFlowWithNavigationController:a3 modally:v7];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate purchaseWithToken:v14 buyParameters:v13 requestHeaders:v12];
}

- (void)cancelLoad
{
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate cancelRemoteUI];
  commerceDelegate = self->_commerceDelegate;
  self->_commerceDelegate = 0;
}

- (void)dealloc
{
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate cancelRemoteUI];
  v3.receiver = self;
  v3.super_class = ICQUICloudStorageOffersManager;
  [(ICQUICloudStorageOffersManager *)&v3 dealloc];
}

- (void)commerceDelegate:(id)a3 willPresentObjectModel:(id)a4 page:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v39 = a5;
  if ([(ICQUICloudStorageOffersManager *)self requiredStorageThreshold])
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
                if ((objc_opt_isKindOfClass() & 1) != 0 && (v23 = strtoull([v22 UTF8String], 0, 0), v23 < -[ICQUICloudStorageOffersManager requiredStorageThreshold](v40, "requiredStorageThreshold")))
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
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQUICloudStorageOffersManager commerceDelegate:v5 loadDidFailWithError:v6];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 manager:self loadDidFailWithError:v5];
  }
}

- (void)commerceDelegateDidCancel:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "calling delegate managerDidCancel:", buf, 2u);
    }

    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 managerDidCancel:self];
  }

  else if (v7)
  {
    *v8 = 0;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Client did not implement managerDidCancel: -- will not be notified.", v8, 2u);
  }
}

- (void)commerceDelegate:(id)a3 didCompleteWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  v10 = _ICQGetLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "calling delegate manager:didCompleteWithError:%{public}@", &v13, 0xCu);
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
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Client did not implement manager:didCompleteWithError: (error:%{public}@)", &v13, 0xCu);
    }

    [(ICQUICloudStorageOffersManager *)self commerceDelegateDidCancel:v6];
  }
}

- (ICQUICloudStorageOffersManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)commerceDelegate:(uint64_t)a1 loadDidFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Error loading commerce pane: %@", &v2, 0xCu);
}

@end
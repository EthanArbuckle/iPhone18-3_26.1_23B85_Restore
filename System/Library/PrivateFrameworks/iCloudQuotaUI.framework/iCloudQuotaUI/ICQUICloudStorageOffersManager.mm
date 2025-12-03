@interface ICQUICloudStorageOffersManager
- (ICQUICloudStorageOffersManagerDelegate)delegate;
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

@implementation ICQUICloudStorageOffersManager

- (void)_setupFlowWithNavigationController:(id)controller modally:(BOOL)modally
{
  modallyCopy = modally;
  controllerCopy = controller;
  [(ICQUICloudStorageOffersManager *)self cancelLoad];
  v7 = [[ICQCommerceRemoteUIDelegate alloc] initWithNavigationController:controllerCopy needsModalPresentation:modallyCopy];

  commerceDelegate = self->_commerceDelegate;
  self->_commerceDelegate = v7;

  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setDelegate:self];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setShouldOfferFamilySharePlansOnly:[(ICQUICloudStorageOffersManager *)self shouldOfferFamilySharePlansOnly]];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setShouldOfferDeviceOffers:[(ICQUICloudStorageOffersManager *)self shouldOfferDeviceOffers]];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setSkipRetryWithoutToken:[(ICQUICloudStorageOffersManager *)self skipRetryWithoutToken]];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate setSkipCompletionAlert:[(ICQUICloudStorageOffersManager *)self skipCompletionAlert]];
  supportsModernAlerts = [(ICQUICloudStorageOffersManager *)self supportsModernAlerts];
  v10 = self->_commerceDelegate;

  [(ICQCommerceRemoteUIDelegate *)v10 setSupportsModernAlerts:supportsModernAlerts];
}

- (void)beginFlowWithNavigationController:(id)controller modally:(BOOL)modally
{
  [(ICQUICloudStorageOffersManager *)self _setupFlowWithNavigationController:controller modally:modally];
  commerceDelegate = self->_commerceDelegate;

  [(ICQCommerceRemoteUIDelegate *)commerceDelegate loadURLforKey:@"mint-offers"];
}

- (void)beginFlowWithNavigationController:(id)controller purchaseToken:(id)token buyParameters:(id)parameters requestHeaders:(id)headers modally:(BOOL)modally
{
  modallyCopy = modally;
  headersCopy = headers;
  parametersCopy = parameters;
  tokenCopy = token;
  [(ICQUICloudStorageOffersManager *)self _setupFlowWithNavigationController:controller modally:modallyCopy];
  [(ICQCommerceRemoteUIDelegate *)self->_commerceDelegate purchaseWithToken:tokenCopy buyParameters:parametersCopy requestHeaders:headersCopy];
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

- (void)commerceDelegate:(id)delegate willPresentObjectModel:(id)model page:(id)page
{
  v51 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  modelCopy = model;
  pageCopy = page;
  if ([(ICQUICloudStorageOffersManager *)self requiredStorageThreshold])
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
                if ((objc_opt_isKindOfClass() & 1) != 0 && (v23 = strtoull([v22 UTF8String], 0, 0), v23 < -[ICQUICloudStorageOffersManager requiredStorageThreshold](selfCopy, "requiredStorageThreshold")))
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
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ICQUICloudStorageOffersManager commerceDelegate:errorCopy loadDidFailWithError:v6];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_delegate);
    [v9 manager:self loadDidFailWithError:errorCopy];
  }
}

- (void)commerceDelegateDidCancel:(id)cancel
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

- (void)commerceDelegate:(id)delegate didCompleteWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  v10 = _ICQGetLogSystem();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v13 = 138543362;
      v14 = errorCopy;
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "calling delegate manager:didCompleteWithError:%{public}@", &v13, 0xCu);
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
      _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Client did not implement manager:didCompleteWithError: (error:%{public}@)", &v13, 0xCu);
    }

    [(ICQUICloudStorageOffersManager *)self commerceDelegateDidCancel:delegateCopy];
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
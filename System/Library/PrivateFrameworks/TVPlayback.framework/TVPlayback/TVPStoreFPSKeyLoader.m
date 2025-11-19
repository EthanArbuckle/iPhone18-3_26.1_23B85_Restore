@interface TVPStoreFPSKeyLoader
+ (void)initialize;
+ (void)preFetchFPSCertificate;
- (TVPStoreFPSKeyLoader)initWithCertificateDataURL:(id)a3 keyDataURL:(id)a4;
- (TVPStoreFPSKeyLoaderDelegate)delegate;
- (void)_failPendingKeyRequestsWithError:(id)a3;
- (void)_preFetchFPSCertificate;
- (void)loadSecureKeyRequest:(id)a3;
- (void)secureKeyDeliveryCoordinator:(id)a3 didReceiveOfflineKeyData:(id)a4 forKeyRequest:(id)a5;
- (void)secureKeyDeliveryCoordinator:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4;
- (void)secureKeyDeliveryCoordinator:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4 playbackStartDate:(id)a5;
- (void)secureKeyDeliveryCoordinator:(id)a3 didReceiveUpdatedRentalPlaybackStartDate:(id)a4;
- (void)secureKeyDeliveryCoordinator:(id)a3 willFailWithError:(id)a4 forKeyRequest:(id)a5;
- (void)secureKeyDeliveryCoordinatorWillSucceed:(id)a3 forKeyRequest:(id)a4;
- (void)secureKeyLoader:(id)a3 didFailWithError:(id)a4 forRequest:(id)a5;
- (void)secureKeyLoader:(id)a3 didLoadCertificateData:(id)a4 forRequest:(id)a5;
- (void)sendStopRequest;
- (void)setEventCollection:(id)a3;
- (void)setRentalID:(id)a3;
- (void)setServiceProviderID:(id)a3;
@end

@implementation TVPStoreFPSKeyLoader

+ (void)initialize
{
  if (initialize_onceToken_2 != -1)
  {
    +[TVPStoreFPSKeyLoader initialize];
  }
}

uint64_t __34__TVPStoreFPSKeyLoader_initialize__block_invoke()
{
  sLogObject_1 = os_log_create("com.apple.AppleTV.playback", "SecureKeyDelivery");

  return MEMORY[0x2821F96F8]();
}

+ (void)preFetchFPSCertificate
{
  if (!sCertLoader)
  {
    v2 = objc_alloc_init(TVPStoreFPSKeyLoader);
    v3 = sCertLoader;
    sCertLoader = v2;

    v4 = sCertLoader;

    [v4 _preFetchFPSCertificate];
  }
}

- (TVPStoreFPSKeyLoader)initWithCertificateDataURL:(id)a3 keyDataURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TVPStoreFPSKeyLoader;
  v8 = [(TVPStoreFPSKeyLoader *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    certificateDataURL = v8->_certificateDataURL;
    v8->_certificateDataURL = v9;

    v11 = [v7 copy];
    keyDataURL = v8->_keyDataURL;
    v8->_keyDataURL = v11;
  }

  return v8;
}

- (void)loadSecureKeyRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(TVPStoreFPSKeyLoader *)self secureKeyDeliveryCoordinator];

    if (v5)
    {
      v6 = [(TVPStoreFPSKeyLoader *)self secureKeyDeliveryCoordinator];
      [v6 loadSecureKeyRequest:v4];
    }

    else
    {
      v7 = [(TVPStoreFPSKeyLoader *)self pendingKeyRequests];

      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [(TVPStoreFPSKeyLoader *)self setPendingKeyRequests:v8];
      }

      v9 = [(TVPStoreFPSKeyLoader *)self pendingKeyRequests];
      [v9 addObject:v4];

      v10 = sLogObject_1;
      if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        *buf = 134217984;
        v17 = [v4 requestID];
        _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Waiting for URL bag fetch before handling keyRequest %lu", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      v12 = [MEMORY[0x277D7FD58] sharedBagLoadingController];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __45__TVPStoreFPSKeyLoader_loadSecureKeyRequest___block_invoke;
      v14[3] = &unk_279D7BCE0;
      objc_copyWeak(&v15, buf);
      [v12 requestAccessToBagUsingBlock:v14];

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __45__TVPStoreFPSKeyLoader_loadSecureKeyRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__TVPStoreFPSKeyLoader_loadSecureKeyRequest___block_invoke_2;
  v8[3] = &unk_279D7BA58;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v5;
  v9 = v7;
  TVPPerformBlockOnMainThreadIfNeeded(v8);

  objc_destroyWeak(&v10);
}

void __45__TVPStoreFPSKeyLoader_loadSecureKeyRequest___block_invoke_2(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained secureKeyDeliveryCoordinator];

    if (!v4)
    {
      v5 = sLogObject_1;
      if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "URL bag dictionary fetched", buf, 2u);
      }

      if (!*(a1 + 32))
      {
        v32 = sLogObject_1;
        if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_ERROR))
        {
          __45__TVPStoreFPSKeyLoader_loadSecureKeyRequest___block_invoke_2_cold_3(v32, v33, v34, v35, v36, v37, v38, v39);
        }

        v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ATV.secureKeyDelivery" code:-345020 userInfo:0];
        [v3 _failPendingKeyRequestsWithError:v6];
        goto LABEL_38;
      }

      v6 = [objc_alloc(MEMORY[0x277D69D28]) initWithURLBagDictionary:*(a1 + 32)];
      v7 = [v3 certificateDataURL];
      v8 = [v3 keyDataURL];
      v9 = v8;
      if (!v7 || !v8)
      {
        v10 = [v6 pastisCertificateURL];

        v11 = [v6 pastisKeyServerURL];

        v9 = v11;
        v7 = v10;
      }

      if (v7 && v9)
      {
        v61 = v6;
        v12 = sLogObject_1;
        if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Certificate and key server URLs available; creating loader objects", buf, 2u);
        }

        v60 = v7;
        v13 = [[TVPSecureKeyStandardLoader alloc] initWithCertificateDataURL:v7 keyDataURL:v9];
        v14 = objc_alloc_init(TVPSecureKeyStandardConnector);
        [(TVPSecureKeyStandardLoader *)v13 setRequestGenerator:v14];
        v58 = v14;
        [(TVPSecureKeyStandardLoader *)v13 setConnectionHandler:v14];
        -[TVPSecureKeyStandardLoader setHoldKeyResponses:](v13, "setHoldKeyResponses:", [v3 holdKeyResponses]);
        -[TVPSecureKeyStandardLoader setDidSkipRentalCheckout:](v13, "setDidSkipRentalCheckout:", [v3 didSkipRentalCheckout]);
        -[TVPSecureKeyStandardLoader setIncludeGUID:](v13, "setIncludeGUID:", [v3 includeGUID]);
        -[TVPSecureKeyStandardLoader setRequiresExternalEntitlementCheck:](v13, "setRequiresExternalEntitlementCheck:", [v3 requiresExternalEntitlementCheck]);
        v15 = [v3 serviceProviderID];
        [(TVPSecureKeyStandardLoader *)v13 setServiceProviderID:v15];

        v16 = [v3 rentalID];
        [(TVPSecureKeyStandardLoader *)v13 setRentalID:v16];

        [v3 setSecureKeyStandardLoader:v13];
        v59 = v13;
        v17 = [[TVPSecureKeyDeliveryCoordinator alloc] initWithSecureKeyLoader:v13];
        [(TVPSecureKeyDeliveryCoordinator *)v17 setDelegate:v3];
        v18 = [v3 eventCollection];
        [(TVPSecureKeyDeliveryCoordinator *)v17 setEventCollection:v18];

        [v3 setSecureKeyDeliveryCoordinator:v17];
        v19 = [v3 pendingKeyRequests];
        v20 = [v19 copy];

        v62 = v3;
        v21 = [v3 pendingKeyRequests];
        [v21 removeAllObjects];

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v63 objects:v69 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v64;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v64 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v63 + 1) + 8 * i);
              if ([v27 isCancelled])
              {
                v28 = sLogObject_1;
                if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
                {
                  v29 = v28;
                  v30 = [v27 requestID];
                  *buf = 134217984;
                  v68 = v30;
                  _os_log_impl(&dword_26CEDD000, v29, OS_LOG_TYPE_DEFAULT, "Not loading request %lu since it has been cancelled", buf, 0xCu);
                }
              }

              else
              {
                [(TVPSecureKeyDeliveryCoordinator *)v17 loadSecureKeyRequest:v27];
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v63 objects:v69 count:16];
          }

          while (v24);
        }

        v6 = v61;
        v3 = v62;
        v7 = v60;
        v31 = v59;
      }

      else
      {
        if (!v7)
        {
          v40 = sLogObject_1;
          if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_ERROR))
          {
            __45__TVPStoreFPSKeyLoader_loadSecureKeyRequest___block_invoke_2_cold_1(v40, v41, v42, v43, v44, v45, v46, v47);
          }

          v48 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ATV.secureKeyDelivery" code:-345021 userInfo:0];
          [v3 _failPendingKeyRequestsWithError:v48];
        }

        if (v9)
        {
          goto LABEL_37;
        }

        v49 = sLogObject_1;
        if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_ERROR))
        {
          __45__TVPStoreFPSKeyLoader_loadSecureKeyRequest___block_invoke_2_cold_2(v49, v50, v51, v52, v53, v54, v55, v56);
        }

        v31 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.ATV.secureKeyDelivery" code:-345022 userInfo:0];
        [v3 _failPendingKeyRequestsWithError:v31];
      }

LABEL_37:
LABEL_38:
    }
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (void)setEventCollection:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_eventCollection, a3);
  v5 = [(TVPStoreFPSKeyLoader *)self secureKeyDeliveryCoordinator];

  if (v5)
  {
    v6 = [(TVPStoreFPSKeyLoader *)self secureKeyDeliveryCoordinator];
    [v6 setEventCollection:v7];
  }
}

- (void)setServiceProviderID:(id)a3
{
  objc_storeStrong(&self->_serviceProviderID, a3);
  v5 = a3;
  v6 = [(TVPStoreFPSKeyLoader *)self secureKeyStandardLoader];
  [v6 setServiceProviderID:v5];
}

- (void)setRentalID:(id)a3
{
  objc_storeStrong(&self->_rentalID, a3);
  v5 = a3;
  v6 = [(TVPStoreFPSKeyLoader *)self secureKeyStandardLoader];
  [v6 setRentalID:v5];
}

- (void)sendStopRequest
{
  v2 = [(TVPStoreFPSKeyLoader *)self secureKeyDeliveryCoordinator];
  [v2 sendStopRequest];
}

- (void)secureKeyDeliveryCoordinatorWillSucceed:(id)a3 forKeyRequest:(id)a4
{
  v8 = a4;
  [(TVPStoreFPSKeyLoader *)self setError:0];
  v5 = [(TVPStoreFPSKeyLoader *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TVPStoreFPSKeyLoader *)self delegate];
    [v7 storeFPSKeyLoaderWillSucceed:self forKeyRequest:v8];
  }
}

- (void)secureKeyDeliveryCoordinator:(id)a3 willFailWithError:(id)a4 forKeyRequest:(id)a5
{
  v12 = a4;
  v7 = a5;
  v8 = [(TVPStoreFPSKeyLoader *)self error];

  if (!v8)
  {
    [(TVPStoreFPSKeyLoader *)self setError:v12];
  }

  v9 = [(TVPStoreFPSKeyLoader *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(TVPStoreFPSKeyLoader *)self delegate];
    [v11 storeFPSKeyLoader:self willFailWithError:v12 forKeyRequest:v7];
  }
}

- (void)secureKeyDeliveryCoordinator:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4
{
  v8 = a4;
  v5 = [(TVPStoreFPSKeyLoader *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TVPStoreFPSKeyLoader *)self delegate];
    [v7 storeFPSKeyLoader:self didReceiveUpdatedRentalExpirationDate:v8];
  }
}

- (void)secureKeyDeliveryCoordinator:(id)a3 didReceiveUpdatedRentalPlaybackStartDate:(id)a4
{
  v8 = a4;
  v5 = [(TVPStoreFPSKeyLoader *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TVPStoreFPSKeyLoader *)self delegate];
    [v7 storeFPSKeyLoader:self didReceiveUpdatedRentalPlaybackStartDate:v8];
  }
}

- (void)secureKeyDeliveryCoordinator:(id)a3 didReceiveOfflineKeyData:(id)a4 forKeyRequest:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(TVPStoreFPSKeyLoader *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVPStoreFPSKeyLoader *)self delegate];
    [v10 storeFPSKeyLoader:self didLoadOfflineKeyData:v11 forKeyRequest:v7];
  }
}

- (void)secureKeyDeliveryCoordinator:(id)a3 didReceiveUpdatedRentalExpirationDate:(id)a4 playbackStartDate:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [(TVPStoreFPSKeyLoader *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(TVPStoreFPSKeyLoader *)self delegate];
    [v10 storeFPSKeyLoader:self didReceiveUpdatedRentalExpirationDate:v11 playbackStartDate:v7];
  }
}

- (void)secureKeyLoader:(id)a3 didFailWithError:(id)a4 forRequest:(id)a5
{
  v5 = sCertLoader;
  sCertLoader = 0;
}

- (void)secureKeyLoader:(id)a3 didLoadCertificateData:(id)a4 forRequest:(id)a5
{
  v5 = sCertLoader;
  sCertLoader = 0;
}

- (void)_preFetchFPSCertificate
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x277D7FD58] sharedBagLoadingController];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__TVPStoreFPSKeyLoader__preFetchFPSCertificate__block_invoke;
  v3[3] = &unk_279D7BCE0;
  objc_copyWeak(&v4, &location);
  [v2 requestAccessToBagUsingBlock:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __47__TVPStoreFPSKeyLoader__preFetchFPSCertificate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__TVPStoreFPSKeyLoader__preFetchFPSCertificate__block_invoke_2;
  v8[3] = &unk_279D7BA58;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v5;
  v9 = v7;
  TVPPerformBlockOnMainThreadIfNeeded(v8);

  objc_destroyWeak(&v10);
}

void __47__TVPStoreFPSKeyLoader__preFetchFPSCertificate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v10 = WeakRetained;
    v3 = [objc_alloc(MEMORY[0x277D69D28]) initWithURLBagDictionary:*(a1 + 32)];
    v4 = [v3 pastisCertificateURL];
    v5 = [v3 pastisKeyServerURL];
    v6 = v5;
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = [[TVPSecureKeyStandardLoader alloc] initWithCertificateDataURL:v4 keyDataURL:v5];
      v9 = objc_alloc_init(TVPSecureKeyStandardConnector);
      [(TVPSecureKeyStandardLoader *)v8 setRequestGenerator:v9];
      [(TVPSecureKeyStandardLoader *)v8 setConnectionHandler:v9];
      [(TVPSecureKeyLoader *)v8 setDelegate:v10];
      [v10 setFpsCertLoader:v8];
      [(TVPSecureKeyStandardLoader *)v8 startLoadingCertificateDataForRequest:0];
    }

    WeakRetained = v10;
  }
}

- (void)_failPendingKeyRequestsWithError:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TVPStoreFPSKeyLoader *)self pendingKeyRequests];
  v6 = [v5 copy];

  v7 = [(TVPStoreFPSKeyLoader *)self pendingKeyRequests];
  [v7 removeAllObjects];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v21;
    *&v10 = 134217984;
    v19 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 isCancelled])
        {
          v15 = sLogObject_1;
          if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v15;
            v17 = [v14 requestID];
            *buf = v19;
            v25 = v17;
            _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "Not failing request %lu since it has been cancelled", buf, 0xCu);
          }
        }

        else
        {
          [v14 finishLoadingWithError:v4];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (TVPStoreFPSKeyLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
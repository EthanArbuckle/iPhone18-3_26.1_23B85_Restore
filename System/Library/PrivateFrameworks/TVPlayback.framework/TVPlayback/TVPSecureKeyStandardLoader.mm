@interface TVPSecureKeyStandardLoader
+ (void)initialize;
- (TVPSecureKeyStandardLoader)init;
- (TVPSecureKeyStandardLoader)initWithCertificateDataURL:(id)a3 keyDataURL:(id)a4;
- (id)_assetIdentifierForKeyRequest:(id)a3;
- (id)_bodyJSONDataForRequest:(id)a3 forceStop:(BOOL)a4;
- (void)sendStopRequest;
- (void)setHoldKeyResponses:(BOOL)a3;
- (void)startLoadingCertificateDataForRequest:(id)a3;
- (void)startLoadingContentIdentifierDataForRequest:(id)a3;
- (void)startLoadingKeyResponseDataForRequest:(id)a3;
@end

@implementation TVPSecureKeyStandardLoader

+ (void)initialize
{
  if (initialize_onceToken_1 != -1)
  {
    +[TVPSecureKeyStandardLoader initialize];
  }
}

uint64_t __40__TVPSecureKeyStandardLoader_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "SecureKeyDelivery");
  v1 = sStandardLoaderLogObject;
  sStandardLoaderLogObject = v0;

  sCachedCertData = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

- (TVPSecureKeyStandardLoader)initWithCertificateDataURL:(id)a3 keyDataURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TVPSecureKeyStandardLoader;
  v9 = [(TVPSecureKeyStandardLoader *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_certificateDataURL, a3);
    objc_storeStrong(&v10->_keyDataURL, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingKeyResponses = v10->_pendingKeyResponses;
    v10->_pendingKeyResponses = v11;
  }

  return v10;
}

- (void)setHoldKeyResponses:(BOOL)a3
{
  v30 = *MEMORY[0x277D85DE8];
  if (self->_holdKeyResponses != a3)
  {
    v3 = a3;
    self->_holdKeyResponses = a3;
    v5 = sStandardLoaderLogObject;
    v6 = os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Holding subsequent key responses", buf, 2u);
      }
    }

    else
    {
      if (v6)
      {
        v7 = v5;
        v8 = [(TVPSecureKeyStandardLoader *)self pendingKeyResponses];
        *buf = 134217984;
        v29 = [v8 count];
        _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "No longer holding key responses.  Sending responses for %lu pending responses", buf, 0xCu);
      }

      v9 = [(TVPSecureKeyStandardLoader *)self pendingKeyResponses];
      v10 = [v9 copy];

      v11 = [(TVPSecureKeyStandardLoader *)self pendingKeyResponses];
      [v11 removeAllObjects];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          v16 = 0;
          do
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * v16);
            v18 = [(TVPSecureKeyLoader *)self delegate];
            v19 = [v17 keyData];
            v20 = [v17 renewalDate];
            v21 = [v17 request];
            [v18 secureKeyLoader:self didLoadKeyResponseData:v19 renewalDate:v20 forRequest:v21];

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v14);
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)_assetIdentifierForKeyRequest:(id)a3
{
  v3 = [a3 URL];
  v4 = [v3 host];

  return v4;
}

- (id)_bodyJSONDataForRequest:(id)a3 forceStop:(BOOL)a4
{
  v6 = a3;
  v7 = [v6 keyRequestData];
  v8 = [v7 base64EncodedStringWithOptions:0];

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "requestID")}];
  [v9 setObject:v10 forKey:@"id"];

  if (v8)
  {
    [v9 setObject:v8 forKey:@"spc"];
  }

  v11 = [v6 URL];
  v12 = [v11 absoluteString];

  if (v12)
  {
    [v9 setObject:v12 forKey:@"uri"];
  }

  if ([(TVPSecureKeyStandardLoader *)self includeGUID])
  {
    v13 = [MEMORY[0x277CEE470] deviceGUID];
    if (v13)
    {
      [v9 setObject:v13 forKey:@"guid"];
    }
  }

  v14 = [(TVPSecureKeyStandardLoader *)self rentalID];
  if (v14 || ([v6 rentalID], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v14;
    [v9 setObject:v14 forKey:@"rental-id"];
  }

  if ([(TVPSecureKeyStandardLoader *)self requiresExternalEntitlementCheck])
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKey:@"isExternal"];
  }

  v16 = [(TVPSecureKeyStandardLoader *)self serviceProviderID];
  v17 = [v16 length];

  if (v17)
  {
    v18 = [(TVPSecureKeyStandardLoader *)self serviceProviderID];
    [v9 setObject:v18 forKey:@"svcId"];
  }

  if (a4)
  {
    v19 = @"stop";
  }

  else if ([v6 isRenewal])
  {
    v19 = @"renew";
  }

  else
  {
    v19 = @"start";
  }

  [v9 setObject:v19 forKey:@"lease-action"];
  if ([(TVPSecureKeyStandardLoader *)self didSkipRentalCheckout])
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKey:@"skipped-rental-checkout"];
  }

  if ([v6 retrievesOfflineKeys])
  {
    [v9 setObject:MEMORY[0x277CBEC38] forKey:@"offline"];
  }

  v20 = [MEMORY[0x277CBEB18] array];
  [v20 addObject:v9];
  v21 = [MEMORY[0x277CBEB38] dictionary];
  [v21 setObject:&unk_287E596A8 forKey:@"version"];
  [v21 setObject:v20 forKey:@"streaming-keys"];
  v22 = [MEMORY[0x277CBEB38] dictionary];
  [v22 setObject:v21 forKey:@"fairplay-streaming-request"];
  v23 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v22 options:0 error:0];

  return v23;
}

- (TVPSecureKeyStandardLoader)init
{
  [(TVPSecureKeyStandardLoader *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)startLoadingCertificateDataForRequest:(id)a3
{
  v4 = a3;
  v5 = [(TVPSecureKeyStandardLoader *)self certificateDataURL];
  v6 = [sCachedCertData objectForKey:v5];
  objc_initWeak(&location, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__TVPSecureKeyStandardLoader_startLoadingCertificateDataForRequest___block_invoke;
  v23[3] = &unk_279D7BC48;
  v7 = v4;
  v24 = v7;
  objc_copyWeak(&v25, &location);
  v8 = MEMORY[0x26D6B0400](v23);
  if (v5)
  {
    v9 = [v6 length];
    if (v9)
    {
      v10 = sStandardLoaderLogObject;
      if (os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v10, OS_LOG_TYPE_DEFAULT, "Returning cached cert data.  Refreshing cert data, but not waiting for response", buf, 2u);
      }

      v11 = [(TVPSecureKeyLoader *)self eventCollection];
      [v11 addSingleShotEventWithName:TVPPlaybackReportingEventFPSUsingCachedCertData value:MEMORY[0x277CBEC38]];

      (v8)[2](v8, v6, 0);
    }

    else
    {
      v13 = [(TVPSecureKeyLoader *)self eventCollection];
      [v13 addSingleShotEventWithName:TVPPlaybackReportingEventFPSUsingCachedCertData value:MEMORY[0x277CBEC28]];

      v14 = sStandardLoaderLogObject;
      if (os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "No cached cert data available.  Fetching cert data and waiting for response", buf, 2u);
      }
    }

    v15 = [(TVPSecureKeyStandardLoader *)self requestGenerator];
    v16 = [(TVPSecureKeyStandardLoader *)self certificateDataURL];
    v12 = [v15 secureKeyStandardLoader:self requestForFetchingDataFromURL:v16];

    v17 = [(TVPSecureKeyStandardLoader *)self connectionHandler];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __68__TVPSecureKeyStandardLoader_startLoadingCertificateDataForRequest___block_invoke_77;
    v18[3] = &unk_279D7BC70;
    v19 = v5;
    v21 = v9 == 0;
    v20 = v8;
    [v17 secureKeyStandardLoader:self sendAsynchronousRequest:v12 completionHandler:v18];
  }

  else
  {
    v12 = TVPSKDErrorWithCode(-345021);
    (v8)[2](v8, 0, v12);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

void __68__TVPSecureKeyStandardLoader_startLoadingCertificateDataForRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = [WeakRetained delegate];
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = *(a1 + 32);
    if (v10)
    {
      [v7 secureKeyLoader:v8 didLoadCertificateData:v10 forRequest:v9];
    }

    else
    {
      [v7 secureKeyLoader:v8 didFailWithError:v5 forRequest:v9];
    }
  }
}

void __68__TVPSecureKeyStandardLoader_startLoadingCertificateDataForRequest___block_invoke_77(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  if ([v6 length] && *(a1 + 32))
  {
    v8 = sStandardLoaderLogObject;
    if (os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Updating cached cert data", buf, 2u);
    }

    [sCachedCertData setObject:v6 forKey:*(a1 + 32)];
  }

  if (*(a1 + 48) == 1)
  {
    v9 = sStandardLoaderLogObject;
    if (os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Returning newly fetched cert data", v10, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)startLoadingContentIdentifierDataForRequest:(id)a3
{
  v4 = a3;
  v5 = [(TVPSecureKeyStandardLoader *)self _assetIdentifierForKeyRequest:v4];
  v8 = v5;
  if (v5)
  {
    v6 = [v5 dataUsingEncoding:4];
    v7 = [(TVPSecureKeyLoader *)self delegate];
    [v7 secureKeyLoader:self didLoadContentIdentifierData:v6 forRequest:v4];
  }

  else
  {
    v6 = TVPSKDErrorWithCode(-345005);
    v7 = [(TVPSecureKeyLoader *)self delegate];
    [v7 secureKeyLoader:self didFailWithError:v6 forRequest:v4];
  }
}

- (void)startLoadingKeyResponseDataForRequest:(id)a3
{
  v4 = a3;
  v5 = [(TVPSecureKeyStandardLoader *)self savedRequestToUseForStopping];

  if (!v5)
  {
    [(TVPSecureKeyStandardLoader *)self setSavedRequestToUseForStopping:v4];
  }

  v6 = [(TVPSecureKeyStandardLoader *)self keyDataURL];
  if (v6)
  {
    v7 = [(TVPSecureKeyStandardLoader *)self _bodyJSONDataForRequest:v4 forceStop:0];
    v8 = [(TVPSecureKeyStandardLoader *)self requestGenerator];
    v9 = [v8 secureKeyStandardLoader:self requestForPostingData:v7 toURL:v6];

    objc_initWeak(&location, self);
    v10 = [(TVPSecureKeyStandardLoader *)self connectionHandler];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__TVPSecureKeyStandardLoader_startLoadingKeyResponseDataForRequest___block_invoke;
    v11[3] = &unk_279D7BC98;
    v12 = v4;
    objc_copyWeak(&v13, &location);
    [v10 secureKeyStandardLoader:self sendAsynchronousRequest:v9 completionHandler:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = [(TVPSecureKeyLoader *)self delegate];
    v9 = TVPSKDErrorWithCode(-345022);
    [v7 secureKeyLoader:self didFailWithError:v9 forRequest:v4];
  }
}

void __68__TVPSecureKeyStandardLoader_startLoadingKeyResponseDataForRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v127 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 statusCode] == 403)
    {
      v10 = -345018;
LABEL_30:
      v24 = TVPSKDErrorWithCode(v10);
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v26 = [WeakRetained delegate];
      v34 = objc_loadWeakRetained((a1 + 40));
      [v26 secureKeyLoader:v34 didFailWithError:v24 forRequest:*(a1 + 32)];

      goto LABEL_31;
    }

    if (!v7)
    {
      v24 = objc_loadWeakRetained((a1 + 40));
      WeakRetained = [v24 delegate];
      v26 = objc_loadWeakRetained((a1 + 40));
      [WeakRetained secureKeyLoader:v26 didFailWithError:v9 forRequest:*(a1 + 32)];
LABEL_31:

      goto LABEL_66;
    }

    if (![v7 length])
    {
      v10 = -345009;
      goto LABEL_30;
    }

    v124 = *(a1 + 32);
    *buf = 0;
    v11 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:buf];
    v120 = *buf;
    v122 = v11;
    v119 = v9;
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v27 = TVPSKDErrorWithCode(-345008);
      v28 = v27;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      goto LABEL_38;
    }

    v12 = [v11 objectForKey:@"fairplay-streaming-response"];
    v118 = v12;
    if (!v12 || (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v27 = TVPSKDErrorWithCode(-345008);
      v35 = v27;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
LABEL_37:

LABEL_38:
      v125 = v29;
      v123 = v30;
      v38 = v31;
      v39 = v32;
      v40 = v27;
      if ((v33 & 1) == 0)
      {
        v52 = v39;
        v53 = objc_loadWeakRetained((a1 + 40));
        v54 = [(TVPSecureKeyResponse *)v53 delegate];
        v55 = objc_loadWeakRetained((a1 + 40));
        [v54 secureKeyLoader:v55 didFailWithError:v40 forRequest:*(a1 + 32)];
        v56 = v123;
        v57 = v125;
LABEL_65:

        v9 = v119;
        goto LABEL_66;
      }

      objc_opt_class();
      v121 = v40;
      if (objc_opt_isKindOfClass())
      {
        v41 = [v8 allHeaderFields];
        v42 = [v41 tvp_appleTimingAppHeaderValue];

        if (v42 >= 1)
        {
          v43 = objc_loadWeakRetained((a1 + 40));
          v44 = [v43 eventCollection];
          v45 = TVPPlaybackReportingEventFPSServerProcessingTimeMS;
          v46 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
          [v44 addSingleShotEventWithName:v45 value:v46];
        }
      }

      if (!v38)
      {
        goto LABEL_46;
      }

      v47 = sStandardLoaderLogObject;
      if (os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v38;
        _os_log_impl(&dword_26CEDD000, v47, OS_LOG_TYPE_DEFAULT, "Rental expiration date: %@", buf, 0xCu);
      }

      v48 = objc_loadWeakRetained((a1 + 40));
      v49 = [v48 rentalExpirationDate];
      v50 = [v38 isEqualToDate:v49];

      if ((v50 & 1) == 0)
      {
        v58 = objc_loadWeakRetained((a1 + 40));
        [v58 setRentalExpirationDate:v38];

        v59 = objc_loadWeakRetained((a1 + 40));
        v60 = [v59 delegate];
        v61 = objc_loadWeakRetained((a1 + 40));
        [v60 secureKeyLoader:v61 didReceiveUpdatedRentalExpirationDate:v38];

        v51 = 1;
        if (!v39)
        {
          goto LABEL_53;
        }
      }

      else
      {
LABEL_46:
        v51 = 0;
        if (!v39)
        {
          goto LABEL_53;
        }
      }

      v62 = sStandardLoaderLogObject;
      if (os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v39;
        _os_log_impl(&dword_26CEDD000, v62, OS_LOG_TYPE_DEFAULT, "Rental playback start date: %@", buf, 0xCu);
      }

      v63 = objc_loadWeakRetained((a1 + 40));
      v64 = [v63 rentalPlaybackStartDate];
      v65 = [v39 isEqualToDate:v64];

      if ((v65 & 1) == 0)
      {
        v66 = objc_loadWeakRetained((a1 + 40));
        [v66 setRentalPlaybackStartDate:v39];

        v67 = objc_loadWeakRetained((a1 + 40));
        v68 = [v67 delegate];
        v69 = objc_opt_respondsToSelector();

        if (v69)
        {
          v70 = objc_loadWeakRetained((a1 + 40));
          v71 = [v70 delegate];
          v72 = objc_loadWeakRetained((a1 + 40));
          [v71 secureKeyLoader:v72 didReceiveUpdatedRentalPlaybackStartDate:v39];
        }

        goto LABEL_57;
      }

LABEL_53:
      if (!v51)
      {
LABEL_59:
        v52 = v39;
        v79 = objc_loadWeakRetained((a1 + 40));
        v80 = [v79 holdKeyResponses];

        if (v80)
        {
          v81 = sStandardLoaderLogObject;
          v57 = v125;
          if (os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_DEFAULT))
          {
            v82 = *(a1 + 32);
            v83 = v81;
            v84 = [v82 requestID];
            *buf = 134217984;
            *&buf[4] = v84;
            _os_log_impl(&dword_26CEDD000, v83, OS_LOG_TYPE_DEFAULT, "Adding FPS key response to pending responses for id %lu", buf, 0xCu);
          }

          v85 = *(a1 + 32);
          v86 = MEMORY[0x277CCABB0];
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v87 = [v86 numberWithDouble:?];
          [v85 setRequestCompletionTime:v87];

          v53 = objc_alloc_init(TVPSecureKeyResponse);
          [(TVPSecureKeyResponse *)v53 setKeyData:v125];
          [(TVPSecureKeyResponse *)v53 setRenewalDate:v123];
          [(TVPSecureKeyResponse *)v53 setRequest:*(a1 + 32)];
          v88 = (a1 + 40);
          v56 = v123;
          v54 = objc_loadWeakRetained(v88);
          v55 = [v54 pendingKeyResponses];
          [v55 addObject:v53];
        }

        else
        {
          v53 = objc_loadWeakRetained((a1 + 40));
          v54 = [(TVPSecureKeyResponse *)v53 delegate];
          v55 = objc_loadWeakRetained((a1 + 40));
          v89 = *(a1 + 32);
          v56 = v123;
          v57 = v125;
          [v54 secureKeyLoader:v55 didLoadKeyResponseData:v125 renewalDate:v123 forRequest:v89];
        }

        v40 = v121;
        goto LABEL_65;
      }

LABEL_57:
      v73 = objc_loadWeakRetained((a1 + 40));
      v74 = [v73 delegate];
      v75 = objc_opt_respondsToSelector();

      if (v75)
      {
        v76 = objc_loadWeakRetained((a1 + 40));
        v77 = [v76 delegate];
        v78 = objc_loadWeakRetained((a1 + 40));
        [v77 secureKeyLoader:v78 didReceiveUpdatedRentalExpirationDate:v38 playbackStartDate:v39];
      }

      goto LABEL_59;
    }

    v117 = [v13 objectForKey:@"version"];
    if (!v117 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v27 = TVPSKDErrorWithCode(-345008);
      v36 = v27;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v14 = [v13 objectForKey:@"streaming-keys"];
    v116 = v14;
    if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v15 count])
    {
      v27 = TVPSKDErrorWithCode(-345008);
      v37 = v27;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v16 = [v15 objectAtIndex:0];
    v115 = v16;
    if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v27 = TVPSKDErrorWithCode(-345008);
      v91 = v27;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
LABEL_72:

      goto LABEL_35;
    }

    v18 = [v17 objectForKey:@"status"];
    v114 = v18;
    if (v18)
    {
      v19 = v18;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v19 integerValue];
        if (!v20)
        {
          v113 = [v115 objectForKey:@"ckc"];
          if (v113 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v113 length])
          {
            v93 = [v115 objectForKey:@"renew-after"];
            if (v93 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v94 = [v124 startDate];
              [v93 doubleValue];
              v30 = [v94 dateByAddingTimeInterval:?];
              v95 = v30;
            }

            else
            {
              v30 = 0;
            }

            v105 = [v115 objectForKey:@"expiration-time"];
            if (v105 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v106 = objc_alloc(MEMORY[0x277CBEAA8]);
              [v105 doubleValue];
              v31 = [v106 initWithTimeIntervalSince1970:v107 / 1000.0];
              v108 = v31;
            }

            else
            {
              v31 = 0;
            }

            v109 = [v115 objectForKey:@"playback-start-time"];
            if (v109 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v110 = objc_alloc(MEMORY[0x277CBEAA8]);
              [v109 doubleValue];
              v32 = [v110 initWithTimeIntervalSince1970:v111 / 1000.0];
              v112 = v32;
            }

            else
            {
              v32 = 0;
            }

            v33 = 1;
            v96 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v113 options:1];
            v27 = 0;
            v29 = v96;
          }

          else
          {
            v96 = TVPSKDErrorWithCode(-345008);
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v27 = v96;
          }

          v97 = v96;

          goto LABEL_71;
        }

        v21 = v20;
        v22 = sStandardLoaderLogObject;
        if (os_log_type_enabled(sStandardLoaderLogObject, OS_LOG_TYPE_ERROR))
        {
          __68__TVPSecureKeyStandardLoader_startLoadingKeyResponseDataForRequest___block_invoke_cold_1(v21, v22);
        }

        if (v21 > -1005)
        {
          if (v21 == -1004)
          {
            v23 = -345014;
            goto LABEL_69;
          }

          if (v21 == -1002)
          {
            v23 = -345015;
            goto LABEL_69;
          }
        }

        else
        {
          if (v21 == -1009)
          {
            v23 = -345017;
            goto LABEL_69;
          }

          if (v21 == -1008)
          {
            v23 = -345016;
LABEL_69:
            v27 = TVPSKDErrorWithCode(v23);
            v92 = v27;
LABEL_70:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
LABEL_71:

            goto LABEL_72;
          }
        }

        v98 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.fpsRequest" code:v21 userInfo:0];
        v99 = TVPSKDErrorWithCode(-345013);
        v100 = [v99 userInfo];
        v101 = [v100 mutableCopy];

        [v101 setObject:v98 forKey:*MEMORY[0x277CCA7E8]];
        v102 = objc_alloc(MEMORY[0x277CCA9B8]);
        v103 = [v99 domain];
        v27 = [v102 initWithDomain:v103 code:objc_msgSend(v99 userInfo:{"code"), v101}];
        v104 = v27;

        goto LABEL_70;
      }
    }

    v23 = -345008;
    goto LABEL_69;
  }

LABEL_66:

  v90 = *MEMORY[0x277D85DE8];
}

- (void)sendStopRequest
{
  v3 = [(TVPSecureKeyStandardLoader *)self savedRequestToUseForStopping];

  if (v3)
  {
    v9 = [(TVPSecureKeyStandardLoader *)self keyDataURL];
    if (v9)
    {
      v4 = [(TVPSecureKeyStandardLoader *)self savedRequestToUseForStopping];
      v5 = [(TVPSecureKeyStandardLoader *)self _bodyJSONDataForRequest:v4 forceStop:1];

      v6 = [(TVPSecureKeyStandardLoader *)self requestGenerator];
      v7 = [v6 secureKeyStandardLoader:self requestForPostingData:v5 toURL:v9];

      v8 = [(TVPSecureKeyStandardLoader *)self connectionHandler];
      [v8 secureKeyStandardLoader:self sendAsynchronousRequest:v7 completionHandler:&__block_literal_global_87];
    }

    [(TVPSecureKeyStandardLoader *)self setSavedRequestToUseForStopping:0];
  }
}

void __68__TVPSecureKeyStandardLoader_startLoadingKeyResponseDataForRequest___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_26CEDD000, a2, OS_LOG_TYPE_ERROR, "Received FPS response error status of %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
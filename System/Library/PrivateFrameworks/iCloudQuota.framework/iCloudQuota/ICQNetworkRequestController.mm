@interface ICQNetworkRequestController
- (ICQNetworkRequestController)init;
- (ICQNetworkRequestController)initWithSession:(id)session numberOfSecondsBetweenRetries:(id)retries;
- (void)executeRequest:(id)request acceptedStatusCodes:(id)codes renewHeadersBlock:(id)block completion:(id)completion;
@end

@implementation ICQNetworkRequestController

- (ICQNetworkRequestController)init
{
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v4 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQNetworkRequestControllerSession"];
  [defaultSessionConfiguration set_appleIDContext:v4];

  v5 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
  v6 = [(ICQNetworkRequestController *)self initWithSession:v5];

  return v6;
}

- (ICQNetworkRequestController)initWithSession:(id)session numberOfSecondsBetweenRetries:(id)retries
{
  sessionCopy = session;
  retriesCopy = retries;
  v13.receiver = self;
  v13.super_class = ICQNetworkRequestController;
  v8 = [(ICQNetworkRequestController *)&v13 init];
  session = v8->_session;
  v8->_session = sessionCopy;
  v10 = sessionCopy;

  numberOfSecondsBetweenRetries = v8->_numberOfSecondsBetweenRetries;
  v8->_numberOfSecondsBetweenRetries = retriesCopy;

  return v8;
}

- (void)executeRequest:(id)request acceptedStatusCodes:(id)codes renewHeadersBlock:(id)block completion:(id)completion
{
  requestCopy = request;
  codesCopy = codes;
  blockCopy = block;
  completionCopy = completion;
  v14 = [(NSArray *)self->_numberOfSecondsBetweenRetries copy];
  objc_initWeak(&location, self);
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy_;
  v43[4] = __Block_byref_object_dispose_;
  v44 = [requestCopy mutableCopy];
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v15 = [ICQRetryController alloc];
  v16 = [(NSArray *)self->_numberOfSecondsBetweenRetries count];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke;
  v23[3] = &unk_27A6515E0;
  objc_copyWeak(&v32, &location);
  v23[4] = self;
  v17 = completionCopy;
  v26 = v17;
  v28 = &v33;
  v29 = v43;
  v18 = codesCopy;
  v24 = v18;
  v30 = v41;
  v31 = v39;
  v19 = v14;
  v25 = v19;
  v20 = blockCopy;
  v27 = v20;
  v21 = [(ICQRetryController *)v15 initWithMaxNumberOfRetries:v16 block:v23];
  v22 = v34[5];
  v34[5] = v21;

  [v34[5] executeBlock];
  _Block_object_dispose(&v33, 8);

  objc_destroyWeak(&v32);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);

  objc_destroyWeak(&location);
}

void __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v3 = _ICQGetLogSystem();
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(*(*(a1 + 72) + 8) + 40) numberOfAttempts];
      v6 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 134218242;
      v49 = v5;
      v50 = 2112;
      v51 = v6;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Making attempt (%lu) for network request %@.", buf, 0x16u);
    }

    v7 = WeakRetained[1];
    v8 = *(*(*(a1 + 80) + 8) + 40);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_21;
    v41[3] = &unk_27A651590;
    v9 = *(a1 + 40);
    v10 = *(a1 + 80);
    v42 = v9;
    v45 = v10;
    v11 = *(a1 + 56);
    v12 = *(a1 + 72);
    v44 = v11;
    v46 = v12;
    v47 = *(a1 + 88);
    v43 = *(a1 + 48);
    v13 = [v7 dataTaskWithRequest:v8 completionHandler:v41];
    if ([*(*(*(a1 + 80) + 8) + 40) icq_hasAuthHeaders] && *(*(*(a1 + 96) + 8) + 24) != 1)
    {
      [v13 resume];
    }

    else
    {
      v14 = *(a1 + 88);
      if (*(*(v14 + 8) + 24) == 1)
      {
        v15 = _ICQGetLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
        }

        v23 = *(a1 + 56);
        v24 = ICQCreateError(15);
        (*(v23 + 16))(v23, 0, 0, v24);

        v25 = *(*(a1 + 72) + 8);
        v26 = *(v25 + 40);
        *(v25 + 40) = 0;
      }

      else
      {
        v31 = *(a1 + 64);
        v32 = *(*(*(a1 + 80) + 8) + 40);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_25;
        v36[3] = &unk_27A6515B8;
        v39 = v14;
        v37 = v13;
        v33 = *(a1 + 56);
        v34 = *(a1 + 72);
        v38 = v33;
        v40 = v34;
        (*(v31 + 16))(v31, v32, v36);
      }
    }

    v30 = v42;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_cold_2(a1, v4);
    }

    v27 = *(a1 + 56);
    v28 = ICQCreateError(0);
    (*(v27 + 16))(v27, 0, 0, v28);

    v29 = *(*(a1 + 72) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_21(uint64_t a1, void *a2, void *a3, void *a4)
{
  v63 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 URL];
    v13 = [v12 absoluteString];
    v53 = 138412546;
    v54 = v13;
    v55 = 2048;
    v56 = [v10 statusCode];
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Request to (%@) returned status code %lu.", &v53, 0x16u);
  }

  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "statusCode")}];
  LODWORD(v14) = [v14 containsObject:v15];

  if (v14)
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(*(a1 + 56) + 8) + 40);
      v53 = 138413058;
      v54 = v17;
      v55 = 2112;
      v56 = v7;
      v57 = 2112;
      v58 = v10;
      v59 = 2112;
      v60 = v9;
      _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "Request (%@) succeeded with data (%@) with response (%@) with error (%@)", &v53, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = 0;
    goto LABEL_15;
  }

  v20 = [v10 allHeaderFields];
  v19 = [v20 objectForKeyedSubscript:@"Retry-After"];

  if ([v10 statusCode] == 429)
  {
    v21 = [ICQError retryErrorWithRetryAfter:v19];
    v22 = _ICQGetLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(*(a1 + 56) + 8) + 40);
      v53 = 138413314;
      v54 = v23;
      v55 = 2112;
      v56 = v19;
      v57 = 2112;
      v58 = v7;
      v59 = 2112;
      v60 = v10;
      v61 = 2112;
      v62 = v9;
      v24 = "Request (%@) failed from 429 with Retry-After (%@) with data (%@) with response (%@) with error (%@)";
LABEL_13:
      _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, v24, &v53, 0x34u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if ([v10 statusCode] == 503)
  {
    v21 = [ICQError serviceUnavailableWithRetryAfter:v19];
    v22 = _ICQGetLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(*(a1 + 56) + 8) + 40);
      v53 = 138413314;
      v54 = v25;
      v55 = 2112;
      v56 = v19;
      v57 = 2112;
      v58 = v7;
      v59 = 2112;
      v60 = v10;
      v61 = 2112;
      v62 = v9;
      v24 = "Request (%@) failed from 503 with Retry-After (%@) with data (%@) with response (%@) with error (%@)";
      goto LABEL_13;
    }

LABEL_14:

    (*(*(a1 + 48) + 16))();
    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = 0;

    goto LABEL_15;
  }

  if ([v10 statusCode] == 400 || objc_msgSend(v10, "statusCode") == 401)
  {
    v29 = _ICQGetLogSystem();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(*(*(a1 + 56) + 8) + 40);
      v31 = [v10 statusCode];
      v53 = 138413314;
      v54 = v30;
      v55 = 2048;
      v56 = v31;
      v57 = 2112;
      v58 = v7;
      v59 = 2112;
      v60 = v10;
      v61 = 2112;
      v62 = v9;
      _os_log_impl(&dword_275572000, v29, OS_LOG_TYPE_DEFAULT, "Request (%@) failed from client error %ld with data (%@) with response (%@) with error (%@). Will attempt to renew headers.", &v53, 0x34u);
    }

    v32 = *(*(*(a1 + 72) + 8) + 24);
    v33 = _ICQGetLogSystem();
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_21_cold_1(v34, v35, v36, v37, v38, v39, v40, v41);
      }

      v42 = *(a1 + 48);
      v43 = +[ICQError clientErrorWithStatusCode:](ICQError, "clientErrorWithStatusCode:", [v10 statusCode]);
      (*(v42 + 16))(v42, v7, v10, v43);

LABEL_34:
      v51 = *(*(a1 + 64) + 8);
      v52 = *(v51 + 40);
      *(v51 + 40) = 0;

      goto LABEL_15;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v53) = 0;
      _os_log_impl(&dword_275572000, v34, OS_LOG_TYPE_DEFAULT, "400 or 401 but we have not attempted to renew yet.", &v53, 2u);
    }

    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  v44 = [*(*(*(a1 + 64) + 8) + 40) numberOfAttempts] - 1;
  if (v44 >= [*(a1 + 40) count])
  {
    v49 = _ICQGetLogSystem();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = *(*(*(a1 + 56) + 8) + 40);
      v53 = 138413058;
      v54 = v50;
      v55 = 2112;
      v56 = v7;
      v57 = 2112;
      v58 = v10;
      v59 = 2112;
      v60 = v9;
      _os_log_impl(&dword_275572000, v49, OS_LOG_TYPE_DEFAULT, "Request (%@) failed with no more retries with data (%@) with response (%@) with error (%@)", &v53, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_34;
  }

  v45 = [*(a1 + 40) objectAtIndexedSubscript:v44];
  v46 = [v45 unsignedIntegerValue];

  v47 = _ICQGetLogSystem();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = *(*(*(a1 + 56) + 8) + 40);
    v53 = 138412802;
    v54 = v48;
    v55 = 2048;
    v56 = v44;
    v57 = 2048;
    v58 = v46;
    _os_log_impl(&dword_275572000, v47, OS_LOG_TYPE_DEFAULT, "Retrying request (%@) with attempt (%lu) with retryAfterSeconds (%lu)", &v53, 0x20u);
  }

  [*(*(*(a1 + 64) + 8) + 40) retryAfterSeconds:v46];
LABEL_15:

  v28 = *MEMORY[0x277D85DE8];
}

void __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_25(uint64_t a1, int a2)
{
  v4 = _ICQGetLogSystem();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Request headers renewed successfully", v17, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 32) resume];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_25_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = *(a1 + 40);
    v14 = ICQCreateError(15);
    (*(v13 + 16))(v13, 0, 0, v14);

    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }
}

void __95__ICQNetworkRequestController_executeRequest_acceptedStatusCodes_renewHeadersBlock_completion___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v6 = 138412290;
  v7 = objc_opt_class();
  v4 = v7;
  _os_log_error_impl(&dword_275572000, a2, OS_LOG_TYPE_ERROR, "%@ instance no longer exist.", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end
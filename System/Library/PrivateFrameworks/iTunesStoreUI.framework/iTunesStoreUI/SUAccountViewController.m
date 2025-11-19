@interface SUAccountViewController
- (BOOL)shouldSignRequests;
- (SUAccountViewController)init;
- (SUAccountViewController)initWithExternalAccountURL:(id)a3;
- (id)_URLByRemovingBlacklistedParametersWithURL:(id)a3;
- (id)_authenticationQueryParametersForStyle:(int64_t)a3;
- (id)_bagKeyForStyle:(int64_t)a3;
- (id)navigationItem:(id)a3 willChangeLeftItem:(id)a4 toNewItem:(id)a5;
- (id)navigationItem:(id)a3 willChangeLeftItems:(id)a4 toNewItems:(id)a5;
- (id)newFetchOperation;
- (id)newViewControllerForPage:(id)a3 ofType:(int64_t)a4 returningError:(id *)a5;
- (void)_didEnterBackground:(id)a3;
- (void)_forceOrientationBackToSupportedOrientation;
- (void)_logoutPressed:(id)a3;
- (void)_mescalDidOpenWithSession:(id)a3 error:(id)a4;
- (void)enqueueFetchOperation;
- (void)handleFailureWithError:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUAccountViewController

- (SUAccountViewController)init
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = SUAccountViewController;
  v2 = [(SUStorePageViewController *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v16 = 138543362;
      v17 = v7;
      v8 = v7;
      LODWORD(v14) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (!v9)
      {
LABEL_11:

        v10 = [(SUStorePageViewController *)v2 URLRequestProperties];
        v11 = [v10 mutableCopy];

        v12 = [(SUAccountViewController *)v2 _bagKeyForStyle:v2->_style];
        [v11 setURLBagKey:v12];

        [(SUStorePageViewController *)v2 setURLRequestProperties:v11];
        return v2;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v16, v14}];
      free(v9);
      SSFileLog();
    }

    goto LABEL_11;
  }

  return v2;
}

- (SUAccountViewController)initWithExternalAccountURL:(id)a3
{
  v119 = *MEMORY[0x1E69E9840];
  v103 = a3;
  v108.receiver = self;
  v108.super_class = SUAccountViewController;
  v4 = [(SUStorePageViewController *)&v108 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v6 |= 2u;
    }

    v7 = [v5 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v8 = objc_opt_class();
      *v115 = 138543618;
      *&v115[4] = v8;
      *&v115[12] = 2112;
      *&v115[14] = v103;
      v9 = v8;
      LODWORD(v97) = 22;
      v94 = v115;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
        goto LABEL_10;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v115, v97}];
      free(v10);
      v94 = v7;
      SSFileLog();
    }

LABEL_10:
    v102 = [v103 copyQueryStringDictionaryWithUnescapedValues:1];
    v11 = [v102 objectForKey:@"url"];
    if (v11)
    {
      v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
    }

    else
    {
      v13 = [v103 host];
      v14 = [v13 length] == 0;

      if (v14)
      {
        goto LABEL_15;
      }

      v12 = v103;
    }

    accountURL = v4->_accountURL;
    v4->_accountURL = v12;

LABEL_15:
    v16 = [(SUAccountViewController *)v4 _URLByRemovingBlacklistedParametersWithURL:v4->_accountURL, v94];
    v17 = v4->_accountURL;
    v4->_accountURL = v16;

    v18 = [v102 objectForKey:@"continuation"];

    if (v18)
    {
      v100 = [MEMORY[0x1E695DFF8] copyDictionaryForQueryString:v18 unescapedValues:1];
    }

    else
    {
      v100 = 0;
    }

    v101 = [(NSURL *)v4->_accountURL copyQueryStringDictionaryWithUnescapedValues:0];
    *v115 = 0;
    *&v115[8] = v115;
    *&v115[16] = 0x3032000000;
    v116 = __Block_byref_object_copy__2;
    v117 = __Block_byref_object_dispose__2;
    v118 = 0;
    v19 = [v101 objectForKeyedSubscript:@"tidContinueToken"];

    if (!v19)
    {
      v44 = [v102 objectForKeyedSubscript:@"signatureResumption"];
      if ((objc_opt_respondsToSelector() & 1) == 0 || ![v44 BOOLValue])
      {
LABEL_47:
        v52 = objc_alloc(MEMORY[0x1E69D4970]);
        v53 = [(NSURL *)v4->_accountURL schemeSwizzledURL];
        v54 = [v52 initWithURL:v53];

        [v54 setRequestParameters:v100];
        if (*(*&v115[8] + 40))
        {
          v55 = [v54 HTTPHeaders];
          v56 = [v55 mutableCopy];

          if (!v56)
          {
            v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          [v56 addEntriesFromDictionary:{*(*&v115[8] + 40), v95}];
          [v54 setHTTPHeaders:v56];
        }

        [(SUStorePageViewController *)v4 setURLRequestProperties:v54, v95];
        v57 = [*(*&v115[8] + 40) copy];
        tidHeaders = v4->_tidHeaders;
        v4->_tidHeaders = v57;

        v99 = [v102 objectForKey:@"dsid"];

        if (v99)
        {
          v59 = SSAccountGetUniqueIdentifierFromValue();
          v60 = v59;
          if (v59)
          {
            if ([v59 unsignedLongLongValue])
            {
              v61 = [(SUStorePageViewController *)v4 authenticationContext];
              v62 = [v61 mutableCopy];

              if (v62)
              {
                [v62 setRequiredUniqueIdentifier:v60];
              }

              else
              {
                v62 = [objc_alloc(MEMORY[0x1E69D4968]) initWithAccountIdentifier:v60];
              }

              [(SUStorePageViewController *)v4 setAuthenticationContext:v62];
              v63 = 0;
              goto LABEL_69;
            }

            v63 = 0;
LABEL_58:
            v62 = [MEMORY[0x1E69D4938] sharedConfig];
            v64 = [v62 shouldLog];
            v65 = [v62 shouldLogToDisk];
            v66 = [v62 OSLogObject];
            v67 = v66;
            if (v65)
            {
              v64 |= 2u;
            }

            if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              v64 &= 2u;
            }

            if (v64)
            {
              v68 = objc_opt_class();
              v109 = 138543362;
              v110 = v68;
              v69 = v68;
              LODWORD(v97) = 12;
              v96 = &v109;
              v70 = _os_log_send_and_compose_impl();

              if (!v70)
              {
                goto LABEL_69;
              }

              v67 = [MEMORY[0x1E696AEC0] stringWithCString:v70 encoding:{4, &v109, v97}];
              free(v70);
              v96 = v67;
              SSFileLog();
            }

LABEL_69:
            [(SUStorePageViewController *)v4 setExternalRequest:1];
            if (v4->_accountURL)
            {
              v71 = 0;
            }

            else
            {
              v71 = v63;
            }

            if (v71 == 1)
            {
              v72 = [MEMORY[0x1E69D4890] defaultStore];
              v73 = [v72 activeAccount];
              v74 = v73 == 0;

              if (v74)
              {
                v75 = 1;
              }

              else
              {
                v75 = 2;
              }
            }

            else
            {
              v75 = 2 * (v4->_accountURL == 0);
            }

            [(SUAccountViewController *)v4 setStyle:v75, v96];
            if (v4->_accountURL)
            {
              v76 = [MEMORY[0x1E69D4938] sharedConfig];
              v77 = [v76 shouldLog];
              v78 = [v76 shouldLogToDisk];
              v79 = [v76 OSLogObject];
              v80 = v79;
              if (v78)
              {
                v77 |= 2u;
              }

              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
              {
                v81 = v77;
              }

              else
              {
                v81 = v77 & 2;
              }

              if (!v81)
              {
                goto LABEL_93;
              }

              v82 = objc_opt_class();
              v83 = v4->_accountURL;
              v84 = [(SUStorePageViewController *)v4 authenticationContext];
              v85 = [v84 requiredUniqueIdentifier];
              v109 = 138543874;
              v110 = v82;
              v111 = 2112;
              v112 = v83;
              v113 = 2112;
              v114 = v85;
              LODWORD(v97) = 32;
              v86 = _os_log_send_and_compose_impl();

              if (v86)
              {
                v80 = [MEMORY[0x1E696AEC0] stringWithCString:v86 encoding:{4, &v109, v97}];
                free(v86);
                SSFileLog();
LABEL_93:
              }
            }

            else
            {
              v76 = [MEMORY[0x1E69D4938] sharedConfig];
              v87 = [v76 shouldLog];
              v88 = [v76 shouldLogToDisk];
              v89 = [v76 OSLogObject];
              v80 = v89;
              if (v88)
              {
                v87 |= 2u;
              }

              if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
              {
                v87 &= 2u;
              }

              if (!v87)
              {
                goto LABEL_93;
              }

              v90 = objc_opt_class();
              v109 = 138543362;
              v110 = v90;
              v91 = v90;
              LODWORD(v97) = 12;
              v92 = _os_log_send_and_compose_impl();

              if (v92)
              {
                v80 = [MEMORY[0x1E696AEC0] stringWithCString:v92 encoding:{4, &v109, v97}];
                free(v92);
                SSFileLog();
                goto LABEL_93;
              }
            }

            _Block_object_dispose(v115, 8);
            goto LABEL_95;
          }
        }

        else
        {
          v60 = 0;
        }

        v63 = 1;
        goto LABEL_58;
      }

      v45 = [MEMORY[0x1E698C940] resumptionHeaders];
      v46 = *(*&v115[8] + 40);
      *(*&v115[8] + 40) = v45;
LABEL_46:

      goto LABEL_47;
    }

    v20 = v19;
    v21 = [MEMORY[0x1E69D4938] sharedConfig];
    v22 = [v21 shouldLog];
    v23 = [v21 shouldLogToDisk];
    v24 = [v21 OSLogObject];
    v25 = v24;
    if (v23)
    {
      v22 |= 2u;
    }

    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v22 &= 2u;
    }

    v98 = v20;
    if (v22)
    {
      v26 = objc_opt_class();
      v109 = 138543618;
      v110 = v26;
      v111 = 2114;
      v112 = v20;
      v27 = v26;
      LODWORD(v97) = 22;
      v95 = &v109;
      v28 = _os_log_send_and_compose_impl();

      if (!v28)
      {
        goto LABEL_27;
      }

      v25 = [MEMORY[0x1E696AEC0] stringWithCString:v28 encoding:{4, &v109, v97}];
      free(v28);
      v95 = v25;
      SSFileLog();
    }

LABEL_27:
    v29 = [MEMORY[0x1E69D4890] defaultStore];
    v30 = [v29 activeAccount];
    v31 = [v30 uniqueIdentifier];

    v32 = dispatch_semaphore_create(0);
    v33 = objc_alloc_init(MEMORY[0x1E69D48A8]);
    v104[0] = MEMORY[0x1E69E9820];
    v104[1] = 3221225472;
    v104[2] = __54__SUAccountViewController_initWithExternalAccountURL___block_invoke;
    v104[3] = &unk_1E8164EB0;
    v105 = v4;
    v107 = v115;
    v34 = v32;
    v106 = v34;
    [v33 getAllCachedBiometricHTTPHeadersWithToken:v20 accountID:v31 evict:1 completionBlock:v104];
    v35 = dispatch_time(0, 3000000000);
    if (!dispatch_semaphore_wait(v34, v35))
    {
      v47 = [*(*&v115[8] + 40) objectForKeyedSubscript:*MEMORY[0x1E69D4C80]];
      v48 = v47 == 0;

      if (!v48)
      {
        v49 = [*(*&v115[8] + 40) objectForKeyedSubscript:*MEMORY[0x1E69D4C88]];
        v50 = v49 == 0;

        if (v50)
        {
          v51 = @"FB";
        }

        else
        {
          v51 = @"PK";
        }

        [*(*&v115[8] + 40) setObject:v51 forKey:{*MEMORY[0x1E69D4C70], v95}];
      }

      goto LABEL_45;
    }

    v36 = [MEMORY[0x1E69D4938] sharedConfig];
    v37 = [v36 shouldLog];
    v38 = [v36 shouldLogToDisk];
    v39 = [v36 OSLogObject];
    v40 = v39;
    if (v38)
    {
      v37 |= 2u;
    }

    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v37 &= 2u;
    }

    if (v37)
    {
      v41 = objc_opt_class();
      v109 = 138543618;
      v110 = v41;
      v111 = 2114;
      v112 = v98;
      v42 = v41;
      LODWORD(v97) = 22;
      v95 = &v109;
      v43 = _os_log_send_and_compose_impl();

      if (!v43)
      {
LABEL_36:

LABEL_45:
        v46 = v98;
        v44 = v98;
        goto LABEL_46;
      }

      v40 = [MEMORY[0x1E696AEC0] stringWithCString:v43 encoding:{4, &v109, v97}];
      free(v43);
      v95 = v40;
      SSFileLog();
    }

    goto LABEL_36;
  }

LABEL_95:

  return v4;
}

void __54__SUAccountViewController_initWithExternalAccountURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5];
    v14 = *(*(a1 + 48) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    goto LABEL_13;
  }

  v7 = [MEMORY[0x1E69D4938] sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  *v17 = 138543618;
  *&v17[4] = objc_opt_class();
  *&v17[12] = 2114;
  *&v17[14] = v6;
  v11 = *&v17[4];
  LODWORD(v16) = 22;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v17, v16, *v17, *&v17[16], v18}];
    free(v12);
    SSFileLog();
LABEL_10:
  }

LABEL_13:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)setStyle:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v15 = 138543618;
    *&v15[4] = objc_opt_class();
    *&v15[12] = 2048;
    *&v15[14] = a3;
    v9 = *&v15[4];
    LODWORD(v14) = 22;
    v10 = _os_log_send_and_compose_impl();

    if (!v10)
    {
      goto LABEL_10;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v15, v14, *v15, *&v15[16]}];
    free(v10);
    SSFileLog();
  }

LABEL_10:
  if (self->_style != a3)
  {
    self->_style = a3;
    v11 = [(SUStorePageViewController *)self URLRequestProperties];
    v12 = [v11 mutableCopy];

    v13 = [(SUAccountViewController *)self _bagKeyForStyle:self->_style];
    [v12 setURLBagKey:v13];

    [(SUStorePageViewController *)self setURLRequestProperties:v12];
    [(SUStorePageViewController *)self _setUseWebViewFastPath:[(SUAccountViewController *)self _shouldUseWebViewFastPath]];
  }
}

- (void)enqueueFetchOperation
{
  location[3] = *MEMORY[0x1E69E9840];
  mescalState = self->_mescalState;
  if (mescalState)
  {
    if (mescalState == 2)
    {
      v21.receiver = self;
      v21.super_class = SUAccountViewController;
      [(SUStorePageViewController *)&v21 enqueueFetchOperation];
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69D4938] sharedConfig];
    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      LODWORD(location[0]) = 138543362;
      *(location + 4) = objc_opt_class();
      v8 = *(location + 4);
      LODWORD(v16) = 12;
      v9 = _os_log_send_and_compose_impl();

      if (v9)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, location, v16}];
        free(v9);
        SSFileLog();
      }
    }

    else
    {
    }

    v11 = [(SUAccountViewController *)self newFetchOperation];
    v12 = [SUSetupMescalSessionOperation alloc];
    v13 = [v11 requestProperties];
    v14 = [(SUSetupMescalSessionOperation *)v12 initWithURLRequestProperties:v13];

    objc_initWeak(location, v14);
    objc_initWeak(&from, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __48__SUAccountViewController_enqueueFetchOperation__block_invoke;
    v17[3] = &unk_1E8164ED8;
    objc_copyWeak(&v18, location);
    objc_copyWeak(&v19, &from);
    [(SUSetupMescalSessionOperation *)v14 setCompletionBlock:v17];
    self->_mescalState = 1;
    v15 = [MEMORY[0x1E69E4798] mainQueue];
    [v15 addOperation:v14];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
  }
}

void __48__SUAccountViewController_enqueueFetchOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __48__SUAccountViewController_enqueueFetchOperation__block_invoke_2;
  v7 = &unk_1E8164948;
  objc_copyWeak(&v9, (a1 + 40));
  v3 = WeakRetained;
  v8 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], &v4);
  [v3 setCompletionBlock:{0, v4, v5, v6, v7}];

  objc_destroyWeak(&v9);
}

void __48__SUAccountViewController_enqueueFetchOperation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) mescalSession];
  v3 = [*(a1 + 32) error];
  [WeakRetained _mescalDidOpenWithSession:v2 error:v3];
}

- (void)handleFailureWithError:(id)a3
{
  v4 = a3;
  v5 = ISWeakLinkedStringConstantForString();
  v6 = [v4 domain];
  v7 = [v6 isEqualToString:v5];

  if ((v7 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = SUAccountViewController;
    [(SUStorePageViewController *)&v8 handleFailureWithError:v4];
  }
}

- (id)newFetchOperation
{
  v14.receiver = self;
  v14.super_class = SUAccountViewController;
  v3 = [(SUStorePageViewController *)&v14 newFetchOperation];
  v4 = [(SUStorePageViewController *)self authenticationContext];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69D4968]);
    v7 = [MEMORY[0x1E69D4890] defaultStore];
    v8 = [v7 activeAccount];
    v5 = [v6 initWithAccount:v8];
  }

  [v5 setPromptStyle:1];
  v9 = [(SUAccountViewController *)self _authenticationQueryParametersForStyle:self->_style];
  [v5 setRequestParameters:v9];

  [v5 setShouldFollowAccountButtons:1];
  [v3 setAuthenticationContext:v5];
  v10 = [v3 requestProperties];
  v11 = [v10 mutableCopy];

  if (self->_style == 2)
  {
    [v5 accountScope];
    [v11 setURLBagType:SSURLBagTypeForAccountScope()];
  }

  primingSignature = self->_primingSignature;
  if (primingSignature)
  {
    [v11 setValue:primingSignature forHTTPHeaderField:@"X-Apple-ActionSignature"];
  }

  [v3 setRequestProperties:v11];

  return v3;
}

- (id)newViewControllerForPage:(id)a3 ofType:(int64_t)a4 returningError:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (!a4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ![v8 didShowDialog])
    {
      goto LABEL_19;
    }

    v13 = [MEMORY[0x1E69D4938] sharedConfig];
    v14 = [v13 shouldLog];
    if ([v13 shouldLogToDisk])
    {
      v15 = v14 | 2;
    }

    else
    {
      v15 = v14;
    }

    v16 = [v13 OSLogObject];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v15 &= 2u;
    }

    if (v15)
    {
      v30 = 138543362;
      v31 = objc_opt_class();
      v17 = v31;
      LODWORD(v27) = 12;
      v18 = _os_log_send_and_compose_impl();

      if (!v18)
      {
LABEL_18:

        v10 = 0;
LABEL_29:
        v9 = 0;
        goto LABEL_30;
      }

      v16 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v30, v27}];
      free(v18);
      SSFileLog();
    }

    goto LABEL_18;
  }

  if (a4 != 1)
  {
LABEL_19:
    v19 = [MEMORY[0x1E69D4938] sharedConfig];
    v20 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      v21 = v20 | 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = [v19 OSLogObject];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v30 = 138543362;
      v31 = objc_opt_class();
      v23 = v31;
      LODWORD(v27) = 12;
      v24 = _os_log_send_and_compose_impl();

      if (!v24)
      {
LABEL_28:

        v10 = ISError();
        goto LABEL_29;
      }

      v22 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v30, v27}];
      free(v24);
      SSFileLog();
    }

    goto LABEL_28;
  }

  v28.receiver = self;
  v28.super_class = SUAccountViewController;
  v29 = 0;
  v9 = [(SUStorePageViewController *)&v28 newViewControllerForPage:v8 ofType:1 returningError:&v29];
  v10 = v29;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [(SUAccountViewController *)self account];
    [v9 setAccount:v11];

    v12 = [(SUStorePageViewController *)self authenticationContext];
    [v9 setAuthenticationContext:v12];

    [v9 _setMescalSession:self->_mescalSession];
    [v9 setStyle:1];
    if ([(SUAccountViewController *)self shouldSignRequests])
    {
      [v9 setShouldSignRequests:1];
    }

    [v9 setTidHeaders:self->_tidHeaders];
  }

LABEL_30:
  if (a5)
  {
    v25 = v10;
    *a5 = v10;
  }

  return v9;
}

- (BOOL)shouldSignRequests
{
  if ([(SUAccountViewController *)self style]== 1)
  {
    return 1;
  }

  if ([(SUAccountViewController *)self style])
  {
    return 0;
  }

  v4 = [MEMORY[0x1E69E47F8] sharedCache];
  v5 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v6 = [v4 URLBagForContext:v5];

  v7 = [(SUAccountViewController *)self _bagKeyForStyle:1];
  v8 = [v6 valueForKey:v7];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    v10 = [v9 path];

    v11 = [(NSURL *)self->_accountURL schemeSwizzledURL];
    v12 = [v11 path];

    if ([v12 length])
    {
      v3 = [v12 isEqualToString:v10];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 postNotificationName:@"SUAccountViewControllerDidDisappearNotification" object:self];

  v6.receiver = self;
  v6.super_class = SUAccountViewController;
  [(SUStorePageViewController *)&v6 viewDidDisappear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  [(SUAccountViewController *)self _forceOrientationBackToSupportedOrientation];
  if ([(SUAccountViewController *)self showAccountGlyph])
  {
    v6 = [(SUAccountViewController *)self logoutButton];

    if (!v6)
    {
      v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.crop.circle"];
      v8 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v7 style:2 target:self action:sel__logoutPressed_];
      [(SUAccountViewController *)self setLogoutButton:v8];

      v9 = [(SUAccountViewController *)self logoutButton];
      [v9 setTag:424242];
    }

    v10 = [(SUViewController *)self navigationItem];
    [v10 setDelegate:self];

    v11 = [(SUViewController *)self navigationItem];
    v12 = [(SUAccountViewController *)self logoutButton];
    [v11 setLeftBarButtonItem:v12];
  }

  v13.receiver = self;
  v13.super_class = SUAccountViewController;
  [(SUStorePageViewController *)&v13 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];

  v6.receiver = self;
  v6.super_class = SUAccountViewController;
  [(SUStorePageViewController *)&v6 viewWillDisappear:v3];
}

- (id)navigationItem:(id)a3 willChangeLeftItem:(id)a4 toNewItem:(id)a5
{
  v7 = a4;
  if ([(SUAccountViewController *)self showAccountGlyph])
  {
    v8 = [(SUAccountViewController *)self logoutButton];

    v9 = 0;
    if (!a5 && v8 != v7)
    {
      v9 = [(SUAccountViewController *)self logoutButton];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)navigationItem:(id)a3 willChangeLeftItems:(id)a4 toNewItems:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (![(SUAccountViewController *)self showAccountGlyph])
  {
    goto LABEL_5;
  }

  v9 = [(SUAccountViewController *)self logoutButton];
  if (([v7 containsObject:v9] & 1) == 0)
  {
    v11 = [v8 count];

    if (!v11)
    {
      v12 = MEMORY[0x1E695DEC8];
      v9 = [(SUAccountViewController *)self logoutButton];
      v10 = [v12 arrayWithObject:v9];
      goto LABEL_7;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = 0;
LABEL_7:

LABEL_8:

  return v10;
}

- (void)_logoutPressed:(id)a3
{
  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 userInterfaceIdiom] == 1;

  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:v5];
  v7 = MEMORY[0x1E69DC648];
  v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_1F41B3660 table:0];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __42__SUAccountViewController__logoutPressed___block_invoke;
  v26[3] = &unk_1E8164F00;
  v26[4] = self;
  v10 = v6;
  v27 = v10;
  v11 = [v7 actionWithTitle:v9 style:1 handler:v26];
  [v10 addAction:v11];

  v12 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v13 = [v12 ams_activeiTunesAccount];

  if (([(objc_class *)getAMSBiometricsClass() isAvailableForAccount:v13]& 1) == 0)
  {
    v14 = MEMORY[0x1E69DC648];
    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"PASSWORD_SETTINGS" value:&stru_1F41B3660 table:0];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __42__SUAccountViewController__logoutPressed___block_invoke_89;
    v23[3] = &unk_1E8164F00;
    v24 = v13;
    v25 = self;
    v17 = [v14 actionWithTitle:v16 style:0 handler:v23];
    [v10 addAction:v17];
  }

  v18 = MEMORY[0x1E69DC648];
  v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"SIGN_OUT_OF_STORE" value:&stru_1F41B3660 table:0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __42__SUAccountViewController__logoutPressed___block_invoke_2;
  v22[3] = &unk_1E8164F78;
  v22[4] = self;
  v21 = [v18 actionWithTitle:v20 style:2 handler:v22];
  [v10 addAction:v21];

  [(SUAccountViewController *)self presentViewController:v10 animated:1 completion:0];
}

uint64_t __42__SUAccountViewController__logoutPressed___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = objc_opt_class();
  v6 = *(&v10 + 4);
  LODWORD(v9) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v10, v9, v10}];
    free(v7);
    SSFileLog();
LABEL_9:
  }

  return [*(a1 + 40) dismissAnimated:1];
}

void __42__SUAccountViewController__logoutPressed___block_invoke_89(uint64_t a1)
{
  v5 = [objc_alloc(getAMSUIPasswordSettingsViewControllerClass()) initWithAccount:*(a1 + 32)];
  v2 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v5];
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    [v2 setModalPresentationStyle:3];
  }

  [*(a1 + 40) presentViewController:v2 animated:1 completion:0];
}

void __42__SUAccountViewController__logoutPressed___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v3 = [v2 ams_activeiTunesAccount];

  [v3 setActive:0];
  v4 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SUAccountViewController__logoutPressed___block_invoke_3;
  v5[3] = &unk_1E8164F50;
  v5[4] = *(a1 + 32);
  [v4 saveAccount:v3 withCompletionHandler:v5];
}

void __42__SUAccountViewController__logoutPressed___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SUAccountViewController__logoutPressed___block_invoke_4;
  block[3] = &unk_1E8164F28;
  v9 = a2;
  block[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __42__SUAccountViewController__logoutPressed___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != 1)
  {
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    v6 = [v3 OSLogObject];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      *v12 = 138543618;
      *&v12[4] = v7;
      *&v12[12] = 2114;
      *&v12[14] = v8;
      v9 = v7;
      LODWORD(v11) = 22;
      v10 = _os_log_send_and_compose_impl();

      if (!v10)
      {
LABEL_14:

        return;
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, v12, v11, *v12, *&v12[16]}];
      free(v10);
      SSFileLog();
    }

    goto LABEL_14;
  }

  v2 = *(a1 + 32);

  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (id)_authenticationQueryParametersForStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"true", @"createSession", @"viewAccount", @"why", 0, v3}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_bagKeyForStyle:(int64_t)a3
{
  v3 = @"signup";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return @"modifyAccount";
  }

  else
  {
    return v3;
  }
}

- (void)_didEnterBackground:(id)a3
{
  if (![(SUStorePageViewController *)self didPageViewLoad])
  {

    [(UIViewController *)self dismissAnimated:0];
  }
}

- (void)_forceOrientationBackToSupportedOrientation
{
  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  if (([v7 statusBarOrientation] - 3) <= 1 && (-[SUViewController supportedInterfaceOrientations](self, "supportedInterfaceOrientations") & 0x18) == 0)
  {
    if (!-[SUAccountViewController isViewLoaded](self, "isViewLoaded") || (-[SUAccountViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
    {
      v5 = [(SUAccountViewController *)self presentedViewController];
      v6 = [v5 view];
      v4 = [v6 window];

      if (!v4)
      {
        v4 = [MEMORY[0x1E69DD2E8] keyWindow];
      }
    }

    [v4 _setRotatableViewOrientation:1 duration:1 force:0.0];
  }
}

- (void)_mescalDidOpenWithSession:(id)a3 error:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  primingSignature = self->_primingSignature;
  self->_primingSignature = 0;

  mescalSession = self->_mescalSession;
  self->_mescalSession = 0;

  v11 = __LatestAccountViewController;
  __LatestAccountViewController = 0;

  if (!v8)
  {
    v12 = [MEMORY[0x1E69D4938] sharedConfig];
    v19 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v12 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v20 &= 2u;
    }

    if (!v7)
    {
      if (v20)
      {
        v35 = 138543362;
        v36 = objc_opt_class();
        v30 = v36;
        LODWORD(v33) = 12;
        v31 = _os_log_send_and_compose_impl();

        if (v31)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithCString:v31 encoding:{4, &v35, v33}];
          free(v31);
          SSFileLog();
        }

        v7 = 0;
      }

      else
      {
      }

      goto LABEL_29;
    }

    if (v20)
    {
      v35 = 138543362;
      v36 = objc_opt_class();
      v34 = v7;
      v22 = v36;
      LODWORD(v33) = 12;
      v23 = _os_log_send_and_compose_impl();

      v7 = v34;
      if (!v23)
      {
        goto LABEL_22;
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, &v35, v33}];
      free(v23);
      SSFileLog();
    }

LABEL_22:
    objc_storeStrong(&self->_mescalSession, a3);
    v24 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
    v25 = __LatestAccountViewController;
    __LatestAccountViewController = v24;

    v26 = self->_mescalSession;
    v27 = [MEMORY[0x1E695DEF0] data];
    v12 = [(SUMescalSession *)v26 primeForAccountCreationWithData:v27 error:0];

    if ([v12 length])
    {
      [v12 bytes];
      [v12 length];
      v28 = ISCopyEncodedBase64();
      v29 = self->_primingSignature;
      self->_primingSignature = v28;
    }

    goto LABEL_29;
  }

  v12 = [MEMORY[0x1E69D4938] sharedConfig];
  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  v15 = [v12 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 & 2;
  }

  if (!v16)
  {
    goto LABEL_11;
  }

  v35 = 138543618;
  v36 = objc_opt_class();
  v37 = 2112;
  v38 = v8;
  v17 = v36;
  LODWORD(v33) = 22;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithCString:v18 encoding:{4, &v35, v33}];
    free(v18);
    SSFileLog();
LABEL_11:
  }

LABEL_29:

  self->_mescalState = 2;
  [(SUAccountViewController *)self enqueueFetchOperation];
}

- (id)_URLByRemovingBlacklistedParametersWithURL:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x1E695DFD8];
    v4 = a3;
    v5 = [v3 setWithArray:&unk_1F41EAA60];
    v6 = [v4 copyQueryStringDictionaryWithUnescapedValues:0];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __70__SUAccountViewController__URLByRemovingBlacklistedParametersWithURL___block_invoke;
    v22 = &unk_1E8164FA0;
    v8 = v5;
    v23 = v8;
    v9 = v7;
    v24 = v9;
    [v6 enumerateKeysAndObjectsUsingBlock:&v19];
    v10 = objc_alloc(MEMORY[0x1E696AD60]);
    v11 = [v4 absoluteString];
    v12 = [v10 initWithString:v11];

    v13 = [v4 query];

    if (v13)
    {
      v14 = [v12 rangeOfString:v13 options:4];
      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v12 deleteCharactersInRange:{v14, v15}];
      }
    }

    if (([v12 hasSuffix:@"?"] & 1) == 0)
    {
      [v12 appendString:@"?"];
    }

    v16 = [MEMORY[0x1E695DFF8] queryStringForDictionary:v9 escapedValues:0];
    if (v16)
    {
      [v12 appendString:v16];
    }

    v17 = [MEMORY[0x1E695DFF8] URLWithString:v12];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __70__SUAccountViewController__URLByRemovingBlacklistedParametersWithURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

@end
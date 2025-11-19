@interface SXProxyAuthenticationHandler
- (SXProxyAuthenticationHandler)initWithCredentialFactory:(id)a3 proxyConfiguration:(id)a4 retryCount:(unint64_t)a5;
- (void)handleAuthenticationChallenge:(id)a3 completion:(id)a4;
@end

@implementation SXProxyAuthenticationHandler

- (SXProxyAuthenticationHandler)initWithCredentialFactory:(id)a3 proxyConfiguration:(id)a4 retryCount:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = SXProxyAuthenticationHandler;
  v11 = [(SXProxyAuthenticationHandler *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_credentialFactory, a3);
    objc_storeStrong(&v12->_proxyConfiguration, a4);
    v13 = SXProxyAuthenticationHandlerDefaultRetryCount;
    if (SXProxyAuthenticationHandlerDefaultRetryCount <= a5)
    {
      v13 = a5;
    }

    v12->_retryCount = v13;
  }

  return v12;
}

- (void)handleAuthenticationChallenge:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 protectionSpace];
  v9 = [v6 failureResponse];
  if ([v6 previousFailureCount] <= self->_retryCount)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 statusCode] == 407)
      {
        if ([v8 isProxy])
        {
          v12 = [(SXProxyConfiguration *)self->_proxyConfiguration proxyHost];

          if (v12)
          {
            v13 = [v8 host];
            v14 = [(SXProxyConfiguration *)self->_proxyConfiguration proxyHost];
            v15 = [v13 isEqualToString:v14];

            if (v15)
            {
              v16 = [v8 proxyType];
              v17 = [v16 isEqualToString:*MEMORY[0x1E695ABA8]];

              if (v17)
              {
                v18 = [v8 authenticationMethod];
                v19 = [v18 isEqualToString:*MEMORY[0x1E695AB58]];

                if (v19)
                {
                  v20 = [(SXProxyAuthenticationHandler *)self credentialFactory];
                  v21 = [MEMORY[0x1E695DF00] date];
                  v25[0] = MEMORY[0x1E69E9820];
                  v25[1] = 3221225472;
                  v25[2] = __73__SXProxyAuthenticationHandler_handleAuthenticationChallenge_completion___block_invoke;
                  v25[3] = &unk_1E85003A0;
                  v26 = v7;
                  [v20 createCredentialForResponse:v9 date:v21 completion:v25];

                  goto LABEL_27;
                }

                if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_ERROR))
                {
                  [SXProxyAuthenticationHandler handleAuthenticationChallenge:completion:];
                }
              }

              else if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_ERROR))
              {
                [SXProxyAuthenticationHandler handleAuthenticationChallenge:completion:];
              }
            }

            else
            {
              v24 = SXProxyLog;
              if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_ERROR))
              {
                [SXProxyAuthenticationHandler handleAuthenticationChallenge:v24 completion:v8];
              }
            }
          }

          else if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_ERROR))
          {
            [SXProxyAuthenticationHandler handleAuthenticationChallenge:completion:];
          }
        }

        else
        {
          v23 = SXProxyLog;
          if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D825C000, v23, OS_LOG_TYPE_DEFAULT, "Rejecting authentication challenge; protection space is not a proxy", buf, 2u);
          }
        }

        (*(v7 + 2))(v7, 3, 0);
        goto LABEL_27;
      }

      v22 = SXProxyLog;
      if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D825C000, v22, OS_LOG_TYPE_DEFAULT, "Performing default handling due to non-407 authentication challenge", buf, 2u);
      }
    }

    (*(v7 + 2))(v7, 1, 0);
    goto LABEL_27;
  }

  v10 = SXProxyLog;
  if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134217984;
    v28 = [v6 previousFailureCount];
    _os_log_impl(&dword_1D825C000, v11, OS_LOG_TYPE_DEFAULT, "Cancelling authentication challenge due to failure count: %li", buf, 0xCu);
  }

  (*(v7 + 2))(v7, 2, 0);
LABEL_27:
}

void __73__SXProxyAuthenticationHandler_handleAuthenticationChallenge_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SXProxyLog;
  if (v3)
  {
    if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D825C000, v4, OS_LOG_TYPE_DEFAULT, "Using generated credentials for authentication handling", v6, 2u);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_ERROR))
    {
      __73__SXProxyAuthenticationHandler_handleAuthenticationChallenge_completion___block_invoke_cold_1();
    }

    v5 = *(*(a1 + 32) + 16);
  }

  v5();
}

- (void)handleAuthenticationChallenge:(void *)a1 completion:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 host];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1D825C000, v3, OS_LOG_TYPE_ERROR, "Rejecting authentication challenge; unexpected proxy host %@", &v5, 0xCu);
}

@end
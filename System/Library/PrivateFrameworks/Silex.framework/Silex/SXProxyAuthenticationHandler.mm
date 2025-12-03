@interface SXProxyAuthenticationHandler
- (SXProxyAuthenticationHandler)initWithCredentialFactory:(id)factory proxyConfiguration:(id)configuration retryCount:(unint64_t)count;
- (void)handleAuthenticationChallenge:(id)challenge completion:(id)completion;
@end

@implementation SXProxyAuthenticationHandler

- (SXProxyAuthenticationHandler)initWithCredentialFactory:(id)factory proxyConfiguration:(id)configuration retryCount:(unint64_t)count
{
  factoryCopy = factory;
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = SXProxyAuthenticationHandler;
  v11 = [(SXProxyAuthenticationHandler *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_credentialFactory, factory);
    objc_storeStrong(&v12->_proxyConfiguration, configuration);
    countCopy = SXProxyAuthenticationHandlerDefaultRetryCount;
    if (SXProxyAuthenticationHandlerDefaultRetryCount <= count)
    {
      countCopy = count;
    }

    v12->_retryCount = countCopy;
  }

  return v12;
}

- (void)handleAuthenticationChallenge:(id)challenge completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  challengeCopy = challenge;
  completionCopy = completion;
  protectionSpace = [challengeCopy protectionSpace];
  failureResponse = [challengeCopy failureResponse];
  if ([challengeCopy previousFailureCount] <= self->_retryCount)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([failureResponse statusCode] == 407)
      {
        if ([protectionSpace isProxy])
        {
          proxyHost = [(SXProxyConfiguration *)self->_proxyConfiguration proxyHost];

          if (proxyHost)
          {
            host = [protectionSpace host];
            proxyHost2 = [(SXProxyConfiguration *)self->_proxyConfiguration proxyHost];
            v15 = [host isEqualToString:proxyHost2];

            if (v15)
            {
              proxyType = [protectionSpace proxyType];
              v17 = [proxyType isEqualToString:*MEMORY[0x1E695ABA8]];

              if (v17)
              {
                authenticationMethod = [protectionSpace authenticationMethod];
                v19 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB58]];

                if (v19)
                {
                  credentialFactory = [(SXProxyAuthenticationHandler *)self credentialFactory];
                  date = [MEMORY[0x1E695DF00] date];
                  v25[0] = MEMORY[0x1E69E9820];
                  v25[1] = 3221225472;
                  v25[2] = __73__SXProxyAuthenticationHandler_handleAuthenticationChallenge_completion___block_invoke;
                  v25[3] = &unk_1E85003A0;
                  v26 = completionCopy;
                  [credentialFactory createCredentialForResponse:failureResponse date:date completion:v25];

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
                [SXProxyAuthenticationHandler handleAuthenticationChallenge:v24 completion:protectionSpace];
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

        (*(completionCopy + 2))(completionCopy, 3, 0);
        goto LABEL_27;
      }

      v22 = SXProxyLog;
      if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D825C000, v22, OS_LOG_TYPE_DEFAULT, "Performing default handling due to non-407 authentication challenge", buf, 2u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 1, 0);
    goto LABEL_27;
  }

  v10 = SXProxyLog;
  if (os_log_type_enabled(SXProxyLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 134217984;
    previousFailureCount = [challengeCopy previousFailureCount];
    _os_log_impl(&dword_1D825C000, v11, OS_LOG_TYPE_DEFAULT, "Cancelling authentication challenge due to failure count: %li", buf, 0xCu);
  }

  (*(completionCopy + 2))(completionCopy, 2, 0);
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
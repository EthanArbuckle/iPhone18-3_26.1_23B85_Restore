@interface AMSupportOSURLSession
- (AMSupportOSURLSession)initWithOptions:(id)a3;
- (id)_defaultSessionConfigurationWithIdentifier:(id)a3;
- (id)_newSession;
- (id)_urlRequestForHTTPMessage:(__CFHTTPMessage *)a3;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)sendRequest:(__CFHTTPMessage *)a3 completion:(id)a4;
@end

@implementation AMSupportOSURLSession

- (id)_defaultSessionConfigurationWithIdentifier:(id)a3
{
  v4 = [MEMORY[0x29EDB8518] ephemeralSessionConfiguration];
  v5 = [(NSDictionary *)self->_options objectForKey:@"SocksProxySettings"];
  if (v5)
  {
    v6 = v5;
    v7 = v5;
LABEL_3:
    [v4 setConnectionProxyDictionary:v6];

    goto LABEL_6;
  }

  if ([-[NSDictionary objectForKey:](self->_options objectForKey:{@"UsePurpleReverseProxy", "BOOLValue"}])
  {
    v6 = AMSupportHttpCopyProxySettings(0, 0);
    if (v6)
    {
      goto LABEL_3;
    }
  }

LABEL_6:
  [v4 setTimeoutIntervalForRequest:self->_timeout];
  [v4 setAllowsCellularAccess:1];
  [v4 set_shouldSkipPreferredClientCertificateLookup:1];
  return v4;
}

- (id)_newSession
{
  v2 = [MEMORY[0x29EDB8510] sessionWithConfiguration:-[AMSupportOSURLSession _defaultSessionConfigurationWithIdentifier:](self delegate:"_defaultSessionConfigurationWithIdentifier:" delegateQueue:{@"com.apple.libamsupport.http-traffic", self, 0}];

  return v2;
}

- (AMSupportOSURLSession)initWithOptions:(id)a3
{
  v12 = *MEMORY[0x29EDCA608];
  v11.receiver = self;
  v11.super_class = AMSupportOSURLSession;
  v4 = [(AMSupportOSURLSession *)&v11 init];
  if (v4)
  {
    v5 = [a3 objectForKey:@"Timeout"];
    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v6 = 0x4072C00000000000;
    }

    *&v4->_timeout = v6;
    v7 = [a3 objectForKey:@"Priority"];
    if (v7)
    {
      [v7 floatValue];
    }

    else
    {
      v8 = 0.5;
    }

    v4->_priority = v8;
    v4->_queue = dispatch_queue_create("com.apple.libamsupport.http-session", 0);
    v4->_options = a3;
    v4->_session = [(AMSupportOSURLSession *)v4 _newSession];
    v4->_sslEvalFailed = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v4;
}

- (void)dealloc
{
  v6 = *MEMORY[0x29EDCA608];
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v5.receiver = self;
  v5.super_class = AMSupportOSURLSession;
  [(AMSupportOSURLSession *)&v5 dealloc];
  v4 = *MEMORY[0x29EDCA608];
}

- (id)_urlRequestForHTTPMessage:(__CFHTTPMessage *)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = CFHTTPMessageCopyRequestURL(a3);
  if (!v5)
  {
    return 0;
  }

  v6 = [MEMORY[0x29EDB84F8] requestWithURL:v5 cachePolicy:1 timeoutInterval:self->_timeout];
  if (!v6)
  {
    return v6;
  }

  v7 = CFHTTPMessageCopyRequestMethod(a3);
  if (!v7)
  {
    return 0;
  }

  [v6 setHTTPMethod:v7];
  v8 = CFHTTPMessageCopyAllHeaderFields(a3);
  if (v8)
  {
    [v6 setAllHTTPHeaderFields:v8];
  }

  v9 = CFHTTPMessageCopyBody(a3);
  if (v9)
  {
    [v6 setHTTPBody:v9];
  }

  return v6;
}

- (void)sendRequest:(__CFHTTPMessage *)a3 completion:(id)a4
{
  v6[7] = *MEMORY[0x29EDCA608];
  queue = self->_queue;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __48__AMSupportOSURLSession_sendRequest_completion___block_invoke;
  v6[3] = &unk_29EE96B50;
  v6[5] = a4;
  v6[6] = a3;
  v6[4] = self;
  dispatch_sync(queue, v6);
  v5 = *MEMORY[0x29EDCA608];
}

void __48__AMSupportOSURLSession_sendRequest_completion___block_invoke(uint64_t a1)
{
  block[5] = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) _urlRequestForHTTPMessage:*(a1 + 48)];
  if (v2)
  {
    v8 = [*(*(a1 + 32) + 32) dataTaskWithRequest:v2 completionHandler:*(a1 + 40)];
    LODWORD(v9) = *(*(a1 + 32) + 24);
    [v8 setPriority:v9];
    v10 = *MEMORY[0x29EDCA608];

    [v8 resume];
  }

  else
  {
    AMSupportLogInternal(3, "[AMSupportOSURLSession sendRequest:completion:]_block_invoke", "Could not construct NSURLRequest from message %@", v3, v4, v5, v6, v7, *(a1 + 48));
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __48__AMSupportOSURLSession_sendRequest_completion___block_invoke_2;
    block[3] = &unk_29EE96B28;
    block[4] = *(a1 + 40);
    dispatch_async(global_queue, block);
    v12 = *MEMORY[0x29EDCA608];
  }
}

uint64_t __48__AMSupportOSURLSession_sendRequest_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x29EDB9FA0] errorWithDomain:@"AMSupportError" code:3 userInfo:0];
  v3 = *(v1 + 16);

  return v3(v1, 0, 0, v2);
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  if (a4)
  {
    AMSupportLogInternal(3, "[AMSupportOSURLSession URLSession:didBecomeInvalidWithError:]", "Session %@ became invalid: %@", a4, v4, v5, v6, v7, a3);
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v85 = *MEMORY[0x29EDCA608];
  v8 = [objc_msgSend(a4 protectionSpace];
  AMSupportLogInternal(7, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Authentication challenge received.  Method: %@", v9, v10, v11, v12, v13, v8);
  if ([a4 previousFailureCount] < 1)
  {
    if ([v8 isEqual:*MEMORY[0x29EDB84E0]] && -[NSDictionary objectForKey:](self->_options, "objectForKey:", @"ClientIdentity"))
    {
      AMSupportLogInternal(6, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Received client certificate challenge. Client SSL authentication failed.", v24, v25, v26, v27, v28, v75);
    }

    else
    {
      if (([v8 isEqual:*MEMORY[0x29EDB84E8]] & 1) == 0)
      {
        v19 = *(a5 + 2);
        v37 = *MEMORY[0x29EDCA608];
        v21 = a5;
        v22 = 1;
        goto LABEL_3;
      }

      v29 = [(NSDictionary *)self->_options objectForKey:@"DisableSSLValidation"];
      if ([v29 isEqual:{objc_msgSend(MEMORY[0x29EDBA070], "numberWithBool:", 1)}])
      {
        AMSupportLogInternal(6, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "SSL validation disabled.  Attempting to continue without authentication.", v30, v31, v32, v33, v34, v75);
        v35 = [MEMORY[0x29EDB8508] credentialForTrust:{objc_msgSend(objc_msgSend(a4, "protectionSpace"), "serverTrust")}];
        v19 = *(a5 + 2);
        v36 = *MEMORY[0x29EDCA608];
        v23 = v35;
        v21 = a5;
        v22 = 0;
        goto LABEL_4;
      }

      [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v40 = [MEMORY[0x29EDB8508] credentialForTrust:{objc_msgSend(objc_msgSend(a4, "protectionSpace"), "serverTrust")}];
          v19 = *(a5 + 2);
          v41 = *MEMORY[0x29EDCA608];
          v23 = v40;
          v21 = a5;
          v22 = 1;
          goto LABEL_4;
        }
      }

      [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v39 = [(NSDictionary *)self->_options objectForKey:@"TrustedServerCAs"];
      v77 = self;
      v78 = a5;
      if ((isKindOfClass & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v39 = [MEMORY[0x29EDB8D80] arrayWithObject:{-[NSDictionary objectForKey:](self->_options, "objectForKey:", @"TrustedServerCAs"}];
        }

        else
        {
          v39 = 0;
        }
      }

      v42 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v39, "count")}];
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v43 = [v39 countByEnumeratingWithState:&v81 objects:v80 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v82;
        v46 = *MEMORY[0x29EDB8ED8];
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v82 != v45)
            {
              objc_enumerationMutation(v39);
            }

            v48 = *(*(&v81 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v49 = SecCertificateCreateWithData(v46, v48);
              if (v49)
              {
                v55 = v49;
                [v42 addObject:v49];
                CFRelease(v55);
              }

              else
              {
                AMSupportLogInternal(4, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "trusted certificate could not be loaded %@", v50, v51, v52, v53, v54, v48);
              }
            }
          }

          v44 = [v39 countByEnumeratingWithState:&v81 objects:v80 count:16];
        }

        while (v44);
      }

      v56 = [objc_msgSend(a4 "protectionSpace")];
      v79 = 0;
      AMSupportLogInternal(7, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Attempting trust evaluate", v57, v58, v59, v60, v61, v75);
      v67 = AMSupportX509ChainEvaluateTrust(v56, v42, &v79, v62, v63, v64, v65, v66);
      if (v67)
      {
        AMSupportLogInternal(3, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "trust evaluation failed (OSStatus=%d)", v68, v69, v70, v71, v72, v67);
        v73 = v77;
        a5 = v78;
      }

      else
      {
        v73 = v77;
        a5 = v78;
        if (v79 == 4 || v79 == 1)
        {
          AMSupportLogInternal(7, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Trust evaluation succeeded, proceeding..", v68, v69, v70, v71, v72, v76);
          (*(v78 + 2))(v78, 0, [MEMORY[0x29EDB8508] credentialForTrust:v56]);
          goto LABEL_36;
        }

        AMSupportLogInternal(4, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "trust evaluation did not result in okay to proceed (result=%d)", v68, v69, v70, v71, v72, v79);
      }

      v73->_sslEvalFailed = 1;
    }

    (*(a5 + 2))(a5, 2, 0);
LABEL_36:
    v74 = *MEMORY[0x29EDCA608];
    return;
  }

  AMSupportLogInternal(3, "[AMSupportOSURLSession URLSession:didReceiveChallenge:completionHandler:]", "Multiple challenge failures. Request failed.", v14, v15, v16, v17, v18, v75);
  v19 = *(a5 + 2);
  v20 = *MEMORY[0x29EDCA608];
  v21 = a5;
  v22 = 2;
LABEL_3:
  v23 = 0;
LABEL_4:

  v19(v21, v22, v23);
}

@end
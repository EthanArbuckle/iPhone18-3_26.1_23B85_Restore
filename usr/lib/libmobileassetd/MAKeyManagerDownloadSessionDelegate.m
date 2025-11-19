@interface MAKeyManagerDownloadSessionDelegate
- (MAKeyManagerDownloadSessionDelegate)initWithName:(id)a3;
- (MAKeyManagerDownloadSessionDelegate)initWithName:(id)a3 certType:(int)a4;
- (__SecKey)copyKeyAndBAACerificateChain:(id *)a3;
- (__SecKey)copyKeyAndSelfSignedCertificateChain:(id *)a3;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)dealloc;
- (void)refreshBAACertificate;
@end

@implementation MAKeyManagerDownloadSessionDelegate

- (MAKeyManagerDownloadSessionDelegate)initWithName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MAKeyManagerDownloadSessionDelegate;
  v5 = [(MAKeyManagerDownloadSessionDelegate *)&v14 init];
  if (v5)
  {
    v6 = [@"com.apple.MobileAsset.KeyManagerDownloadSessionDelegate." stringByAppendingString:v4];
    v7 = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    underlyingQueue = v5->_underlyingQueue;
    v5->_underlyingQueue = v9;

    v11 = objc_alloc_init(NSOperationQueue);
    queue = v5->_queue;
    v5->_queue = v11;

    [(NSOperationQueue *)v5->_queue setUnderlyingQueue:v5->_underlyingQueue];
    [(NSOperationQueue *)v5->_queue setName:v6];
  }

  return v5;
}

- (MAKeyManagerDownloadSessionDelegate)initWithName:(id)a3 certType:(int)a4
{
  v4 = *&a4;
  v5 = [(MAKeyManagerDownloadSessionDelegate *)self initWithName:a3];
  if (v5)
  {
    v6 = [[MABAACertManager alloc] initWithCertType:v4];
    baaCertManager = v5->_baaCertManager;
    v5->_baaCertManager = v6;
  }

  return v5;
}

- (void)dealloc
{
  if ([(MAKeyManagerDownloadSessionDelegate *)self refKey])
  {
    CFRelease([(MAKeyManagerDownloadSessionDelegate *)self refKey]);
    [(MAKeyManagerDownloadSessionDelegate *)self setRefKey:0];
  }

  v3.receiver = self;
  v3.super_class = MAKeyManagerDownloadSessionDelegate;
  [(MAKeyManagerDownloadSessionDelegate *)&v3 dealloc];
}

- (void)refreshBAACertificate
{
  v2 = [(MAKeyManagerDownloadSessionDelegate *)self copyKeyAndBAACerificateChain:0];
  if (v2)
  {

    CFRelease(v2);
  }
}

- (__SecKey)copyKeyAndBAACerificateChain:(id *)a3
{
  v13 = 0;
  v5 = [(MAKeyManagerDownloadSessionDelegate *)self baaCertManager];
  v6 = [v5 issueAndCopyCerts:&v13];

  if ([v6 count])
  {
    if (v13)
    {
      CFRetain(v13);
    }

    underlyingQueue = self->_underlyingQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __68__MAKeyManagerDownloadSessionDelegate_copyKeyAndBAACerificateChain___block_invoke;
    v10[3] = &unk_4B3300;
    v10[4] = self;
    v11 = v6;
    v12 = v13;
    dispatch_async(underlyingQueue, v10);
  }

  if (a3)
  {
    objc_storeStrong(a3, v6);
  }

  v8 = v13;

  return v8;
}

CFTypeRef __68__MAKeyManagerDownloadSessionDelegate_copyKeyAndBAACerificateChain___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 40) = 0;
  }

  result = *(a1 + 48);
  if (result)
  {
    result = CFRetain(result);
    *(*(a1 + 32) + 40) = result;
  }

  return result;
}

- (__SecKey)copyKeyAndSelfSignedCertificateChain:(id *)a3
{
  v8 = 0;
  v4 = [(MAKeyManagerDownloadSessionDelegate *)self baaCertManager];
  v5 = [v4 issueAndCopySelfSignedCert:&v8];

  if (a3)
  {
    objc_storeStrong(a3, v5);
  }

  v6 = v8;

  return v6;
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v5 = a3;
  v6 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 configuration];
    v8 = [v7 identifier];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "DownloadTask for session %@ did complete", &v9, 0xCu);
  }
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_underlyingQueue);
  v11 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [v8 configuration];
    v13 = [v12 identifier];
    *buf = 138412290;
    v48 = v13;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[MAKeyManagerDownloadSessionDelegate]: Challange handler running for session %@", buf, 0xCu);
  }

  v14 = [v9 protectionSpace];
  v15 = [v14 authenticationMethod];

  if ([v15 isEqualToString:NSURLAuthenticationMethodClientCertificate])
  {
    if (os_variant_has_internal_content() && CFPreferencesGetAppBooleanValue(@"DisableMTLSForWKMS", @"com.apple.MobileAsset", 0))
    {
      v16 = _MAClientLog(@"KeyManager");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = @"DisableMTLSForWKMS";
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[MAKeyManagerDownloadSessionDelegate]: Disabling mTLS - %@=YES", buf, 0xCu);
      }
    }

    else
    {
      v22 = [(MAKeyManagerDownloadSessionDelegate *)self refKey];
      v23 = [(MAKeyManagerDownloadSessionDelegate *)self certArray];
      v16 = v23;
      if (v22 && [v23 count])
      {
        v41 = v8;
        v24 = [v9 protectionSpace];
        v25 = [v24 distinguishedNames];

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v16 = v16;
        v26 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v43;
          while (2)
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v43 != v28)
              {
                objc_enumerationMutation(v16);
              }

              v30 = SecCertificateCopyNormalizedIssuerSequence(*(*(&v42 + 1) + 8 * i));
              if (v30 && [v25 containsObject:v30])
              {

                [v16 objectAtIndex:0];
                v37 = SecIdentityCreate();
                v38 = [v16 mutableCopy];
                [v38 removeObjectAtIndex:0];
                v39 = [NSURLCredential credentialWithIdentity:v37 certificates:v38 persistence:1];
                CFRelease(v37);
                v40 = _MAClientLog(@"KeyManager");
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "[MAKeyManagerDownloadSessionDelegate]: Using credential created with BAA cert for challenge handling", buf, 2u);
                }

                v10[2](v10, 0, v39);
                v8 = v41;
                goto LABEL_34;
              }
            }

            v27 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
            if (v27)
            {
              continue;
            }

            break;
          }
        }

        v31 = _MAClientLog(@"KeyManager");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v16 count];
          *buf = 134217984;
          v48 = v32;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "[MAKeyManagerDownloadSessionDelegate]: Disabling mTLS - server does not trust our certificates (checked %lu).", buf, 0xCu);
        }

        v8 = v41;
      }

      else
      {
        v33 = _MAClientLog(@"KeyManager");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[MAKeyManagerDownloadSessionDelegate]: Disabling mTLS - no certificates available", buf, 2u);
        }
      }
    }

    goto LABEL_31;
  }

  if (![v15 isEqualToString:NSURLAuthenticationMethodServerTrust] || (MAInternalServerTrustCredential(v9), (v17 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_31:
    v34 = _MAClientLog(@"KeyManager");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v9 protectionSpace];
      v36 = [v35 authenticationMethod];
      *buf = 138412290;
      v48 = v36;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "[MAKeyManagerDownloadSessionDelegate]: AuthenticationMethod is %@. Using default challenge handling", buf, 0xCu);
    }

    v10[2](v10, 1, 0);
    goto LABEL_34;
  }

  v18 = v17;
  v19 = _MAClientLog(@"KeyManager");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v9 protectionSpace];
    v21 = [v20 host];
    *buf = 138412290;
    v48 = v21;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[MAKeyManagerDownloadSessionDelegate]: Using internal server trust for %@", buf, 0xCu);
  }

  v10[2](v10, 0, v18);
LABEL_34:
}

@end
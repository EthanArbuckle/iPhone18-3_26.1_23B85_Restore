@interface WLURLSessionController
- (WLURLSessionController)initWithAuthentication:(id)a3;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)invalidate;
@end

@implementation WLURLSessionController

- (WLURLSessionController)initWithAuthentication:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = WLURLSessionController;
  v6 = [(WLURLSessionController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auth, a3);
    v8 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [v8 setTLSMinimumSupportedProtocolVersion:771];
    [v8 setTLSMaximumSupportedProtocolVersion:772];
    [v8 setHTTPMaximumConnectionsPerHost:1];
    v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
    delegateOperationQueue = v7->_delegateOperationQueue;
    v7->_delegateOperationQueue = v9;

    v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v8 delegate:v7 delegateQueue:v7->_delegateOperationQueue];
    urlSession = v7->_urlSession;
    v7->_urlSession = v11;

    v14 = v7->_urlSession;
    _WLLog();
  }

  return v7;
}

- (void)dealloc
{
  _WLLog();
  [(NSURLSession *)self->_urlSession invalidateAndCancel];
  urlSession = self->_urlSession;
  self->_urlSession = 0;

  v5.receiver = self;
  v5.super_class = WLURLSessionController;
  [(WLURLSessionController *)&v5 dealloc];
}

- (void)invalidate
{
  urlSession = self->_urlSession;
  _WLLog();
  [(NSURLSession *)self->_urlSession invalidateAndCancel:self];
  v3 = self->_urlSession;
  self->_urlSession = 0;
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 protectionSpace];
  v36 = [v11 authenticationMethod];
  _WLLog();

  if ([v9 previousFailureCount])
  {
    v35 = [v9 failureResponse];
    _WLLog();

LABEL_3:
    v10[2](v10, 1, 0);
    goto LABEL_14;
  }

  v12 = [v9 protectionSpace];
  v13 = [v12 authenticationMethod];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCA700]];

  if (v14)
  {
    v15 = +[WLCredentialStore sharedInstance];
    v16 = [v15 credentialsForAuthentication:self->_auth];

    v17 = *MEMORY[0x277CBECE8];
    [v16 localCertificate];
    [v16 privateKey];
    v18 = SecIdentityCreate();
    v19 = MEMORY[0x277CCACF0];
    v37[0] = [v16 localCertificate];
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    v21 = [v19 credentialWithIdentity:v18 certificates:v20 persistence:2];

    (v10)[2](v10, 0, v21);
    goto LABEL_14;
  }

  v22 = [v9 protectionSpace];
  v23 = [v22 authenticationMethod];
  v24 = [v23 isEqualToString:*MEMORY[0x277CCA720]];

  if (!v24)
  {
    goto LABEL_3;
  }

  v25 = +[WLCredentialStore sharedInstance];
  v26 = [v25 credentialsForAuthentication:self->_auth];

  [v26 remoteCertificate];
  v27 = SecCertificateCopySHA256Digest();
  v28 = [v9 protectionSpace];
  v29 = SecTrustCopyCertificateChain([v28 serverTrust]);

  if (CFArrayGetCount(v29))
  {
    CFArrayGetValueAtIndex(v29, 0);
    v30 = SecCertificateCopySHA256Digest();
    if ([v27 isEqualToData:v30])
    {
      v31 = MEMORY[0x277CCACF0];
      v32 = [v9 protectionSpace];
      v33 = [v31 credentialForTrust:{objc_msgSend(v32, "serverTrust")}];
      (v10)[2](v10, 0, v33);
    }

    else
    {
      _WLLog();
      v10[2](v10, 3, 0);
    }
  }

  else
  {
    _WLLog();
    v10[2](v10, 3, 0);
  }

LABEL_14:
  v34 = *MEMORY[0x277D85DE8];
}

@end
@interface SDHTTPClient
+ (SDHTTPClient)sharedInstance;
+ (id)_seedingSessionConfiguration;
- (NSURL)baseURL;
- (SDHTTPClient)init;
- (id)overrideServerURL;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)baseURL;
@end

@implementation SDHTTPClient

+ (SDHTTPClient)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SDHTTPClient sharedInstance];
  }

  v3 = sharedInstance_client;

  return v3;
}

uint64_t __30__SDHTTPClient_sharedInstance__block_invoke()
{
  sharedInstance_client = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SDHTTPClient)init
{
  v10.receiver = self;
  v10.super_class = SDHTTPClient;
  v2 = [(SDHTTPClient *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCAD30];
    _seedingSessionConfiguration = [objc_opt_class() _seedingSessionConfiguration];
    v5 = [v3 sessionWithConfiguration:_seedingSessionConfiguration delegate:v2 delegateQueue:0];
    urlSession = v2->_urlSession;
    v2->_urlSession = v5;

    v7 = +[SDSeedingLogging httpHandle];
    log = v2->_log;
    v2->_log = v7;
  }

  return v2;
}

+ (id)_seedingSessionConfiguration
{
  v17[2] = *MEMORY[0x277D85DE8];
  defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v3 = MEMORY[0x277CCACA8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];
  v6 = +[SDDevice deviceProductType];
  v7 = +[SDDevice marketingProductName];
  v8 = +[SDDevice productVersion];
  v9 = +[SDDevice osBuild];
  v10 = [v3 stringWithFormat:@"%@ (Seeding) (Model %@) (%@ %@) Version/%@", processName, v6, v7, v8, v9];

  v16[0] = @"Seeding-Device-Id";
  v11 = +[SDAnalytics deviceIdentifier];
  uUIDString = [v11 UUIDString];
  v16[1] = @"User-Agent";
  v17[0] = uUIDString;
  v17[1] = v10;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [defaultSessionConfiguration setHTTPAdditionalHeaders:v13];

  v14 = *MEMORY[0x277D85DE8];

  return defaultSessionConfiguration;
}

- (NSURL)baseURL
{
  v10 = *MEMORY[0x277D85DE8];
  overrideServerURL = [(SDHTTPClient *)self overrideServerURL];
  if (!overrideServerURL)
  {
LABEL_8:
    v4 = [MEMORY[0x277CBEBC0] URLWithString:@"https://bpapi.apple.com"];
    goto LABEL_9;
  }

  v3 = +[SDSeedingLogging fwHandle];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = overrideServerURL;
    _os_log_impl(&dword_22E41E000, v3, OS_LOG_TYPE_INFO, "Attempting to use custom ServerURL: %@", &v8, 0xCu);
  }

  v4 = [MEMORY[0x277CBEBC0] URLWithString:overrideServerURL];
  if (!v4)
  {
    v5 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SDHTTPClient *)overrideServerURL baseURL];
    }

    goto LABEL_8;
  }

LABEL_9:

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)overrideServerURL
{
  v2 = CFPreferencesCopyValue(@"ServerURL", @"com.apple.seeding", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

  return v2;
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  v9 = [(SDHTTPClient *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SDHTTPClient URLSession:v9 didReceiveChallenge:? completionHandler:?];
  }

  if (SDIsInternalInstall())
  {
    overrideServerURL = [(SDHTTPClient *)self overrideServerURL];

    if (overrideServerURL)
    {
      v11 = [(SDHTTPClient *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 0;
        v12 = "Running with custom server URL; skipping pinning check.";
        v13 = &v33;
LABEL_15:
        _os_log_impl(&dword_22E41E000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  protectionSpace = [challengeCopy protectionSpace];
  host = [protectionSpace host];
  baseURL = [(SDHTTPClient *)self baseURL];
  host2 = [baseURL host];
  v18 = [host isEqualToString:host2];

  if ((v18 & 1) == 0)
  {
    v11 = [(SDHTTPClient *)self log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "Connecting to other server; skipping pinning check.";
      v13 = buf;
      goto LABEL_15;
    }

LABEL_16:

    goto LABEL_17;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace2 authenticationMethod];
  v21 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (!v21)
  {
LABEL_17:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_18;
  }

  baseURL2 = [(SDHTTPClient *)self baseURL];
  host3 = [baseURL2 host];

  AppleSSLPinned = SecPolicyCreateAppleSSLPinned();
  if (AppleSSLPinned)
  {
    v25 = AppleSSLPinned;
    protectionSpace3 = [challengeCopy protectionSpace];
    serverTrust = [protectionSpace3 serverTrust];

    LODWORD(protectionSpace3) = SecTrustSetPolicies(serverTrust, v25);
    CFRelease(v25);
    if (!protectionSpace3)
    {
      error = 0;
      if (SecTrustEvaluateWithError(serverTrust, &error))
      {
        v28 = [MEMORY[0x277CCACF0] credentialForTrust:serverTrust];
        (handlerCopy)[2](handlerCopy, 0, v28);

        goto LABEL_12;
      }

      if (error)
      {
        v29 = error;
        v30 = [(SDHTTPClient *)self log];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [SDHTTPClient URLSession:v29 didReceiveChallenge:v30 completionHandler:?];
        }

        CFRelease(error);
      }
    }
  }

  handlerCopy[2](handlerCopy, 2, 0);
LABEL_12:

LABEL_18:
}

- (void)baseURL
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_22E41E000, a2, OS_LOG_TYPE_ERROR, "Invalid custom ServerURL: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(void *)a1 didReceiveChallenge:(NSObject *)a2 completionHandler:.cold.2(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_22E41E000, a2, OS_LOG_TYPE_ERROR, "Certificate failure. Error: %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
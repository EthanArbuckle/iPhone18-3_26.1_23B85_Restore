@interface SYBacklinkIndicatorClient
+ (SYBacklinkIndicatorClient)clientWithDomainIdentifiers:(id)a3 linkIdentifiers:(id)a4;
+ (SYBacklinkIndicatorClient)clientWithLinkIdentifiers:(id)a3;
+ (void)hideIndicator;
+ (void)hotCornerExited;
- (BOOL)_shouldSendIndicatorRequest;
- (SYBacklinkIndicatorClient)init;
- (int64_t)_showIndicatorAction;
- (void)_clearLastShowIndicatorRequestTimestamp;
- (void)_configureConnectionAndResume;
- (void)_createConnectionIfNeeded;
- (void)_recordLastShowIndicatorRequestTimestamp;
- (void)_resetConnectionIfNecessary;
- (void)_sendIndicatorRequestWithCompletion:(id)a3;
- (void)dealloc;
- (void)requestIndicatorWithCompletion:(id)a3;
@end

@implementation SYBacklinkIndicatorClient

+ (SYBacklinkIndicatorClient)clientWithLinkIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      [v5 addObject:&stru_2838DFF18];
      ++v6;
    }

    while (v6 < [v4 count]);
  }

  v7 = [a1 clientWithDomainIdentifiers:v5 linkIdentifiers:v4];

  return v7;
}

+ (SYBacklinkIndicatorClient)clientWithDomainIdentifiers:(id)a3 linkIdentifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  if (v9 != [v8 count])
  {
    [(SYBacklinkIndicatorClient *)v7 clientWithDomainIdentifiers:v8 linkIdentifiers:a2, a1];
  }

  v10 = objc_alloc_init(a1);
  [v10 setDomainIdentifiers:v7];
  [v10 setLinkIdentifiers:v8];
  [v10 setAction:{objc_msgSend(v8, "count") != 0}];

  return v10;
}

- (SYBacklinkIndicatorClient)init
{
  v5.receiver = self;
  v5.super_class = SYBacklinkIndicatorClient;
  v2 = [(SYBacklinkIndicatorClient *)&v5 init];
  v3 = MEMORY[0x277CBEBF8];
  [(SYBacklinkIndicatorClient *)v2 setDomainIdentifiers:MEMORY[0x277CBEBF8]];
  [(SYBacklinkIndicatorClient *)v2 setLinkIdentifiers:v3];
  [(SYBacklinkIndicatorClient *)v2 setDisplayID:0];
  [(SYBacklinkIndicatorClient *)v2 setCorner:-1];
  [(SYBacklinkIndicatorClient *)v2 setAction:1];
  return v2;
}

+ (void)hideIndicator
{
  v2 = objc_opt_new();
  [v2 setAction:0];
  [v2 requestIndicatorWithCompletion:0];
}

+ (void)hotCornerExited
{
  v2 = objc_opt_new();
  [v2 setAction:3];
  [v2 requestIndicatorWithCompletion:0];
}

- (void)dealloc
{
  v3 = [(SYBacklinkIndicatorClient *)self connection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SYBacklinkIndicatorClient;
  [(SYBacklinkIndicatorClient *)&v4 dealloc];
}

- (void)_createConnectionIfNeeded
{
  v3 = [(SYBacklinkIndicatorClient *)self connection];

  if (!v3)
  {
    v4 = [objc_opt_class() _testingEndpoint];

    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    v6 = v5;
    if (v4)
    {
      v7 = [objc_opt_class() _testingEndpoint];
      v8 = [v6 initWithListenerEndpoint:v7];
      [(SYBacklinkIndicatorClient *)self setConnection:v8];
    }

    else
    {
      v7 = [v5 initWithMachServiceName:@"com.apple.synapse.backlinkindicator" options:0];
      [(SYBacklinkIndicatorClient *)self setConnection:v7];
    }

    [(SYBacklinkIndicatorClient *)self _configureConnectionAndResume];
  }
}

- (void)_configureConnectionAndResume
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYBacklinkIndicatorClient.m" lineNumber:97 description:@"the XPC connection is unexpectedly nil"];
}

void __58__SYBacklinkIndicatorClient__configureConnectionAndResume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnectionIfNecessary];
}

void __58__SYBacklinkIndicatorClient__configureConnectionAndResume__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetConnectionIfNecessary];
}

- (void)_resetConnectionIfNecessary
{
  if ([(SYBacklinkIndicatorClient *)self sentRequest])
  {
    v3 = [(SYBacklinkIndicatorClient *)self connection];
    [v3 invalidate];

    [(SYBacklinkIndicatorClient *)self setConnection:0];

    [(SYBacklinkIndicatorClient *)self setSentRequest:0];
  }
}

- (void)requestIndicatorWithCompletion:(id)a3
{
  v4 = a3;
  if ([(SYBacklinkIndicatorClient *)self _shouldSendIndicatorRequest])
  {
    [(SYBacklinkIndicatorClient *)self _sendIndicatorRequestWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)_sendIndicatorRequestWithCompletion:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SYBacklinkIndicatorClient *)self _createConnectionIfNeeded];
  if (![(SYBacklinkIndicatorClient *)self sentRequest])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = [(SYBacklinkIndicatorClient *)self connection];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__SYBacklinkIndicatorClient__sendIndicatorRequestWithCompletion___block_invoke;
    v16[3] = &unk_27856B808;
    v16[4] = &v17;
    v6 = [v5 remoteObjectProxyWithErrorHandler:v16];

    if ((v18[3] & 1) == 0)
    {
      v7 = [(SYBacklinkIndicatorClient *)self _showIndicatorAction];
      v8 = os_log_create("com.apple.synapse", "BacklinkMonitor");
      v9 = v8;
      if (v7)
      {
        v10 = v8;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [(SYBacklinkIndicatorClient *)self linkIdentifiers];
          v12 = [v11 count];
          *buf = 134217984;
          v22 = v12;
          _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_DEFAULT, "BacklinkIndicatorClient: Will call showIndicatorForBacklink on service. Link identifier count: %ld", buf, 0xCu);
        }

        [(SYBacklinkIndicatorClient *)self _recordLastShowIndicatorRequestTimestamp];
        v13 = [(SYBacklinkIndicatorClient *)self domainIdentifiers];
        v14 = [(SYBacklinkIndicatorClient *)self linkIdentifiers];
        [v6 showIndicatorForBacklinkWithDomainIdentifiers:v13 linkIdentifiers:v14 displayID:-[SYBacklinkIndicatorClient displayID](self corner:"displayID") action:{-[SYBacklinkIndicatorClient corner](self, "corner"), v7}];
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_225901000, v9, OS_LOG_TYPE_DEFAULT, "BacklinkIndicatorClient: Will call hideIndicator on service.", buf, 2u);
        }

        [(SYBacklinkIndicatorClient *)self _clearLastShowIndicatorRequestTimestamp];
        [v6 hideIndicator];
      }

      [(SYBacklinkIndicatorClient *)self setSentRequest:1];
    }

    _Block_object_dispose(&v17, 8);
  }

  if (v4)
  {
    v4[2](v4, [(SYBacklinkIndicatorClient *)self sentRequest]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__SYBacklinkIndicatorClient__sendIndicatorRequestWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.synapse", "BacklinkMonitor");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__SYBacklinkIndicatorClient__sendIndicatorRequestWithCompletion___block_invoke_cold_1(v3, v4);
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

- (int64_t)_showIndicatorAction
{
  v3 = [(SYBacklinkIndicatorClient *)self linkIdentifiers];
  v4 = [v3 count];

  if (v4)
  {
    return 1;
  }

  return [(SYBacklinkIndicatorClient *)self action];
}

- (void)_recordLastShowIndicatorRequestTimestamp
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 setDouble:@"lastShowIndicatorTime" forKey:v3];
}

- (void)_clearLastShowIndicatorRequestTimestamp
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 removeObjectForKey:@"lastShowIndicatorTime"];
}

- (BOOL)_shouldSendIndicatorRequest
{
  v13 = *MEMORY[0x277D85DE8];
  if (-[SYBacklinkIndicatorClient _showIndicatorAction](self, "_showIndicatorAction") || ([MEMORY[0x277CBEBD0] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "doubleForKey:", @"lastShowIndicatorTime"), v4 = v3, v2, objc_msgSend(MEMORY[0x277CBEAA8], "timeIntervalSinceReferenceDate"), v6 = v5 - v4, v6 < 60.0))
  {
    result = 1;
  }

  else
  {
    if (v4 <= 0.0)
    {
      v9 = &stru_2838DFF18;
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@" Last was %0.1fs ago.", *&v6];
    }

    v10 = os_log_create("com.apple.synapse", "BacklinkMonitor");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v9;
      _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_INFO, "BacklinkIndicatorClient: Will not send request to service, no recent show indicator requests.%@", buf, 0xCu);
    }

    result = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)clientWithDomainIdentifiers:(uint64_t)a3 linkIdentifiers:(uint64_t)a4 .cold.1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a3 object:a4 file:@"SYBacklinkIndicatorClient.m" lineNumber:35 description:{@"The domain identifiers count (%ld) does not match the link identifiers count (%ld).", objc_msgSend(a1, "count"), objc_msgSend(a2, "count")}];
}

void __65__SYBacklinkIndicatorClient__sendIndicatorRequestWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Error creating remote object for backlink indicator: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
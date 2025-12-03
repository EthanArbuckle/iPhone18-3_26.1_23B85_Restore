@interface WFCertificateContext
- (WFCertificateContext)initWithNetwork:(id)network profile:(id)profile certificateChain:(id)chain;
- (WFNetworkView)provider;
- (void)accept;
- (void)cancel;
- (void)dealloc;
- (void)launchSettings;
@end

@implementation WFCertificateContext

- (WFCertificateContext)initWithNetwork:(id)network profile:(id)profile certificateChain:(id)chain
{
  networkCopy = network;
  profileCopy = profile;
  chainCopy = chain;
  v17.receiver = self;
  v17.super_class = WFCertificateContext;
  v12 = [(WFCertificateContext *)&v17 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!networkCopy)
  {
    [WFCertificateContext initWithNetwork:? profile:? certificateChain:?];
LABEL_12:

LABEL_13:
    v13 = 0;
    goto LABEL_7;
  }

  if (!profileCopy)
  {
    [WFCertificateContext initWithNetwork:? profile:? certificateChain:?];
    goto LABEL_12;
  }

  objc_storeStrong(&v12->_network, network);
  objc_storeStrong(&v13->_profile, profile);
  if (!chainCopy)
  {
    [WFCertificateContext initWithNetwork:? profile:? certificateChain:?];
    goto LABEL_12;
  }

  objc_storeStrong(&v13->_certificateChain, chain);
  certificateChain = [(WFCertificateContext *)v13 certificateChain];
  v15 = WFCreateSecTrustFromCertificateChain(certificateChain);

  if (!v15)
  {
    [WFCertificateContext initWithNetwork:? profile:? certificateChain:?];
    goto LABEL_12;
  }

  v13->_certificateTrust = v15;
  v13->_requestedFields = 4;
LABEL_7:

  return v13;
}

- (void)dealloc
{
  if ([(WFCertificateContext *)self certificateTrust])
  {
    CFRelease([(WFCertificateContext *)self certificateTrust]);
    [(WFCertificateContext *)self setCertificateTrust:0];
  }

  v3.receiver = self;
  v3.super_class = WFCertificateContext;
  [(WFCertificateContext *)&v3 dealloc];
}

- (void)cancel
{
  completionHandler = [(WFCertificateContext *)self completionHandler];
  completionHandler[2](completionHandler, 0);
}

- (void)accept
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      certificateChain = [(WFCertificateContext *)self certificateChain];
      v9 = 138412290;
      v10 = certificateChain;
      _os_log_impl(&dword_273ECD000, v5, v4, "User trusted provided certificate chain %@", &v9, 0xCu);
    }
  }

  completionHandler = [(WFCertificateContext *)self completionHandler];
  completionHandler[2](completionHandler, 1);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)launchSettings
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      network = [(WFCertificateContext *)self network];
      v9 = 136315650;
      v10 = "[WFCertificateContext launchSettings]";
      v11 = 2112;
      v12 = network;
      v13 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_273ECD000, v5, v4, "%s: opening settings for %@ (context: %@)", &v9, 0x20u);
    }
  }

  network2 = [(WFCertificateContext *)self network];
  WFScanRecordArchiveToEnterprisePath(network2);

  WFOpenSettingsURLWithType(1uLL);
  [(WFCertificateContext *)self cancel];
  v8 = *MEMORY[0x277D85DE8];
}

- (WFNetworkView)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (void)initWithNetwork:(void *)a1 profile:certificateChain:.cold.1(void *a1)
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = v1;
}

- (void)initWithNetwork:(void *)a1 profile:certificateChain:.cold.2(void *a1)
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
  }

  *a1 = v1;
}

- (void)initWithNetwork:(void *)a1 profile:certificateChain:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = v1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithNetwork:(void *)a1 profile:certificateChain:.cold.4(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  if (WFCurrentLogLevel() && v1 && OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_2_3();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  *a1 = v1;
  v8 = *MEMORY[0x277D85DE8];
}

@end
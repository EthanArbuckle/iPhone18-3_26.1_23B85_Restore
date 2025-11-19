@interface WFCertificateContext
- (WFCertificateContext)initWithNetwork:(id)a3 profile:(id)a4 certificateChain:(id)a5;
- (WFNetworkView)provider;
- (void)accept;
- (void)cancel;
- (void)dealloc;
- (void)launchSettings;
@end

@implementation WFCertificateContext

- (WFCertificateContext)initWithNetwork:(id)a3 profile:(id)a4 certificateChain:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = WFCertificateContext;
  v12 = [(WFCertificateContext *)&v17 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!v9)
  {
    [WFCertificateContext initWithNetwork:? profile:? certificateChain:?];
LABEL_12:

LABEL_13:
    v13 = 0;
    goto LABEL_7;
  }

  if (!v10)
  {
    [WFCertificateContext initWithNetwork:? profile:? certificateChain:?];
    goto LABEL_12;
  }

  objc_storeStrong(&v12->_network, a3);
  objc_storeStrong(&v13->_profile, a4);
  if (!v11)
  {
    [WFCertificateContext initWithNetwork:? profile:? certificateChain:?];
    goto LABEL_12;
  }

  objc_storeStrong(&v13->_certificateChain, a5);
  v14 = [(WFCertificateContext *)v13 certificateChain];
  v15 = WFCreateSecTrustFromCertificateChain(v14);

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
  v2 = [(WFCertificateContext *)self completionHandler];
  v2[2](v2, 0);
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
      v6 = [(WFCertificateContext *)self certificateChain];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_273ECD000, v5, v4, "User trusted provided certificate chain %@", &v9, 0xCu);
    }
  }

  v7 = [(WFCertificateContext *)self completionHandler];
  v7[2](v7, 1);

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
      v6 = [(WFCertificateContext *)self network];
      v9 = 136315650;
      v10 = "[WFCertificateContext launchSettings]";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = self;
      _os_log_impl(&dword_273ECD000, v5, v4, "%s: opening settings for %@ (context: %@)", &v9, 0x20u);
    }
  }

  v7 = [(WFCertificateContext *)self network];
  WFScanRecordArchiveToEnterprisePath(v7);

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
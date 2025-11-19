@interface WFTrustCertificateViewController
- (WFTrustCertificateViewController)initWithCertificateProviderContext:(id)a3;
- (void)trustCertificateViewController:(id)a3 finishedWithReturnCode:(int)a4;
@end

@implementation WFTrustCertificateViewController

- (WFTrustCertificateViewController)initWithCertificateProviderContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WFTrustCertificateViewController;
  v6 = -[TrustCertificateViewController initWithTrust:action:delegate:](&v9, sel_initWithTrust_action_delegate_, [v5 certificateTrust], 2, self);
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    [WFTrustCertificateViewController initWithCertificateProviderContext:];
LABEL_6:

    v7 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_credentialsContext, a3);
  v7->_wantsModalPresentation = 1;
LABEL_4:

  return v7;
}

- (void)trustCertificateViewController:(id)a3 finishedWithReturnCode:(int)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v11 = 136315394;
    v12 = "[WFTrustCertificateViewController trustCertificateViewController:finishedWithReturnCode:]";
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&dword_273FB9000, v6, v7, "%s- returnCode %d", &v11, 0x12u);
  }

  v8 = [(WFTrustCertificateViewController *)self credentialsContext];
  v9 = v8;
  if (a4 == 1)
  {
    [v8 accept];
  }

  else
  {
    [v8 cancel];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithCertificateProviderContext:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    v3 = 136315138;
    v4 = "[WFTrustCertificateViewController initWithCertificateProviderContext:]";
    _os_log_impl(&dword_273FB9000, v0, v1, "%s: nil credentials provider context", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end
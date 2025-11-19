@interface WFCredentialsContext
- (BOOL)validateCredentials;
- (BOOL)validatePassword;
- (NSString)username;
- (WFCredentialsContext)initWithNetwork:(id)a3 profile:(id)a4 authTraits:(int64_t)a5;
- (WFNetworkView)provider;
- (int64_t)securityMode;
- (void)activatePasswordSharing;
- (void)appDidBecomeActive:(id)a3;
- (void)appDidEnterBackground:(id)a3;
- (void)appWillEnterForeground:(id)a3;
- (void)appWillResignActive:(id)a3;
- (void)cancel;
- (void)deactivatePasswordSharingWithReactivation:(BOOL)a3;
- (void)dealloc;
- (void)finishWithError:(id)a3 forNetwork:(id)a4 profile:(id)a5;
- (void)gatherCredentials:(id)a3;
- (void)launchSettings;
- (void)service:(id)a3 receivedNetworkInfo:(id)a4;
- (void)setPasswordSharingSupported:(BOOL)a3;
- (void)setProvider:(id)a3;
@end

@implementation WFCredentialsContext

- (void)setProvider:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v8 = 136315394;
    v9 = "[WFCredentialsContext setProvider:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_273ECD000, v5, v6, "%s: provider %@", &v8, 0x16u);
  }

  objc_storeWeak(&self->_provider, v4);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setPasswordSharingSupported:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  self->_passwordSharingSupported = a3;
  self->_shouldReactivatePasswordSharing = a3;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[WFCredentialsContext setPasswordSharingSupported:]";
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: supported %d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)a3 forNetwork:(id)a4 profile:(id)a5
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__WFCredentialsContext_finishWithError_forNetwork_profile___block_invoke;
  v8[3] = &unk_279EBD290;
  v9 = v6;
  v10 = self;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __59__WFCredentialsContext_finishWithError_forNetwork_profile___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v20 = 136315394;
    v21 = "[WFCredentialsContext finishWithError:forNetwork:profile:]_block_invoke";
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&dword_273ECD000, v2, v3, "%s: error %@", &v20, 0x16u);
  }

  v5 = [*(a1 + 40) providerCallback];

  if (v5)
  {
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v6 && os_log_type_enabled(v6, v7))
    {
      v20 = 136315138;
      v21 = "[WFCredentialsContext finishWithError:forNetwork:profile:]_block_invoke";
      _os_log_impl(&dword_273ECD000, v6, v7, "%s: calling provider callback", &v20, 0xCu);
    }

    v8 = [*(a1 + 40) providerCallback];
    (v8)[2](v8, *(a1 + 32) == 0);

    [*(a1 + 40) setProviderCallback:0];
  }

  v9 = [*(a1 + 40) provider];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = WFLogForCategory(0);
    v12 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v11)
    {
      v13 = v11;
      if (os_log_type_enabled(v13, v12))
      {
        v14 = [*(a1 + 40) provider];
        v20 = 136315394;
        v21 = "[WFCredentialsContext finishWithError:forNetwork:profile:]_block_invoke";
        v22 = 2112;
        v23 = v14;
        _os_log_impl(&dword_273ECD000, v13, v12, "%s: calling resetFirstResponder on provider %@", &v20, 0x16u);
      }
    }

    v15 = [*(a1 + 40) provider];
    [v15 resetFirstResponder];
  }

  v16 = [*(a1 + 40) provider];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [*(a1 + 40) provider];
    [v18 setActivityString:0];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(WFCredentialsContext *)self deactivatePasswordSharingWithReactivation:0];
  v4.receiver = self;
  v4.super_class = WFCredentialsContext;
  [(WFCredentialsContext *)&v4 dealloc];
}

- (BOOL)validateCredentials
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(WFCredentialsContext *)self provider];
  v4 = [v3 TLSIdentity];

  v5 = [(WFCredentialsContext *)self provider];
  v6 = [v5 username];
  v7 = [v6 length];

  v8 = [(WFCredentialsContext *)self validatePassword];
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, v10))
    {
      v12 = [(WFCredentialsContext *)self network];
      v18 = 136316162;
      v19 = "[WFCredentialsContext validateCredentials]";
      v20 = 1024;
      v21 = v4 != 0;
      v22 = 1024;
      v23 = v7 != 0;
      v24 = 1024;
      v25 = v8;
      v26 = 2048;
      v27 = [v12 securityMode];
      _os_log_impl(&dword_273ECD000, v11, v10, "%s: identityValid %d usernameValid %d passwordValid %d (securityMode %ld)", &v18, 0x28u);
    }
  }

  if (![(WFCredentialsContext *)self isEnterprise])
  {
    v15 = WFLogForCategory(0);
    v16 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v15 && os_log_type_enabled(v15, v16))
    {
      v18 = 136315394;
      v19 = "[WFCredentialsContext validateCredentials]";
      v20 = 1024;
      v21 = v8;
      _os_log_impl(&dword_273ECD000, v15, v16, "%s: passwordValid: %d", &v18, 0x12u);
    }

    goto LABEL_19;
  }

  result = 1;
  if (!v4 && (v7 == 0 || !v8))
  {
    v15 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(4uLL);
    if (WFCurrentLogLevel() >= 4 && v15 && os_log_type_enabled(v15, v17))
    {
      v18 = 136315906;
      v19 = "[WFCredentialsContext validateCredentials]";
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v7 != 0;
      v24 = 1024;
      v25 = v8;
      _os_log_impl(&dword_273ECD000, v15, v17, "%s: enterprise network - identityValid: %d userNameValid: %d passwordValid %d", &v18, 0x1Eu);
    }

    LOBYTE(v8) = 0;
LABEL_19:

    result = v8;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)validatePassword
{
  v3 = [(WFCredentialsContext *)self securityMode];
  v4 = [(WFCredentialsContext *)self provider];
  v5 = [v4 password];
  LOBYTE(v3) = WFValidPasswordForSecurityMode(v3, v5);

  return v3;
}

- (void)gatherCredentials:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [(WFCredentialsContext *)self provider];
      v14 = 136315650;
      v15 = "[WFCredentialsContext gatherCredentials:]";
      v16 = 2112;
      v17 = v8;
      v18 = 1024;
      v19 = v4 == 0;
      _os_log_impl(&dword_273ECD000, v7, v6, "%s: gathering credentials for %@ shouldDismiss %d", &v14, 0x1Cu);
    }
  }

  v9 = [(WFCredentialsContext *)self providerCallback];

  if (v4 && v9)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v11))
    {
      v14 = 136315138;
      v15 = "[WFCredentialsContext gatherCredentials:]";
      _os_log_impl(&dword_273ECD000, v10, v11, "%s: Called gatherCredentials while credentials are already being gathered", &v14, 0xCu);
    }
  }

  else
  {
    [(WFCredentialsContext *)self setProviderCallback:v4];
    v10 = [(WFCredentialsContext *)self completionHandler];
    v12 = [(WFCredentialsContext *)self provider];
    (*(v10 + 16))(v10, v12, v4 == 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    v12 = 136315394;
    v13 = "[WFCredentialsContext cancel]";
    v14 = 2112;
    v15 = self;
    _os_log_impl(&dword_273ECD000, v3, v4, "%s: %@ credentials provider is nil", &v12, 0x16u);
  }

  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5)
  {
    v7 = v5;
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [(WFCredentialsContext *)self provider];
      v12 = 136315394;
      v13 = "[WFCredentialsContext cancel]";
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_273ECD000, v7, v6, "%s: cancelled credential request for %@", &v12, 0x16u);
    }
  }

  v9 = [(WFCredentialsContext *)self cancellationHandler];

  if (v9)
  {
    v10 = [(WFCredentialsContext *)self cancellationHandler];
    v10[2]();
  }

  [(WFCredentialsContext *)self deactivatePasswordSharingWithReactivation:0];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)appWillEnterForeground:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[WFCredentialsContext appWillEnterForeground:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: %@", &v7, 0x16u);
  }

  [(WFCredentialsContext *)self activatePasswordSharing];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)appDidEnterBackground:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[WFCredentialsContext appDidEnterBackground:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: %@", &v7, 0x16u);
  }

  [(WFCredentialsContext *)self deactivatePasswordSharingWithReactivation:1];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)appWillResignActive:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[WFCredentialsContext appWillResignActive:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: %@", &v7, 0x16u);
  }

  [(WFCredentialsContext *)self deactivatePasswordSharingWithReactivation:1];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)appDidBecomeActive:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[WFCredentialsContext appDidBecomeActive:]";
    v9 = 2112;
    v10 = self;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: %@", &v7, 0x16u);
  }

  [(WFCredentialsContext *)self activatePasswordSharing];
  v6 = *MEMORY[0x277D85DE8];
}

- (int64_t)securityMode
{
  v2 = [(WFCredentialsContext *)self network];
  v3 = [v2 securityMode];

  return v3;
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
      v6 = [(WFCredentialsContext *)self network];
      v9 = 136315650;
      v10 = "[WFCredentialsContext launchSettings]";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = self;
      _os_log_impl(&dword_273ECD000, v5, v4, "%s: opening settings for %@ (context: %@)", &v9, 0x20u);
    }
  }

  v7 = [(WFCredentialsContext *)self network];
  WFScanRecordArchiveToEnterprisePath(v7);

  WFOpenSettingsURLWithType(2uLL);
  [(WFCredentialsContext *)self cancel];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 receivedNetworkInfo:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6)
  {
    v8 = v6;
    if (os_log_type_enabled(v8, v7))
    {
      v9 = [v5 networkName];
      *v22 = 136315394;
      *&v22[4] = "[WFCredentialsContext service:receivedNetworkInfo:]";
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_273ECD000, v8, v7, "%s: received network info for network='%@'", v22, 0x16u);
    }
  }

  v10 = [(WFCredentialsContext *)self network];
  v11 = [(WFCredentialsContext *)self provider];
  v12 = objc_opt_respondsToSelector();

  if ((v12 & 1) == 0)
  {
    [WFCredentialsContext service:v22 receivedNetworkInfo:?];
    goto LABEL_14;
  }

  v13 = [v5 networkName];
  v14 = [v10 ssid];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    if ([v10 securityMode] == 4 || objc_msgSend(v10, "securityMode") == 8 || objc_msgSend(v10, "securityMode") == 512)
    {
      [(WFCredentialsContext *)self setPasswordReceivedFromPasswordSharing:1];
      v16 = [(WFCredentialsContext *)self provider];
      v17 = [v5 psk];
      [v16 receiveSharedPassword:v17];

      goto LABEL_12;
    }

    [WFCredentialsContext service:v10 receivedNetworkInfo:v22];
LABEL_14:
    v16 = *v22;
    goto LABEL_12;
  }

  v16 = WFLogForCategory(0);
  v19 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v16)
  {
    v16 = v16;
    if (os_log_type_enabled(v16, v19))
    {
      v20 = [v10 ssid];
      v21 = [v5 networkName];
      *v22 = 136315650;
      *&v22[4] = "[WFCredentialsContext service:receivedNetworkInfo:]";
      v23 = 2112;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_273ECD000, v16, v19, "%s: ssid mismatch, expected %@ received %@", v22, 0x20u);
    }
  }

LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

- (WFNetworkView)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (WFCredentialsContext)initWithNetwork:(id)a3 profile:(id)a4 authTraits:(int64_t)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v67.receiver = self;
  v67.super_class = WFCredentialsContext;
  v11 = [(WFCredentialsContext *)&v67 init];
  v12 = v11;
  if (!v11)
  {
    v57 = 0;
    goto LABEL_41;
  }

  if (!v9)
  {
    v62 = WFLogForCategory(0);
    v63 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v62 || !os_log_type_enabled(v62, v63))
    {
      goto LABEL_52;
    }

    *buf = 136315138;
    v69 = "[WFCredentialsContext initWithNetwork:profile:authTraits:]";
    v64 = "%s: nil network";
    goto LABEL_51;
  }

  if (!v10)
  {
    v62 = WFLogForCategory(0);
    v63 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v62 || !os_log_type_enabled(v62, v63))
    {
      goto LABEL_52;
    }

    *buf = 136315138;
    v69 = "[WFCredentialsContext initWithNetwork:profile:authTraits:]";
    v64 = "%s: nil profile";
LABEL_51:
    _os_log_impl(&dword_273ECD000, v62, v63, v64, buf, 0xCu);
LABEL_52:

    v57 = v12;
    v12 = 0;
    goto LABEL_41;
  }

  objc_storeStrong(&v11->_network, a3);
  v13 = [(WFNetworkScanRecord *)v12->_network isEnterprise];
  v12->_enterprise = v13;
  v12->_availableAuthTraits = a5;
  if (v13)
  {
    v12->_requestedFields |= 2uLL;
    if ([v10 isManaged])
    {
      v14 = WFLogForCategory(0);
      v15 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
      {
        OUTLINED_FUNCTION_1_5();
        v70 = 2112;
        v71 = v10;
        _os_log_impl(&dword_273ECD000, v14, v15, "%s: network (profile %@) is managed", buf, 0x16u);
      }
    }

    HIDWORD(v66) = 0;
    v16 = WFAllIdentities(&v66 + 1);
    v17 = v16;
    if (HIDWORD(v66) || ![v16 count])
    {
      p_super = WFLogForCategory(0);
      v19 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && p_super && os_log_type_enabled(p_super, v19))
      {
        OUTLINED_FUNCTION_1_5();
        v70 = 1024;
        LODWORD(v71) = v20;
        _os_log_impl(&dword_273ECD000, p_super, v19, "%s: error retrieving identities %d", buf, 0x12u);
      }
    }

    else
    {
      v21 = WFLogForCategory(0);
      v22 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v21)
      {
        v23 = v21;
        if (os_log_type_enabled(v23, v22))
        {
          [v17 count];
          OUTLINED_FUNCTION_1_5();
          v70 = 2048;
          v71 = v24;
          OUTLINED_FUNCTION_3_1(&dword_273ECD000, v25, v26, "%s: available TLS identities %lu", v27, v28, v29, v30, v65, v66, v67.receiver, v67.super_class, buf[0]);
        }
      }

      v31 = v17;
      p_super = &v12->_availableTLSIdentities->super;
      v12->_availableTLSIdentities = v31;
    }

    if ([v10 requiresTLSIdentityOnly])
    {
      v32 = WFLogForCategory(0);
      v33 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v32 && os_log_type_enabled(v32, v33))
      {
        OUTLINED_FUNCTION_1_5();
        v70 = 2112;
        v71 = v10;
        _os_log_impl(&dword_273ECD000, v32, v33, "%s: network (profile %@) is TLS identity only", buf, 0x16u);
      }

      v34 = v12->_requestedFields | 4;
    }

    else
    {
      if (v12->_availableTLSIdentities)
      {
        v35 = WFLogForCategory(0);
        v36 = OSLogForWFLogLevel(4uLL);
        if (WFCurrentLogLevel() >= 4 && v35)
        {
          v37 = v35;
          if (os_log_type_enabled(v37, v36))
          {
            [(NSArray *)v12->_availableTLSIdentities count];
            OUTLINED_FUNCTION_1_5();
            v70 = 2048;
            v71 = v38;
            OUTLINED_FUNCTION_3_1(&dword_273ECD000, v39, v40, "%s: available TLS identities %lu", v41, v42, v43, v44, v65, v66, v67.receiver, v67.super_class, buf[0]);
          }
        }

        requestedFields = v12->_requestedFields | 0xC;
      }

      else
      {
        requestedFields = v12->_requestedFields;
      }

      v34 = requestedFields | 1;
    }

    v12->_requestedFields = v34;
  }

  else
  {
    v12->_requestedFields = 1;
  }

  v46 = [v9 securityIssue];
  securityIssue = v12->_securityIssue;
  v12->_securityIssue = v46;

  objc_storeStrong(&v12->_profile, a4);
  v48 = [MEMORY[0x277CCAB98] defaultCenter];
  OUTLINED_FUNCTION_4_3(v48, v49, v50, sel_appWillResignActive_, *MEMORY[0x277D76768]);

  v51 = [MEMORY[0x277CCAB98] defaultCenter];
  OUTLINED_FUNCTION_4_3(v51, v52, v53, sel_appDidBecomeActive_, *MEMORY[0x277D76648]);

  v54 = [MEMORY[0x277CCAB98] defaultCenter];
  OUTLINED_FUNCTION_4_3(v54, v55, v56, sel_appWillEnterForeground_, *MEMORY[0x277D76758]);

  v57 = [MEMORY[0x277CCAB98] defaultCenter];
  OUTLINED_FUNCTION_4_3(v57, v58, v59, sel_appDidEnterBackground_, *MEMORY[0x277D76660]);
LABEL_41:

  v60 = *MEMORY[0x277D85DE8];
  return v12;
}

- (NSString)username
{
  v3 = [(WFCredentialsContext *)self profile];
  v4 = [v3 username];

  if (v4)
  {
    v5 = [(WFCredentialsContext *)self profile];
    v6 = [v5 username];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)activatePasswordSharing
{
  v23 = *MEMORY[0x277D85DE8];
  if ([(WFCredentialsContext *)self isPasswordSharingSupported])
  {
    v3 = [(WFCredentialsContext *)self passwordSharingService];

    if (!v3)
    {
      v4 = [(WFCredentialsContext *)self shouldReactivatePasswordSharing];
      v5 = WFLogForCategory(0);
      if (v4)
      {
        v6 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
        {
          OUTLINED_FUNCTION_0_8();
          OUTLINED_FUNCTION_2_4();
          _os_log_impl(v7, v8, v6, v9, v10, 0x16u);
        }

        v11 = objc_alloc_init(MEMORY[0x277D54CB0]);
        [(WFCredentialsContext *)self setPasswordSharingService:v11];

        v12 = [(WFCredentialsContext *)self network];
        v13 = [v12 ssid];
        v14 = [(WFCredentialsContext *)self passwordSharingService];
        [v14 setNetworkName:v13];

        v15 = [(WFCredentialsContext *)self passwordSharingService];
        [v15 setDelegate:self];

        v16 = [(WFCredentialsContext *)self passwordSharingService];
        [v16 activate];

        [(WFCredentialsContext *)self setShouldReactivatePasswordSharing:0];
      }

      else
      {
        v18 = OSLogForWFLogLevel(3uLL);
        if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v18))
        {
          OUTLINED_FUNCTION_2_4();
          _os_log_impl(v19, v20, v18, v21, v22, 0xCu);
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deactivatePasswordSharingWithReactivation:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  if ([(WFCredentialsContext *)self isPasswordSharingSupported])
  {
    v5 = [(WFCredentialsContext *)self passwordSharingService];

    if (v5)
    {
      v6 = WFLogForCategory(0);
      v7 = OSLogForWFLogLevel(1uLL);
      if (WFCurrentLogLevel() && v6 && os_log_type_enabled(v6, v7))
      {
        v11[0] = 136315394;
        OUTLINED_FUNCTION_0_8();
        v12 = self;
        _os_log_impl(&dword_273ECD000, v6, v7, "%s: %@", v11, 0x16u);
      }

      v8 = [(WFCredentialsContext *)self passwordSharingService];
      [v8 setDelegate:0];

      v9 = [(WFCredentialsContext *)self passwordSharingService];
      [v9 invalidate];

      [(WFCredentialsContext *)self setPasswordSharingService:0];
      if (v3)
      {
        [(WFCredentialsContext *)self setShouldReactivatePasswordSharing:1];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)service:(void *)a1 receivedNetworkInfo:(NSObject *)a2 .cold.1(void *a1, NSObject **a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v4)
  {
    v4 = v4;
    if (os_log_type_enabled(v4, v5))
    {
      v6 = [a1 provider];
      OUTLINED_FUNCTION_0_8();
      OUTLINED_FUNCTION_2_4();
      _os_log_impl(v7, v8, v5, v9, v10, 0x16u);
    }
  }

  *a2 = v4;
  v11 = *MEMORY[0x277D85DE8];
}

- (void)service:(uint64_t)a1 receivedNetworkInfo:(NSObject *)a2 .cold.2(uint64_t a1, NSObject **a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v3 && os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_2_4();
    _os_log_impl(v5, v6, v4, v7, v8, 0x16u);
  }

  *a2 = v3;
  v9 = *MEMORY[0x277D85DE8];
}

@end
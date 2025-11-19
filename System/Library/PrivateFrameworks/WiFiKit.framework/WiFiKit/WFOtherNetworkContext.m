@interface WFOtherNetworkContext
- (BOOL)isEnterprise;
- (BOOL)otherNetworkViewController:(id)a3 isValidPassword:(id)a4;
- (BOOL)validateCredentials;
- (BOOL)validatePassword;
- (WFOtherNetworkContext)initWithType:(unint64_t)a3 authTraits:(int64_t)a4 supportRandomAddress:(BOOL)a5 useRandomAddress:(BOOL)a6 randomMACAddress:(id)a7 hardwareMACAddress:(id)a8;
- (int64_t)securityMode;
- (void)_updateActivityStringForError:(id)a3 networkName:(id)a4;
- (void)finishWithError:(id)a3 forNetwork:(id)a4 profile:(id)a5;
- (void)gatherCredentials:(id)a3;
- (void)otherNetworkViewControllerUserDidTapJoin:(id)a3;
- (void)savePrivateAddressMode:(unint64_t)a3;
@end

@implementation WFOtherNetworkContext

- (void)finishWithError:(id)a3 forNetwork:(id)a4 profile:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(WFOtherNetworkContext *)self setNetwork:v9];
  [(WFOtherNetworkContext *)self setProfile:v10];
  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
  {
    network = self->_network;
    *buf = 136315650;
    v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
    v40 = 2112;
    v41 = network;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_273ECD000, v11, v12, "%s: network %@ profile %@", buf, 0x20u);
  }

  if (v8)
  {
    v14 = [v8 code];
    if (v14 <= 0x11)
    {
      if (((1 << v14) & 0x8B) != 0)
      {
        if (self->_type != 1)
        {
          requestedFields = 385;
          goto LABEL_44;
        }

        v15 = [(WFOtherNetworkContext *)self network];
        v16 = [v15 isEnterprise];

        if (v16)
        {
          v17 = WFLogForCategory(0);
          v18 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v17)
          {
            v19 = v17;
            if (os_log_type_enabled(v19, v18))
            {
              v20 = [(WFOtherNetworkContext *)self network];
              *buf = 136315394;
              v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
              v40 = 2112;
              v41 = v20;
              _os_log_impl(&dword_273ECD000, v19, v18, "%s: network %@ is enterprise", buf, 0x16u);
            }
          }

          if (self->_availableTLSIdentities)
          {
            v21 = WFLogForCategory(0);
            v22 = OSLogForWFLogLevel(4uLL);
            if (WFCurrentLogLevel() < 4 || !v21)
            {
              goto LABEL_21;
            }

            v23 = v21;
            if (!os_log_type_enabled(v23, v22))
            {
LABEL_20:

LABEL_21:
              requestedFields = 15;
              goto LABEL_44;
            }

LABEL_19:
            v24 = [(NSArray *)self->_availableTLSIdentities count];
            *buf = 136315394;
            v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
            v40 = 2048;
            v41 = v24;
            _os_log_impl(&dword_273ECD000, v23, v22, "%s: available TLS identities %lu", buf, 0x16u);
            goto LABEL_20;
          }

LABEL_43:
          requestedFields = 3;
LABEL_44:
          v34 = WFLogForCategory(0);
          v35 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v34 && os_log_type_enabled(v34, v35))
          {
            *buf = 136315650;
            v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
            v40 = 2112;
            v41 = v8;
            v42 = 2048;
            v43 = requestedFields;
            _os_log_impl(&dword_273ECD000, v34, v35, "%s: error %@ newRequested fields %ld", buf, 0x20u);
          }

          self->_requestedFields = requestedFields;
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      if (v14 == 17)
      {
        if (self->_type != 1)
        {
          requestedFields = 0;
          goto LABEL_44;
        }

        v26 = [(WFOtherNetworkContext *)self network];
        v27 = [v26 isEnterprise];

        if (v27)
        {
          v28 = WFLogForCategory(0);
          v29 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v28)
          {
            v30 = v28;
            if (os_log_type_enabled(v30, v29))
            {
              v31 = [(WFOtherNetworkContext *)self network];
              *buf = 136315394;
              v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
              v40 = 2112;
              v41 = v31;
              _os_log_impl(&dword_273ECD000, v30, v29, "%s: network %@ is enterprise", buf, 0x16u);
            }
          }

          if (self->_availableTLSIdentities)
          {
            v21 = WFLogForCategory(0);
            v22 = OSLogForWFLogLevel(4uLL);
            if (WFCurrentLogLevel() < 4 || !v21)
            {
              goto LABEL_21;
            }

            v23 = v21;
            if (!os_log_type_enabled(v23, v22))
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }

          goto LABEL_43;
        }

LABEL_36:
        requestedFields = 1;
        goto LABEL_44;
      }
    }

    v32 = WFLogForCategory(0);
    v33 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v32 && os_log_type_enabled(v32, v33))
    {
      *buf = 136315394;
      v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
      v40 = 2112;
      v41 = v8;
      _os_log_impl(&dword_273ECD000, v32, v33, "%s: unhandled error %@", buf, 0x16u);
    }

    requestedFields = self->_requestedFields;
    goto LABEL_44;
  }

LABEL_49:
  v37.receiver = self;
  v37.super_class = WFOtherNetworkContext;
  [(WFCredentialsContext *)&v37 finishWithError:v8 forNetwork:v9 profile:v10];

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateCredentials
{
  v3 = [(WFCredentialsContext *)self provider];
  v4 = v3;
  if (self->_type == 1)
  {
    requestedFields = self->_requestedFields;
    if ((requestedFields & 0x80) != 0)
    {
      v6 = [v3 SSID];
      if ([v6 isEmpty])
      {

LABEL_16:
        v10 = 0;
        goto LABEL_15;
      }

      v7 = [v4 SSID];

      if (!v7)
      {
        goto LABEL_16;
      }

      requestedFields = self->_requestedFields;
    }

    if (requestedFields != 128)
    {
      goto LABEL_14;
    }
  }

  else if ([(WFOtherNetworkContext *)self securityMode])
  {
LABEL_14:
    v12.receiver = self;
    v12.super_class = WFOtherNetworkContext;
    v10 = [(WFCredentialsContext *)&v12 validateCredentials];
    goto LABEL_15;
  }

  v8 = [v4 SSID];
  if ([v8 isEmpty])
  {

    goto LABEL_14;
  }

  v9 = [v4 SSID];

  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (BOOL)validatePassword
{
  v3 = [(WFCredentialsContext *)self provider];
  v4 = v3;
  if (self->_type == 1)
  {
    requestedFields = self->_requestedFields;
    if ((requestedFields & 0x80) != 0)
    {
      v6 = [v3 SSID];
      if ([v6 isEmpty])
      {

LABEL_16:
        v10 = 0;
        goto LABEL_15;
      }

      v7 = [v4 SSID];

      if (!v7)
      {
        goto LABEL_16;
      }

      requestedFields = self->_requestedFields;
    }

    if (requestedFields != 128)
    {
      goto LABEL_14;
    }
  }

  else if ([(WFOtherNetworkContext *)self securityMode])
  {
LABEL_14:
    v12.receiver = self;
    v12.super_class = WFOtherNetworkContext;
    v10 = [(WFCredentialsContext *)&v12 validatePassword];
    goto LABEL_15;
  }

  v8 = [v4 SSID];
  if ([v8 isEmpty])
  {

    goto LABEL_14;
  }

  v9 = [v4 SSID];

  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = 1;
LABEL_15:

  return v10;
}

- (void)_updateActivityStringForError:(id)a3 networkName:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(WFCredentialsContext *)self provider];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (v6)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"kWFLocOtherNetworkFailedPromptFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:v11, v7];
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
      {
        *buf = 136315650;
        v18 = "[WFOtherNetworkContext _updateActivityStringForError:networkName:]";
        v19 = 2112;
        v20 = v6;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_273ECD000, v13, v14, "%s: error %@ activityString %@", buf, 0x20u);
      }
    }

    else
    {
      v12 = 0;
    }

    v15 = [(WFCredentialsContext *)self provider];
    [v15 setActivityString:v12];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)gatherCredentials:(id)a3
{
  v93 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WFCredentialsContext *)self provider];
  v6 = [v5 SSID];

  v7 = [(WFOtherNetworkContext *)self network];
  if (v7)
  {
    v8 = [(WFOtherNetworkContext *)self network];
    v9 = [v8 ssid];
  }

  else
  {
    v9 = v6;
  }

  if (([v6 isEqualToString:v9] & 1) == 0)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 136315650;
      *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
      v87 = 2112;
      v88 = v9;
      v89 = 2112;
      v90 = v6;
      _os_log_impl(&dword_273ECD000, v10, v11, "%s: network name changed from %@ -> %@", buf, 0x20u);
    }

    v12 = v6;
    v9 = v12;
  }

  v13 = [(WFCredentialsContext *)self provider];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(WFCredentialsContext *)self provider];
    [v15 setJoining:1];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v16 = [(WFCredentialsContext *)self provider];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"kWFLocOtherNetworkJoiningPromptFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v21 = [v18 stringWithFormat:v20, v9];
      v22 = [(WFCredentialsContext *)self provider];
      [v22 setActivityString:v21];
    }
  }

  v23 = objc_alloc_init(WFUserSuppliedNetwork);
  v77 = v9;
  [(WFUserSuppliedNetwork *)v23 setSsid:v9];
  v24 = [(WFOtherNetworkContext *)self network];

  if (v24)
  {
    v25 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v25)
    {
      v27 = v25;
      if (os_log_type_enabled(v27, v26))
      {
        v28 = [(WFOtherNetworkContext *)self network];
        *buf = 136315394;
        *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
        v87 = 2112;
        v88 = v28;
        _os_log_impl(&dword_273ECD000, v27, v26, "%s: using security mode from network: %@", buf, 0x16u);
      }
    }

    v29 = [(WFOtherNetworkContext *)self network];
    -[WFUserSuppliedNetwork setSecurity:](v23, "setSecurity:", [v29 securityMode]);
  }

  v30 = [(WFCredentialsContext *)self provider];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = [(WFCredentialsContext *)self provider];
    v33 = [v32 securityMode];

    v34 = WFLogForCategory(0);
    v35 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v34)
    {
      v36 = v23;
      v37 = self;
      v38 = v34;
      if (os_log_type_enabled(v38, v35))
      {
        v39 = [(WFCredentialsContext *)v37 provider];
        v40 = WFWiFiSecurityModeFromOtherSecurityMode(v33);
        v41 = WFStringFromWFSecurityMode(v40);
        *buf = 136315906;
        *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
        v87 = 2112;
        v88 = v39;
        v89 = 2112;
        v90 = v41;
        v91 = 2048;
        v92 = v33;
        _os_log_impl(&dword_273ECD000, v38, v35, "%s: using security mode from provider: %@ - %@ (%ld)", buf, 0x2Au);
      }

      self = v37;
      v23 = v36;
    }

    [(WFUserSuppliedNetwork *)v23 setSecurity:WFWiFiSecurityModeFromOtherSecurityMode(v33)];
  }

  v42 = [(WFCredentialsContext *)self provider];
  v43 = [v42 username];
  [(WFUserSuppliedNetwork *)v23 setUsername:v43];

  v44 = [(WFCredentialsContext *)self provider];
  v45 = [v44 password];
  [(WFUserSuppliedNetwork *)v23 setPassword:v45];

  v46 = [(WFCredentialsContext *)self provider];
  -[WFUserSuppliedNetwork setTLSIdentity:](v23, "setTLSIdentity:", [v46 TLSIdentity]);

  v47 = WFLogForCategory(0);
  v48 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v47)
  {
    v49 = v47;
    if (os_log_type_enabled(v49, v48))
    {
      v50 = [(WFUserSuppliedNetwork *)v23 security];
      *buf = 136315394;
      *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
      v87 = 2048;
      v88 = v50;
      _os_log_impl(&dword_273ECD000, v49, v48, "%s: otherNetworkRecord.security: %ld", buf, 0x16u);
    }
  }

  v76 = v23;
  if ([(WFUserSuppliedNetwork *)v23 security]== 128)
  {
    v51 = [(WFCredentialsContext *)self provider];
    if (objc_opt_respondsToSelector())
    {
      v52 = [(WFCredentialsContext *)self provider];
      v53 = objc_opt_respondsToSelector();

      if (v53)
      {
        *buf = 0;
        v84 = 0;
        if (WFWAPIIdentityListCreate(buf, &v84) || !CFArrayGetCount(*buf))
        {
          v54 = 0;
        }

        else
        {
          v55 = self;
          v74 = v6;
          v75 = v4;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          obj = v84;
          v56 = [(__CFArray *)obj countByEnumeratingWithState:&v80 objects:v85 count:16];
          if (v56)
          {
            v57 = v56;
            v54 = 0;
            v58 = *v81;
            do
            {
              for (i = 0; i != v57; ++i)
              {
                if (*v81 != v58)
                {
                  objc_enumerationMutation(obj);
                }

                v60 = *(*(&v80 + 1) + 8 * i);
                v61 = [v60 valueForKey:@"certRef"];
                v62 = [(WFCredentialsContext *)v55 provider];
                v63 = [v62 WAPIIdentity];

                if (v61)
                {
                  v64 = v63 == 0;
                }

                else
                {
                  v64 = 1;
                }

                if (!v64 && CFEqual(v61, v63))
                {
                  v65 = [v60 valueForKey:@"pemData"];

                  v54 = v65;
                }
              }

              v57 = [(__CFArray *)obj countByEnumeratingWithState:&v80 objects:v85 count:16];
            }

            while (v57);
          }

          else
          {
            v54 = 0;
          }

          v6 = v74;
          v4 = v75;
          self = v55;
        }

        v66 = [(WFCredentialsContext *)self provider];
        v67 = [v66 WAPIRootCertificate];
        v68 = WFWAPICertificateBlobString(v67, v54);
        [(WFUserSuppliedNetwork *)v76 setPassword:v68];
      }
    }

    else
    {
    }
  }

  v69 = WFLogForCategory(0);
  v70 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v69)
  {
    v71 = v69;
    if (os_log_type_enabled(v71, v70))
    {
      v72 = WFStringFromWFSecurityMode([(WFUserSuppliedNetwork *)v76 security]);
      *buf = 136315650;
      *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
      v87 = 2112;
      v88 = v77;
      v89 = 2112;
      v90 = v72;
      _os_log_impl(&dword_273ECD000, v71, v70, "%s: user joining other network %@ (security %@)", buf, 0x20u);
    }
  }

  [(WFOtherNetworkContext *)self setUserSuppliedNetwork:v76];
  v79.receiver = self;
  v79.super_class = WFOtherNetworkContext;
  [(WFCredentialsContext *)&v79 gatherCredentials:v4];

  v73 = *MEMORY[0x277D85DE8];
}

- (int64_t)securityMode
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(WFOtherNetworkContext *)self network];
  v4 = [v3 securityMode];

  if (self->_type != 1)
  {
    v5 = [(WFCredentialsContext *)self provider];
    if (([v5 conformsToProtocol:&unk_288336D90] & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    v6 = [(WFCredentialsContext *)self provider];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(WFCredentialsContext *)self provider];
      v4 = WFWiFiSecurityModeFromOtherSecurityMode([v8 securityMode]);

      v5 = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v5)
      {
        v10 = v5;
        if (os_log_type_enabled(v10, v9))
        {
          v11 = [(WFCredentialsContext *)self provider];
          v14 = 136315650;
          v15 = "[WFOtherNetworkContext securityMode]";
          v16 = 2112;
          v17 = v11;
          v18 = 2048;
          v19 = v4;
          _os_log_impl(&dword_273ECD000, v10, v9, "%s: using provider (%@) securityMode %ld", &v14, 0x20u);
        }
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)isEnterprise
{
  v3 = [(WFOtherNetworkContext *)self network];
  v4 = [v3 isEnterprise];

  if (self->_type == 1)
  {
    return v4;
  }

  v6 = [(WFOtherNetworkContext *)self securityMode];

  return WFSecurityModeIsEnterprise(v6);
}

- (void)otherNetworkViewControllerUserDidTapJoin:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
  objc_initWeak(&from, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__WFOtherNetworkContext_otherNetworkViewControllerUserDidTapJoin___block_invoke;
  v5[3] = &unk_279EBDAE8;
  objc_copyWeak(&v6, &location);
  objc_copyWeak(&v7, &from);
  v5[4] = self;
  [(WFOtherNetworkContext *)self gatherCredentials:v5];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __66__WFOtherNetworkContext_otherNetworkViewControllerUserDidTapJoin___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setJoining:0];

  v8 = objc_loadWeakRetained(a1 + 6);
  v6 = [a1[4] network];
  v7 = [v6 ssid];
  [v8 _updateActivityStringForError:v4 networkName:v7];
}

- (BOOL)otherNetworkViewController:(id)a3 isValidPassword:(id)a4
{
  v5 = a4;
  v6 = WFWiFiSecurityModeFromOtherSecurityMode([a3 securityMode]);
  LOBYTE(a3) = WFValidPasswordForSecurityMode(v6, v5);

  return a3;
}

- (void)savePrivateAddressMode:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&dword_273ECD000, v5, v6, "User joining other network using private address mode: %ld", &v10, 0xCu);
  }

  v7 = [(WFOtherNetworkContext *)self privateAddressModeChangeHandler];

  if (v7)
  {
    v8 = [(WFOtherNetworkContext *)self privateAddressModeChangeHandler];
    v8[2](v8, a3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (WFOtherNetworkContext)initWithType:(unint64_t)a3 authTraits:(int64_t)a4 supportRandomAddress:(BOOL)a5 useRandomAddress:(BOOL)a6 randomMACAddress:(id)a7 hardwareMACAddress:(id)a8
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = a7;
  v15 = a8;
  v35 = 0;
  theArray = 0;
  v34.receiver = self;
  v34.super_class = WFOtherNetworkContext;
  v16 = [(WFOtherNetworkContext *)&v34 init];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

  v16->_type = a3;
  v16->_availableAuthTraits = a4;
  if (a4)
  {
    if (!WFWAPIRootCertificateListCreate(&theArray) && CFArrayGetCount(theArray))
    {
      objc_storeStrong(&v17->_WAPIRootCertificates, theArray);
    }

    if (!WFWAPIIdentityListCreate(&v35, 0) && CFArrayGetCount(v35))
    {
      objc_storeStrong(&v17->_WAPIIdentities, v35);
    }
  }

  v33 = 0;
  v18 = WFAllIdentities(&v33);
  v19 = v18;
  if (!v33 && [v18 count])
  {
    objc_storeStrong(&v17->_availableTLSIdentities, v19);
  }

  type = v17->_type;
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_17;
    }

    v21 = 128;
  }

  else
  {
    v21 = 384;
  }

  v17->_requestedFields = v21;
LABEL_17:
  v17->_supportsRandomMACAddress = a5;
  v17->_isUsingRandomMACAddress = a6;
  v22 = [v15 formattedWiFiAddress];
  hardwareMACAddress = v17->_hardwareMACAddress;
  v17->_hardwareMACAddress = v22;

  v24 = [v14 formattedWiFiAddress];
  randomMACAddress = v17->_randomMACAddress;
  v17->_randomMACAddress = v24;

  v26 = WFLogForCategory(0);
  v27 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v26)
  {
    v28 = v26;
    if (os_log_type_enabled(v28, v27))
    {
      v29 = a4 & 1;
      availableTLSIdentities = v17->_availableTLSIdentities;
      if (availableTLSIdentities)
      {
        LODWORD(availableTLSIdentities) = [(NSArray *)availableTLSIdentities count];
      }

      *buf = 136315650;
      v38 = "[WFOtherNetworkContext initWithType:authTraits:supportRandomAddress:useRandomAddress:randomMACAddress:hardwareMACAddress:]";
      v39 = 1024;
      v40 = v29;
      v41 = 1024;
      v42 = availableTLSIdentities;
      _os_log_impl(&dword_273ECD000, v28, v27, "%s: WAPIEnabled: %d tlsIdentities %d", buf, 0x18u);
    }
  }

LABEL_25:
  v31 = *MEMORY[0x277D85DE8];
  return v17;
}

@end
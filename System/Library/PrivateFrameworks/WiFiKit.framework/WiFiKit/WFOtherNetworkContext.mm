@interface WFOtherNetworkContext
- (BOOL)isEnterprise;
- (BOOL)otherNetworkViewController:(id)controller isValidPassword:(id)password;
- (BOOL)validateCredentials;
- (BOOL)validatePassword;
- (WFOtherNetworkContext)initWithType:(unint64_t)type authTraits:(int64_t)traits supportRandomAddress:(BOOL)address useRandomAddress:(BOOL)randomAddress randomMACAddress:(id)cAddress hardwareMACAddress:(id)aCAddress;
- (int64_t)securityMode;
- (void)_updateActivityStringForError:(id)error networkName:(id)name;
- (void)finishWithError:(id)error forNetwork:(id)network profile:(id)profile;
- (void)gatherCredentials:(id)credentials;
- (void)otherNetworkViewControllerUserDidTapJoin:(id)join;
- (void)savePrivateAddressMode:(unint64_t)mode;
@end

@implementation WFOtherNetworkContext

- (void)finishWithError:(id)error forNetwork:(id)network profile:(id)profile
{
  v44 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  networkCopy = network;
  profileCopy = profile;
  [(WFOtherNetworkContext *)self setNetwork:networkCopy];
  [(WFOtherNetworkContext *)self setProfile:profileCopy];
  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
  {
    network = self->_network;
    *buf = 136315650;
    v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
    v40 = 2112;
    networkCopy2 = network;
    v42 = 2112;
    v43 = profileCopy;
    _os_log_impl(&dword_273ECD000, v11, v12, "%s: network %@ profile %@", buf, 0x20u);
  }

  if (errorCopy)
  {
    code = [errorCopy code];
    if (code <= 0x11)
    {
      if (((1 << code) & 0x8B) != 0)
      {
        if (self->_type != 1)
        {
          requestedFields = 385;
          goto LABEL_44;
        }

        network = [(WFOtherNetworkContext *)self network];
        isEnterprise = [network isEnterprise];

        if (isEnterprise)
        {
          v17 = WFLogForCategory(0);
          v18 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v17)
          {
            v19 = v17;
            if (os_log_type_enabled(v19, v18))
            {
              network2 = [(WFOtherNetworkContext *)self network];
              *buf = 136315394;
              v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
              v40 = 2112;
              networkCopy2 = network2;
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
            networkCopy2 = v24;
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
            networkCopy2 = errorCopy;
            v42 = 2048;
            v43 = requestedFields;
            _os_log_impl(&dword_273ECD000, v34, v35, "%s: error %@ newRequested fields %ld", buf, 0x20u);
          }

          self->_requestedFields = requestedFields;
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      if (code == 17)
      {
        if (self->_type != 1)
        {
          requestedFields = 0;
          goto LABEL_44;
        }

        network3 = [(WFOtherNetworkContext *)self network];
        isEnterprise2 = [network3 isEnterprise];

        if (isEnterprise2)
        {
          v28 = WFLogForCategory(0);
          v29 = OSLogForWFLogLevel(3uLL);
          if (WFCurrentLogLevel() >= 3 && v28)
          {
            v30 = v28;
            if (os_log_type_enabled(v30, v29))
            {
              network4 = [(WFOtherNetworkContext *)self network];
              *buf = 136315394;
              v39 = "[WFOtherNetworkContext finishWithError:forNetwork:profile:]";
              v40 = 2112;
              networkCopy2 = network4;
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
      networkCopy2 = errorCopy;
      _os_log_impl(&dword_273ECD000, v32, v33, "%s: unhandled error %@", buf, 0x16u);
    }

    requestedFields = self->_requestedFields;
    goto LABEL_44;
  }

LABEL_49:
  v37.receiver = self;
  v37.super_class = WFOtherNetworkContext;
  [(WFCredentialsContext *)&v37 finishWithError:errorCopy forNetwork:networkCopy profile:profileCopy];

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)validateCredentials
{
  provider = [(WFCredentialsContext *)self provider];
  v4 = provider;
  if (self->_type == 1)
  {
    requestedFields = self->_requestedFields;
    if ((requestedFields & 0x80) != 0)
    {
      sSID = [provider SSID];
      if ([sSID isEmpty])
      {

LABEL_16:
        validateCredentials = 0;
        goto LABEL_15;
      }

      sSID2 = [v4 SSID];

      if (!sSID2)
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
    validateCredentials = [(WFCredentialsContext *)&v12 validateCredentials];
    goto LABEL_15;
  }

  sSID3 = [v4 SSID];
  if ([sSID3 isEmpty])
  {

    goto LABEL_14;
  }

  sSID4 = [v4 SSID];

  if (!sSID4)
  {
    goto LABEL_14;
  }

  validateCredentials = 1;
LABEL_15:

  return validateCredentials;
}

- (BOOL)validatePassword
{
  provider = [(WFCredentialsContext *)self provider];
  v4 = provider;
  if (self->_type == 1)
  {
    requestedFields = self->_requestedFields;
    if ((requestedFields & 0x80) != 0)
    {
      sSID = [provider SSID];
      if ([sSID isEmpty])
      {

LABEL_16:
        validatePassword = 0;
        goto LABEL_15;
      }

      sSID2 = [v4 SSID];

      if (!sSID2)
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
    validatePassword = [(WFCredentialsContext *)&v12 validatePassword];
    goto LABEL_15;
  }

  sSID3 = [v4 SSID];
  if ([sSID3 isEmpty])
  {

    goto LABEL_14;
  }

  sSID4 = [v4 SSID];

  if (!sSID4)
  {
    goto LABEL_14;
  }

  validatePassword = 1;
LABEL_15:

  return validatePassword;
}

- (void)_updateActivityStringForError:(id)error networkName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  nameCopy = name;
  provider = [(WFCredentialsContext *)self provider];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    if (errorCopy)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"kWFLocOtherNetworkFailedPromptFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:v11, nameCopy];
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v13 && os_log_type_enabled(v13, v14))
      {
        *buf = 136315650;
        v18 = "[WFOtherNetworkContext _updateActivityStringForError:networkName:]";
        v19 = 2112;
        v20 = errorCopy;
        v21 = 2112;
        v22 = nameCopy;
        _os_log_impl(&dword_273ECD000, v13, v14, "%s: error %@ activityString %@", buf, 0x20u);
      }
    }

    else
    {
      nameCopy = 0;
    }

    provider2 = [(WFCredentialsContext *)self provider];
    [provider2 setActivityString:nameCopy];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)gatherCredentials:(id)credentials
{
  v93 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  provider = [(WFCredentialsContext *)self provider];
  sSID = [provider SSID];

  network = [(WFOtherNetworkContext *)self network];
  if (network)
  {
    network2 = [(WFOtherNetworkContext *)self network];
    ssid = [network2 ssid];
  }

  else
  {
    ssid = sSID;
  }

  if (([sSID isEqualToString:ssid] & 1) == 0)
  {
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v10 && os_log_type_enabled(v10, v11))
    {
      *buf = 136315650;
      *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
      v87 = 2112;
      v88 = ssid;
      v89 = 2112;
      v90 = sSID;
      _os_log_impl(&dword_273ECD000, v10, v11, "%s: network name changed from %@ -> %@", buf, 0x20u);
    }

    v12 = sSID;
    ssid = v12;
  }

  provider2 = [(WFCredentialsContext *)self provider];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    provider3 = [(WFCredentialsContext *)self provider];
    [provider3 setJoining:1];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    provider4 = [(WFCredentialsContext *)self provider];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"kWFLocOtherNetworkJoiningPromptFormat" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
      v21 = [v18 stringWithFormat:v20, ssid];
      provider5 = [(WFCredentialsContext *)self provider];
      [provider5 setActivityString:v21];
    }
  }

  v23 = objc_alloc_init(WFUserSuppliedNetwork);
  v77 = ssid;
  [(WFUserSuppliedNetwork *)v23 setSsid:ssid];
  network3 = [(WFOtherNetworkContext *)self network];

  if (network3)
  {
    v25 = WFLogForCategory(0);
    v26 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v25)
    {
      v27 = v25;
      if (os_log_type_enabled(v27, v26))
      {
        network4 = [(WFOtherNetworkContext *)self network];
        *buf = 136315394;
        *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
        v87 = 2112;
        v88 = network4;
        _os_log_impl(&dword_273ECD000, v27, v26, "%s: using security mode from network: %@", buf, 0x16u);
      }
    }

    network5 = [(WFOtherNetworkContext *)self network];
    -[WFUserSuppliedNetwork setSecurity:](v23, "setSecurity:", [network5 securityMode]);
  }

  provider6 = [(WFCredentialsContext *)self provider];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    provider7 = [(WFCredentialsContext *)self provider];
    securityMode = [provider7 securityMode];

    v34 = WFLogForCategory(0);
    v35 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v34)
    {
      v36 = v23;
      selfCopy = self;
      v38 = v34;
      if (os_log_type_enabled(v38, v35))
      {
        provider8 = [(WFCredentialsContext *)selfCopy provider];
        v40 = WFWiFiSecurityModeFromOtherSecurityMode(securityMode);
        v41 = WFStringFromWFSecurityMode(v40);
        *buf = 136315906;
        *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
        v87 = 2112;
        v88 = provider8;
        v89 = 2112;
        v90 = v41;
        v91 = 2048;
        v92 = securityMode;
        _os_log_impl(&dword_273ECD000, v38, v35, "%s: using security mode from provider: %@ - %@ (%ld)", buf, 0x2Au);
      }

      self = selfCopy;
      v23 = v36;
    }

    [(WFUserSuppliedNetwork *)v23 setSecurity:WFWiFiSecurityModeFromOtherSecurityMode(securityMode)];
  }

  provider9 = [(WFCredentialsContext *)self provider];
  username = [provider9 username];
  [(WFUserSuppliedNetwork *)v23 setUsername:username];

  provider10 = [(WFCredentialsContext *)self provider];
  password = [provider10 password];
  [(WFUserSuppliedNetwork *)v23 setPassword:password];

  provider11 = [(WFCredentialsContext *)self provider];
  -[WFUserSuppliedNetwork setTLSIdentity:](v23, "setTLSIdentity:", [provider11 TLSIdentity]);

  v47 = WFLogForCategory(0);
  v48 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v47)
  {
    v49 = v47;
    if (os_log_type_enabled(v49, v48))
    {
      security = [(WFUserSuppliedNetwork *)v23 security];
      *buf = 136315394;
      *&buf[4] = "[WFOtherNetworkContext gatherCredentials:]";
      v87 = 2048;
      v88 = security;
      _os_log_impl(&dword_273ECD000, v49, v48, "%s: otherNetworkRecord.security: %ld", buf, 0x16u);
    }
  }

  v76 = v23;
  if ([(WFUserSuppliedNetwork *)v23 security]== 128)
  {
    provider12 = [(WFCredentialsContext *)self provider];
    if (objc_opt_respondsToSelector())
    {
      provider13 = [(WFCredentialsContext *)self provider];
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
          selfCopy2 = self;
          v74 = sSID;
          v75 = credentialsCopy;
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
                provider14 = [(WFCredentialsContext *)selfCopy2 provider];
                wAPIIdentity = [provider14 WAPIIdentity];

                if (v61)
                {
                  v64 = wAPIIdentity == 0;
                }

                else
                {
                  v64 = 1;
                }

                if (!v64 && CFEqual(v61, wAPIIdentity))
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

          sSID = v74;
          credentialsCopy = v75;
          self = selfCopy2;
        }

        provider15 = [(WFCredentialsContext *)self provider];
        wAPIRootCertificate = [provider15 WAPIRootCertificate];
        v68 = WFWAPICertificateBlobString(wAPIRootCertificate, v54);
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
  [(WFCredentialsContext *)&v79 gatherCredentials:credentialsCopy];

  v73 = *MEMORY[0x277D85DE8];
}

- (int64_t)securityMode
{
  v20 = *MEMORY[0x277D85DE8];
  network = [(WFOtherNetworkContext *)self network];
  securityMode = [network securityMode];

  if (self->_type != 1)
  {
    provider = [(WFCredentialsContext *)self provider];
    if (([provider conformsToProtocol:&unk_288336D90] & 1) == 0)
    {
LABEL_9:

      goto LABEL_10;
    }

    provider2 = [(WFCredentialsContext *)self provider];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      provider3 = [(WFCredentialsContext *)self provider];
      securityMode = WFWiFiSecurityModeFromOtherSecurityMode([provider3 securityMode]);

      provider = WFLogForCategory(0);
      v9 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && provider)
      {
        v10 = provider;
        if (os_log_type_enabled(v10, v9))
        {
          provider4 = [(WFCredentialsContext *)self provider];
          v14 = 136315650;
          v15 = "[WFOtherNetworkContext securityMode]";
          v16 = 2112;
          v17 = provider4;
          v18 = 2048;
          v19 = securityMode;
          _os_log_impl(&dword_273ECD000, v10, v9, "%s: using provider (%@) securityMode %ld", &v14, 0x20u);
        }
      }

      goto LABEL_9;
    }
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return securityMode;
}

- (BOOL)isEnterprise
{
  network = [(WFOtherNetworkContext *)self network];
  isEnterprise = [network isEnterprise];

  if (self->_type == 1)
  {
    return isEnterprise;
  }

  securityMode = [(WFOtherNetworkContext *)self securityMode];

  return WFSecurityModeIsEnterprise(securityMode);
}

- (void)otherNetworkViewControllerUserDidTapJoin:(id)join
{
  joinCopy = join;
  objc_initWeak(&location, joinCopy);
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

- (BOOL)otherNetworkViewController:(id)controller isValidPassword:(id)password
{
  passwordCopy = password;
  v6 = WFWiFiSecurityModeFromOtherSecurityMode([controller securityMode]);
  LOBYTE(controller) = WFValidPasswordForSecurityMode(v6, passwordCopy);

  return controller;
}

- (void)savePrivateAddressMode:(unint64_t)mode
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    v10 = 134217984;
    modeCopy = mode;
    _os_log_impl(&dword_273ECD000, v5, v6, "User joining other network using private address mode: %ld", &v10, 0xCu);
  }

  privateAddressModeChangeHandler = [(WFOtherNetworkContext *)self privateAddressModeChangeHandler];

  if (privateAddressModeChangeHandler)
  {
    privateAddressModeChangeHandler2 = [(WFOtherNetworkContext *)self privateAddressModeChangeHandler];
    privateAddressModeChangeHandler2[2](privateAddressModeChangeHandler2, mode);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (WFOtherNetworkContext)initWithType:(unint64_t)type authTraits:(int64_t)traits supportRandomAddress:(BOOL)address useRandomAddress:(BOOL)randomAddress randomMACAddress:(id)cAddress hardwareMACAddress:(id)aCAddress
{
  v43 = *MEMORY[0x277D85DE8];
  cAddressCopy = cAddress;
  aCAddressCopy = aCAddress;
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

  v16->_type = type;
  v16->_availableAuthTraits = traits;
  if (traits)
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
  v17->_supportsRandomMACAddress = address;
  v17->_isUsingRandomMACAddress = randomAddress;
  formattedWiFiAddress = [aCAddressCopy formattedWiFiAddress];
  hardwareMACAddress = v17->_hardwareMACAddress;
  v17->_hardwareMACAddress = formattedWiFiAddress;

  formattedWiFiAddress2 = [cAddressCopy formattedWiFiAddress];
  randomMACAddress = v17->_randomMACAddress;
  v17->_randomMACAddress = formattedWiFiAddress2;

  v26 = WFLogForCategory(0);
  v27 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v26)
  {
    v28 = v26;
    if (os_log_type_enabled(v28, v27))
    {
      v29 = traits & 1;
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
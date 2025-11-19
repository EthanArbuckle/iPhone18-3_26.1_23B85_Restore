@interface WFMutableNetworkProfile
+ (id)mutableProfileForNetwork:(id)a3;
- (NSDictionary)enterpriseProfile;
- (WFMutableNetworkProfile)initWithNetwork:(id)a3;
- (void)dealloc;
- (void)removePassword;
- (void)setTLSIdentity:(__SecIdentity *)a3;
@end

@implementation WFMutableNetworkProfile

+ (id)mutableProfileForNetwork:(id)a3
{
  v3 = a3;
  v4 = [[WFMutableNetworkProfile alloc] initWithNetwork:v3];

  return v4;
}

- (void)dealloc
{
  TLSIdentity = self->_TLSIdentity;
  if (TLSIdentity)
  {
    CFRelease(TLSIdentity);
    self->_TLSIdentity = 0;
  }

  v4.receiver = self;
  v4.super_class = WFMutableNetworkProfile;
  [(WFNetworkProfile *)&v4 dealloc];
}

- (NSDictionary)enterpriseProfile
{
  v40 = *MEMORY[0x277D85DE8];
  enterpriseProfile = self->_enterpriseProfile;
  if (enterpriseProfile)
  {
    v4 = enterpriseProfile;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = WFMutableNetworkProfile;
    v4 = [(WFNetworkProfile *)&v35 enterpriseProfile];
  }

  v5 = v4;
  v6 = [(NSDictionary *)v4 objectForKey:@"EAPClientConfiguration"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 mutableCopy];
    if (self->_TLSIdentity)
    {
      v9 = EAPSecIdentityHandleCreate();
      if (v9)
      {
        v10 = v9;
        [v8 setObject:v9 forKey:@"TLSIdentityHandle"];
        CFRelease(v10);
      }

      else
      {
        v11 = WFLogForCategory(0);
        v12 = OSLogForWFLogLevel(1uLL);
        if (WFCurrentLogLevel() && v11 && os_log_type_enabled(v11, v12))
        {
          *buf = 136315138;
          v37 = "[WFMutableNetworkProfile enterpriseProfile]";
          _os_log_impl(&dword_273ECD000, v11, v12, "%s: failed to create SecIdentity handle for identity", buf, 0xCu);
        }
      }

      v13 = [v8 objectForKey:@"AcceptEAPTypes"];

      if (v13)
      {
        v14 = [v8 objectForKey:@"AcceptEAPTypes"];
        v15 = [v14 containsObject:&unk_288304828];

        if (v15)
        {
          v16 = WFLogForCategory(0);
          v17 = OSLogForWFLogLevel(1uLL);
          if (WFCurrentLogLevel() && v16 && os_log_type_enabled(v16, v17))
          {
            *buf = 136315394;
            v37 = "[WFMutableNetworkProfile enterpriseProfile]";
            v38 = 2112;
            v39 = v8;
            _os_log_impl(&dword_273ECD000, v16, v17, "%s: accept EAP types already present %@", buf, 0x16u);
          }
        }

        else
        {
          v18 = [v8 objectForKey:@"AcceptEAPTypes"];
          v19 = [v18 mutableCopy];

          [v19 addObject:&unk_288304828];
          [v8 setObject:v19 forKey:@"AcceptEAPTypes"];
        }
      }

      else
      {
        [v8 setObject:&unk_288304E88 forKey:@"AcceptEAPTypes"];
      }
    }
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
  }

  v20 = [(WFMutableNetworkProfile *)self certificateChain];

  if (v5)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = [(WFMutableNetworkProfile *)self certificateChain];
    [v8 setObject:v22 forKey:@"TLSUserTrustProceedCertificateChain"];

    [v8 setObject:MEMORY[0x277CBEC38] forKey:@"TLSSaveTrustExceptions"];
  }

  v23 = [(WFMutableNetworkProfile *)self username];
  if ([v23 length])
  {
  }

  else
  {
    v24 = [(WFMutableNetworkProfile *)self password];
    v25 = [v24 length];

    if (!v25)
    {
      goto LABEL_35;
    }
  }

  v26 = [(WFMutableNetworkProfile *)self username];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [(WFMutableNetworkProfile *)self username];
    [v8 setObject:v28 forKey:@"UserName"];
  }

  v29 = [(WFMutableNetworkProfile *)self password];
  v30 = [v29 length];

  if (v30)
  {
    v31 = [(WFMutableNetworkProfile *)self password];
    [v8 setObject:v31 forKey:@"UserPassword"];
  }

LABEL_35:
  if ([v8 count])
  {
    v32 = [(NSDictionary *)v5 mutableCopy];
    [(NSDictionary *)v32 setObject:v8 forKey:@"EAPClientConfiguration"];

    v5 = v32;
  }

  v33 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removePassword
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v0 && os_log_type_enabled(v0, v1))
  {
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1(&dword_273ECD000, v2, v3, "%s: no password to remove for profile %@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setTLSIdentity:(__SecIdentity *)a3
{
  TLSIdentity = self->_TLSIdentity;
  if (TLSIdentity)
  {
    CFRelease(TLSIdentity);
  }

  self->_TLSIdentity = a3;
  if (a3)
  {

    CFRetain(a3);
  }
}

- (WFMutableNetworkProfile)initWithNetwork:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WFMutableNetworkProfile;
  v5 = [(WFNetworkProfile *)&v18 initWithNetwork:v4];
  if (v5)
  {
    v6 = [v4 ssid];

    if (v6)
    {
      v7 = [v4 ssid];
      ssid = v5->_ssid;
      v5->_ssid = v7;

      v5->_securityMode = [v4 securityMode];
      v5->_securityModeExt = [v4 securityModeExt];
      v9 = [v4 bssid];
      bssid = v5->_bssid;
      v5->_bssid = v9;

      v11 = [v4 attributes];
      scanAttributes = v5->_scanAttributes;
      v5->_scanAttributes = v11;

      v13 = [(NSDictionary *)v5->_scanAttributes objectForKey:*MEMORY[0x277D29850]];
      enterpriseProfile = v5->_enterpriseProfile;
      v5->_enterpriseProfile = v13;

      v15 = WFUserNameFromEnterpriseProfile(v5->_enterpriseProfile);
      username = v5->_username;
      v5->_username = v15;
    }
  }

  return v5;
}

@end
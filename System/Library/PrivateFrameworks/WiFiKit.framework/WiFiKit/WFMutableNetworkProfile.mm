@interface WFMutableNetworkProfile
+ (id)mutableProfileForNetwork:(id)network;
- (NSDictionary)enterpriseProfile;
- (WFMutableNetworkProfile)initWithNetwork:(id)network;
- (void)dealloc;
- (void)removePassword;
- (void)setTLSIdentity:(__SecIdentity *)identity;
@end

@implementation WFMutableNetworkProfile

+ (id)mutableProfileForNetwork:(id)network
{
  networkCopy = network;
  v4 = [[WFMutableNetworkProfile alloc] initWithNetwork:networkCopy];

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
    enterpriseProfile = enterpriseProfile;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = WFMutableNetworkProfile;
    enterpriseProfile = [(WFNetworkProfile *)&v35 enterpriseProfile];
  }

  v5 = enterpriseProfile;
  v6 = [(NSDictionary *)enterpriseProfile objectForKey:@"EAPClientConfiguration"];
  v7 = v6;
  if (v6)
  {
    dictionary = [v6 mutableCopy];
    if (self->_TLSIdentity)
    {
      v9 = EAPSecIdentityHandleCreate();
      if (v9)
      {
        v10 = v9;
        [dictionary setObject:v9 forKey:@"TLSIdentityHandle"];
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

      v13 = [dictionary objectForKey:@"AcceptEAPTypes"];

      if (v13)
      {
        v14 = [dictionary objectForKey:@"AcceptEAPTypes"];
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
            v39 = dictionary;
            _os_log_impl(&dword_273ECD000, v16, v17, "%s: accept EAP types already present %@", buf, 0x16u);
          }
        }

        else
        {
          v18 = [dictionary objectForKey:@"AcceptEAPTypes"];
          v19 = [v18 mutableCopy];

          [v19 addObject:&unk_288304828];
          [dictionary setObject:v19 forKey:@"AcceptEAPTypes"];
        }
      }

      else
      {
        [dictionary setObject:&unk_288304E88 forKey:@"AcceptEAPTypes"];
      }
    }
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  certificateChain = [(WFMutableNetworkProfile *)self certificateChain];

  if (v5)
  {
    v21 = certificateChain == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    certificateChain2 = [(WFMutableNetworkProfile *)self certificateChain];
    [dictionary setObject:certificateChain2 forKey:@"TLSUserTrustProceedCertificateChain"];

    [dictionary setObject:MEMORY[0x277CBEC38] forKey:@"TLSSaveTrustExceptions"];
  }

  username = [(WFMutableNetworkProfile *)self username];
  if ([username length])
  {
  }

  else
  {
    password = [(WFMutableNetworkProfile *)self password];
    v25 = [password length];

    if (!v25)
    {
      goto LABEL_35;
    }
  }

  username2 = [(WFMutableNetworkProfile *)self username];
  v27 = [username2 length];

  if (v27)
  {
    username3 = [(WFMutableNetworkProfile *)self username];
    [dictionary setObject:username3 forKey:@"UserName"];
  }

  password2 = [(WFMutableNetworkProfile *)self password];
  v30 = [password2 length];

  if (v30)
  {
    password3 = [(WFMutableNetworkProfile *)self password];
    [dictionary setObject:password3 forKey:@"UserPassword"];
  }

LABEL_35:
  if ([dictionary count])
  {
    v32 = [(NSDictionary *)v5 mutableCopy];
    [(NSDictionary *)v32 setObject:dictionary forKey:@"EAPClientConfiguration"];

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

- (void)setTLSIdentity:(__SecIdentity *)identity
{
  TLSIdentity = self->_TLSIdentity;
  if (TLSIdentity)
  {
    CFRelease(TLSIdentity);
  }

  self->_TLSIdentity = identity;
  if (identity)
  {

    CFRetain(identity);
  }
}

- (WFMutableNetworkProfile)initWithNetwork:(id)network
{
  networkCopy = network;
  v18.receiver = self;
  v18.super_class = WFMutableNetworkProfile;
  v5 = [(WFNetworkProfile *)&v18 initWithNetwork:networkCopy];
  if (v5)
  {
    ssid = [networkCopy ssid];

    if (ssid)
    {
      ssid2 = [networkCopy ssid];
      ssid = v5->_ssid;
      v5->_ssid = ssid2;

      v5->_securityMode = [networkCopy securityMode];
      v5->_securityModeExt = [networkCopy securityModeExt];
      bssid = [networkCopy bssid];
      bssid = v5->_bssid;
      v5->_bssid = bssid;

      attributes = [networkCopy attributes];
      scanAttributes = v5->_scanAttributes;
      v5->_scanAttributes = attributes;

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
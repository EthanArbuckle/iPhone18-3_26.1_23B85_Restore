@interface CWFAssocParameters(Association)
- (void)appendAdditionalParameters:()Association;
@end

@implementation CWFAssocParameters(Association)

- (void)appendAdditionalParameters:()Association
{
  v49 = a3;
  scanResult = [self scanResult];
  WiFiNetworkCreateFromCoreWiFiScanResult();

  isCarPlayOnly = [v49 isCarPlayOnly];
  v6 = MEMORY[0x277CBED28];
  if (isCarPlayOnly)
  {
    v7 = *MEMORY[0x277D29818];
    v8 = *MEMORY[0x277CBED28];
    WiFiNetworkSetProperty();
  }

  if ([v49 isInstantHotspot])
  {
    v9 = *MEMORY[0x277D29810];
    v10 = *v6;
    WiFiNetworkSetProperty();
  }

  knownNetworkProfile = [self knownNetworkProfile];

  if (knownNetworkProfile)
  {
    knownNetworkProfile2 = [self knownNetworkProfile];
    knownNetworkProfile = WiFiNetworkCreateFromCoreWiFiNetworkProfile();
  }

  enterpriseParameters = [v49 enterpriseParameters];

  if (enterpriseParameters)
  {
    if (!knownNetworkProfile)
    {
      WiFiNetworkCreateCopy();
    }

    v14 = *MEMORY[0x277D29850];
    v15 = WiFiNetworkGetProperty();
    v16 = [v15 objectForKey:@"EAPClientConfiguration"];
    v17 = v16;
    if (v16)
    {
      dictionary = [v16 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v19 = dictionary;
    enterpriseParameters2 = [v49 enterpriseParameters];
    username = [enterpriseParameters2 username];

    if (username)
    {
      enterpriseParameters3 = [v49 enterpriseParameters];
      username2 = [enterpriseParameters3 username];
      [v19 setObject:username2 forKey:@"UserName"];
    }

    enterpriseParameters4 = [v49 enterpriseParameters];
    password = [enterpriseParameters4 password];

    if (password)
    {
      enterpriseParameters5 = [v49 enterpriseParameters];
      password2 = [enterpriseParameters5 password];
      [v19 setObject:password2 forKey:@"UserPassword"];
    }

    enterpriseParameters6 = [v49 enterpriseParameters];
    tLSIdentity = [enterpriseParameters6 TLSIdentity];

    if (tLSIdentity)
    {
      enterpriseParameters7 = [v49 enterpriseParameters];
      [enterpriseParameters7 TLSIdentity];
      v31 = EAPSecIdentityHandleCreate();

      if (v31)
      {
        [v19 setObject:v31 forKey:@"TLSIdentityHandle"];
        CFRelease(v31);
      }

      v32 = [v19 objectForKey:@"AcceptEAPTypes"];

      if (v32)
      {
        v33 = [v19 objectForKey:@"AcceptEAPTypes"];
        v34 = [v33 containsObject:&unk_2883333F0];

        if ((v34 & 1) == 0)
        {
          v35 = [v19 objectForKey:@"AcceptEAPTypes"];
          v36 = [v35 mutableCopy];

          [v36 addObject:&unk_2883333F0];
          [v19 setObject:v36 forKey:@"AcceptEAPTypes"];
        }
      }

      else
      {
        [v19 setObject:&unk_288333450 forKey:@"AcceptEAPTypes"];
      }
    }

    v37 = [v19 objectForKey:@"AcceptEAPTypes"];

    if (!v37)
    {
      enterpriseParameters8 = [v49 enterpriseParameters];
      tLSIdentity2 = [enterpriseParameters8 TLSIdentity];

      if (tLSIdentity2)
      {
        v40 = &unk_288333468;
      }

      else
      {
        v40 = &unk_288333480;
      }

      [v19 setObject:v40 forKey:@"AcceptEAPTypes"];
    }

    enterpriseParameters9 = [v49 enterpriseParameters];
    certificateChain = [enterpriseParameters9 certificateChain];

    if (certificateChain)
    {
      enterpriseParameters10 = [v49 enterpriseParameters];
      certificateChain2 = [enterpriseParameters10 certificateChain];
      [v19 setObject:certificateChain2 forKey:@"TLSUserTrustProceedCertificateChain"];

      [v19 setObject:MEMORY[0x277CBEC38] forKey:@"TLSSaveTrustExceptions"];
    }

    if ([v19 count])
    {
      if (v15)
      {
        dictionary2 = [v15 mutableCopy];
      }

      else
      {
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
      }

      v46 = dictionary2;
      [dictionary2 setObject:v19 forKey:@"EAPClientConfiguration"];
      WiFiNetworkSetProperty();
    }
  }

  CoreWiFiNetworkProfile = WiFiNetworkCreateCoreWiFiNetworkProfile();
  if ([v49 joinedUsingWiFiPasswordSharing])
  {
    [CoreWiFiNetworkProfile setAddReason:11];
  }

  [self setKnownNetworkProfile:CoreWiFiNetworkProfile];
  CoreWiFiScanResult = WiFiNetworkCreateCoreWiFiScanResult();
  [self setScanResult:CoreWiFiScanResult];
}

@end
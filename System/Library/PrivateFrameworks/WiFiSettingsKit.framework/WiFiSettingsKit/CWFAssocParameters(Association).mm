@interface CWFAssocParameters(Association)
- (void)appendAdditionalParameters:()Association;
@end

@implementation CWFAssocParameters(Association)

- (void)appendAdditionalParameters:()Association
{
  v49 = a3;
  v4 = [a1 scanResult];
  WiFiNetworkCreateFromCoreWiFiScanResult();

  v5 = [v49 isCarPlayOnly];
  v6 = MEMORY[0x277CBED28];
  if (v5)
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

  v11 = [a1 knownNetworkProfile];

  if (v11)
  {
    v12 = [a1 knownNetworkProfile];
    v11 = WiFiNetworkCreateFromCoreWiFiNetworkProfile();
  }

  v13 = [v49 enterpriseParameters];

  if (v13)
  {
    if (!v11)
    {
      WiFiNetworkCreateCopy();
    }

    v14 = *MEMORY[0x277D29850];
    v15 = WiFiNetworkGetProperty();
    v16 = [v15 objectForKey:@"EAPClientConfiguration"];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 mutableCopy];
    }

    else
    {
      v18 = [MEMORY[0x277CBEB38] dictionary];
    }

    v19 = v18;
    v20 = [v49 enterpriseParameters];
    v21 = [v20 username];

    if (v21)
    {
      v22 = [v49 enterpriseParameters];
      v23 = [v22 username];
      [v19 setObject:v23 forKey:@"UserName"];
    }

    v24 = [v49 enterpriseParameters];
    v25 = [v24 password];

    if (v25)
    {
      v26 = [v49 enterpriseParameters];
      v27 = [v26 password];
      [v19 setObject:v27 forKey:@"UserPassword"];
    }

    v28 = [v49 enterpriseParameters];
    v29 = [v28 TLSIdentity];

    if (v29)
    {
      v30 = [v49 enterpriseParameters];
      [v30 TLSIdentity];
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
      v38 = [v49 enterpriseParameters];
      v39 = [v38 TLSIdentity];

      if (v39)
      {
        v40 = &unk_288333468;
      }

      else
      {
        v40 = &unk_288333480;
      }

      [v19 setObject:v40 forKey:@"AcceptEAPTypes"];
    }

    v41 = [v49 enterpriseParameters];
    v42 = [v41 certificateChain];

    if (v42)
    {
      v43 = [v49 enterpriseParameters];
      v44 = [v43 certificateChain];
      [v19 setObject:v44 forKey:@"TLSUserTrustProceedCertificateChain"];

      [v19 setObject:MEMORY[0x277CBEC38] forKey:@"TLSSaveTrustExceptions"];
    }

    if ([v19 count])
    {
      if (v15)
      {
        v45 = [v15 mutableCopy];
      }

      else
      {
        v45 = [MEMORY[0x277CBEB38] dictionary];
      }

      v46 = v45;
      [v45 setObject:v19 forKey:@"EAPClientConfiguration"];
      WiFiNetworkSetProperty();
    }
  }

  CoreWiFiNetworkProfile = WiFiNetworkCreateCoreWiFiNetworkProfile();
  if ([v49 joinedUsingWiFiPasswordSharing])
  {
    [CoreWiFiNetworkProfile setAddReason:11];
  }

  [a1 setKnownNetworkProfile:CoreWiFiNetworkProfile];
  CoreWiFiScanResult = WiFiNetworkCreateCoreWiFiScanResult();
  [a1 setScanResult:CoreWiFiScanResult];
}

@end
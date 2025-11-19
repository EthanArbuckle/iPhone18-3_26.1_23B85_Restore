@interface RadioStoreBag
- (BOOL)isAdFreeRadioEnabled;
- (BOOL)shouldMescalSignRequestWithURL:(id)a3;
- (BOOL)shouldMescalVerifyResponseFromURL:(id)a3;
- (BOOL)shouldSendKBSyncData;
- (NSURL)baseURL;
- (id)_cacheRepresentation;
- (id)_initWithCacheRepresentation:(id)a3;
- (id)_initWithURLBag:(id)a3;
- (id)_platformContext;
@end

@implementation RadioStoreBag

- (NSURL)baseURL
{
  v2 = [(NSDictionary *)self->_tiltDictionary objectForKey:@"base-url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = [v2 stringByAppendingString:@"/"];
    v5 = [v3 URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_platformContext
{
  v2 = [(SSVPlatformContext *)self->_platformContext copy];

  return v2;
}

- (id)_cacheRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  srdnldURLString = self->_srdnldURLString;
  if (srdnldURLString)
  {
    [v3 setObject:srdnldURLString forKey:@"sRdnld"];
  }

  tiltDictionary = self->_tiltDictionary;
  if (tiltDictionary)
  {
    [v4 setObject:tiltDictionary forKey:@"radio"];
  }

  mescalRequestAllowList = self->_mescalRequestAllowList;
  if (mescalRequestAllowList)
  {
    [v4 setObject:mescalRequestAllowList forKey:@"sign-sap-request"];
  }

  mescalResponseAllowList = self->_mescalResponseAllowList;
  if (mescalResponseAllowList)
  {
    [v4 setObject:mescalResponseAllowList forKey:@"sign-sap-response"];
  }

  mescalSetupCertURLString = self->_mescalSetupCertURLString;
  if (mescalSetupCertURLString)
  {
    [v4 setObject:mescalSetupCertURLString forKey:@"sign-sap-setup-cert"];
  }

  mescalSetupURLString = self->_mescalSetupURLString;
  if (mescalSetupURLString)
  {
    [v4 setObject:mescalSetupURLString forKey:@"sign-sap-setup"];
  }

  shouldSendKBSyncDataValue = self->_shouldSendKBSyncDataValue;
  if (shouldSendKBSyncDataValue)
  {
    [v4 setObject:shouldSendKBSyncDataValue forKey:@"auth-can-post"];
  }

  amdDomains = self->_amdDomains;
  if (amdDomains)
  {
    [v4 setObject:amdDomains forKey:@"amd-domains"];
  }

  storeFrontSuffix = self->_storeFrontSuffix;
  if (storeFrontSuffix)
  {
    [v4 setObject:storeFrontSuffix forKey:@"storefront-header-suffix"];
  }

  leaseCertificateURLString = self->_leaseCertificateURLString;
  if (leaseCertificateURLString)
  {
    [v4 setObject:leaseCertificateURLString forKey:*MEMORY[0x277D6A618]];
  }

  v15 = [(SSVPlatformContext *)self->_platformContext bagDictionary];
  if (v15)
  {
    [v4 addEntriesFromDictionary:v15];
  }

  return v4;
}

- (id)_initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37.receiver = self;
    v37.super_class = RadioStoreBag;
    v5 = [(RadioStoreBag *)&v37 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"radio"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v6 = 0;
      }

      v7 = [v4 objectForKey:@"sRdnld"];
      v8 = [v7 copy];
      srdnldURLString = v5->_srdnldURLString;
      v5->_srdnldURLString = v8;

      v10 = [v6 copy];
      tiltDictionary = v5->_tiltDictionary;
      v5->_tiltDictionary = v10;

      v12 = [v4 objectForKey:@"sign-sap-request"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 copy];
        mescalRequestAllowList = v5->_mescalRequestAllowList;
        v5->_mescalRequestAllowList = v13;
      }

      v15 = [v4 objectForKey:@"sign-sap-response"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 copy];
        mescalResponseAllowList = v5->_mescalResponseAllowList;
        v5->_mescalResponseAllowList = v16;
      }

      if (v5->_mescalRequestAllowList || v5->_mescalResponseAllowList)
      {
        v18 = [v4 objectForKey:@"sign-sap-setup-cert"];
        v19 = [v4 objectForKey:@"sign-sap-setup"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v18 copy];
            mescalSetupCertURLString = v5->_mescalSetupCertURLString;
            v5->_mescalSetupCertURLString = v20;

            v22 = [v19 copy];
            mescalSetupURLString = v5->_mescalSetupURLString;
            v5->_mescalSetupURLString = v22;
          }
        }
      }

      v24 = [v4 objectForKey:@"amd-domains"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = [v24 copy];
        amdDomains = v5->_amdDomains;
        v5->_amdDomains = v25;
      }

      v27 = [v4 objectForKey:@"storefront-header-suffix"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = [v27 copy];
        storeFrontSuffix = v5->_storeFrontSuffix;
        v5->_storeFrontSuffix = v28;
      }

      v30 = [v4 objectForKey:*MEMORY[0x277D6A618]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_leaseCertificateURLString, v30);
      }

      v31 = [v4 objectForKey:@"auth-can-post"];
      shouldSendKBSyncDataValue = v5->_shouldSendKBSyncDataValue;
      v5->_shouldSendKBSyncDataValue = v31;

      v33 = [objc_alloc(MEMORY[0x277D69CE8]) initWithBagDictionary:v4];
      platformContext = v5->_platformContext;
      v5->_platformContext = v33;
    }

    self = v5;
    v35 = self;
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (BOOL)shouldSendKBSyncData
{
  if (!self->_shouldSendKBSyncDataValue)
  {
    return 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  shouldSendKBSyncDataValue = self->_shouldSendKBSyncDataValue;

  return [(NSNumber *)shouldSendKBSyncDataValue BOOLValue];
}

- (BOOL)shouldMescalVerifyResponseFromURL:(id)a3
{
  if (!self->_mescalResponseAllowList)
  {
    return 0;
  }

  v4 = [a3 path];
  if (v4)
  {
    mescalResponseAllowList = self->_mescalResponseAllowList;
    v6 = SSVURLPathMatchesActionDictionary();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)shouldMescalSignRequestWithURL:(id)a3
{
  if (!self->_mescalRequestAllowList)
  {
    return 0;
  }

  v4 = [a3 path];
  if (v4)
  {
    mescalRequestAllowList = self->_mescalRequestAllowList;
    v6 = SSVURLPathMatchesActionDictionary();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAdFreeRadioEnabled
{
  v2 = [(NSDictionary *)self->_tiltDictionary objectForKey:@"ad-free-radio-enabled"];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_initWithURLBag:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = RadioStoreBag;
  v5 = [(RadioStoreBag *)&v38 init];
  if (v5)
  {
    v6 = [v4 dictionaryForBagKey:@"radio"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v6 = 0;
    }

    v37 = [v4 stringForBagKey:@"sRdnld"];
    v7 = [v37 copy];
    srdnldURLString = v5->_srdnldURLString;
    v5->_srdnldURLString = v7;

    v9 = [v6 copy];
    tiltDictionary = v5->_tiltDictionary;
    v5->_tiltDictionary = v9;

    v11 = [v4 dictionaryForBagKey:@"sign-sap-request"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      mescalRequestAllowList = v5->_mescalRequestAllowList;
      v5->_mescalRequestAllowList = v12;
    }

    v14 = [v4 dictionaryForBagKey:@"sign-sap-response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      mescalResponseAllowList = v5->_mescalResponseAllowList;
      v5->_mescalResponseAllowList = v15;
    }

    if (v5->_mescalRequestAllowList || v5->_mescalResponseAllowList)
    {
      v17 = [v4 stringForBagKey:@"sign-sap-setup-cert"];
      v18 = [v4 stringForBagKey:@"sign-sap-setup"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v17 copy];
          mescalSetupCertURLString = v5->_mescalSetupCertURLString;
          v5->_mescalSetupCertURLString = v19;

          v21 = [v18 copy];
          mescalSetupURLString = v5->_mescalSetupURLString;
          v5->_mescalSetupURLString = v21;
        }
      }
    }

    v23 = [v4 arrayForBagKey:@"amd-domains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      amdDomains = v5->_amdDomains;
      v5->_amdDomains = v24;
    }

    v26 = [v4 stringForBagKey:@"storefront-header-suffix"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      storeFrontSuffix = v5->_storeFrontSuffix;
      v5->_storeFrontSuffix = v27;
    }

    v29 = [v4 stringForBagKey:*MEMORY[0x277D6A618]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_leaseCertificateURLString, v29);
    }

    v30 = [v4 numberForBagKey:@"auth-can-post"];
    shouldSendKBSyncDataValue = v5->_shouldSendKBSyncDataValue;
    v5->_shouldSendKBSyncDataValue = v30;

    v32 = objc_alloc(MEMORY[0x277D69CE8]);
    v33 = [v4 _allValues];
    v34 = [v32 initWithBagDictionary:v33];
    platformContext = v5->_platformContext;
    v5->_platformContext = v34;
  }

  return v5;
}

@end
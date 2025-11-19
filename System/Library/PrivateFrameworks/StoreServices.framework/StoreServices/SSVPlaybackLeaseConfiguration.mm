@interface SSVPlaybackLeaseConfiguration
- (SSVPlaybackLeaseConfiguration)initWithCertificateURL:(id)a3 leaseType:(int64_t)a4 leaseURL:(id)a5 pastisKeyServerURL:(id)a6 provisionMachineURL:(id)a7 storeFrontSuffix:(id)a8 syncMachineURL:(id)a9;
- (SSVPlaybackLeaseConfiguration)initWithURLBagDictionary:(id)a3 leaseType:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SSVPlaybackLeaseConfiguration

- (SSVPlaybackLeaseConfiguration)initWithCertificateURL:(id)a3 leaseType:(int64_t)a4 leaseURL:(id)a5 pastisKeyServerURL:(id)a6 provisionMachineURL:(id)a7 storeFrontSuffix:(id)a8 syncMachineURL:(id)a9
{
  v26 = a3;
  v25 = a5;
  v24 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = SSVPlaybackLeaseConfiguration;
  v19 = [(SSVPlaybackLeaseConfiguration *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_beginLeaseURL, a5);
    objc_storeStrong(&v20->_certificateURL, a3);
    objc_storeStrong(&v20->_getAssetURL, a5);
    v20->_leaseType = a4;
    objc_storeStrong(&v20->_pastisCertificateURL, a3);
    objc_storeStrong(&v20->_pastisKeyServerURL, a6);
    objc_storeStrong(&v20->_provisionMachineURL, a7);
    objc_storeStrong(&v20->_refreshLeaseURL, a5);
    v21 = [v17 copy];
    storeFrontSuffix = v20->_storeFrontSuffix;
    v20->_storeFrontSuffix = v21;

    objc_storeStrong(&v20->_syncMachineURL, a9);
  }

  return v20;
}

- (SSVPlaybackLeaseConfiguration)initWithURLBagDictionary:(id)a3 leaseType:(int64_t)a4
{
  v6 = a3;
  v31.receiver = self;
  v31.super_class = SSVPlaybackLeaseConfiguration;
  v7 = [(SSVPlaybackLeaseConfiguration *)&v31 init];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = [v6 objectForKey:@"fps-cert"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
    certificateURL = v7->_certificateURL;
    v7->_certificateURL = v9;
  }

  v11 = [v6 objectForKey:@"amd-finish-provisioning"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v11];
    provisionMachineURL = v7->_provisionMachineURL;
    v7->_provisionMachineURL = v12;
  }

  v14 = [v6 objectForKey:@"amd-sync-machine"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v14];
    syncMachineURL = v7->_syncMachineURL;
    v7->_syncMachineURL = v15;
  }

  v17 = [v6 objectForKey:@"fps-cert"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17];
    pastisCertificateURL = v7->_pastisCertificateURL;
    v7->_pastisCertificateURL = v18;
  }

  v20 = [v6 objectForKey:@"fps-request"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v20];
    pastisKeyServerURL = v7->_pastisKeyServerURL;
    v7->_pastisKeyServerURL = v21;
  }

  v7->_leaseType = a4;
  if (!a4)
  {
    v23 = SSVLeaseURLBagKeySubscriptionLease;
LABEL_16:
    v24 = [v6 objectForKey:*v23];

    objc_opt_class();
    v20 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v24];
      objc_storeStrong(&v7->_refreshLeaseURL, v25);
      objc_storeStrong(&v7->_getAssetURL, v25);
      beginLeaseURL = v7->_beginLeaseURL;
      v7->_beginLeaseURL = v25;

      v20 = v24;
    }

    goto LABEL_18;
  }

  if (a4 == 1)
  {
    v23 = SSVLeaseURLBagKeyKDLease;
    goto LABEL_16;
  }

LABEL_18:
  v27 = [v6 objectForKey:@"storefront-header-suffix"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [v27 copy];
    storeFrontSuffix = v7->_storeFrontSuffix;
    v7->_storeFrontSuffix = v28;
  }

LABEL_21:
  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setBeginLeaseURL:self->_beginLeaseURL];
  [v4 setCertificateURL:self->_certificateURL];
  [v4 setGetAssetURL:self->_getAssetURL];
  v4[3] = self->_leaseType;
  [v4 setProvisionMachineURL:self->_provisionMachineURL];
  [v4 setRefreshLeaseURL:self->_refreshLeaseURL];
  [v4 setStoreFrontSuffix:self->_storeFrontSuffix];
  [v4 setSyncMachineURL:self->_syncMachineURL];
  [v4 setPastisKeyServerURL:self->_pastisKeyServerURL];
  [v4 setPastisCertificateURL:self->_pastisCertificateURL];
  return v4;
}

@end
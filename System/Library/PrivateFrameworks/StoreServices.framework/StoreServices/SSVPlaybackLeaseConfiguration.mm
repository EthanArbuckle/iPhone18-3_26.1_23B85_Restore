@interface SSVPlaybackLeaseConfiguration
- (SSVPlaybackLeaseConfiguration)initWithCertificateURL:(id)l leaseType:(int64_t)type leaseURL:(id)rL pastisKeyServerURL:(id)uRL provisionMachineURL:(id)machineURL storeFrontSuffix:(id)suffix syncMachineURL:(id)syncMachineURL;
- (SSVPlaybackLeaseConfiguration)initWithURLBagDictionary:(id)dictionary leaseType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SSVPlaybackLeaseConfiguration

- (SSVPlaybackLeaseConfiguration)initWithCertificateURL:(id)l leaseType:(int64_t)type leaseURL:(id)rL pastisKeyServerURL:(id)uRL provisionMachineURL:(id)machineURL storeFrontSuffix:(id)suffix syncMachineURL:(id)syncMachineURL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  machineURLCopy = machineURL;
  suffixCopy = suffix;
  syncMachineURLCopy = syncMachineURL;
  v27.receiver = self;
  v27.super_class = SSVPlaybackLeaseConfiguration;
  v19 = [(SSVPlaybackLeaseConfiguration *)&v27 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_beginLeaseURL, rL);
    objc_storeStrong(&v20->_certificateURL, l);
    objc_storeStrong(&v20->_getAssetURL, rL);
    v20->_leaseType = type;
    objc_storeStrong(&v20->_pastisCertificateURL, l);
    objc_storeStrong(&v20->_pastisKeyServerURL, uRL);
    objc_storeStrong(&v20->_provisionMachineURL, machineURL);
    objc_storeStrong(&v20->_refreshLeaseURL, rL);
    v21 = [suffixCopy copy];
    storeFrontSuffix = v20->_storeFrontSuffix;
    v20->_storeFrontSuffix = v21;

    objc_storeStrong(&v20->_syncMachineURL, syncMachineURL);
  }

  return v20;
}

- (SSVPlaybackLeaseConfiguration)initWithURLBagDictionary:(id)dictionary leaseType:(int64_t)type
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = SSVPlaybackLeaseConfiguration;
  v7 = [(SSVPlaybackLeaseConfiguration *)&v31 init];
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = [dictionaryCopy objectForKey:@"fps-cert"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v8];
    certificateURL = v7->_certificateURL;
    v7->_certificateURL = v9;
  }

  v11 = [dictionaryCopy objectForKey:@"amd-finish-provisioning"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v11];
    provisionMachineURL = v7->_provisionMachineURL;
    v7->_provisionMachineURL = v12;
  }

  v14 = [dictionaryCopy objectForKey:@"amd-sync-machine"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v14];
    syncMachineURL = v7->_syncMachineURL;
    v7->_syncMachineURL = v15;
  }

  v17 = [dictionaryCopy objectForKey:@"fps-cert"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17];
    pastisCertificateURL = v7->_pastisCertificateURL;
    v7->_pastisCertificateURL = v18;
  }

  v20 = [dictionaryCopy objectForKey:@"fps-request"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v20];
    pastisKeyServerURL = v7->_pastisKeyServerURL;
    v7->_pastisKeyServerURL = v21;
  }

  v7->_leaseType = type;
  if (!type)
  {
    v23 = SSVLeaseURLBagKeySubscriptionLease;
LABEL_16:
    v24 = [dictionaryCopy objectForKey:*v23];

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

  if (type == 1)
  {
    v23 = SSVLeaseURLBagKeyKDLease;
    goto LABEL_16;
  }

LABEL_18:
  v27 = [dictionaryCopy objectForKey:@"storefront-header-suffix"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
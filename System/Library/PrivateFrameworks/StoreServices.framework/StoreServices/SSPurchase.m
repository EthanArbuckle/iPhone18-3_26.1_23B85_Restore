@interface SSPurchase
+ (id)newPurchaseWithDatabaseEncoding:(id)a3;
+ (id)newPurchaseWithXPCEncoding:(id)a3;
+ (id)purchaseWithBuyParameters:(id)a3;
- (BOOL)_createsDownloadsWithOverride;
- (BOOL)_createsInstallJobsWithOverride;
- (BOOL)_createsJobsWithOverride;
- (BOOL)createsDownloads;
- (BOOL)createsInstallJobs;
- (BOOL)createsJobs;
- (BOOL)displaysOnLockScreen;
- (BOOL)ignoresForcedPasswordRestriction;
- (BOOL)isBackgroundPurchase;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGratisSoftwareClaim;
- (BOOL)isPlaybackRequest;
- (BOOL)isPreauthenticated;
- (BOOL)usesLocalRedownloadParametersIfPossible;
- (NSArray)filteredAssetTypes;
- (NSArray)gratisIdentifiers;
- (NSData)databaseEncoding;
- (NSDictionary)downloadProperties;
- (NSDictionary)tidHeaders;
- (NSNumber)accountIdentifier;
- (NSNumber)enabledServiceType;
- (NSNumber)ownerAccountDSID;
- (NSString)affiliateIdentifier;
- (NSString)buyParameters;
- (SSDownloadPolicy)downloadPolicy;
- (SSNetworkConstraints)networkConstraints;
- (SSPurchase)initWithCoder:(id)a3;
- (SSPurchase)initWithDatabaseEncoding:(id)a3;
- (SSPurchase)initWithItem:(id)a3;
- (SSPurchase)initWithItem:(id)a3 offer:(id)a4;
- (SSPurchase)initWithXPCEncoding:(id)a3;
- (SSURLRequestProperties)requestProperties;
- (id)_buyParametersValueForKey:(id)a3 fromBuyParams:(id)a4;
- (id)_initSSPurchase;
- (id)buyParametersValueForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)item;
- (id)itemOffer;
- (id)presentingSceneBundleIdentifier;
- (id)presentingSceneIdentifier;
- (id)requiredDeviceCapabilities;
- (id)valueForDownloadProperty:(id)a3;
- (int64_t)batchIdentifier;
- (int64_t)expectedDownloadFileSize;
- (int64_t)placeholderDownloadIdentifier;
- (int64_t)uniqueIdentifier;
- (unint64_t)hash;
- (void)_addEntriesToDatabaseEncoding:(id)a3;
- (void)_setValuesUsingDatabaseEncoding:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAccountIdentifier:(id)a3;
- (void)setAffiliateIdentifier:(id)a3;
- (void)setBackgroundPurchase:(BOOL)a3;
- (void)setBatchIdentifier:(int64_t)a3;
- (void)setBuyParameters:(id)a3;
- (void)setCreatesDownloads:(BOOL)a3;
- (void)setCreatesInstallJobs:(BOOL)a3;
- (void)setCreatesJobs:(BOOL)a3;
- (void)setDefaultUserAgent:(id)a3;
- (void)setDisplaysOnLockScreen:(BOOL)a3;
- (void)setDownloadMetadata:(id)a3;
- (void)setDownloadPolicy:(id)a3;
- (void)setDownloadProperties:(id)a3;
- (void)setEnabledServiceType:(id)a3;
- (void)setExpectedDownloadFileSize:(int64_t)a3;
- (void)setFilteredAssetTypes:(id)a3;
- (void)setGratisIdentifiers:(id)a3;
- (void)setIgnoresForcedPasswordRestriction:(BOOL)a3;
- (void)setNetworkConstraints:(id)a3;
- (void)setOwnerAccountDSID:(id)a3;
- (void)setPlaceholderDownloadIdentifier:(int64_t)a3;
- (void)setPlaybackRequest:(BOOL)a3;
- (void)setPreauthenticated:(BOOL)a3;
- (void)setPresentingSceneBundleIdentifier:(id)a3;
- (void)setPresentingSceneIdentifier:(id)a3;
- (void)setRequestProperties:(id)a3;
- (void)setRequiredDeviceCapabilities:(id)a3;
- (void)setSkipSoftwareAccountPreflight:(BOOL)a3;
- (void)setTidHeaders:(id)a3;
- (void)setUniqueIdentifier:(int64_t)a3;
- (void)setUsesLocalRedownloadParametersIfPossible:(BOOL)a3;
- (void)setValue:(id)a3 forDownloadProperty:(id)a4;
@end

@implementation SSPurchase

- (id)_initSSPurchase
{
  v8.receiver = self;
  v8.super_class = SSPurchase;
  v2 = [(SSPurchase *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_createsDownloads = 257;
    v2->_createsInstallJobs = 1;
    v4 = dispatch_queue_create("com.apple.StoreServices.SSPurchase", 0);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = CFUUIDCreate(0);
    v3->_placeholderDownloadIdentifier = *&CFUUIDGetUUIDBytes(v6);
    CFRelease(v6);
  }

  return v3;
}

- (SSPurchase)initWithItem:(id)a3
{
  v4 = a3;
  v5 = [v4 defaultItemOffer];
  v6 = [(SSPurchase *)self initWithItem:v4 offer:v5];

  return v6;
}

- (SSPurchase)initWithItem:(id)a3 offer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 buyParameters];
  if (![v9 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must provide buy parameters"];
  }

  v10 = [(SSPurchase *)self _initSSPurchase];
  if (v10)
  {
    v11 = [v9 copy];
    buyParameters = v10->_buyParameters;
    v10->_buyParameters = v11;

    objc_storeStrong(&v10->_item, a3);
    objc_storeStrong(&v10->_itemOffer, a4);
    v13 = [(SSItemOffer *)v10->_itemOffer networkConstraints];
    v14 = [v13 copy];
    networkConstraints = v10->_networkConstraints;
    v10->_networkConstraints = v14;

    v16 = [[SSDownloadMetadata alloc] initWithItem:v7 offer:v8];
    v17 = [(SSDownloadMetadata *)v16 newDownloadProperties];
    downloadProperties = v10->_downloadProperties;
    v10->_downloadProperties = v17;
  }

  return v10;
}

+ (id)purchaseWithBuyParameters:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must provide buy parameters"];
  }

  v5 = objc_alloc_init(a1);
  [v5 setBuyParameters:v4];

  return v5;
}

- (NSNumber)accountIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SSPurchase_accountIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)affiliateIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__SSPurchase_affiliateIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSString)buyParameters
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__SSPurchase_buyParameters__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)createsDownloads
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SSPurchase_createsDownloads__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)createsJobs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__SSPurchase_createsJobs__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)createsInstallJobs
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSPurchase_createsInstallJobs__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)displaysOnLockScreen
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSPurchase_displaysOnLockScreen__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (SSDownloadPolicy)downloadPolicy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__SSPurchase_downloadPolicy__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __28__SSPurchase_downloadPolicy__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 96) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSDictionary)downloadProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSPurchase_downloadProperties__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__SSPurchase_downloadProperties__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 104) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)filteredAssetTypes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSPurchase_filteredAssetTypes__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__SSPurchase_filteredAssetTypes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 128) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)ignoresForcedPasswordRestriction
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SSPurchase_ignoresForcedPasswordRestriction__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isBackgroundPurchase
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__SSPurchase_isBackgroundPurchase__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isPlaybackRequest
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SSPurchase_isPlaybackRequest__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (SSNetworkConstraints)networkConstraints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSPurchase_networkConstraints__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__SSPurchase_networkConstraints__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 168) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSNumber)ownerAccountDSID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SSPurchase_ownerAccountDSID__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)placeholderDownloadIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SSPurchase_placeholderDownloadIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)presentingSceneIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SSPurchase_presentingSceneIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__SSPurchase_presentingSceneIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 248) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)presentingSceneBundleIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__SSPurchase_presentingSceneBundleIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __45__SSPurchase_presentingSceneBundleIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 256) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SSURLRequestProperties)requestProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SSPurchase_requestProperties__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setAccountIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SSPurchase_setAccountIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __35__SSPurchase_setAccountIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 8);
  v4 = (v2 + 8);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

- (void)setAffiliateIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__SSPurchase_setAffiliateIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __37__SSPurchase_setAffiliateIdentifier___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 16) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }
}

- (void)setBackgroundPurchase:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SSPurchase_setBackgroundPurchase___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setBuyParameters:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__SSPurchase_setBuyParameters___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __31__SSPurchase_setBuyParameters___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 40) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if ([*(*(a1 + 32) + 40) containsString:@"createsDownloads"])
    {
      v7 = *(a1 + 32);
      v8 = [v7[5] copy];
      v9 = [v7 _buyParametersValueForKey:@"createsDownloads" fromBuyParams:v8];

      if ([v9 length])
      {
        v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "isEqualToString:", @"true"}];
        v11 = *(a1 + 32);
        v12 = *(v11 + 48);
        *(v11 + 48) = v10;
      }
    }

    if ([*(*(a1 + 32) + 40) containsString:@"createsJobs"])
    {
      v13 = *(a1 + 32);
      v14 = [v13[5] copy];
      v15 = [v13 _buyParametersValueForKey:@"createsJobs" fromBuyParams:v14];

      if ([v15 length])
      {
        v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "isEqualToString:", @"true"}];
        v17 = *(a1 + 32);
        v18 = *(v17 + 64);
        *(v17 + 64) = v16;
      }
    }

    if ([*(*(a1 + 32) + 40) containsString:@"createsInstallJobs"])
    {
      v19 = *(a1 + 32);
      v20 = [v19[5] copy];
      v24 = [v19 _buyParametersValueForKey:@"createsInstallJobs" fromBuyParams:v20];

      if ([v24 length])
      {
        v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v24, "isEqualToString:", @"true"}];
        v22 = *(a1 + 32);
        v23 = *(v22 + 56);
        *(v22 + 56) = v21;
      }
    }
  }
}

- (void)setCreatesDownloads:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SSPurchase_setCreatesDownloads___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setCreatesJobs:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __29__SSPurchase_setCreatesJobs___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setCreatesInstallJobs:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SSPurchase_setCreatesInstallJobs___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setDisplaysOnLockScreen:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__SSPurchase_setDisplaysOnLockScreen___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setDownloadPolicy:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__SSPurchase_setDownloadPolicy___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __32__SSPurchase_setDownloadPolicy___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 96) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 96);
    *(v5 + 96) = v4;
  }
}

- (void)setDownloadProperties:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SSPurchase_setDownloadProperties___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __36__SSPurchase_setDownloadProperties___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 104) != v2)
  {
    v4 = [v2 mutableCopy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 104);
    *(v5 + 104) = v4;
  }
}

- (void)setFilteredAssetTypes:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SSPurchase_setFilteredAssetTypes___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __36__SSPurchase_setFilteredAssetTypes___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 128) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 128);
    *(v5 + 128) = v4;
  }
}

- (void)setIgnoresForcedPasswordRestriction:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SSPurchase_setIgnoresForcedPasswordRestriction___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setNetworkConstraints:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SSPurchase_setNetworkConstraints___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __36__SSPurchase_setNetworkConstraints___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 168) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 168);
    *(v5 + 168) = v4;
  }
}

- (void)setOwnerAccountDSID:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SSPurchase_setOwnerAccountDSID___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __34__SSPurchase_setOwnerAccountDSID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v2 + 176);
  v4 = (v2 + 176);
  if (v5 != v3)
  {
    objc_storeStrong(v4, v3);
  }
}

- (void)setPlaybackRequest:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSPurchase_setPlaybackRequest___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setPresentingSceneIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__SSPurchase_setPresentingSceneIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __43__SSPurchase_setPresentingSceneIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  *(v3 + 248) = v2;
}

- (void)setPresentingSceneBundleIdentifier:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SSPurchase_setPresentingSceneBundleIdentifier___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __49__SSPurchase_setPresentingSceneBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;
}

- (void)setRequestProperties:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SSPurchase_setRequestProperties___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __35__SSPurchase_setRequestProperties___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 200) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 200);
    *(v5 + 200) = v4;
  }
}

- (void)setSkipSoftwareAccountPreflight:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SSPurchase_setSkipSoftwareAccountPreflight___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setValue:(id)a3 forDownloadProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SSPurchase_setValue_forDownloadProperty___block_invoke;
  block[3] = &unk_1E84AC078;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__SSPurchase_setValue_forDownloadProperty___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 104);
  if (v2)
  {
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5 = a1[5];
      v6 = *(v5 + 104);
      *(v5 + 104) = v4;

      v2 = a1[4];
      v3 = *(a1[5] + 104);
    }

    v7 = a1[6];

    return [v3 setObject:v2 forKey:v7];
  }

  else
  {
    v9 = a1[6];

    return [v3 removeObjectForKey:v9];
  }
}

- (id)valueForDownloadProperty:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__11;
  v16 = __Block_byref_object_dispose__11;
  v17 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SSPurchase_valueForDownloadProperty___block_invoke;
  block[3] = &unk_1E84ABF90;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(dispatchQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __39__SSPurchase_valueForDownloadProperty___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 104) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (SSPurchase)initWithDatabaseEncoding:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SSPurchase *)self _initSSPurchase];
    v7 = v6;
    if (v6)
    {
      [(SSPurchase *)v6 _setValuesUsingDatabaseEncoding:v5];
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (int64_t)batchIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__SSPurchase_batchIdentifier__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSData)databaseEncoding
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  dispatchQueue = self->_dispatchQueue;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __30__SSPurchase_databaseEncoding__block_invoke;
  v11 = &unk_1E84AC028;
  v12 = self;
  v13 = v3;
  v5 = v3;
  dispatch_sync(dispatchQueue, &v8);
  v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:{0, v8, v9, v10, v11, v12}];

  return v6;
}

- (id)buyParametersValueForKey:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SSPurchase *)self buyParameters];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(SSPurchase *)self buyParameters];
    v8 = [v7 componentsSeparatedByString:@"&"];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) componentsSeparatedByString:{@"=", v19}];
          if ([v14 count] == 2)
          {
            v15 = [v14 objectAtIndexedSubscript:0];
            v16 = [v15 isEqualToString:v4];

            if (v16)
            {
              v17 = [v14 objectAtIndexedSubscript:1];

              goto LABEL_13;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = 0;
LABEL_13:

    v6 = [v17 stringByRemovingPercentEncoding];
  }

  return v6;
}

- (NSNumber)enabledServiceType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSPurchase_enabledServiceType__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __32__SSPurchase_enabledServiceType__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 112) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)expectedDownloadFileSize
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SSPurchase_expectedDownloadFileSize__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)gratisIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SSPurchase_gratisIdentifiers__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)item
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __18__SSPurchase_item__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)itemOffer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__SSPurchase_itemOffer__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isGratisSoftwareClaim
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__SSPurchase_isGratisSoftwareClaim__block_invoke;
  v5[3] = &unk_1E84ABFD8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __35__SSPurchase_isGratisSoftwareClaim__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (v2)
  {
    v3 = [v2 firstObject];
    objc_opt_class();
    *(*(*(a1 + 40) + 8) + 24) = objc_opt_isKindOfClass() & 1;
  }
}

- (BOOL)isPreauthenticated
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__SSPurchase_isPreauthenticated__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)requiredDeviceCapabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SSPurchase_requiredDeviceCapabilities__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setBatchIdentifier:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__SSPurchase_setBatchIdentifier___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setDefaultUserAgent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SSPurchase_setDefaultUserAgent___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __34__SSPurchase_setDefaultUserAgent___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 200) HTTPHeaders];
  v3 = [v2 objectForKey:@"User-Agent"];

  if (!v3)
  {
    v4 = [*(*(a1 + 32) + 200) mutableCopy];
    v5 = *(a1 + 40);
    if (v5 && !v4)
    {
      v4 = objc_alloc_init(SSMutableURLRequestProperties);
      v5 = *(a1 + 40);
    }

    v9 = v4;
    [(SSMutableURLRequestProperties *)v4 setValue:v5 forHTTPHeaderField:@"User-Agent"];
    v6 = [(SSMutableURLRequestProperties *)v9 copy];
    v7 = *(a1 + 32);
    v8 = *(v7 + 200);
    *(v7 + 200) = v6;
  }
}

- (void)setEnabledServiceType:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SSPurchase_setEnabledServiceType___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __36__SSPurchase_setEnabledServiceType___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 112) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 112);
    *(v5 + 112) = v4;
  }
}

- (void)setExpectedDownloadFileSize:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__SSPurchase_setExpectedDownloadFileSize___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setGratisIdentifiers:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__SSPurchase_setGratisIdentifiers___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __35__SSPurchase_setGratisIdentifiers___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 136) != v2)
  {
    v4 = [v2 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 136);
    *(v5 + 136) = v4;
  }
}

- (void)setPlaceholderDownloadIdentifier:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SSPurchase_setPlaceholderDownloadIdentifier___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setPreauthenticated:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SSPurchase_setPreauthenticated___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setRequiredDeviceCapabilities:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SSPurchase_setRequiredDeviceCapabilities___block_invoke;
  v7[3] = &unk_1E84AC028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __44__SSPurchase_setRequiredDeviceCapabilities___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v5);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v2 = 0;
      goto LABEL_16;
    }

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __44__SSPurchase_setRequiredDeviceCapabilities___block_invoke_2;
    v14[3] = &unk_1E84ADEF8;
    v2 = v9;
    v15 = v2;
    [v10 enumerateKeysAndObjectsUsingBlock:v14];
    v3 = v15;
  }

LABEL_16:
  v11 = [v2 copy];
  v12 = *(a1 + 40);
  v13 = *(v12 + 208);
  *(v12 + 208) = v11;
}

void __44__SSPurchase_setRequiredDeviceCapabilities___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

- (void)setTidHeaders:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__SSPurchase_setTidHeaders___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __28__SSPurchase_setTidHeaders___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 224);
  *(v3 + 224) = v2;
}

- (void)setUniqueIdentifier:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SSPurchase_setUniqueIdentifier___block_invoke;
  v4[3] = &unk_1E84ADDB8;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setUsesLocalRedownloadParametersIfPossible:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __57__SSPurchase_setUsesLocalRedownloadParametersIfPossible___block_invoke;
  v4[3] = &unk_1E84AD070;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (NSDictionary)tidHeaders
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__11;
  v10 = __Block_byref_object_dispose__11;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24__SSPurchase_tidHeaders__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __24__SSPurchase_tidHeaders__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 224) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (int64_t)uniqueIdentifier
{
  result = self->_uniqueIdentifier;
  if (!result)
  {
    v4 = CFUUIDCreate(0);
    self->_uniqueIdentifier = *&CFUUIDGetUUIDBytes(v4);
    CFRelease(v4);
    return self->_uniqueIdentifier;
  }

  return result;
}

- (BOOL)usesLocalRedownloadParametersIfPossible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SSPurchase_usesLocalRedownloadParametersIfPossible__block_invoke;
  v5[3] = &unk_1E84ABF40;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_addEntriesToDatabaseEncoding:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v4 setObject:accountIdentifier forKey:@"0"];
  }

  affiliateIdentifier = self->_affiliateIdentifier;
  if (affiliateIdentifier)
  {
    [v5 setObject:affiliateIdentifier forKey:@"1"];
  }

  ownerAccountDSID = self->_ownerAccountDSID;
  if (ownerAccountDSID)
  {
    [v5 setObject:ownerAccountDSID forKey:@"O"];
  }

  buyParameters = self->_buyParameters;
  if (buyParameters)
  {
    [v5 setObject:buyParameters forKey:@"3"];
  }

  downloadProperties = self->_downloadProperties;
  if (downloadProperties)
  {
    [v5 setObject:downloadProperties forKey:@"7"];
  }

  enabledServiceType = self->_enabledServiceType;
  if (enabledServiceType)
  {
    [v5 setObject:enabledServiceType forKey:@"L"];
  }

  filteredAssetTypes = self->_filteredAssetTypes;
  if (filteredAssetTypes)
  {
    [v5 setObject:filteredAssetTypes forKey:@"8"];
  }

  gratisIdentifiers = self->_gratisIdentifiers;
  if (gratisIdentifiers)
  {
    [v5 setObject:gratisIdentifiers forKey:@"G"];
  }

  requiredDeviceCapabilities = self->_requiredDeviceCapabilities;
  if (requiredDeviceCapabilities)
  {
    [v5 setObject:requiredDeviceCapabilities forKey:@"F"];
  }

  tidHeaders = self->_tidHeaders;
  if (tidHeaders)
  {
    [v5 setObject:tidHeaders forKey:@"Q"];
  }

  presentingSceneIdentifier = self->_presentingSceneIdentifier;
  if (presentingSceneIdentifier)
  {
    [v5 setObject:presentingSceneIdentifier forKey:@"R"];
  }

  presentingSceneBundleIdentifier = self->_presentingSceneBundleIdentifier;
  if (presentingSceneBundleIdentifier)
  {
    [v5 setObject:presentingSceneBundleIdentifier forKey:@"S"];
  }

  v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_backgroundPurchase];
  [v5 setObject:v18 forKey:@"2"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSPurchase _createsDownloadsWithOverride](self, "_createsDownloadsWithOverride")}];
  [v5 setObject:v19 forKey:@"4"];

  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSPurchase _createsJobsWithOverride](self, "_createsJobsWithOverride")}];
  [v5 setObject:v20 forKey:@"5"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[SSPurchase _createsInstallJobsWithOverride](self, "_createsInstallJobsWithOverride")}];
  [v5 setObject:v21 forKey:@"N"];

  v22 = [MEMORY[0x1E696AD98] numberWithBool:self->_displaysOnLockScreen];
  [v5 setObject:v22 forKey:@"K"];

  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_expectedDownloadFileSize];
  [v5 setObject:v23 forKey:@"E"];

  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_ignoresForcedPasswordRestriction];
  [v5 setObject:v24 forKey:@"9"];

  v25 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_placeholderDownloadIdentifier];
  [v5 setObject:v25 forKey:@"C"];

  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_usesLocalRedownloadParametersIfPossible];
  [v5 setObject:v26 forKey:@"H"];

  v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_playbackRequest];
  [v5 setObject:v27 forKey:@"M"];

  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_preauthenticated];
  [v5 setObject:v28 forKey:@"I"];

  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_skipSoftwareAccountPreflight];
  [v5 setObject:v29 forKey:@"P"];

  v30 = [(SSItem *)self->_item rawItemDictionary];
  if (v30)
  {
    [v5 setObject:v30 forKey:@"A"];
  }

  v31 = [(SSItemOffer *)self->_itemOffer offerIdentifier];
  if (v31)
  {
    [v5 setObject:v31 forKey:@"A"];
  }

  downloadPolicy = self->_downloadPolicy;
  if (downloadPolicy)
  {
    v67 = 0;
    v33 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:downloadPolicy requiringSecureCoding:1 error:&v67];
    v34 = v67;
    if (v33)
    {
      [v5 setObject:v33 forKey:@"6"];
LABEL_44:

      goto LABEL_45;
    }

    v35 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    v36 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      v37 = v36 | 2;
    }

    else
    {
      v37 = v36;
    }

    v38 = [v35 OSLogObject];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v37 &= 2u;
    }

    if (v37)
    {
      v39 = objc_opt_class();
      v68 = 138543618;
      v69 = v39;
      v70 = 2114;
      v71 = v34;
      v40 = v39;
      LODWORD(v65) = 22;
      v64 = &v68;
      v41 = _os_log_send_and_compose_impl();

      if (!v41)
      {
LABEL_43:

        goto LABEL_44;
      }

      v38 = [MEMORY[0x1E696AEC0] stringWithCString:v41 encoding:{4, &v68, v65}];
      free(v41);
      SSFileLog(v35, @"%@", v42, v43, v44, v45, v46, v47, v38);
    }

    goto LABEL_43;
  }

LABEL_45:
  requestProperties = self->_requestProperties;
  if (requestProperties)
  {
    v66 = 0;
    v49 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:requestProperties requiringSecureCoding:1 error:&v66];
    v50 = v66;
    if (v49)
    {
      [v5 setObject:v49 forKey:@"D"];
LABEL_60:

      goto LABEL_61;
    }

    v51 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v51)
    {
      v51 = +[SSLogConfig sharedConfig];
    }

    v52 = [v51 shouldLog];
    if ([v51 shouldLogToDisk])
    {
      v53 = v52 | 2;
    }

    else
    {
      v53 = v52;
    }

    v54 = [v51 OSLogObject];
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v53 &= 2u;
    }

    if (v53)
    {
      v55 = objc_opt_class();
      v68 = 138543618;
      v69 = v55;
      v70 = 2114;
      v71 = v50;
      v56 = v55;
      LODWORD(v65) = 22;
      v57 = _os_log_send_and_compose_impl();

      if (!v57)
      {
LABEL_59:

        goto LABEL_60;
      }

      v54 = [MEMORY[0x1E696AEC0] stringWithCString:v57 encoding:{4, &v68, v65}];
      free(v57);
      SSFileLog(v51, @"%@", v58, v59, v60, v61, v62, v63, v54);
    }

    goto LABEL_59;
  }

LABEL_61:
}

- (id)_buyParametersValueForKey:(id)a3 fromBuyParams:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [a4 componentsSeparatedByString:@"&"];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) componentsSeparatedByString:{@"=", v17}];
        if ([v11 count] == 2)
        {
          v12 = [v11 objectAtIndexedSubscript:0];
          v13 = [v12 isEqualToString:v5];

          if (v13)
          {
            v14 = [v11 objectAtIndexedSubscript:1];

            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  v15 = [v14 stringByRemovingPercentEncoding];

  return v15;
}

- (BOOL)_createsDownloadsWithOverride
{
  buyParamsCreatesDownloads = self->_buyParamsCreatesDownloads;
  if (buyParamsCreatesDownloads)
  {
    LOBYTE(v4) = [(NSNumber *)buyParamsCreatesDownloads BOOLValue];
  }

  else
  {
    return self->_createsDownloads;
  }

  return v4;
}

- (BOOL)_createsInstallJobsWithOverride
{
  buyParamsCreatesInstallJobs = self->_buyParamsCreatesInstallJobs;
  if (buyParamsCreatesInstallJobs)
  {
    LOBYTE(v4) = [(NSNumber *)buyParamsCreatesInstallJobs BOOLValue];
  }

  else
  {
    return self->_createsInstallJobs;
  }

  return v4;
}

- (BOOL)_createsJobsWithOverride
{
  buyParamsCreatesJobs = self->_buyParamsCreatesJobs;
  if (buyParamsCreatesJobs)
  {
    LOBYTE(v4) = [(NSNumber *)buyParamsCreatesJobs BOOLValue];
  }

  else
  {
    return self->_createsJobs;
  }

  return v4;
}

- (void)_setValuesUsingDatabaseEncoding:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"0"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_accountIdentifier, v5);
  }

  v6 = [v4 objectForKey:@"1"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_affiliateIdentifier, v6);
  }

  v7 = [v4 objectForKey:@"O"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_ownerAccountDSID, v7);
  }

  v8 = [v4 objectForKey:@"2"];

  if (objc_opt_respondsToSelector())
  {
    self->_backgroundPurchase = [v8 BOOLValue];
  }

  v9 = [v4 objectForKey:@"3"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_buyParameters, v9);
  }

  v10 = [v4 objectForKey:@"4"];

  if (objc_opt_respondsToSelector())
  {
    self->_createsDownloads = [v10 BOOLValue];
  }

  v11 = [v4 objectForKey:@"5"];

  if (objc_opt_respondsToSelector())
  {
    self->_createsJobs = [v11 BOOLValue];
  }

  v12 = [v4 objectForKey:@"N"];

  if (objc_opt_respondsToSelector())
  {
    self->_createsInstallJobs = [v12 BOOLValue];
  }

  v13 = [v4 objectForKey:@"K"];

  if (objc_opt_respondsToSelector())
  {
    self->_displaysOnLockScreen = [v13 BOOLValue];
  }

  v14 = [v4 objectForKey:@"7"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v14 mutableCopy];
    downloadProperties = self->_downloadProperties;
    self->_downloadProperties = v15;
  }

  v17 = [v4 objectForKey:@"L"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 copy];
    enabledServiceType = self->_enabledServiceType;
    self->_enabledServiceType = v18;
  }

  v20 = [v4 objectForKey:@"E"];

  if (objc_opt_respondsToSelector())
  {
    self->_expectedDownloadFileSize = [v20 longLongValue];
  }

  v21 = [v4 objectForKey:@"8"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_filteredAssetTypes, v21);
  }

  v22 = [v4 objectForKey:@"G"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_gratisIdentifiers, v22);
  }

  v23 = [v4 objectForKey:@"9"];

  if (objc_opt_respondsToSelector())
  {
    self->_ignoresForcedPasswordRestriction = [v23 BOOLValue];
  }

  v24 = [v4 objectForKey:@"C"];

  if (objc_opt_respondsToSelector())
  {
    self->_placeholderDownloadIdentifier = [v24 longLongValue];
  }

  v25 = [v4 objectForKey:@"M"];

  if (objc_opt_respondsToSelector())
  {
    self->_playbackRequest = [v25 BOOLValue];
  }

  v26 = [v4 objectForKey:@"F"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_storeStrong(&self->_requiredDeviceCapabilities, v26);
  }

  v27 = [v4 objectForKey:@"H"];

  if (objc_opt_respondsToSelector())
  {
    self->_usesLocalRedownloadParametersIfPossible = [v27 BOOLValue];
  }

  v28 = [v4 objectForKey:@"I"];

  if (objc_opt_respondsToSelector())
  {
    self->_preauthenticated = [v28 BOOLValue];
  }

  v29 = [v4 objectForKey:@"P"];

  if (objc_opt_respondsToSelector())
  {
    self->_skipSoftwareAccountPreflight = [v29 BOOLValue];
  }

  v30 = [v4 objectForKey:@"R"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_presentingSceneIdentifier, v30);
  }

  v31 = [v4 objectForKey:@"S"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_presentingSceneBundleIdentifier, v31);
  }

  v32 = [v4 objectForKey:@"A"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = [[SSItem alloc] initWithItemDictionary:v32];
    item = self->_item;
    self->_item = v33;
  }

  v35 = [v4 objectForKey:@"B"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = [(SSItem *)self->_item itemOfferForIdentifier:v35];
    itemOffer = self->_itemOffer;
    self->_itemOffer = v36;

    if (!self->_itemOffer)
    {
      v38 = [(SSItem *)self->_item defaultItemOffer];
      v39 = self->_itemOffer;
      self->_itemOffer = v38;
    }
  }

  v40 = [v4 objectForKey:@"Q"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = [v40 copy];
    tidHeaders = self->_tidHeaders;
    self->_tidHeaders = v41;
  }

  v43 = [v4 objectForKey:@"6"];

  objc_opt_class();
  v44 = 0x1E696A000uLL;
  if (objc_opt_isKindOfClass())
  {
    v81 = 0;
    v45 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v43 error:&v81];
    v78 = v81;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
      downloadPolicy = self->_downloadPolicy;
      self->_downloadPolicy = v46;
LABEL_58:
      v44 = 0x1E696A000;
LABEL_69:

      goto LABEL_70;
    }

    v76 = v32;
    downloadPolicy = +[SSLogConfig sharedStoreServicesConfig];
    if (!downloadPolicy)
    {
      downloadPolicy = +[SSLogConfig sharedConfig];
    }

    v48 = [downloadPolicy shouldLog];
    if ([downloadPolicy shouldLogToDisk])
    {
      v48 |= 2u;
    }

    v49 = [downloadPolicy OSLogObject];
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v48 &= 2u;
    }

    if (v48)
    {
      v50 = objc_opt_class();
      v82 = 138543618;
      v83 = v50;
      v84 = 2114;
      v85 = v78;
      LODWORD(v75) = 22;
      v74 = &v82;
      v51 = _os_log_send_and_compose_impl();

      if (!v51)
      {
        v32 = v76;
        goto LABEL_58;
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithCString:v51 encoding:{4, &v82, v75}];
      free(v51);
      SSFileLog(downloadPolicy, @"%@", v52, v53, v54, v55, v56, v57, v49);
    }

    v44 = 0x1E696A000uLL;

    v32 = v76;
    goto LABEL_69;
  }

LABEL_70:
  v58 = [v4 objectForKey:{@"D", v74}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v59 = *(v44 + 3280);
    v80 = 0;
    v60 = [v59 unarchivedObjectOfClass:objc_opt_class() fromData:v58 error:&v80];
    v61 = v80;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = v60;
      requestProperties = self->_requestProperties;
      self->_requestProperties = v62;
LABEL_84:

      goto LABEL_85;
    }

    v77 = v32;
    v79 = v61;
    requestProperties = +[SSLogConfig sharedStoreServicesConfig];
    if (!requestProperties)
    {
      requestProperties = +[SSLogConfig sharedConfig];
    }

    v64 = [requestProperties shouldLog];
    if ([requestProperties shouldLogToDisk])
    {
      v64 |= 2u;
    }

    v65 = [requestProperties OSLogObject];
    if (!os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v64 &= 2u;
    }

    if (v64)
    {
      v66 = objc_opt_class();
      v82 = 138543618;
      v83 = v66;
      v84 = 2114;
      v85 = v79;
      LODWORD(v75) = 22;
      v67 = _os_log_send_and_compose_impl();

      if (!v67)
      {
LABEL_83:
        v32 = v77;
        v61 = v79;
        goto LABEL_84;
      }

      v65 = [MEMORY[0x1E696AEC0] stringWithCString:v67 encoding:{4, &v82, v75}];
      free(v67);
      SSFileLog(requestProperties, @"%@", v68, v69, v70, v71, v72, v73, v65);
    }

    goto LABEL_83;
  }

LABEL_85:
}

- (SSPurchase)initWithCoder:(id)a3
{
  v60[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [SSPurchase initWithCoder:];
  }

  v5 = [(SSPurchase *)self _initSSPurchase];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"affiliate"];
    affiliateIdentifier = v5->_affiliateIdentifier;
    v5->_affiliateIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerAccountDSID"];
    ownerAccountDSID = v5->_ownerAccountDSID;
    v5->_ownerAccountDSID = v17;

    v5->_backgroundPurchase = [v4 decodeBoolForKey:@"background"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buyparams"];
    buyParameters = v5->_buyParameters;
    v5->_buyParameters = v19;

    v5->_createsDownloads = [v4 decodeBoolForKey:@"createdl"];
    v5->_createsJobs = [v4 decodeBoolForKey:@"createjb"];
    v5->_createsInstallJobs = [v4 decodeBoolForKey:@"createinstalljb"];
    v5->_displaysOnLockScreen = [v4 decodeBoolForKey:@"dislkscrn"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ensrvtp"];
    enabledServiceType = v5->_enabledServiceType;
    v5->_enabledServiceType = v21;

    v5->_expectedDownloadFileSize = [v4 decodeInt64ForKey:@"fsize"];
    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"fltassts"];
    filteredAssetTypes = v5->_filteredAssetTypes;
    v5->_filteredAssetTypes = v26;

    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = [v28 setWithObjects:{v29, objc_opt_class(), 0}];
    v31 = [v4 decodeObjectOfClasses:v30 forKey:@"gratids"];
    gratisIdentifiers = v5->_gratisIdentifiers;
    v5->_gratisIdentifiers = v31;

    v5->_ignoresForcedPasswordRestriction = [v4 decodeBoolForKey:@"ignfrcpw"];
    v5->_placeholderDownloadIdentifier = [v4 decodeInt64ForKey:@"plchid"];
    v5->_playbackRequest = [v4 decodeBoolForKey:@"plyreq"];
    v33 = [v4 decodeObjectOfClasses:v12 forKey:@"reqcap"];
    requiredDeviceCapabilities = v5->_requiredDeviceCapabilities;
    v5->_requiredDeviceCapabilities = v33;

    v5->_skipSoftwareAccountPreflight = [v4 decodeBoolForKey:@"skipSoftwareAccountPreflight"];
    v5->_usesLocalRedownloadParametersIfPossible = [v4 decodeBoolForKey:@"usesrdl"];
    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    presentingSceneIdentifier = v5->_presentingSceneIdentifier;
    v5->_presentingSceneIdentifier = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
    presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
    v5->_presentingSceneBundleIdentifier = v37;

    v39 = MEMORY[0x1E695DFD8];
    v60[0] = objc_opt_class();
    v60[1] = objc_opt_class();
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
    v41 = [v39 setWithArray:v40];
    v42 = [v4 decodeObjectOfClasses:v41 forKey:@"uniqueid"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_uniqueIdentifier = [(__CFString *)v42 longLongValue];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = CFUUIDCreateFromString(0, v42);
        if (v43)
        {
          v44 = v43;
          v5->_uniqueIdentifier = *&CFUUIDGetUUIDBytes(v43);
          CFRelease(v44);
        }
      }
    }

    if ([v4 containsValueForKey:@"dlprops"])
    {
      v45 = [v4 decodeObjectOfClasses:v12 forKey:@"dlprops"];
      v46 = [v45 mutableCopy];
    }

    else
    {
      v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
      v46 = [v45 newDownloadProperties];
    }

    downloadProperties = v5->_downloadProperties;
    v5->_downloadProperties = v46;

    v48 = [v4 decodeObjectOfClasses:v12 forKey:@"itemdict"];
    if (v48)
    {
      v49 = [[SSItem alloc] initWithItemDictionary:v48];
      item = v5->_item;
      v5->_item = v49;
    }

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offerid"];
    if (v51)
    {
      v52 = [(SSItem *)v5->_item itemOfferForIdentifier:v51];
      itemOffer = v5->_itemOffer;
      v5->_itemOffer = v52;

      if (!v5->_itemOffer)
      {
        v54 = [(SSItem *)v5->_item defaultItemOffer];
        v55 = v5->_itemOffer;
        v5->_itemOffer = v54;
      }
    }

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dlpolicy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_downloadPolicy, v56);
    }

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"netcon"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_networkConstraints, v57);
    }

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestp"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_requestProperties, v58);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [SSPurchase encodeWithCoder:];
  }

  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__SSPurchase_encodeWithCoder___block_invoke;
  v7[3] = &unk_1E84AC028;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

uint64_t __30__SSPurchase_encodeWithCoder___block_invoke(uint64_t a1)
{
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 8) forKey:@"account"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 16) forKey:@"affiliate"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 176) forKey:@"ownerAccountDSID"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 24) forKey:@"background"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 40) forKey:@"buyparams"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 72) forKey:@"createdl"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 73) forKey:@"createjb"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 74) forKey:@"createinstalljb"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 88) forKey:@"dislkscrn"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 96) forKey:@"dlpolicy"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 104) forKey:@"dlprops"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 112) forKey:@"ensrvtp"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 40) + 120) forKey:@"fsize"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 128) forKey:@"fltassts"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 136) forKey:@"gratids"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 144) forKey:@"ignfrcpw"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 168) forKey:@"netcon"];
  [*(a1 + 32) encodeInt64:*(*(a1 + 40) + 184) forKey:@"plchid"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 200) forKey:@"requestp"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 192) forKey:@"plyreq"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 208) forKey:@"reqcap"];
  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 216) forKey:@"skipSoftwareAccountPreflight"];
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 152) rawItemDictionary];
  [v2 encodeObject:v3 forKey:@"itemdict"];

  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 160) offerIdentifier];
  [v4 encodeObject:v5 forKey:@"offerid"];

  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "uniqueIdentifier")}];
  [v6 encodeObject:v7 forKey:@"uniqueid"];

  [*(a1 + 32) encodeBool:*(*(a1 + 40) + 240) forKey:@"usesrdl"];
  [*(a1 + 32) encodeObject:*(*(a1 + 40) + 248) forKey:@"presentingSceneIdentifier"];
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 256);

  return [v8 encodeObject:v9 forKey:@"presentingSceneBundleIdentifier"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SSPurchase_copyWithZone___block_invoke;
  block[3] = &unk_1E84AD6E0;
  v7 = v5;
  v11 = v7;
  v12 = self;
  v13 = a3;
  dispatch_sync(dispatchQueue, block);
  v8 = v7;

  return v8;
}

void __27__SSPurchase_copyWithZone___block_invoke(void *a1)
{
  v2 = [*(a1[5] + 8) copyWithZone:a1[6]];
  v3 = a1[4];
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = [*(a1[5] + 16) copyWithZone:a1[6]];
  v6 = a1[4];
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  v8 = [*(a1[5] + 176) copyWithZone:a1[6]];
  v9 = a1[4];
  v10 = *(v9 + 176);
  *(v9 + 176) = v8;

  *(a1[4] + 24) = *(a1[5] + 24);
  *(a1[4] + 32) = *(a1[5] + 32);
  v11 = [*(a1[5] + 40) copyWithZone:a1[6]];
  v12 = a1[4];
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  *(a1[4] + 72) = *(a1[5] + 72);
  *(a1[4] + 73) = *(a1[5] + 73);
  *(a1[4] + 74) = *(a1[5] + 74);
  *(a1[4] + 88) = *(a1[5] + 88);
  v14 = [*(a1[5] + 96) copyWithZone:a1[6]];
  v15 = a1[4];
  v16 = *(v15 + 96);
  *(v15 + 96) = v14;

  v17 = [*(a1[5] + 104) mutableCopyWithZone:a1[6]];
  v18 = a1[4];
  v19 = *(v18 + 104);
  *(v18 + 104) = v17;

  v20 = [*(a1[5] + 112) copyWithZone:a1[6]];
  v21 = a1[4];
  v22 = *(v21 + 112);
  *(v21 + 112) = v20;

  *(a1[4] + 120) = *(a1[5] + 120);
  v23 = [*(a1[5] + 128) copyWithZone:a1[6]];
  v24 = a1[4];
  v25 = *(v24 + 128);
  *(v24 + 128) = v23;

  v26 = [*(a1[5] + 136) copyWithZone:a1[6]];
  v27 = a1[4];
  v28 = *(v27 + 136);
  *(v27 + 136) = v26;

  *(a1[4] + 144) = *(a1[5] + 144);
  objc_storeStrong((a1[4] + 152), *(a1[5] + 152));
  objc_storeStrong((a1[4] + 160), *(a1[5] + 160));
  v29 = [*(a1[5] + 168) copyWithZone:a1[6]];
  v30 = a1[4];
  v31 = *(v30 + 168);
  *(v30 + 168) = v29;

  *(a1[4] + 184) = *(a1[5] + 184);
  *(a1[4] + 192) = *(a1[5] + 192);
  v32 = [*(a1[5] + 200) copyWithZone:a1[6]];
  v33 = a1[4];
  v34 = *(v33 + 200);
  *(v33 + 200) = v32;

  v35 = [*(a1[5] + 208) copyWithZone:a1[6]];
  v36 = a1[4];
  v37 = *(v36 + 208);
  *(v36 + 208) = v35;

  *(a1[4] + 216) = *(a1[5] + 216);
  v38 = [*(a1[5] + 224) copyWithZone:a1[6]];
  v39 = a1[4];
  v40 = *(v39 + 224);
  *(v39 + 224) = v38;

  *(a1[4] + 232) = *(a1[5] + 232);
  *(a1[4] + 240) = *(a1[5] + 240);
  *(a1[4] + 193) = *(a1[5] + 193);
  v41 = [*(a1[5] + 248) copyWithZone:a1[6]];
  v42 = a1[4];
  v43 = *(v42 + 248);
  *(v42 + 248) = v41;

  v44 = [*(a1[5] + 256) copyWithZone:a1[6]];
  v45 = a1[4];
  v46 = *(v45 + 256);
  *(v45 + 256) = v44;
}

- (unint64_t)hash
{
  v2 = [(SSPurchase *)self buyParameters];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SSPurchase *)self buyParameters];
    v8 = [v4 buyParameters];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __29__SSPurchase_copyXPCEncoding__block_invoke;
  v8[3] = &unk_1E84AC028;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(dispatchQueue, v8);
  v6 = v5;

  return v6;
}

uint64_t __29__SSPurchase_copyXPCEncoding__block_invoke(uint64_t a1)
{
  SSXPCDictionarySetObject(*(a1 + 32), "0", *(*(a1 + 40) + 8));
  SSXPCDictionarySetObject(*(a1 + 32), "1", *(*(a1 + 40) + 16));
  SSXPCDictionarySetObject(*(a1 + 32), "2", *(*(a1 + 40) + 176));
  xpc_dictionary_set_BOOL(*(a1 + 32), "3", *(*(a1 + 40) + 24));
  SSXPCDictionarySetObject(*(a1 + 32), "4", *(*(a1 + 40) + 40));
  xpc_dictionary_set_BOOL(*(a1 + 32), "5", *(*(a1 + 40) + 72));
  xpc_dictionary_set_BOOL(*(a1 + 32), "6", *(*(a1 + 40) + 73));
  xpc_dictionary_set_BOOL(*(a1 + 32), "7", *(*(a1 + 40) + 74));
  xpc_dictionary_set_BOOL(*(a1 + 32), "23", *(*(a1 + 40) + 88));
  SSXPCDictionarySetObject(*(a1 + 32), "8", *(*(a1 + 40) + 96));
  SSXPCDictionarySetObject(*(a1 + 32), "9", *(*(a1 + 40) + 104));
  SSXPCDictionarySetObject(*(a1 + 32), "24", *(*(a1 + 40) + 112));
  xpc_dictionary_set_int64(*(a1 + 32), "10", *(*(a1 + 40) + 120));
  SSXPCDictionarySetObject(*(a1 + 32), "11", *(*(a1 + 40) + 128));
  SSXPCDictionarySetObject(*(a1 + 32), "20", *(*(a1 + 40) + 136));
  xpc_dictionary_set_BOOL(*(a1 + 32), "12", *(*(a1 + 40) + 144));
  SSXPCDictionarySetObject(*(a1 + 32), "14", *(*(a1 + 40) + 168));
  xpc_dictionary_set_int64(*(a1 + 32), "16", *(*(a1 + 40) + 184));
  xpc_dictionary_set_BOOL(*(a1 + 32), "25", *(*(a1 + 40) + 192));
  SSXPCDictionarySetObject(*(a1 + 32), "17", *(*(a1 + 40) + 200));
  SSXPCDictionarySetObject(*(a1 + 32), "18", *(*(a1 + 40) + 208));
  xpc_dictionary_set_int64(*(a1 + 32), "19", [*(a1 + 40) uniqueIdentifier]);
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 152) rawItemDictionary];
  SSXPCDictionarySetObject(v2, "13", v3);

  v4 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 160) offerIdentifier];
  SSXPCDictionarySetObject(v4, "15", v5);

  xpc_dictionary_set_BOOL(*(a1 + 32), "26", *(*(a1 + 40) + 216));
  xpc_dictionary_set_BOOL(*(a1 + 32), "21", *(*(a1 + 40) + 240));
  xpc_dictionary_set_BOOL(*(a1 + 32), "22", *(*(a1 + 40) + 193));
  SSXPCDictionarySetObject(*(a1 + 32), "27", *(*(a1 + 40) + 224));
  SSXPCDictionarySetObject(*(a1 + 32), "28", *(*(a1 + 40) + 248));
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 256);

  return SSXPCDictionarySetObject(v6, "29", v7);
}

- (SSPurchase)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v6 = [(SSPurchase *)self _initSSPurchase];
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = objc_opt_class();
    v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
    accountIdentifier = v6->_accountIdentifier;
    v6->_accountIdentifier = v9;

    v11 = objc_opt_class();
    v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
    affiliateIdentifier = v6->_affiliateIdentifier;
    v6->_affiliateIdentifier = v12;

    v14 = objc_opt_class();
    v15 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v14);
    ownerAccountDSID = v6->_ownerAccountDSID;
    v6->_ownerAccountDSID = v15;

    v6->_backgroundPurchase = xpc_dictionary_get_BOOL(v5, "3");
    v17 = objc_opt_class();
    v18 = SSXPCDictionaryCopyObjectWithClass(v5, "4", v17);
    buyParameters = v6->_buyParameters;
    v6->_buyParameters = v18;

    v6->_createsDownloads = xpc_dictionary_get_BOOL(v5, "5");
    v6->_createsJobs = xpc_dictionary_get_BOOL(v5, "6");
    v6->_createsInstallJobs = xpc_dictionary_get_BOOL(v5, "7");
    v6->_displaysOnLockScreen = xpc_dictionary_get_BOOL(v5, "23");
    v20 = [SSDownloadPolicy alloc];
    v21 = xpc_dictionary_get_value(v5, "8");
    v22 = [(SSDownloadPolicy *)v20 initWithXPCEncoding:v21];
    downloadPolicy = v6->_downloadPolicy;
    v6->_downloadPolicy = v22;

    v24 = objc_opt_class();
    v25 = SSXPCDictionaryCopyObjectWithClass(v5, "24", v24);
    enabledServiceType = v6->_enabledServiceType;
    v6->_enabledServiceType = v25;

    v6->_expectedDownloadFileSize = xpc_dictionary_get_int64(v5, "10");
    v27 = objc_opt_class();
    v28 = SSXPCDictionaryCopyObjectWithClass(v5, "11", v27);
    filteredAssetTypes = v6->_filteredAssetTypes;
    v6->_filteredAssetTypes = v28;

    v30 = objc_opt_class();
    v31 = SSXPCDictionaryCopyObjectWithClass(v5, "20", v30);
    gratisIdentifiers = v6->_gratisIdentifiers;
    v6->_gratisIdentifiers = v31;

    v6->_ignoresForcedPasswordRestriction = xpc_dictionary_get_BOOL(v5, "12");
    v6->_placeholderDownloadIdentifier = xpc_dictionary_get_int64(v5, "16");
    v6->_playbackRequest = xpc_dictionary_get_BOOL(v5, "25");
    v33 = [SSNetworkConstraints alloc];
    v34 = xpc_dictionary_get_value(v5, "14");
    v35 = [(SSNetworkConstraints *)v33 initWithXPCEncoding:v34];
    networkConstraints = v6->_networkConstraints;
    v6->_networkConstraints = v35;

    v37 = [SSURLRequestProperties alloc];
    v38 = xpc_dictionary_get_value(v5, "17");
    v39 = [(SSURLRequestProperties *)v37 initWithXPCEncoding:v38];
    requestProperties = v6->_requestProperties;
    v6->_requestProperties = v39;

    v6->_uniqueIdentifier = xpc_dictionary_get_int64(v5, "19");
    v6->_usesLocalRedownloadParametersIfPossible = xpc_dictionary_get_BOOL(v5, "21");
    v6->_preauthenticated = xpc_dictionary_get_BOOL(v5, "22");
    v6->_skipSoftwareAccountPreflight = xpc_dictionary_get_BOOL(v5, "26");
    v41 = objc_opt_class();
    v42 = SSXPCDictionaryCopyObjectWithClass(v5, "27", v41);
    tidHeaders = v6->_tidHeaders;
    v6->_tidHeaders = v42;

    v44 = objc_opt_class();
    v45 = SSXPCDictionaryCopyObjectWithClass(v5, "29", v44);
    presentingSceneBundleIdentifier = v6->_presentingSceneBundleIdentifier;
    v6->_presentingSceneBundleIdentifier = v45;

    v47 = objc_opt_class();
    v48 = SSXPCDictionaryCopyObjectWithClass(v5, "28", v47);
    presentingSceneIdentifier = v6->_presentingSceneIdentifier;
    v6->_presentingSceneIdentifier = v48;

    self = SSXPCDictionaryCopyCFObject(v5, "18");
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_storeStrong(&v6->_requiredDeviceCapabilities, self);
    }

    v50 = objc_opt_class();
    v51 = SSXPCDictionaryCopyObjectWithClass(v5, "9", v50);
    v52 = [v51 mutableCopy];
    downloadProperties = v6->_downloadProperties;
    v6->_downloadProperties = v52;

    v54 = objc_opt_class();
    v55 = SSXPCDictionaryCopyObjectWithClass(v5, "13", v54);
    if (v55)
    {
      v56 = [[SSItem alloc] initWithItemDictionary:v55];
      item = v6->_item;
      v6->_item = v56;
    }

    v58 = objc_opt_class();
    v59 = SSXPCDictionaryCopyObjectWithClass(v5, "15", v58);
    if (v59)
    {
      v60 = [(SSItem *)v6->_item itemOfferForIdentifier:v59];
      itemOffer = v6->_itemOffer;
      v6->_itemOffer = v60;

      if (!v6->_itemOffer)
      {
        v62 = [(SSItem *)v6->_item defaultItemOffer];
        v63 = v6->_itemOffer;
        v6->_itemOffer = v62;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (void)setDownloadMetadata:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__SSPurchase_setDownloadMetadata___block_invoke;
  v7[3] = &unk_1E84AC028;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __34__SSPurchase_setDownloadMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) newDownloadProperties];
  v3 = *(a1 + 32);
  v4 = *(v3 + 104);
  *(v3 + 104) = v2;
}

+ (id)newPurchaseWithDatabaseEncoding:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:0];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_opt_class();
    v6 = [v4 objectForKey:@"03"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 BOOLValue])
    {
      v5 = objc_opt_class();
    }

    v7 = [[v5 alloc] _initSSPurchase];
    [v7 _setValuesUsingDatabaseEncoding:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)newPurchaseWithXPCEncoding:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && MEMORY[0x1DA6E0380](v3) == MEMORY[0x1E69E9E80])
  {
    v6 = objc_opt_class();
    if (xpc_dictionary_get_BOOL(v4, "55"))
    {
      v6 = objc_opt_class();
    }

    v5 = [[v6 alloc] initWithXPCEncoding:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end
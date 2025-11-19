@interface QLSpotlightFetcher
- (QLSpotlightFetcher)initWithCoder:(id)a3;
- (QLSpotlightFetcher)initWithSearchableItemUniqueIdentifier:(id)a3 queryString:(id)a4 applicationBundleIdentifier:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)fetchContentWithAllowedOutputClasses:(id)a3 inQueue:(id)a4 updateBlock:(id)a5 completionBlock:(id)a6;
@end

@implementation QLSpotlightFetcher

- (QLSpotlightFetcher)initWithSearchableItemUniqueIdentifier:(id)a3 queryString:(id)a4 applicationBundleIdentifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = QLSpotlightFetcher;
  v12 = [(QLItemFetcher *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_searchableItemUniqueIdentifier, a3);
    objc_storeStrong(&v13->_queryString, a4);
    objc_storeStrong(&v13->_applicationBundleIdentifier, a5);
    v14 = [QLSpotlightSearchableItemInfo spotlightInfoWithUniqueIdentifier:v13->_searchableItemUniqueIdentifier queryString:v13->_queryString applicationBundleIdentifier:v13->_applicationBundleIdentifier];
    info = v13->_info;
    v13->_info = v14;
  }

  return v13;
}

- (void)fetchContentWithAllowedOutputClasses:(id)a3 inQueue:(id)a4 updateBlock:(id)a5 completionBlock:(id)a6
{
  v9 = a3;
  v10 = a6;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__QLSpotlightFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke;
  v13[3] = &unk_279AE1000;
  v14 = v9;
  v15 = self;
  v16 = v10;
  v11 = v10;
  v12 = v9;
  [a4 addOperationWithBlock:v13];
}

void __95__QLSpotlightFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) containsObject:objc_opt_class()])
  {
    [*(a1 + 40) setFetchingState:1];
    v2 = *(a1 + 48);
    v4 = [*(a1 + 40) info];
    (*(v2 + 16))(v2, v4, 0);
  }

  else
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = QLSpotlightFetcher;
  v4 = a3;
  [(QLItemFetcher *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_searchableItemUniqueIdentifier forKey:{@"searchableItemUniqueIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_queryString forKey:@"queryString"];
  [v4 encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
}

- (QLSpotlightFetcher)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = QLSpotlightFetcher;
  v5 = [(QLItemFetcher *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemUniqueIdentifier"];
    searchableItemUniqueIdentifier = v5->_searchableItemUniqueIdentifier;
    v5->_searchableItemUniqueIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"queryString"];
    queryString = v5->_queryString;
    v5->_queryString = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;
  }

  return v5;
}

@end
@interface QLSpotlightFetcher
- (QLSpotlightFetcher)initWithCoder:(id)coder;
- (QLSpotlightFetcher)initWithSearchableItemUniqueIdentifier:(id)identifier queryString:(id)string applicationBundleIdentifier:(id)bundleIdentifier;
- (void)encodeWithCoder:(id)coder;
- (void)fetchContentWithAllowedOutputClasses:(id)classes inQueue:(id)queue updateBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation QLSpotlightFetcher

- (QLSpotlightFetcher)initWithSearchableItemUniqueIdentifier:(id)identifier queryString:(id)string applicationBundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  stringCopy = string;
  bundleIdentifierCopy = bundleIdentifier;
  v17.receiver = self;
  v17.super_class = QLSpotlightFetcher;
  v12 = [(QLItemFetcher *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_searchableItemUniqueIdentifier, identifier);
    objc_storeStrong(&v13->_queryString, string);
    objc_storeStrong(&v13->_applicationBundleIdentifier, bundleIdentifier);
    v14 = [QLSpotlightSearchableItemInfo spotlightInfoWithUniqueIdentifier:v13->_searchableItemUniqueIdentifier queryString:v13->_queryString applicationBundleIdentifier:v13->_applicationBundleIdentifier];
    info = v13->_info;
    v13->_info = v14;
  }

  return v13;
}

- (void)fetchContentWithAllowedOutputClasses:(id)classes inQueue:(id)queue updateBlock:(id)block completionBlock:(id)completionBlock
{
  classesCopy = classes;
  completionBlockCopy = completionBlock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __95__QLSpotlightFetcher_fetchContentWithAllowedOutputClasses_inQueue_updateBlock_completionBlock___block_invoke;
  v13[3] = &unk_279AE1000;
  v14 = classesCopy;
  selfCopy = self;
  v16 = completionBlockCopy;
  v11 = completionBlockCopy;
  v12 = classesCopy;
  [queue addOperationWithBlock:v13];
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = QLSpotlightFetcher;
  coderCopy = coder;
  [(QLItemFetcher *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_searchableItemUniqueIdentifier forKey:{@"searchableItemUniqueIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_queryString forKey:@"queryString"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
}

- (QLSpotlightFetcher)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = QLSpotlightFetcher;
  v5 = [(QLItemFetcher *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"searchableItemUniqueIdentifier"];
    searchableItemUniqueIdentifier = v5->_searchableItemUniqueIdentifier;
    v5->_searchableItemUniqueIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryString"];
    queryString = v5->_queryString;
    v5->_queryString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;
  }

  return v5;
}

@end
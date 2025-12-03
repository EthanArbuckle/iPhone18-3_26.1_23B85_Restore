@interface WLKOfferListing
- (BOOL)_prefersSD;
- (WLKOfferListing)initWithMAPIDictionaries:(id)dictionaries;
- (id)_bestStoreOfferForOfferType:(unint64_t)type;
- (id)_filteredStoreContentSource:(id)source;
- (id)_storeOffersFromMAPIDictionaries:(id)dictionaries;
@end

@implementation WLKOfferListing

- (WLKOfferListing)initWithMAPIDictionaries:(id)dictionaries
{
  dictionariesCopy = dictionaries;
  v10.receiver = self;
  v10.super_class = WLKOfferListing;
  v5 = [(WLKOfferListing *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(WLKOfferListing *)v5 _storeOffersFromMAPIDictionaries:dictionariesCopy];
    storeOffers = v6->_storeOffers;
    v6->_storeOffers = v7;
  }

  return v6;
}

- (id)_storeOffersFromMAPIDictionaries:(id)dictionaries
{
  v21 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dictionariesCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [WLKStoreOffer alloc];
        v12 = [(WLKStoreOffer *)v11 initWithMAPIDictionary:v10, v16];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = [v4 copy];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_filteredStoreContentSource:(id)source
{
  sourceCopy = source;
  if ([(WLKOfferListing *)self _prefersSD])
  {
    _standardDefinitionPredicate = [(WLKOfferListing *)self _standardDefinitionPredicate];
    v6 = [sourceCopy filteredArrayUsingPredicate:_standardDefinitionPredicate];
  }

  else
  {
    _highDefinitionPredicate = [(WLKOfferListing *)self _highDefinitionPredicate];
    v6 = [sourceCopy filteredArrayUsingPredicate:_highDefinitionPredicate];

    if ([v6 count])
    {
      goto LABEL_6;
    }

    _standardDefinitionPredicate = [(WLKOfferListing *)self _standardDefinitionPredicate];
    v8 = [sourceCopy filteredArrayUsingPredicate:_standardDefinitionPredicate];

    v6 = v8;
  }

LABEL_6:
  firstObject = [v6 firstObject];

  return firstObject;
}

- (BOOL)_prefersSD
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.videos-preferences"];
  v3 = [v2 objectForKey:@"PreferredPurchaseResolution"];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 integerValue] == 1;
  }

  else
  {
    NSLog(&cfstr_Wlkofferlistin.isa);
    v4 = 0;
  }

  return v4;
}

- (id)_bestStoreOfferForOfferType:(unint64_t)type
{
  type = [MEMORY[0x277CCAC30] predicateWithFormat:@"offerType = %d", type];
  storeOffers = [(WLKOfferListing *)self storeOffers];
  v6 = [storeOffers filteredArrayUsingPredicate:type];

  v7 = [(WLKOfferListing *)self _filteredStoreContentSource:v6];

  return v7;
}

@end
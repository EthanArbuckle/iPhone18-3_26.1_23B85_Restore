@interface SUDocumentationAssetMatcher
+ (id)matcherDocumentationFromAsset:(id)asset;
+ (id)matcherForInstalledDocumentationFromAsset:(id)asset;
- (id)_findMatchFromCandidates:(id)candidates error:(id *)error;
- (id)_queryPredicateForProperties:(id)properties;
- (id)_sortedMatcherPredicatesFromSoftwareUpdateAsset:(id)asset;
- (void)_modifyMADownloadOptions:(id)options;
- (void)dealloc;
@end

@implementation SUDocumentationAssetMatcher

+ (id)matcherForInstalledDocumentationFromAsset:(id)asset
{
  v3 = [[SUDocumentationAssetMatcher alloc] initWithSoftwareUpdateAsset:asset limitingToStates:4];

  return v3;
}

+ (id)matcherDocumentationFromAsset:(id)asset
{
  v3 = [[SUDocumentationAssetMatcher alloc] initWithSoftwareUpdateAsset:asset];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUDocumentationAssetMatcher;
  [(SUDocumentationAssetMatcher *)&v3 dealloc];
}

- (id)_findMatchFromCandidates:(id)candidates error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = [(SUDocumentationAssetMatcher *)self _sortedMatcherPredicatesFromSoftwareUpdateAsset:self->_suAsset];
  v6 = [v23 count];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i < v7; ++i)
    {
      v9 = [v23 objectAtIndex:i];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v10 = [candidates countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(candidates);
          }

          v14 = *(*(&v24 + 1) + 8 * v13);
          v15 = objc_autoreleasePoolPush();
          if ([v9 evaluateWithObject:{objc_msgSend(v14, "attributes")}])
          {
            break;
          }

          objc_autoreleasePoolPop(v15);
          if (v11 == ++v13)
          {
            v11 = [candidates countByEnumeratingWithState:&v24 objects:v28 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_13;
          }
        }

        v16 = v14;
        objc_autoreleasePoolPop(v15);
        if (v16)
        {
          goto LABEL_16;
        }
      }

LABEL_13:
      predicateFormat = [v9 predicateFormat];
      assetType = [(SUAssetStateMatcher *)self assetType];
      [(SUAssetStateMatcher *)self assetType];
      v19 = ASServerURLForAssetType();
      NSLog(&cfstr_FailedToFindAs.isa, predicateFormat, assetType, v19);
    }
  }

  v16 = 0;
  if (error)
  {
    *error = [SUUtility errorWithCode:38];
  }

LABEL_16:
  result = v16;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_modifyMADownloadOptions:(id)options
{
  if (MGGetBoolAnswer())
  {
    v5 = 60;
  }

  else
  {
    v5 = 30;
  }

  [options setTimeoutIntervalForResource:v5];
  [options setDiscretionary:0];
  [options setAllowsCellularAccess:1];
  [options setAllowsExpensiveAccess:1];
  v6 = [-[MAAsset attributes](self->_suAsset "attributes")];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v6, @"SUDocumentationID", +[SUUtility currentProductCategory](SUUtility, "currentProductCategory"), @"Device", 0}];

  [options setAdditionalServerParams:v7];
}

- (id)_queryPredicateForProperties:(id)properties
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SUDocumentationAssetMatcher__queryPredicateForProperties___block_invoke;
  v6[3] = &unk_279CAAA00;
  v6[4] = array;
  [properties enumerateKeysAndObjectsUsingBlock:v6];
  return [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
}

uint64_t __60__SUDocumentationAssetMatcher__queryPredicateForProperties___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", a2, a3];
  v5 = *(a1 + 32);

  return [v5 addObject:v4];
}

- (id)_sortedMatcherPredicatesFromSoftwareUpdateAsset:(id)asset
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [objc_msgSend(asset "attributes")];
  v8 = +[SUUtility currentDeviceName];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setValue:v7 forKey:@"SUDocumentationID"];
    }
  }

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setValue:v8 forKey:@"Device"];
    }
  }

  v9 = [(SUDocumentationAssetMatcher *)self _queryPredicateForProperties:v6];
  if (v9)
  {
    [array addObject:v9];
  }

  return array;
}

@end
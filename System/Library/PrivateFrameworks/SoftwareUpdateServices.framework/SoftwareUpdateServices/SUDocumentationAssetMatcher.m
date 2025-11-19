@interface SUDocumentationAssetMatcher
+ (id)matcherDocumentationFromAsset:(id)a3;
+ (id)matcherForInstalledDocumentationFromAsset:(id)a3;
- (id)_findMatchFromCandidates:(id)a3 error:(id *)a4;
- (id)_queryPredicateForProperties:(id)a3;
- (id)_sortedMatcherPredicatesFromSoftwareUpdateAsset:(id)a3;
- (void)_modifyMADownloadOptions:(id)a3;
- (void)dealloc;
@end

@implementation SUDocumentationAssetMatcher

+ (id)matcherForInstalledDocumentationFromAsset:(id)a3
{
  v3 = [[SUDocumentationAssetMatcher alloc] initWithSoftwareUpdateAsset:a3 limitingToStates:4];

  return v3;
}

+ (id)matcherDocumentationFromAsset:(id)a3
{
  v3 = [[SUDocumentationAssetMatcher alloc] initWithSoftwareUpdateAsset:a3];

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUDocumentationAssetMatcher;
  [(SUDocumentationAssetMatcher *)&v3 dealloc];
}

- (id)_findMatchFromCandidates:(id)a3 error:(id *)a4
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
      v10 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(a3);
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
            v11 = [a3 countByEnumeratingWithState:&v24 objects:v28 count:16];
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
      v17 = [v9 predicateFormat];
      v18 = [(SUAssetStateMatcher *)self assetType];
      [(SUAssetStateMatcher *)self assetType];
      v19 = ASServerURLForAssetType();
      NSLog(&cfstr_FailedToFindAs.isa, v17, v18, v19);
    }
  }

  v16 = 0;
  if (a4)
  {
    *a4 = [SUUtility errorWithCode:38];
  }

LABEL_16:
  result = v16;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_modifyMADownloadOptions:(id)a3
{
  if (MGGetBoolAnswer())
  {
    v5 = 60;
  }

  else
  {
    v5 = 30;
  }

  [a3 setTimeoutIntervalForResource:v5];
  [a3 setDiscretionary:0];
  [a3 setAllowsCellularAccess:1];
  [a3 setAllowsExpensiveAccess:1];
  v6 = [-[MAAsset attributes](self->_suAsset "attributes")];
  v7 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{v6, @"SUDocumentationID", +[SUUtility currentProductCategory](SUUtility, "currentProductCategory"), @"Device", 0}];

  [a3 setAdditionalServerParams:v7];
}

- (id)_queryPredicateForProperties:(id)a3
{
  v4 = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SUDocumentationAssetMatcher__queryPredicateForProperties___block_invoke;
  v6[3] = &unk_279CAAA00;
  v6[4] = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v6];
  return [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];
}

uint64_t __60__SUDocumentationAssetMatcher__queryPredicateForProperties___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", a2, a3];
  v5 = *(a1 + 32);

  return [v5 addObject:v4];
}

- (id)_sortedMatcherPredicatesFromSoftwareUpdateAsset:(id)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [objc_msgSend(a3 "attributes")];
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
    [v5 addObject:v9];
  }

  return v5;
}

@end
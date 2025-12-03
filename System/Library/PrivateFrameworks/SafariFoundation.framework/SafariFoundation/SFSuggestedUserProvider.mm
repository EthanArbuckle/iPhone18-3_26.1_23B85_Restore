@interface SFSuggestedUserProvider
+ (id)sharedProvider;
- (SFSuggestedUserProvider)init;
- (id)_allCachedSuggestedUsersWithType:(int64_t)type;
- (id)_cachedSuggestedUsersWithType:(int64_t)type matchingText:(id)text limit:(unint64_t)limit;
- (void)_accountStoreChangedNotification:(id)notification;
- (void)_getSuggestedUsersFromSavedAccounts:(id)accounts suggestedEmails:(id *)emails suggestedNonEmails:(id *)nonEmails;
- (void)suggestedUsersOfType:(int64_t)type matchingText:(id)text limit:(unint64_t)limit completionHandler:(id)handler;
- (void)suggestedUsersPrioritizingExistingUsersForURL:(id)l matchingText:(id)text limitForUsersNotFromURL:(unint64_t)rL completionHandler:(id)handler;
@end

@implementation SFSuggestedUserProvider

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    +[SFSuggestedUserProvider sharedProvider];
  }

  v3 = sharedProvider_provider;

  return v3;
}

uint64_t __41__SFSuggestedUserProvider_sharedProvider__block_invoke()
{
  sharedProvider_provider = objc_alloc_init(SFSuggestedUserProvider);

  return MEMORY[0x2821F96F8]();
}

- (SFSuggestedUserProvider)init
{
  v12.receiver = self;
  v12.super_class = SFSuggestedUserProvider;
  v2 = [(SFSuggestedUserProvider *)&v12 init];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 stringWithFormat:@"com.apple.SafariFoundation.%@.%p", v5, v2];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__accountStoreChangedNotification_ name:*MEMORY[0x277D49D78] object:0];

    v10 = v2;
  }

  return v2;
}

- (void)_accountStoreChangedNotification:(id)notification
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SFSuggestedUserProvider__accountStoreChangedNotification___block_invoke;
  block[3] = &unk_279B613D8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __60__SFSuggestedUserProvider__accountStoreChangedNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;
}

- (id)_allCachedSuggestedUsersWithType:(int64_t)type
{
  if (type)
  {
    if (type == 2)
    {
      suggestedNonEmails = self->_suggestedNonEmails;
      goto LABEL_6;
    }

    if (type == 1)
    {
      suggestedNonEmails = self->_suggestedEmails;
LABEL_6:
      v5 = suggestedNonEmails;
      goto LABEL_15;
    }
  }

  else if (!self->_suggestedEmails || !self->_suggestedNonEmails)
  {
    v5 = 0;
    goto LABEL_15;
  }

  array = [MEMORY[0x277CBEB18] array];
  v5 = array;
  if (self->_suggestedEmails)
  {
    [(NSArray *)array addObjectsFromArray:?];
  }

  if (self->_suggestedNonEmails)
  {
    [(NSArray *)v5 addObjectsFromArray:?];
  }

  [(NSArray *)v5 sortUsingSelector:sel_compare_];
LABEL_15:

  return v5;
}

- (id)_cachedSuggestedUsersWithType:(int64_t)type matchingText:(id)text limit:(unint64_t)limit
{
  textCopy = text;
  v9 = [(SFSuggestedUserProvider *)self _allCachedSuggestedUsersWithType:type];
  if ([textCopy length])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __76__SFSuggestedUserProvider__cachedSuggestedUsersWithType_matchingText_limit___block_invoke;
    v13[3] = &unk_279B62208;
    v14 = textCopy;
    v10 = [v9 safari_filterObjectsUsingBlock:v13];

    v9 = v10;
  }

  if ([v9 count] < limit)
  {
    limit = [v9 count];
  }

  v11 = [v9 subarrayWithRange:{0, limit}];

  return v11;
}

uint64_t __76__SFSuggestedUserProvider__cachedSuggestedUsersWithType_matchingText_limit___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 value];
  if ([v3 safari_hasCaseInsensitivePrefix:*(a1 + 32)])
  {
    v4 = [v3 safari_isCaseInsensitiveEqualToString:*(a1 + 32)] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)suggestedUsersOfType:(int64_t)type matchingText:(id)text limit:(unint64_t)limit completionHandler:(id)handler
{
  textCopy = text;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__SFSuggestedUserProvider_suggestedUsersOfType_matchingText_limit_completionHandler___block_invoke;
    block[3] = &unk_279B62230;
    block[4] = self;
    typeCopy = type;
    v14 = textCopy;
    limitCopy = limit;
    v15 = handlerCopy;
    dispatch_async(queue, block);
  }
}

void __85__SFSuggestedUserProvider_suggestedUsersOfType_matchingText_limit_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _cachedSuggestedUsersWithType:*(a1 + 56) matchingText:*(a1 + 40) limit:*(a1 + 64)];
  if (v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277D49B58] sharedStore];
    v5 = [v4 savedAccountsWithPasswords];
    v16 = 0;
    v17 = 0;
    [v3 _getSuggestedUsersFromSavedAccounts:v5 suggestedEmails:&v17 suggestedNonEmails:&v16];
    v6 = v17;
    v7 = v16;

    v8 = *(a1 + 32);
    v9 = *(v8 + 16);
    *(v8 + 16) = v6;
    v10 = v6;

    v11 = *(a1 + 32);
    v12 = *(v11 + 24);
    *(v11 + 24) = v7;
    v13 = v7;

    v14 = *(a1 + 48);
    v15 = [*(a1 + 32) _cachedSuggestedUsersWithType:*(a1 + 56) matchingText:*(a1 + 40) limit:*(a1 + 64)];
    (*(v14 + 16))(v14, v15);
  }
}

- (void)suggestedUsersPrioritizingExistingUsersForURL:(id)l matchingText:(id)text limitForUsersNotFromURL:(unint64_t)rL completionHandler:(id)handler
{
  lCopy = l;
  textCopy = text;
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = [MEMORY[0x277D49B40] criteriaForExactFQDNPasswordMatchesOfURL:lCopy];
  v15 = [objc_alloc(MEMORY[0x277D49B70]) initWithString:textCopy matchingType:0];
  [v14 setUserNameQuery:v15];

  mEMORY[0x277D49B58] = [MEMORY[0x277D49B58] sharedStore];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __128__SFSuggestedUserProvider_suggestedUsersPrioritizingExistingUsersForURL_matchingText_limitForUsersNotFromURL_completionHandler___block_invoke;
  v22[3] = &unk_279B61DB0;
  v24 = &v25;
  v17 = v13;
  v23 = v17;
  [mEMORY[0x277D49B58] getSavedAccountsMatchingCriteria:v14 withSynchronousCompletionHandler:v22];

  if ([textCopy length] || !objc_msgSend(v26[5], "count"))
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __128__SFSuggestedUserProvider_suggestedUsersPrioritizingExistingUsersForURL_matchingText_limitForUsersNotFromURL_completionHandler___block_invoke_3;
    v18[3] = &unk_279B62280;
    v19 = v17;
    v20 = handlerCopy;
    v21 = &v25;
    [(SFSuggestedUserProvider *)self suggestedUsersOfType:0 matchingText:textCopy limit:rL completionHandler:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v26[5]);
  }

  _Block_object_dispose(&v25, 8);
}

void __128__SFSuggestedUserProvider_suggestedUsersPrioritizingExistingUsersForURL_matchingText_limitForUsersNotFromURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 matchesForPasswordAutoFill];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __128__SFSuggestedUserProvider_suggestedUsersPrioritizingExistingUsersForURL_matchingText_limitForUsersNotFromURL_completionHandler___block_invoke_2;
  v7[3] = &unk_279B62258;
  v8 = *(a1 + 32);
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __128__SFSuggestedUserProvider_suggestedUsersPrioritizingExistingUsersForURL_matchingText_limitForUsersNotFromURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 user];
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    [*(a1 + 32) addObject:v3];
    v4 = [SFSuggestedUser suggestedUserWithValue:v3 type:0];
  }

  return v4;
}

void __128__SFSuggestedUserProvider_suggestedUsersPrioritizingExistingUsersForURL_matchingText_limitForUsersNotFromURL_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __128__SFSuggestedUserProvider_suggestedUsersPrioritizingExistingUsersForURL_matchingText_limitForUsersNotFromURL_completionHandler___block_invoke_4;
  v7[3] = &unk_279B62208;
  v8 = *(a1 + 32);
  v4 = [a2 safari_filterObjectsUsingBlock:v7];
  v5 = *(a1 + 40);
  v6 = [*(*(*(a1 + 48) + 8) + 40) arrayByAddingObjectsFromArray:v4];
  (*(v5 + 16))(v5, v6);
}

uint64_t __128__SFSuggestedUserProvider_suggestedUsersPrioritizingExistingUsersForURL_matchingText_limitForUsersNotFromURL_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)_getSuggestedUsersFromSavedAccounts:(id)accounts suggestedEmails:(id *)emails suggestedNonEmails:(id *)nonEmails
{
  v35 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v6 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__SFSuggestedUserProvider__getSuggestedUsersFromSavedAccounts_suggestedEmails_suggestedNonEmails___block_invoke;
  aBlock[3] = &unk_279B622A8;
  v24 = dictionary;
  v32 = v24;
  v23 = dictionary2;
  v33 = v23;
  v10 = _Block_copy(aBlock);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = accountsCopy;
  v12 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        user = [v16 user];
        if ([user length] && (objc_msgSend(v16, "userIsNeverSaveMarker") & 1) == 0)
        {
          if ([v6 containsObject:user] & 1) != 0 || (objc_msgSend(v7, "containsObject:", user) & 1) == 0 && (objc_msgSend(user, "safari_looksLikeEmailAddress"))
          {
            v18 = v6;
            v19 = 1;
          }

          else
          {
            v18 = v7;
            v19 = 2;
          }

          [v18 addObject:user];
          v10[2](v10, v19, user);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v13);
  }

  allValues = [v24 allValues];
  *emails = [allValues sortedArrayUsingSelector:sel_compare_];

  allValues2 = [v23 allValues];
  *nonEmails = [allValues2 sortedArrayUsingSelector:sel_compare_];

  v22 = *MEMORY[0x277D85DE8];
}

void __98__SFSuggestedUserProvider__getSuggestedUsersFromSavedAccounts_suggestedEmails_suggestedNonEmails___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = 40;
  if (a2 == 1)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);
  v7 = [v6 objectForKeyedSubscript:v9];
  if (v7)
  {
    v8 = v7;
    [v7 setUsageFrequency:{objc_msgSend(v7, "usageFrequency") + 1}];
  }

  else
  {
    v8 = [SFSuggestedUser suggestedUserWithValue:v9 type:a2];
    [v8 setUsageFrequency:1];
    [v6 setObject:v8 forKeyedSubscript:v9];
  }
}

@end
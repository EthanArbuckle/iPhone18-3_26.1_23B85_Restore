@interface WBSSavedAccountTreeMatch
+ (BOOL)userName:(id)a3 matchesQuery:(id)a4;
+ (BOOL)userNameString:(id)a3 matchesPotentiallyObfuscatedUserNameString:(id)a4;
- (NSMutableArray)flattenedSavedAccountsFromTree;
- (WBSSavedAccountTreeMatch)initWithDomain:(id)a3 savedAccountTree:(id)a4 matchLevel:(int64_t)a5;
- (void)pruneDontSaveTrees;
- (void)pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers:(id)a3;
- (void)pruneUsernameTreesNotMatchingTitleQuery:(id)a3;
- (void)pruneUsernameTreesNotMatchingUserNameQuery:(id)a3 orPasskeyIdentifiers:(id)a4;
@end

@implementation WBSSavedAccountTreeMatch

- (WBSSavedAccountTreeMatch)initWithDomain:(id)a3 savedAccountTree:(id)a4 matchLevel:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = WBSSavedAccountTreeMatch;
  v10 = [(WBSSavedAccountTreeMatch *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    domain = v10->_domain;
    v10->_domain = v11;

    v13 = deepMutableDictionaryCopy(v9);
    accountStoreTreeMatchingSearchCriteria = v10->_accountStoreTreeMatchingSearchCriteria;
    v10->_accountStoreTreeMatchingSearchCriteria = v13;

    v10->_matchLevel = a5;
    v15 = v10;
  }

  return v10;
}

- (NSMutableArray)flattenedSavedAccountsFromTree
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria allValues];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [v9 allValues];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 addObjectsFromArray:*(*(&v17 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)pruneDontSaveTrees
{
  accountStoreTreeMatchingSearchCriteria = self->_accountStoreTreeMatchingSearchCriteria;
  v3 = +[WBSDontSaveMarker dontSaveMarker];
  [(NSMutableDictionary *)accountStoreTreeMatchingSearchCriteria removeObjectForKey:v3];
}

- (void)pruneUsernameTreesNotMatchingUserNameQuery:(id)a3 orPasskeyIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 matchingType];
  v9 = [v6 string];
  v10 = v9;
  if (v8 || [v9 length])
  {
    v11 = [v7 safari_setByApplyingBlock:&__block_literal_global_67];
    v12 = [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria allKeys];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__WBSSavedAccountTreeMatch_pruneUsernameTreesNotMatchingUserNameQuery_orPasskeyIdentifiers___block_invoke_2;
    v15[3] = &unk_1E7CF4F78;
    v15[4] = self;
    v16 = v6;
    v17 = v11;
    v13 = v11;
    v14 = [v12 safari_filterObjectsUsingBlock:v15];

    [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria removeObjectsForKeys:v14];
  }
}

uint64_t __92__WBSSavedAccountTreeMatch_pruneUsernameTreesNotMatchingUserNameQuery_orPasskeyIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() userName:v3 matchesQuery:*(a1 + 40)] ^ 1;
  if ([*(a1 + 48) count])
  {
    v20 = v3;
    [*(*(a1 + 32) + 8) objectForKeyedSubscript:v3];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = v31 = 0u;
    obj = [v21 allKeys];
    v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        v9 = 0;
        v22 = v7;
        do
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * v9);
          if (([v10 integerValue] & 2) != 0)
          {
            v11 = [v21 objectForKeyedSubscript:v10];
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v25;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v25 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(a1 + 48);
                  v17 = [*(*(&v24 + 1) + 8 * i) passkeyCredentialID];
                  LOBYTE(v16) = [v16 containsObject:v17];

                  LOBYTE(v5) = (v16 ^ 1) & v5;
                }

                v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v13);
            }

            v7 = v22;
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    v3 = v20;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

+ (BOOL)userName:(id)a3 matchesQuery:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 matchingType];
  v9 = [v7 string];

  if ([v9 hasPrefix:@"+1"])
  {
    v10 = [v9 substringFromIndex:2];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v9 componentsSeparatedByString:@"@"];
  v12 = [v11 firstObject];

  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  v14 = v13;
  if (v8 == 1)
  {
    v4 = [v6 isEqualToString:v9];
  }

  else if (!v8)
  {
    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"•*"];
    v16 = [v14 safari_stringByTrimmingTrailingCharactersInCharacterSet:v15];

    v17 = [v6 rangeOfString:v16 options:9];
    v18 = [objc_opt_class() userNameString:v6 matchesPotentiallyObfuscatedUserNameString:v9];
    if ([v10 length])
    {
      v19 = [v6 rangeOfString:v10 options:9] != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = 0;
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v18 | v19;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

- (void)pruneUsernameTreesNotMatchingTitleQuery:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria allKeys];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __68__WBSSavedAccountTreeMatch_pruneUsernameTreesNotMatchingTitleQuery___block_invoke;
  v11 = &unk_1E7CF4FC8;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 safari_filterObjectsUsingBlock:&v8];

  [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria removeObjectsForKeys:v7, v8, v9, v10, v11, v12];
}

uint64_t __68__WBSSavedAccountTreeMatch_pruneUsernameTreesNotMatchingTitleQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__WBSSavedAccountTreeMatch_pruneUsernameTreesNotMatchingTitleQuery___block_invoke_2;
  v7[3] = &unk_1E7CF4FA0;
  v8 = *(a1 + 40);
  v9 = &v10;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __68__WBSSavedAccountTreeMatch_pruneUsernameTreesNotMatchingTitleQuery___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [*(a1 + 32) matchingType];
        if (v10 == 1)
        {
          v14 = [v9 customTitle];
          v15 = [*(a1 + 32) string];
          v16 = WBSIsEqual(v14, v15);

          if ((v16 & 1) == 0)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }
        }

        else if (!v10)
        {
          v11 = [v9 customTitle];
          if ([v11 length])
          {
            v12 = [v9 customTitle];
            v13 = [*(a1 + 32) string];
            *(*(*(a1 + 40) + 8) + 24) |= [v12 rangeOfString:v13 options:9] == 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

+ (BOOL)userNameString:(id)a3 matchesPotentiallyObfuscatedUserNameString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 length];
  if (v7 == [v6 length])
  {
    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*•"];
    if (v7)
    {
      v9 = 0;
      for (i = 0; i != v7; v9 = i >= v7)
      {
        v11 = [v6 characterAtIndex:i];
        if (([v8 characterIsMember:v11] & 1) == 0 && objc_msgSend(v5, "characterAtIndex:", i) != v11)
        {
          break;
        }

        ++i;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [a3 safari_setByApplyingBlock:&__block_literal_global_19_3];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria allValues];
  v19 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v19)
  {
    v18 = *v31;
    do
    {
      v5 = 0;
      do
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v5;
        v6 = *(*(&v30 + 1) + 8 * v5);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v7 = [v6 allKeys];
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v26 + 1) + 8 * i);
              v13 = [v6 objectForKeyedSubscript:v12];
              v14 = [v12 integerValue];
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __82__WBSSavedAccountTreeMatch_pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers___block_invoke_2;
              v21[3] = &unk_1E7CF4FF0;
              v24 = v14;
              v15 = v4;
              v25 = 256;
              v22 = v15;
              v23 = &stru_1F3064D08;
              [v13 safari_removeObjectsPassingTest:v21];
              if (![v13 count])
              {
                [v6 removeObjectForKey:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v9);
        }

        v5 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v19);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t __82__WBSSavedAccountTreeMatch_pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((a1[6] & 2) != 0)
  {
    v8 = a1[4];
    v9 = [v3 passkeyCredentialID];
    LOBYTE(v8) = [v8 containsObject:v9];

    if (v8)
    {
      v7 = 56;
      goto LABEL_9;
    }

    if (a1[6] == 2)
    {
      v7 = 57;
      goto LABEL_9;
    }
  }

  v5 = [v4 password];
  v6 = [v5 isEqualToString:a1[5]];

  v7 = 56;
  if (v6)
  {
    v7 = 57;
  }

LABEL_9:
  v10 = *(a1 + v7);

  return v10;
}

@end
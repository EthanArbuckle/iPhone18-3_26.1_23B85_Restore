@interface WBSSavedAccountTreeMatch
+ (BOOL)userName:(id)name matchesQuery:(id)query;
+ (BOOL)userNameString:(id)string matchesPotentiallyObfuscatedUserNameString:(id)nameString;
- (NSMutableArray)flattenedSavedAccountsFromTree;
- (WBSSavedAccountTreeMatch)initWithDomain:(id)domain savedAccountTree:(id)tree matchLevel:(int64_t)level;
- (void)pruneDontSaveTrees;
- (void)pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers:(id)identifiers;
- (void)pruneUsernameTreesNotMatchingTitleQuery:(id)query;
- (void)pruneUsernameTreesNotMatchingUserNameQuery:(id)query orPasskeyIdentifiers:(id)identifiers;
@end

@implementation WBSSavedAccountTreeMatch

- (WBSSavedAccountTreeMatch)initWithDomain:(id)domain savedAccountTree:(id)tree matchLevel:(int64_t)level
{
  domainCopy = domain;
  treeCopy = tree;
  v17.receiver = self;
  v17.super_class = WBSSavedAccountTreeMatch;
  v10 = [(WBSSavedAccountTreeMatch *)&v17 init];
  if (v10)
  {
    v11 = [domainCopy copy];
    domain = v10->_domain;
    v10->_domain = v11;

    v13 = deepMutableDictionaryCopy(treeCopy);
    accountStoreTreeMatchingSearchCriteria = v10->_accountStoreTreeMatchingSearchCriteria;
    v10->_accountStoreTreeMatchingSearchCriteria = v13;

    v10->_matchLevel = level;
    v15 = v10;
  }

  return v10;
}

- (NSMutableArray)flattenedSavedAccountsFromTree
{
  v27 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria allValues];
  v5 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        allValues2 = [v9 allValues];
        v11 = [allValues2 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                objc_enumerationMutation(allValues2);
              }

              [array addObjectsFromArray:*(*(&v17 + 1) + 8 * j)];
            }

            v12 = [allValues2 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)pruneDontSaveTrees
{
  accountStoreTreeMatchingSearchCriteria = self->_accountStoreTreeMatchingSearchCriteria;
  v3 = +[WBSDontSaveMarker dontSaveMarker];
  [(NSMutableDictionary *)accountStoreTreeMatchingSearchCriteria removeObjectForKey:v3];
}

- (void)pruneUsernameTreesNotMatchingUserNameQuery:(id)query orPasskeyIdentifiers:(id)identifiers
{
  queryCopy = query;
  identifiersCopy = identifiers;
  matchingType = [queryCopy matchingType];
  string = [queryCopy string];
  v10 = string;
  if (matchingType || [string length])
  {
    v11 = [identifiersCopy safari_setByApplyingBlock:&__block_literal_global_67];
    allKeys = [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria allKeys];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__WBSSavedAccountTreeMatch_pruneUsernameTreesNotMatchingUserNameQuery_orPasskeyIdentifiers___block_invoke_2;
    v15[3] = &unk_1E7CF4F78;
    v15[4] = self;
    v16 = queryCopy;
    v17 = v11;
    v13 = v11;
    v14 = [allKeys safari_filterObjectsUsingBlock:v15];

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

+ (BOOL)userName:(id)name matchesQuery:(id)query
{
  nameCopy = name;
  queryCopy = query;
  matchingType = [queryCopy matchingType];
  string = [queryCopy string];

  if ([string hasPrefix:@"+1"])
  {
    v10 = [string substringFromIndex:2];
  }

  else
  {
    v10 = 0;
  }

  v11 = [string componentsSeparatedByString:@"@"];
  firstObject = [v11 firstObject];

  if (firstObject)
  {
    v13 = firstObject;
  }

  else
  {
    v13 = string;
  }

  v14 = v13;
  if (matchingType == 1)
  {
    v4 = [nameCopy isEqualToString:string];
  }

  else if (!matchingType)
  {
    v15 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"•*"];
    v16 = [v14 safari_stringByTrimmingTrailingCharactersInCharacterSet:v15];

    v17 = [nameCopy rangeOfString:v16 options:9];
    v18 = [objc_opt_class() userNameString:nameCopy matchesPotentiallyObfuscatedUserNameString:string];
    if ([v10 length])
    {
      v19 = [nameCopy rangeOfString:v10 options:9] != 0x7FFFFFFFFFFFFFFFLL;
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

- (void)pruneUsernameTreesNotMatchingTitleQuery:(id)query
{
  queryCopy = query;
  allKeys = [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria allKeys];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __68__WBSSavedAccountTreeMatch_pruneUsernameTreesNotMatchingTitleQuery___block_invoke;
  v11 = &unk_1E7CF4FC8;
  selfCopy = self;
  v13 = queryCopy;
  v6 = queryCopy;
  v7 = [allKeys safari_filterObjectsUsingBlock:&v8];

  [(NSMutableDictionary *)self->_accountStoreTreeMatchingSearchCriteria removeObjectsForKeys:v7, v8, v9, v10, v11, selfCopy];
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

+ (BOOL)userNameString:(id)string matchesPotentiallyObfuscatedUserNameString:(id)nameString
{
  stringCopy = string;
  nameStringCopy = nameString;
  v7 = [stringCopy length];
  if (v7 == [nameStringCopy length])
  {
    v8 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"*•"];
    if (v7)
    {
      v9 = 0;
      for (i = 0; i != v7; v9 = i >= v7)
      {
        v11 = [nameStringCopy characterAtIndex:i];
        if (([v8 characterIsMember:v11] & 1) == 0 && objc_msgSend(stringCopy, "characterAtIndex:", i) != v11)
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

- (void)pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers:(id)identifiers
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [identifiers safari_setByApplyingBlock:&__block_literal_global_19_3];
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
        allKeys = [v6 allKeys];
        v8 = [allKeys countByEnumeratingWithState:&v26 objects:v34 count:16];
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
                objc_enumerationMutation(allKeys);
              }

              v12 = *(*(&v26 + 1) + 8 * i);
              v13 = [v6 objectForKeyedSubscript:v12];
              integerValue = [v12 integerValue];
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __82__WBSSavedAccountTreeMatch_pruneTreesWithoutPasswordOrMatchingPasskeyIdentifiers___block_invoke_2;
              v21[3] = &unk_1E7CF4FF0;
              v24 = integerValue;
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

            v9 = [allKeys countByEnumeratingWithState:&v26 objects:v34 count:16];
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
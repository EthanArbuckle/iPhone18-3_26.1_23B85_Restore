@interface VSIdentityProviderFilter
+ (id)keyPathsForValuesAffectingFilteredIdentityProviders;
- (NSArray)filteredIdentityProviders;
- (VSIdentityProviderFilter)init;
- (id)_camelAndWordBasedPrefixesForProvider:(id)a3;
- (void)_refreshProviderList;
- (void)setAllIdentityProviders:(id)a3;
- (void)setSupportedAccountProviderIDs:(id)a3;
@end

@implementation VSIdentityProviderFilter

- (VSIdentityProviderFilter)init
{
  v12.receiver = self;
  v12.super_class = VSIdentityProviderFilter;
  v2 = [(VSIdentityProviderFilter *)&v12 init];
  v3 = v2;
  if (v2)
  {
    allIdentityProviders = v2->_allIdentityProviders;
    v5 = MEMORY[0x277CBEBF8];
    v2->_allIdentityProviders = MEMORY[0x277CBEBF8];

    supportedAccountProviderIDs = v3->_supportedAccountProviderIDs;
    v3->_supportedAccountProviderIDs = v5;

    supportedIdentityProviders = v3->_supportedIdentityProviders;
    v3->_supportedIdentityProviders = v5;

    searchQuery = v3->_searchQuery;
    v3->_searchQuery = &stru_2880B8BB0;

    v9 = objc_alloc_init(MEMORY[0x277CE2310]);
    searchTree = v3->_searchTree;
    v3->_searchTree = v9;
  }

  return v3;
}

- (id)_camelAndWordBasedPrefixesForProvider:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = v3;
  v5 = [v3 displayName];
  v6 = [v5 forceUnwrapObject];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 length];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __66__VSIdentityProviderFilter__camelAndWordBasedPrefixesForProvider___block_invoke;
  v36[3] = &unk_279E19570;
  v9 = v7;
  v37 = v9;
  [v6 enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v36}];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  [v10 addObject:v11];

  v12 = [v9 count];
  v13 = v12 - 1;
  if (v12 != 1)
  {
    do
    {
      v16 = [v9 objectAtIndex:v13 - 1];
      v17 = [v9 objectAtIndex:v13];
      if (v13 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = [v9 objectAtIndex:v13 - 2];
      }

      v19 = [v16 vs_composedCharacterIsWhitespace];
      if ([v17 vs_composedCharacterIsLowercase])
      {
        v14 = [v16 vs_composedCharacterIsUppercase] ^ 1;
        if (!v18)
        {
LABEL_4:
          v15 = v13;
          if (!v19)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }
      }

      else
      {
        LOBYTE(v14) = 1;
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      v20 = [v18 vs_composedCharacterIsWhitespace];
      if ((v14 | v20))
      {
        v15 = v13;
      }

      else
      {
        v15 = v13 - 1;
      }

      if (!(v19 & 1 | (((v14 | v20) & 1) == 0)))
      {
        goto LABEL_16;
      }

LABEL_15:
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
      [v10 addObject:v21];

LABEL_16:
      --v13;
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = v10;
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v32 + 1) + 8 * i) unsignedIntegerValue];
        v28 = [v6 substringWithRange:{v27, objc_msgSend(v6, "length") - v27}];
        [v4 addObject:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v24);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v4;
}

void __66__VSIdentityProviderFilter__camelAndWordBasedPrefixesForProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The substring parameter must not be nil."];
    v3 = 0;
  }

  [v4 addObject:v3];
}

- (void)_refreshProviderList
{
  v2 = self;
  v44 = *MEMORY[0x277D85DE8];
  v3 = [(VSIdentityProviderFilter *)self allIdentityProviders];
  v4 = [(VSIdentityProviderFilter *)v2 supportedAccountProviderIDs];
  v5 = &off_270E38000;
  if ([v4 count])
  {
    v27 = v2;
    v28 = v4;
    v26 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v4];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = v3;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          v13 = [v12 providerID];
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __48__VSIdentityProviderFilter__refreshProviderList__block_invoke;
          v35[3] = &unk_279E19598;
          v36 = v6;
          v37 = v12;
          [v13 conditionallyUnwrapObject:v35];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v9);
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v26;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v6 objectForKey:*(*(&v31 + 1) + 8 * j)];
          if (v20)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v17);
    }

    v3 = [v14 copy];
    v2 = v27;
    v4 = v28;
    v5 = &off_270E38000;
  }

  v21 = objc_alloc_init(MEMORY[0x277CE2310]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = *(v5 + 337);
  v29[2] = __48__VSIdentityProviderFilter__refreshProviderList__block_invoke_2;
  v29[3] = &unk_279E195C0;
  v29[4] = v2;
  v30 = v21;
  v22 = v21;
  [(NSArray *)v3 enumerateObjectsUsingBlock:v29];
  [(VSIdentityProviderFilter *)v2 setSearchTree:v22];
  supportedIdentityProviders = v2->_supportedIdentityProviders;
  v2->_supportedIdentityProviders = v3;
  v24 = v3;

  v25 = *MEMORY[0x277D85DE8];
}

void __48__VSIdentityProviderFilter__refreshProviderList__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _camelAndWordBasedPrefixesForProvider:v3];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(a1 + 40);
        v10 = [*(*(&v12 + 1) + 8 * v8) lowercaseString];
        [v9 insertString:v10 withAssociatedObject:v3];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setAllIdentityProviders:(id)a3
{
  objc_storeStrong(&self->_allIdentityProviders, a3);

  [(VSIdentityProviderFilter *)self _refreshProviderList];
}

- (void)setSupportedAccountProviderIDs:(id)a3
{
  objc_storeStrong(&self->_supportedAccountProviderIDs, a3);

  [(VSIdentityProviderFilter *)self _refreshProviderList];
}

+ (id)keyPathsForValuesAffectingFilteredIdentityProviders
{
  if (keyPathsForValuesAffectingFilteredIdentityProviders___vs_lazy_init_predicate != -1)
  {
    +[VSIdentityProviderFilter keyPathsForValuesAffectingFilteredIdentityProviders];
  }

  v3 = keyPathsForValuesAffectingFilteredIdentityProviders___vs_lazy_init_variable;

  return v3;
}

uint64_t __79__VSIdentityProviderFilter_keyPathsForValuesAffectingFilteredIdentityProviders__block_invoke()
{
  keyPathsForValuesAffectingFilteredIdentityProviders___vs_lazy_init_variable = __79__VSIdentityProviderFilter_keyPathsForValuesAffectingFilteredIdentityProviders__block_invoke_2();

  return MEMORY[0x2821F96F8]();
}

id __79__VSIdentityProviderFilter_keyPathsForValuesAffectingFilteredIdentityProviders__block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v0 addObject:@"supportedAccountProviderIDs"];
  [v0 addObject:@"searchQuery"];
  [v0 addObject:@"allIdentityProviders"];
  v1 = [v0 copy];

  return v1;
}

- (NSArray)filteredIdentityProviders
{
  v3 = [(VSIdentityProviderFilter *)self supportedIdentityProviders];
  v4 = [(VSIdentityProviderFilter *)self searchQuery];
  v5 = [v4 lowercaseString];

  if ([v5 length])
  {
    v6 = [(VSIdentityProviderFilter *)self searchTree];
    v7 = [v6 objectsMatchingPrefix:v5];

    v8 = [objc_alloc(MEMORY[0x277CBEB70]) initWithArray:v7];
    v9 = [v8 array];

    v3 = v9;
  }

  return v3;
}

@end
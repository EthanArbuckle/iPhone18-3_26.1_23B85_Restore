@interface PXSearchActiveSearch
- (BOOL)hasSearchText;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (NSString)searchTermsString;
- (PXSearchActiveSearch)initWithSearchText:(id)a3 searchTokens:(id)a4 libraryScope:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)searchTokenCount;
- (void)_generateRelatedSearchObjects;
@end

@implementation PXSearchActiveSearch

- (NSString)searchTermsString
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PXSearchActiveSearch *)self searchTokens];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) text];
        if ([v10 length])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([(PXSearchActiveSearch *)self hasSearchText])
  {
    v11 = [(PXSearchActiveSearch *)self searchText];
    [v4 addObject:v11];
  }

  v12 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:{v4, v14}];

  return v12;
}

- (void)_generateRelatedSearchObjects
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(PXSearchActiveSearch *)self searchTokenCount])
  {
    v3 = objc_opt_new();
    v4 = [(PXSearchActiveSearch *)self searchTokens];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v14 + 1) + 8 * i) representedObject];
          v10 = [v9 queryToken];
          if (!v10)
          {
            PXAssertGetLog();
          }

          [v3 addObject:v10];
          if (!v9)
          {
            PXAssertGetLog();
          }

          if (!-[PXSearchActiveSearch hasSearchText](self, "hasSearchText") && [v4 count] == 1)
          {
            v11 = [v9 priorityAssetUUID];
            [(PXSearchActiveSearch *)self setPriorityAssetUUID:v11];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    v12 = [v3 copy];
    [(PXSearchActiveSearch *)self setRepresentedObjects:v12];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];

    [(PXSearchActiveSearch *)self setRepresentedObjects:v13];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PXSearchActiveSearch;
  if ([(PXSearchActiveSearch *)&v14 isEqual:v4])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v7 = [(PXSearchActiveSearch *)self searchTokenCount];
      if (v7 == [v6 searchTokenCount] && (v8 = -[PXSearchActiveSearch libraryScope](self, "libraryScope"), v8 == objc_msgSend(v6, "libraryScope")))
      {
        v9 = [(PXSearchActiveSearch *)self representedObjects];
        v10 = [v6 representedObjects];
        v5 = [v9 isEqualToArray:v10];

        if (-[PXSearchActiveSearch hasSearchText](self, "hasSearchText") || [v6 hasSearchText])
        {
          v11 = [(PXSearchActiveSearch *)self searchText];
          v12 = [v6 searchText];
          v5 &= [v11 isEqualToString:v12];
        }
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [PXSearchActiveSearch alloc];
  v6 = [(PXSearchActiveSearch *)self searchText];
  v7 = [v6 copyWithZone:a3];
  v8 = [(PXSearchActiveSearch *)self searchTokens];
  v9 = [v8 copyWithZone:a3];
  v10 = [(PXSearchActiveSearch *)v5 initWithSearchText:v7 searchTokens:v9 libraryScope:[(PXSearchActiveSearch *)self libraryScope]];

  return v10;
}

- (unint64_t)searchTokenCount
{
  v2 = [(PXSearchActiveSearch *)self searchTokens];
  v3 = [v2 count];

  return v3;
}

- (BOOL)isEmpty
{
  if ([(PXSearchActiveSearch *)self hasSearchText])
  {
    return 0;
  }

  else
  {
    return ![(PXSearchActiveSearch *)self hasSearchTokens];
  }
}

- (BOOL)hasSearchText
{
  v2 = [(PXSearchActiveSearch *)self searchText];
  v3 = [v2 length] != 0;

  return v3;
}

- (PXSearchActiveSearch)initWithSearchText:(id)a3 searchTokens:(id)a4 libraryScope:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = PXSearchActiveSearch;
  v10 = [(PXSearchActiveSearch *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_libraryScope = a5;
    v12 = [v8 copy];
    searchText = v11->_searchText;
    v11->_searchText = v12;

    v14 = [v9 copy];
    searchTokens = v11->_searchTokens;
    v11->_searchTokens = v14;

    [(PXSearchActiveSearch *)v11 _generateRelatedSearchObjects];
  }

  return v11;
}

@end
@interface PXSearchActiveSearch
- (BOOL)hasSearchText;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (NSString)searchTermsString;
- (PXSearchActiveSearch)initWithSearchText:(id)text searchTokens:(id)tokens libraryScope:(unint64_t)scope;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)searchTokenCount;
- (void)_generateRelatedSearchObjects;
@end

@implementation PXSearchActiveSearch

- (NSString)searchTermsString
{
  v19 = *MEMORY[0x1E69E9840];
  searchTokens = [(PXSearchActiveSearch *)self searchTokens];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = searchTokens;
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

        text = [*(*(&v14 + 1) + 8 * i) text];
        if ([text length])
        {
          [v4 addObject:text];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([(PXSearchActiveSearch *)self hasSearchText])
  {
    searchText = [(PXSearchActiveSearch *)self searchText];
    [v4 addObject:searchText];
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
    searchTokens = [(PXSearchActiveSearch *)self searchTokens];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [searchTokens countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(searchTokens);
          }

          representedObject = [*(*(&v14 + 1) + 8 * i) representedObject];
          queryToken = [representedObject queryToken];
          if (!queryToken)
          {
            PXAssertGetLog();
          }

          [v3 addObject:queryToken];
          if (!representedObject)
          {
            PXAssertGetLog();
          }

          if (!-[PXSearchActiveSearch hasSearchText](self, "hasSearchText") && [searchTokens count] == 1)
          {
            priorityAssetUUID = [representedObject priorityAssetUUID];
            [(PXSearchActiveSearch *)self setPriorityAssetUUID:priorityAssetUUID];
          }
        }

        v6 = [searchTokens countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14.receiver = self;
  v14.super_class = PXSearchActiveSearch;
  if ([(PXSearchActiveSearch *)&v14 isEqual:equalCopy])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      searchTokenCount = [(PXSearchActiveSearch *)self searchTokenCount];
      if (searchTokenCount == [v6 searchTokenCount] && (v8 = -[PXSearchActiveSearch libraryScope](self, "libraryScope"), v8 == objc_msgSend(v6, "libraryScope")))
      {
        representedObjects = [(PXSearchActiveSearch *)self representedObjects];
        representedObjects2 = [v6 representedObjects];
        v5 = [representedObjects isEqualToArray:representedObjects2];

        if (-[PXSearchActiveSearch hasSearchText](self, "hasSearchText") || [v6 hasSearchText])
        {
          searchText = [(PXSearchActiveSearch *)self searchText];
          searchText2 = [v6 searchText];
          v5 &= [searchText isEqualToString:searchText2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [PXSearchActiveSearch alloc];
  searchText = [(PXSearchActiveSearch *)self searchText];
  v7 = [searchText copyWithZone:zone];
  searchTokens = [(PXSearchActiveSearch *)self searchTokens];
  v9 = [searchTokens copyWithZone:zone];
  v10 = [(PXSearchActiveSearch *)v5 initWithSearchText:v7 searchTokens:v9 libraryScope:[(PXSearchActiveSearch *)self libraryScope]];

  return v10;
}

- (unint64_t)searchTokenCount
{
  searchTokens = [(PXSearchActiveSearch *)self searchTokens];
  v3 = [searchTokens count];

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
  searchText = [(PXSearchActiveSearch *)self searchText];
  v3 = [searchText length] != 0;

  return v3;
}

- (PXSearchActiveSearch)initWithSearchText:(id)text searchTokens:(id)tokens libraryScope:(unint64_t)scope
{
  textCopy = text;
  tokensCopy = tokens;
  v17.receiver = self;
  v17.super_class = PXSearchActiveSearch;
  v10 = [(PXSearchActiveSearch *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_libraryScope = scope;
    v12 = [textCopy copy];
    searchText = v11->_searchText;
    v11->_searchText = v12;

    v14 = [tokensCopy copy];
    searchTokens = v11->_searchTokens;
    v11->_searchTokens = v14;

    [(PXSearchActiveSearch *)v11 _generateRelatedSearchObjects];
  }

  return v11;
}

@end
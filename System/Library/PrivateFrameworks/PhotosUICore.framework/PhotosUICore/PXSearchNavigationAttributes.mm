@interface PXSearchNavigationAttributes
+ (id)attributesForURLComponents:(id)a3;
+ (id)attributesWithDecoratedQuery:(id)a3;
+ (id)attributesWithGenericSearchTerm:(id)a3;
+ (id)attributesWithGenericSearchText:(id)a3;
- (BOOL)_isEqualToSearchNavigationAttributes:(id)a3;
- (BOOL)isEqual:(id)a3;
@end

@implementation PXSearchNavigationAttributes

+ (id)attributesWithDecoratedQuery:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc_init(a1);
    v6 = [v4 string];
    [v5 setSearchText:v6];

    [v5 setDecoratedQuery:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)attributesWithGenericSearchText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc_init(a1);
    [v5 setSearchText:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)attributesWithGenericSearchTerm:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v5 = objc_alloc_init(a1);
    v11[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v5 setSearchTerms:v6];

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%tu", 0];
    v10 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
    [v5 setSearchCategories:v8];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)attributesForURLComponents:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v20 = a3;
  v3 = [v20 queryItems];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v4)
  {
    v21 = 0;
    v6 = MEMORY[0x1E695E0F0];
    v8 = MEMORY[0x1E695E0F0];
    goto LABEL_17;
  }

  v5 = v4;
  v21 = 0;
  v6 = MEMORY[0x1E695E0F0];
  v7 = *v23;
  v8 = MEMORY[0x1E695E0F0];
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v10 = *(*(&v22 + 1) + 8 * i);
      v11 = [v10 name];
      if ([v11 isEqualToString:@"searchTerm"])
      {
        v12 = [v10 value];
        v13 = [v12 componentsSeparatedByString:{@", "}];

        v8 = v13;
      }

      else if ([v11 isEqualToString:@"searchCategory"])
      {
        v12 = [v10 value];
        v14 = [v12 componentsSeparatedByString:{@", "}];

        v6 = v14;
      }

      else
      {
        if (![v11 isEqualToString:@"completionKey"])
        {
          goto LABEL_13;
        }

        [v10 value];
        v21 = v12 = v21;
      }

LABEL_13:
    }

    v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v5);
LABEL_17:

  if ([v8 count])
  {
    v15 = objc_alloc_init(a1);
    [v15 setSearchTerms:v8];
    [v15 setSearchCategories:v6];
    v16 = v21;
    [v15 setCompletionKey:v21];
  }

  else
  {
    v15 = 0;
    v16 = v21;
  }

  v17 = v15;

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PXSearchNavigationAttributes *)self _isEqualToSearchNavigationAttributes:v4];

  return v5;
}

- (BOOL)_isEqualToSearchNavigationAttributes:(id)a3
{
  v4 = a3;
  searchTerms = self->_searchTerms;
  v6 = [v4 searchTerms];
  v7 = v6;
  if (searchTerms == v6)
  {
  }

  else
  {
    v8 = [(NSArray *)searchTerms isEqual:v6];

    if (!v8)
    {
      goto LABEL_15;
    }
  }

  searchCategories = self->_searchCategories;
  v10 = [v4 searchCategories];
  v11 = v10;
  if (searchCategories == v10)
  {
  }

  else
  {
    v12 = [(NSArray *)searchCategories isEqual:v10];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  searchText = self->_searchText;
  v14 = [v4 searchText];
  v15 = v14;
  if (searchText == v14)
  {
  }

  else
  {
    v16 = [(NSString *)searchText isEqual:v14];

    if (!v16)
    {
      goto LABEL_15;
    }
  }

  decoratedQuery = self->_decoratedQuery;
  v18 = [v4 decoratedQuery];
  v19 = v18;
  if (decoratedQuery == v18)
  {
  }

  else
  {
    v20 = [(NSAttributedString *)decoratedQuery isEqual:v18];

    if (!v20)
    {
LABEL_15:
      v21 = 0;
      goto LABEL_21;
    }
  }

  completionKey = self->_completionKey;
  v23 = [v4 completionKey];
  if (completionKey == v23)
  {
    v21 = 1;
  }

  else
  {
    v21 = [(NSString *)completionKey isEqual:v23];
  }

LABEL_21:
  return v21;
}

@end
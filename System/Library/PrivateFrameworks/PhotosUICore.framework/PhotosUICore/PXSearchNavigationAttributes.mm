@interface PXSearchNavigationAttributes
+ (id)attributesForURLComponents:(id)components;
+ (id)attributesWithDecoratedQuery:(id)query;
+ (id)attributesWithGenericSearchTerm:(id)term;
+ (id)attributesWithGenericSearchText:(id)text;
- (BOOL)_isEqualToSearchNavigationAttributes:(id)attributes;
- (BOOL)isEqual:(id)equal;
@end

@implementation PXSearchNavigationAttributes

+ (id)attributesWithDecoratedQuery:(id)query
{
  queryCopy = query;
  if ([queryCopy length])
  {
    v5 = objc_alloc_init(self);
    string = [queryCopy string];
    [v5 setSearchText:string];

    [v5 setDecoratedQuery:queryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)attributesWithGenericSearchText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v5 = objc_alloc_init(self);
    [v5 setSearchText:textCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)attributesWithGenericSearchTerm:(id)term
{
  v11[1] = *MEMORY[0x1E69E9840];
  termCopy = term;
  if ([termCopy length])
  {
    v5 = objc_alloc_init(self);
    v11[0] = termCopy;
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

+ (id)attributesForURLComponents:(id)components
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  componentsCopy = components;
  queryItems = [componentsCopy queryItems];
  v4 = [queryItems countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        objc_enumerationMutation(queryItems);
      }

      v10 = *(*(&v22 + 1) + 8 * i);
      name = [v10 name];
      if ([name isEqualToString:@"searchTerm"])
      {
        value = [v10 value];
        v13 = [value componentsSeparatedByString:{@", "}];

        v8 = v13;
      }

      else if ([name isEqualToString:@"searchCategory"])
      {
        value = [v10 value];
        v14 = [value componentsSeparatedByString:{@", "}];

        v6 = v14;
      }

      else
      {
        if (![name isEqualToString:@"completionKey"])
        {
          goto LABEL_13;
        }

        [v10 value];
        v21 = value = v21;
      }

LABEL_13:
    }

    v5 = [queryItems countByEnumeratingWithState:&v22 objects:v26 count:16];
  }

  while (v5);
LABEL_17:

  if ([v8 count])
  {
    v15 = objc_alloc_init(self);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PXSearchNavigationAttributes *)self _isEqualToSearchNavigationAttributes:equalCopy];

  return v5;
}

- (BOOL)_isEqualToSearchNavigationAttributes:(id)attributes
{
  attributesCopy = attributes;
  searchTerms = self->_searchTerms;
  searchTerms = [attributesCopy searchTerms];
  v7 = searchTerms;
  if (searchTerms == searchTerms)
  {
  }

  else
  {
    v8 = [(NSArray *)searchTerms isEqual:searchTerms];

    if (!v8)
    {
      goto LABEL_15;
    }
  }

  searchCategories = self->_searchCategories;
  searchCategories = [attributesCopy searchCategories];
  v11 = searchCategories;
  if (searchCategories == searchCategories)
  {
  }

  else
  {
    v12 = [(NSArray *)searchCategories isEqual:searchCategories];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  searchText = self->_searchText;
  searchText = [attributesCopy searchText];
  v15 = searchText;
  if (searchText == searchText)
  {
  }

  else
  {
    v16 = [(NSString *)searchText isEqual:searchText];

    if (!v16)
    {
      goto LABEL_15;
    }
  }

  decoratedQuery = self->_decoratedQuery;
  decoratedQuery = [attributesCopy decoratedQuery];
  v19 = decoratedQuery;
  if (decoratedQuery == decoratedQuery)
  {
  }

  else
  {
    v20 = [(NSAttributedString *)decoratedQuery isEqual:decoratedQuery];

    if (!v20)
    {
LABEL_15:
      v21 = 0;
      goto LABEL_21;
    }
  }

  completionKey = self->_completionKey;
  completionKey = [attributesCopy completionKey];
  if (completionKey == completionKey)
  {
    v21 = 1;
  }

  else
  {
    v21 = [(NSString *)completionKey isEqual:completionKey];
  }

LABEL_21:
  return v21;
}

@end
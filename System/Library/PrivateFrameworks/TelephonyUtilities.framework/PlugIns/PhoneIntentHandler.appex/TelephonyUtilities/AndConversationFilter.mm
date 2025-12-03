@interface AndConversationFilter
- (AndConversationFilter)initWithFilters:(id)filters;
- (BOOL)matches:(id)matches;
@end

@implementation AndConversationFilter

- (AndConversationFilter)initWithFilters:(id)filters
{
  filtersCopy = filters;
  v9.receiver = self;
  v9.super_class = AndConversationFilter;
  v6 = [(AndConversationFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_filters, filters);
  }

  return v7;
}

- (BOOL)matches:(id)matches
{
  matchesCopy = matches;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  filters = [(AndConversationFilter *)self filters];
  v6 = [filters countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(filters);
        }

        if (![*(*(&v12 + 1) + 8 * i) matches:matchesCopy])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [filters countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

@end
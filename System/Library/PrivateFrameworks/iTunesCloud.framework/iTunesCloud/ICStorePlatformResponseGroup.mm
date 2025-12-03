@interface ICStorePlatformResponseGroup
- (ICStorePlatformResponseGroup)initWithResponses:(id)responses;
- (ICURLAggregatedPerformanceMetrics)performanceMetrics;
- (NSArray)allItems;
- (NSDate)expirationDate;
- (NSNumber)accountIdentifier;
- (NSNumber)enqueuerAccountIdentifier;
- (NSString)storefrontIdentifier;
- (id)itemForIdentifier:(id)identifier;
- (void)enumerateItemsUsingBlock:(id)block;
@end

@implementation ICStorePlatformResponseGroup

- (ICURLAggregatedPerformanceMetrics)performanceMetrics
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_childResponses, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_childResponses;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        performanceMetrics = [v9 performanceMetrics];

        if (performanceMetrics)
        {
          performanceMetrics2 = [v9 performanceMetrics];
          urlMetrics = [performanceMetrics2 urlMetrics];
          [v3 addObjectsFromArray:urlMetrics];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v13 = [[ICURLAggregatedPerformanceMetrics alloc] initWithURLMetrics:v3];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (NSString)storefrontIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_childResponses;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        storefrontIdentifier = [*(*(&v10 + 1) + 8 * i) storefrontIdentifier];
        if (storefrontIdentifier)
        {
          v8 = storefrontIdentifier;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)itemForIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_childResponses;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) itemForIdentifier:{identifierCopy, v13}];
        if (v10)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (NSDate)expirationDate
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_childResponses;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        expirationDate = [*(*(&v12 + 1) + 8 * i) expirationDate];
        v9 = expirationDate;
        if (expirationDate)
        {
          if (v5)
          {
            v10 = [v5 earlierDate:expirationDate];

            v5 = v10;
          }

          else
          {
            v5 = expirationDate;
          }
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  childResponses = self->_childResponses;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__ICStorePlatformResponseGroup_enumerateItemsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BF7308;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSArray *)childResponses enumerateObjectsUsingBlock:v7];
}

void __57__ICStorePlatformResponseGroup_enumerateItemsUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__ICStorePlatformResponseGroup_enumerateItemsUsingBlock___block_invoke_2;
  v6[3] = &unk_1E7BF72E0;
  v7 = *(a1 + 32);
  v8 = a4;
  [a2 enumerateItemsUsingBlock:v6];
}

uint64_t __57__ICStorePlatformResponseGroup_enumerateItemsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = 0;
  result = (*(*(a1 + 32) + 16))();
  v6 = v7;
  *a3 = v7;
  **(a1 + 40) = v6;
  return result;
}

- (NSNumber)enqueuerAccountIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_childResponses;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        enqueuerAccountIdentifier = [*(*(&v10 + 1) + 8 * i) enqueuerAccountIdentifier];
        if (enqueuerAccountIdentifier)
        {
          v8 = enqueuerAccountIdentifier;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (NSArray)allItems
{
  array = [MEMORY[0x1E695DF70] array];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__ICStorePlatformResponseGroup_allItems__block_invoke;
  v5[3] = &unk_1E7BF8298;
  v5[4] = array;
  [(ICStorePlatformResponseGroup *)self enumerateItemsUsingBlock:v5];

  return array;
}

- (NSNumber)accountIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_childResponses;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        accountIdentifier = [*(*(&v10 + 1) + 8 * i) accountIdentifier];
        if (accountIdentifier)
        {
          v8 = accountIdentifier;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (ICStorePlatformResponseGroup)initWithResponses:(id)responses
{
  responsesCopy = responses;
  v9.receiver = self;
  v9.super_class = ICStorePlatformResponseGroup;
  v5 = [(ICStorePlatformResponseGroup *)&v9 init];
  if (v5)
  {
    v6 = [responsesCopy copy];
    childResponses = v5->_childResponses;
    v5->_childResponses = v6;
  }

  return v5;
}

@end
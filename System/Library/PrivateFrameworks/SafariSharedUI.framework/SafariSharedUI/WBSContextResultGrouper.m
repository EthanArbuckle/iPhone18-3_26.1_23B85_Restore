@interface WBSContextResultGrouper
- (WBSContextResultGrouper)init;
- (id)groupItems:(id)a3;
@end

@implementation WBSContextResultGrouper

- (WBSContextResultGrouper)init
{
  v6.receiver = self;
  v6.super_class = WBSContextResultGrouper;
  v2 = [(WBSContextResultGrouper *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_minimumNumberOfItemsRequiredInGroup = 1;
    v4 = v2;
  }

  return v3;
}

- (id)groupItems:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 groupContextResult];
        if (v12)
        {
          v13 = [v5 objectForKey:v12];
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            [v5 setObject:v13 forKey:v12];
          }

          [v13 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = [v5 keyEnumerator];
  v15 = [v14 allObjects];

  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        v21 = [v5 objectForKey:v20];
        if ([v21 count] < self->_minimumNumberOfItemsRequiredInGroup)
        {
          [v5 removeObjectForKey:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  return v5;
}

@end
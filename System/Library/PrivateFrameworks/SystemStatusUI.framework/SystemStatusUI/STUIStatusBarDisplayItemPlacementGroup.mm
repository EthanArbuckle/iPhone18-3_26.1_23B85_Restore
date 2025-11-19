@interface STUIStatusBarDisplayItemPlacementGroup
+ (STUIStatusBarDisplayItemPlacementGroup)groupWithPriority:(int64_t)a3 placements:(id)a4;
- (BOOL)enabled;
- (void)setEnabled:(BOOL)a3;
@end

@implementation STUIStatusBarDisplayItemPlacementGroup

+ (STUIStatusBarDisplayItemPlacementGroup)groupWithPriority:(int64_t)a3 placements:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc_init(a1);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x8000000000000000;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        [v15 setPriority:{objc_msgSend(v15, "priority", v20) + a3}];
        v16 = [v15 priority];
        if (v12 >= v16)
        {
          v12 = v16;
        }

        v17 = [v15 priority];
        if (v13 <= v17)
        {
          v13 = v17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0x8000000000000000;
  }

  v18 = v7[1];
  v7[1] = v8;

  v7[2] = v12;
  v7[3] = v13;

  return v7;
}

- (BOOL)enabled
{
  v2 = [(STUIStatusBarDisplayItemPlacementGroup *)self placements];
  v3 = [v2 firstObject];
  v4 = [v3 isEnabled];

  return v4;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_placements;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setEnabled:{v3, v9}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end
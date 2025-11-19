@interface PMLTrackerMockAdapter
- (PMLTrackerMockAdapter)init;
- (id)trackedMessagesByClass:(Class)a3;
@end

@implementation PMLTrackerMockAdapter

- (id)trackedMessagesByClass:(Class)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_trackedMessages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [v4 addObject:{v10, v13}];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (PMLTrackerMockAdapter)init
{
  v6.receiver = self;
  v6.super_class = PMLTrackerMockAdapter;
  v2 = [(PMLTrackerMockAdapter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    trackedMessages = v2->_trackedMessages;
    v2->_trackedMessages = v3;
  }

  return v2;
}

@end
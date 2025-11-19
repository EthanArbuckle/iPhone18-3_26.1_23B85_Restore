@interface PFTActivity
+ (id)activityWrapping:(id)a3;
- (PFTActivity)init;
- (PFTActivity)initWithActivity:(id)a3;
- (id)track;
- (void)apply:(id)a3;
- (void)invalidate;
- (void)performActivity:(id)a3;
@end

@implementation PFTActivity

- (id)track
{
  v3 = [[_PFTActivitySentinel alloc] initWithActivity:self];
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_weakSentinels addObject:v3];
  objc_sync_exit(v4);

  return v3;
}

+ (id)activityWrapping:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithActivity:v4];

  return v5;
}

- (PFTActivity)initWithActivity:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v12.receiver = self;
    v12.super_class = PFTActivity;
    v6 = [(PFTActivity *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_wrappedActivity, a3);
      v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      weakSentinels = v7->_weakSentinels;
      v7->_weakSentinels = v8;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PFTActivity)init
{
  [(PFTActivity *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)performActivity:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PFTActivity *)self track];
    v4[2](v4, v5);
  }
}

- (void)apply:(id)a3
{
  v4 = a3;
  v5 = [(PFTActivity *)self track];
  v4[2](v4);

  [v5 invalidate];
}

- (void)invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSHashTable *)v2->_weakSentinels copy];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSHashTable *)v2->_weakSentinels removeAllObjects];
  objc_sync_exit(v2);

  v8 = *MEMORY[0x277D85DE8];
}

@end
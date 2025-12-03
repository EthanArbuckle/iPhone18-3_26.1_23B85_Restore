@interface PFTActivity
+ (id)activityWrapping:(id)wrapping;
- (PFTActivity)init;
- (PFTActivity)initWithActivity:(id)activity;
- (id)track;
- (void)apply:(id)apply;
- (void)invalidate;
- (void)performActivity:(id)activity;
@end

@implementation PFTActivity

- (id)track
{
  v3 = [[_PFTActivitySentinel alloc] initWithActivity:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_weakSentinels addObject:v3];
  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)activityWrapping:(id)wrapping
{
  wrappingCopy = wrapping;
  v5 = [[self alloc] initWithActivity:wrappingCopy];

  return v5;
}

- (PFTActivity)initWithActivity:(id)activity
{
  activityCopy = activity;
  if (activityCopy)
  {
    v12.receiver = self;
    v12.super_class = PFTActivity;
    v6 = [(PFTActivity *)&v12 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_wrappedActivity, activity);
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      weakSentinels = v7->_weakSentinels;
      v7->_weakSentinels = weakObjectsHashTable;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PFTActivity)init
{
  [(PFTActivity *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)performActivity:(id)activity
{
  if (activity)
  {
    activityCopy = activity;
    track = [(PFTActivity *)self track];
    activityCopy[2](activityCopy, track);
  }
}

- (void)apply:(id)apply
{
  applyCopy = apply;
  track = [(PFTActivity *)self track];
  applyCopy[2](applyCopy);

  [track invalidate];
}

- (void)invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSHashTable *)selfCopy->_weakSentinels copy];
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

  [(NSHashTable *)selfCopy->_weakSentinels removeAllObjects];
  objc_sync_exit(selfCopy);

  v8 = *MEMORY[0x277D85DE8];
}

@end
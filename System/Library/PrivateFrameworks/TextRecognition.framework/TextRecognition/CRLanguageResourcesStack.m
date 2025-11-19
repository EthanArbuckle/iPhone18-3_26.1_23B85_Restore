@interface CRLanguageResourcesStack
- (BOOL)hasSubscriber:(id)a3;
- (CRLanguageResourcesStack)initWithLocaleIdentifier:(id)a3 resourceType:(int64_t)a4;
- (id)popResourceForSubscriber:(id)a3;
- (int64_t)subscriberCount;
- (void)addSubscriber:(id)a3;
- (void)deactivateSubscriber:(id)a3;
- (void)pushResource:(id)a3;
- (void)removeSubscriber:(id)a3;
@end

@implementation CRLanguageResourcesStack

- (CRLanguageResourcesStack)initWithLocaleIdentifier:(id)a3 resourceType:(int64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CRLanguageResourcesStack;
  v7 = [(CRLanguageResourcesStack *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(CRLanguageResourcesStack *)v7 setLocaleIdentifier:v6];
    v9 = objc_opt_new();
    [(CRLanguageResourcesStack *)v8 setAvailableResources:v9];

    [(CRLanguageResourcesStack *)v8 setTotalResources:0];
    v10 = dispatch_semaphore_create(0);
    [(CRLanguageResourcesStack *)v8 setResourceCountSemaphore:v10];

    v11 = objc_opt_new();
    [(CRLanguageResourcesStack *)v8 setSubscribers:v11];

    [(CRLanguageResourcesStack *)v8 setResourceType:a4];
    v12 = objc_opt_new();
    [(CRLanguageResourcesStack *)v8 setActiveSubscribers:v12];
  }

  return v8;
}

- (id)popResourceForSubscriber:(id)a3
{
  v4 = a3;
  v5 = [(CRLanguageResourcesStack *)self activeSubscribers];
  objc_sync_enter(v5);
  v6 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v4];
  [v6 addObject:v7];

  objc_sync_exit(v5);
  v8 = [(CRLanguageResourcesStack *)self availableResources];
  objc_sync_enter(v8);
  v9 = [(CRLanguageResourcesStack *)self availableResources];
  if ([v9 count])
  {
  }

  else
  {
    v10 = [(CRLanguageResourcesStack *)self totalResources];

    if (v10 <= 3)
    {
      v11 = [CRLanguageResources alloc];
      v12 = [(CRLanguageResourcesStack *)self localeIdentifier];
      v13 = [(CRLanguageResources *)v11 initWithLanguageIdentifier:v12 type:[(CRLanguageResourcesStack *)self resourceType]];

      [(CRLanguageResourcesStack *)self setTotalResources:[(CRLanguageResourcesStack *)self totalResources]+ 1];
      goto LABEL_6;
    }
  }

  v13 = 0;
LABEL_6:
  objc_sync_exit(v8);

  if (!v13)
  {
    v14 = [(CRLanguageResourcesStack *)self resourceCountSemaphore];
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

    v15 = [(CRLanguageResourcesStack *)self availableResources];
    objc_sync_enter(v15);
    v16 = [(CRLanguageResourcesStack *)self availableResources];
    v13 = [v16 lastObject];

    v17 = [(CRLanguageResourcesStack *)self availableResources];
    [v17 removeLastObject];

    objc_sync_exit(v15);
  }

  v18 = v13;

  return v18;
}

- (void)pushResource:(id)a3
{
  v7 = a3;
  v4 = [(CRLanguageResourcesStack *)self availableResources];
  objc_sync_enter(v4);
  v5 = [(CRLanguageResourcesStack *)self availableResources];
  [v5 addObject:v7];

  v6 = [(CRLanguageResourcesStack *)self resourceCountSemaphore];
  dispatch_semaphore_signal(v6);

  objc_sync_exit(v4);
}

- (void)addSubscriber:(id)a3
{
  v10 = a3;
  v4 = [(CRLanguageResourcesStack *)self subscribers];
  objc_sync_enter(v4);
  v5 = [(CRLanguageResourcesStack *)self subscribers];
  v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v10];
  [v5 addObject:v6];

  objc_sync_exit(v4);
  v7 = [(CRLanguageResourcesStack *)self activeSubscribers];
  objc_sync_enter(v7);
  v8 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v9 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v10];
  [v8 addObject:v9];

  objc_sync_exit(v7);
}

- (void)removeSubscriber:(id)a3
{
  v10 = a3;
  v4 = [(CRLanguageResourcesStack *)self subscribers];
  objc_sync_enter(v4);
  v5 = [(CRLanguageResourcesStack *)self subscribers];
  v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v10];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
  v7 = [(CRLanguageResourcesStack *)self activeSubscribers];
  objc_sync_enter(v7);
  v8 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v9 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v10];
  [v8 removeObject:v9];

  objc_sync_exit(v7);
}

- (void)deactivateSubscriber:(id)a3
{
  v15 = a3;
  v4 = [(CRLanguageResourcesStack *)self activeSubscribers];
  objc_sync_enter(v4);
  v5 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v15];
  [v5 removeObject:v6];

  v7 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v8 = [v7 count];

  if (!v8)
  {
    v9 = [(CRLanguageResourcesStack *)self availableResources];
    objc_sync_enter(v9);
    v10 = [(CRLanguageResourcesStack *)self availableResources];
    v11 = [v10 count];

    if (v11 >= 2)
    {
      v12 = [(CRLanguageResourcesStack *)self availableResources];
      v13 = [(CRLanguageResourcesStack *)self availableResources];
      [v12 removeObjectsInRange:{1, objc_msgSend(v13, "count") - 1}];

      [(CRLanguageResourcesStack *)self setTotalResources:1];
      v14 = dispatch_semaphore_create(1);
      [(CRLanguageResourcesStack *)self setResourceCountSemaphore:v14];
    }

    objc_sync_exit(v9);
  }

  objc_sync_exit(v4);
}

- (BOOL)hasSubscriber:(id)a3
{
  v4 = a3;
  v5 = [(CRLanguageResourcesStack *)self subscribers];
  objc_sync_enter(v5);
  v6 = [(CRLanguageResourcesStack *)self subscribers];
  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:v4];
  v8 = [v6 containsObject:v7];

  objc_sync_exit(v5);
  return v8;
}

- (int64_t)subscriberCount
{
  v2 = [(CRLanguageResourcesStack *)self subscribers];
  v3 = [v2 count];

  return v3;
}

@end
@interface CRLanguageResourcesStack
- (BOOL)hasSubscriber:(id)subscriber;
- (CRLanguageResourcesStack)initWithLocaleIdentifier:(id)identifier resourceType:(int64_t)type;
- (id)popResourceForSubscriber:(id)subscriber;
- (int64_t)subscriberCount;
- (void)addSubscriber:(id)subscriber;
- (void)deactivateSubscriber:(id)subscriber;
- (void)pushResource:(id)resource;
- (void)removeSubscriber:(id)subscriber;
@end

@implementation CRLanguageResourcesStack

- (CRLanguageResourcesStack)initWithLocaleIdentifier:(id)identifier resourceType:(int64_t)type
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = CRLanguageResourcesStack;
  v7 = [(CRLanguageResourcesStack *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(CRLanguageResourcesStack *)v7 setLocaleIdentifier:identifierCopy];
    v9 = objc_opt_new();
    [(CRLanguageResourcesStack *)v8 setAvailableResources:v9];

    [(CRLanguageResourcesStack *)v8 setTotalResources:0];
    v10 = dispatch_semaphore_create(0);
    [(CRLanguageResourcesStack *)v8 setResourceCountSemaphore:v10];

    v11 = objc_opt_new();
    [(CRLanguageResourcesStack *)v8 setSubscribers:v11];

    [(CRLanguageResourcesStack *)v8 setResourceType:type];
    v12 = objc_opt_new();
    [(CRLanguageResourcesStack *)v8 setActiveSubscribers:v12];
  }

  return v8;
}

- (id)popResourceForSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  activeSubscribers = [(CRLanguageResourcesStack *)self activeSubscribers];
  objc_sync_enter(activeSubscribers);
  activeSubscribers2 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:subscriberCopy];
  [activeSubscribers2 addObject:v7];

  objc_sync_exit(activeSubscribers);
  availableResources = [(CRLanguageResourcesStack *)self availableResources];
  objc_sync_enter(availableResources);
  availableResources2 = [(CRLanguageResourcesStack *)self availableResources];
  if ([availableResources2 count])
  {
  }

  else
  {
    totalResources = [(CRLanguageResourcesStack *)self totalResources];

    if (totalResources <= 3)
    {
      v11 = [CRLanguageResources alloc];
      localeIdentifier = [(CRLanguageResourcesStack *)self localeIdentifier];
      lastObject = [(CRLanguageResources *)v11 initWithLanguageIdentifier:localeIdentifier type:[(CRLanguageResourcesStack *)self resourceType]];

      [(CRLanguageResourcesStack *)self setTotalResources:[(CRLanguageResourcesStack *)self totalResources]+ 1];
      goto LABEL_6;
    }
  }

  lastObject = 0;
LABEL_6:
  objc_sync_exit(availableResources);

  if (!lastObject)
  {
    resourceCountSemaphore = [(CRLanguageResourcesStack *)self resourceCountSemaphore];
    dispatch_semaphore_wait(resourceCountSemaphore, 0xFFFFFFFFFFFFFFFFLL);

    availableResources3 = [(CRLanguageResourcesStack *)self availableResources];
    objc_sync_enter(availableResources3);
    availableResources4 = [(CRLanguageResourcesStack *)self availableResources];
    lastObject = [availableResources4 lastObject];

    availableResources5 = [(CRLanguageResourcesStack *)self availableResources];
    [availableResources5 removeLastObject];

    objc_sync_exit(availableResources3);
  }

  v18 = lastObject;

  return v18;
}

- (void)pushResource:(id)resource
{
  resourceCopy = resource;
  availableResources = [(CRLanguageResourcesStack *)self availableResources];
  objc_sync_enter(availableResources);
  availableResources2 = [(CRLanguageResourcesStack *)self availableResources];
  [availableResources2 addObject:resourceCopy];

  resourceCountSemaphore = [(CRLanguageResourcesStack *)self resourceCountSemaphore];
  dispatch_semaphore_signal(resourceCountSemaphore);

  objc_sync_exit(availableResources);
}

- (void)addSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  subscribers = [(CRLanguageResourcesStack *)self subscribers];
  objc_sync_enter(subscribers);
  subscribers2 = [(CRLanguageResourcesStack *)self subscribers];
  v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:subscriberCopy];
  [subscribers2 addObject:v6];

  objc_sync_exit(subscribers);
  activeSubscribers = [(CRLanguageResourcesStack *)self activeSubscribers];
  objc_sync_enter(activeSubscribers);
  activeSubscribers2 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v9 = [MEMORY[0x1E696B098] valueWithNonretainedObject:subscriberCopy];
  [activeSubscribers2 addObject:v9];

  objc_sync_exit(activeSubscribers);
}

- (void)removeSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  subscribers = [(CRLanguageResourcesStack *)self subscribers];
  objc_sync_enter(subscribers);
  subscribers2 = [(CRLanguageResourcesStack *)self subscribers];
  v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:subscriberCopy];
  [subscribers2 removeObject:v6];

  objc_sync_exit(subscribers);
  activeSubscribers = [(CRLanguageResourcesStack *)self activeSubscribers];
  objc_sync_enter(activeSubscribers);
  activeSubscribers2 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v9 = [MEMORY[0x1E696B098] valueWithNonretainedObject:subscriberCopy];
  [activeSubscribers2 removeObject:v9];

  objc_sync_exit(activeSubscribers);
}

- (void)deactivateSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  activeSubscribers = [(CRLanguageResourcesStack *)self activeSubscribers];
  objc_sync_enter(activeSubscribers);
  activeSubscribers2 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v6 = [MEMORY[0x1E696B098] valueWithNonretainedObject:subscriberCopy];
  [activeSubscribers2 removeObject:v6];

  activeSubscribers3 = [(CRLanguageResourcesStack *)self activeSubscribers];
  v8 = [activeSubscribers3 count];

  if (!v8)
  {
    availableResources = [(CRLanguageResourcesStack *)self availableResources];
    objc_sync_enter(availableResources);
    availableResources2 = [(CRLanguageResourcesStack *)self availableResources];
    v11 = [availableResources2 count];

    if (v11 >= 2)
    {
      availableResources3 = [(CRLanguageResourcesStack *)self availableResources];
      availableResources4 = [(CRLanguageResourcesStack *)self availableResources];
      [availableResources3 removeObjectsInRange:{1, objc_msgSend(availableResources4, "count") - 1}];

      [(CRLanguageResourcesStack *)self setTotalResources:1];
      v14 = dispatch_semaphore_create(1);
      [(CRLanguageResourcesStack *)self setResourceCountSemaphore:v14];
    }

    objc_sync_exit(availableResources);
  }

  objc_sync_exit(activeSubscribers);
}

- (BOOL)hasSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  subscribers = [(CRLanguageResourcesStack *)self subscribers];
  objc_sync_enter(subscribers);
  subscribers2 = [(CRLanguageResourcesStack *)self subscribers];
  v7 = [MEMORY[0x1E696B098] valueWithNonretainedObject:subscriberCopy];
  v8 = [subscribers2 containsObject:v7];

  objc_sync_exit(subscribers);
  return v8;
}

- (int64_t)subscriberCount
{
  subscribers = [(CRLanguageResourcesStack *)self subscribers];
  v3 = [subscribers count];

  return v3;
}

@end
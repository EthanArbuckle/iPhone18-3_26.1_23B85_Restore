@interface RERelevanceEngineSubsystem
- (NSString)name;
- (RERelevanceEngine)relevanceEngine;
- (RERelevanceEngineSubsystem)initWithRelevanceEngine:(id)engine;
- (void)activityTracker:(id)tracker didBeginActivity:(id)activity;
- (void)activityTracker:(id)tracker didEndActivity:(id)activity;
- (void)beginActivity:(id)activity forObject:(id)object;
- (void)dealloc;
- (void)endActivity:(id)activity forObject:(id)object;
- (void)trackObject:(id)object;
- (void)withdrawObject:(id)object;
@end

@implementation RERelevanceEngineSubsystem

- (RERelevanceEngineSubsystem)initWithRelevanceEngine:(id)engine
{
  engineCopy = engine;
  v12.receiver = self;
  v12.super_class = RERelevanceEngineSubsystem;
  v5 = [(RERelevanceEngineSubsystem *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_relevanceEngine, engineCopy);
    subsystemQueue = [engineCopy subsystemQueue];
    relevanceEngineQueue = v6->_relevanceEngineQueue;
    v6->_relevanceEngineQueue = subsystemQueue;

    v6->_running = 0;
    v6->_lock._os_unfair_lock_opaque = 0;
    v9 = [[REActivityTracker alloc] initWithDelegate:v6];
    activityTracker = v6->_activityTracker;
    v6->_activityTracker = v9;

    [engineCopy _addSubsystem:v6];
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  [WeakRetained _removeSubsystem:self];

  relevanceEngineQueue = self->_relevanceEngineQueue;
  self->_relevanceEngineQueue = 0;

  v5.receiver = self;
  v5.super_class = RERelevanceEngineSubsystem;
  [(RERelevanceEngineSubsystem *)&v5 dealloc];
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)trackObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  [(REActivityTracker *)self->_activityTracker trackObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)withdrawObject:(id)object
{
  v17 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  v5 = 0;
  do
  {
    v6 = [(REActivityTracker *)self->_activityTracker outstandingActivitiesForObject:objectCopy];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v6;
    v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [(REActivityTracker *)self->_activityTracker endActivity:*(*(&v12 + 1) + 8 * v10++) forObject:objectCopy];
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  while ([v5 count]);
  [(REActivityTracker *)self->_activityTracker withdrawObject:objectCopy];
  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)beginActivity:(id)activity forObject:(id)object
{
  activityCopy = activity;
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  if (![(REActivityTracker *)self->_activityTracker trackingObject:objectCopy])
  {
    [(REActivityTracker *)self->_activityTracker trackObject:objectCopy];
  }

  [(REActivityTracker *)self->_activityTracker beginActivity:activityCopy forObject:objectCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)endActivity:(id)activity forObject:(id)object
{
  objectCopy = object;
  activityCopy = activity;
  os_unfair_lock_lock(&self->_lock);
  [(REActivityTracker *)self->_activityTracker endActivity:activityCopy forObject:objectCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)activityTracker:(id)tracker didBeginActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  [WeakRetained beginActivity:activityCopy forObject:self];
}

- (void)activityTracker:(id)tracker didEndActivity:(id)activity
{
  activityCopy = activity;
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  [WeakRetained endActivity:activityCopy forObject:self];
}

- (RERelevanceEngine)relevanceEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);

  return WeakRetained;
}

@end
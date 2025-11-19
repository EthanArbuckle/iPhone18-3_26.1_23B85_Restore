@interface RERelevanceEngineSubsystem
- (NSString)name;
- (RERelevanceEngine)relevanceEngine;
- (RERelevanceEngineSubsystem)initWithRelevanceEngine:(id)a3;
- (void)activityTracker:(id)a3 didBeginActivity:(id)a4;
- (void)activityTracker:(id)a3 didEndActivity:(id)a4;
- (void)beginActivity:(id)a3 forObject:(id)a4;
- (void)dealloc;
- (void)endActivity:(id)a3 forObject:(id)a4;
- (void)trackObject:(id)a3;
- (void)withdrawObject:(id)a3;
@end

@implementation RERelevanceEngineSubsystem

- (RERelevanceEngineSubsystem)initWithRelevanceEngine:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RERelevanceEngineSubsystem;
  v5 = [(RERelevanceEngineSubsystem *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_relevanceEngine, v4);
    v7 = [v4 subsystemQueue];
    relevanceEngineQueue = v6->_relevanceEngineQueue;
    v6->_relevanceEngineQueue = v7;

    v6->_running = 0;
    v6->_lock._os_unfair_lock_opaque = 0;
    v9 = [[REActivityTracker alloc] initWithDelegate:v6];
    activityTracker = v6->_activityTracker;
    v6->_activityTracker = v9;

    [v4 _addSubsystem:v6];
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

- (void)trackObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(REActivityTracker *)self->_activityTracker trackObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)withdrawObject:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = 0;
  do
  {
    v6 = [(REActivityTracker *)self->_activityTracker outstandingActivitiesForObject:v4];

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

          [(REActivityTracker *)self->_activityTracker endActivity:*(*(&v12 + 1) + 8 * v10++) forObject:v4];
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

  while ([v5 count]);
  [(REActivityTracker *)self->_activityTracker withdrawObject:v4];
  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)beginActivity:(id)a3 forObject:(id)a4
{
  v7 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (![(REActivityTracker *)self->_activityTracker trackingObject:v6])
  {
    [(REActivityTracker *)self->_activityTracker trackObject:v6];
  }

  [(REActivityTracker *)self->_activityTracker beginActivity:v7 forObject:v6];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)endActivity:(id)a3 forObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(REActivityTracker *)self->_activityTracker endActivity:v7 forObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)activityTracker:(id)a3 didBeginActivity:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  [WeakRetained beginActivity:v5 forObject:self];
}

- (void)activityTracker:(id)a3 didEndActivity:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);
  [WeakRetained endActivity:v5 forObject:self];
}

- (RERelevanceEngine)relevanceEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_relevanceEngine);

  return WeakRetained;
}

@end
@interface REActivityTracker
- (BOOL)trackingObject:(id)object;
- (NSSet)outstandingActivities;
- (REActivityTracker)initWithDelegate:(id)delegate;
- (REActivityTrackerDelegate)delegate;
- (id)outstandingActivitiesForObject:(id)object;
- (void)beginActivity:(id)activity forObject:(id)object;
- (void)endActivity:(id)activity forObject:(id)object;
- (void)trackObject:(id)object;
- (void)withdrawObject:(id)object;
@end

@implementation REActivityTracker

- (REActivityTracker)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = REActivityTracker;
  v5 = [(REActivityTracker *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    *&v6->delegateCallbacks = *&v6->delegateCallbacks & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&v6->delegateCallbacks = *&v6->delegateCallbacks & 0xFD | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    *&v6->delegateCallbacks = *&v6->delegateCallbacks & 0xFB | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 8;
    }

    else
    {
      v9 = 0;
    }

    *&v6->delegateCallbacks = *&v6->delegateCallbacks & 0xF7 | v9;
    v10 = [MEMORY[0x277CCA940] set];
    activities = v6->_activities;
    v6->_activities = v10;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activitiesByObject = v6->_activitiesByObject;
    v6->_activitiesByObject = weakToStrongObjectsMapTable;
  }

  return v6;
}

- (BOOL)trackingObject:(id)object
{
  v3 = [(NSMapTable *)self->_activitiesByObject objectForKey:object];
  v4 = v3 != 0;

  return v4;
}

- (void)trackObject:(id)object
{
  objectCopy = object;
  v4 = [(NSMapTable *)self->_activitiesByObject objectForKey:?];

  if (v4)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is already being tracked by activity tracker %@", v5, v6, v7, v8, v9, v10, objectCopy);
  }

  else
  {
    activitiesByObject = self->_activitiesByObject;
    v12 = [MEMORY[0x277CCA940] set];
    [(NSMapTable *)activitiesByObject setObject:v12 forKey:objectCopy];
  }
}

- (void)withdrawObject:(id)object
{
  v33 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = [(NSMapTable *)self->_activitiesByObject objectForKey:objectCopy];

  if (v5)
  {
    v12 = [(NSMapTable *)self->_activitiesByObject objectForKey:objectCopy];
    if ([v12 count])
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is still being tracked by activity tracker %@", v13, v14, v15, v16, v17, v18, objectCopy);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v19 = v12;
      v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v29;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v29 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v28 + 1) + 8 * i);
            v25 = [v19 countForObject:v24];
            if (v25)
            {
              v26 = v25;
              do
              {
                [(REActivityTracker *)self endActivity:v24 forObject:objectCopy];
                --v26;
              }

              while (v26);
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v21);
      }
    }

    [(NSMapTable *)self->_activitiesByObject removeObjectForKey:objectCopy];
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked by activity tracker %@", v6, v7, v8, v9, v10, v11, objectCopy);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)beginActivity:(id)activity forObject:(id)object
{
  activityCopy = activity;
  objectCopy = object;
  v13 = [(NSMapTable *)self->_activitiesByObject objectForKey:objectCopy];
  if (v13)
  {
    v14 = [(NSCountedSet *)self->_activities containsObject:activityCopy];
    [(NSCountedSet *)self->_activities addObject:activityCopy];
    v15 = [v13 containsObject:activityCopy];
    [v13 addObject:activityCopy];
    if (v14 & 1) == 0 && (*&self->delegateCallbacks)
    {
      delegate = [(REActivityTracker *)self delegate];
      [delegate activityTracker:self didBeginActivity:activityCopy];
    }

    if ((v15 & 1) == 0 && (*&self->delegateCallbacks & 4) != 0)
    {
      delegate2 = [(REActivityTracker *)self delegate];
      [delegate2 activityTracker:self didBeginActivity:activityCopy forObject:objectCopy];
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked by activity tracker %@", v7, v8, v9, v10, v11, v12, objectCopy);
  }
}

- (void)endActivity:(id)activity forObject:(id)object
{
  activityCopy = activity;
  objectCopy = object;
  v13 = [(NSMapTable *)self->_activitiesByObject objectForKey:objectCopy];
  if (v13)
  {
    if (([(NSCountedSet *)self->_activities containsObject:activityCopy]& 1) != 0)
    {
      if ([v13 containsObject:activityCopy])
      {
        [(NSCountedSet *)self->_activities removeObject:activityCopy];
        v26 = [(NSCountedSet *)self->_activities containsObject:activityCopy];
        [v13 removeObject:activityCopy];
        if (([v13 containsObject:activityCopy] & 1) == 0 && (*&self->delegateCallbacks & 8) != 0)
        {
          delegate = [(REActivityTracker *)self delegate];
          [delegate activityTracker:self didEndActivity:activityCopy forObject:objectCopy];
        }

        if ((v26 & 1) == 0 && (*&self->delegateCallbacks & 2) != 0)
        {
          delegate2 = [(REActivityTracker *)self delegate];
          [delegate2 activityTracker:self didEndActivity:activityCopy];
        }
      }

      else
      {
        RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked for activity %@ by activity tracker %@", v20, v21, v22, v23, v24, v25, objectCopy);
      }
    }

    else
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Activity %@ is not being tracked by activity tracker %@", v14, v15, v16, v17, v18, v19, activityCopy);
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked by activity tracker %@", v7, v8, v9, v10, v11, v12, objectCopy);
  }
}

- (NSSet)outstandingActivities
{
  v2 = [(NSCountedSet *)self->_activities copy];

  return v2;
}

- (id)outstandingActivitiesForObject:(id)object
{
  objectCopy = object;
  v5 = [(NSMapTable *)self->_activitiesByObject objectForKey:objectCopy];
  v12 = v5;
  if (v5)
  {
    v13 = [v5 copy];
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked by activity tracker %@", v6, v7, v8, v9, v10, v11, objectCopy);
    v13 = [MEMORY[0x277CBEB98] set];
  }

  v14 = v13;

  return v14;
}

- (REActivityTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
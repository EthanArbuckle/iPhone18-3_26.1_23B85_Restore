@interface REActivityTracker
- (BOOL)trackingObject:(id)a3;
- (NSSet)outstandingActivities;
- (REActivityTracker)initWithDelegate:(id)a3;
- (REActivityTrackerDelegate)delegate;
- (id)outstandingActivitiesForObject:(id)a3;
- (void)beginActivity:(id)a3 forObject:(id)a4;
- (void)endActivity:(id)a3 forObject:(id)a4;
- (void)trackObject:(id)a3;
- (void)withdrawObject:(id)a3;
@end

@implementation REActivityTracker

- (REActivityTracker)initWithDelegate:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = REActivityTracker;
  v5 = [(REActivityTracker *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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

    v12 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    activitiesByObject = v6->_activitiesByObject;
    v6->_activitiesByObject = v12;
  }

  return v6;
}

- (BOOL)trackingObject:(id)a3
{
  v3 = [(NSMapTable *)self->_activitiesByObject objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)trackObject:(id)a3
{
  v13 = a3;
  v4 = [(NSMapTable *)self->_activitiesByObject objectForKey:?];

  if (v4)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is already being tracked by activity tracker %@", v5, v6, v7, v8, v9, v10, v13);
  }

  else
  {
    activitiesByObject = self->_activitiesByObject;
    v12 = [MEMORY[0x277CCA940] set];
    [(NSMapTable *)activitiesByObject setObject:v12 forKey:v13];
  }
}

- (void)withdrawObject:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_activitiesByObject objectForKey:v4];

  if (v5)
  {
    v12 = [(NSMapTable *)self->_activitiesByObject objectForKey:v4];
    if ([v12 count])
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is still being tracked by activity tracker %@", v13, v14, v15, v16, v17, v18, v4);
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
                [(REActivityTracker *)self endActivity:v24 forObject:v4];
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

    [(NSMapTable *)self->_activitiesByObject removeObjectForKey:v4];
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked by activity tracker %@", v6, v7, v8, v9, v10, v11, v4);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)beginActivity:(id)a3 forObject:(id)a4
{
  v18 = a3;
  v6 = a4;
  v13 = [(NSMapTable *)self->_activitiesByObject objectForKey:v6];
  if (v13)
  {
    v14 = [(NSCountedSet *)self->_activities containsObject:v18];
    [(NSCountedSet *)self->_activities addObject:v18];
    v15 = [v13 containsObject:v18];
    [v13 addObject:v18];
    if (v14 & 1) == 0 && (*&self->delegateCallbacks)
    {
      v16 = [(REActivityTracker *)self delegate];
      [v16 activityTracker:self didBeginActivity:v18];
    }

    if ((v15 & 1) == 0 && (*&self->delegateCallbacks & 4) != 0)
    {
      v17 = [(REActivityTracker *)self delegate];
      [v17 activityTracker:self didBeginActivity:v18 forObject:v6];
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked by activity tracker %@", v7, v8, v9, v10, v11, v12, v6);
  }
}

- (void)endActivity:(id)a3 forObject:(id)a4
{
  v29 = a3;
  v6 = a4;
  v13 = [(NSMapTable *)self->_activitiesByObject objectForKey:v6];
  if (v13)
  {
    if (([(NSCountedSet *)self->_activities containsObject:v29]& 1) != 0)
    {
      if ([v13 containsObject:v29])
      {
        [(NSCountedSet *)self->_activities removeObject:v29];
        v26 = [(NSCountedSet *)self->_activities containsObject:v29];
        [v13 removeObject:v29];
        if (([v13 containsObject:v29] & 1) == 0 && (*&self->delegateCallbacks & 8) != 0)
        {
          v27 = [(REActivityTracker *)self delegate];
          [v27 activityTracker:self didEndActivity:v29 forObject:v6];
        }

        if ((v26 & 1) == 0 && (*&self->delegateCallbacks & 2) != 0)
        {
          v28 = [(REActivityTracker *)self delegate];
          [v28 activityTracker:self didEndActivity:v29];
        }
      }

      else
      {
        RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked for activity %@ by activity tracker %@", v20, v21, v22, v23, v24, v25, v6);
      }
    }

    else
    {
      RERaiseInternalException(*MEMORY[0x277CBE660], @"Activity %@ is not being tracked by activity tracker %@", v14, v15, v16, v17, v18, v19, v29);
    }
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked by activity tracker %@", v7, v8, v9, v10, v11, v12, v6);
  }
}

- (NSSet)outstandingActivities
{
  v2 = [(NSCountedSet *)self->_activities copy];

  return v2;
}

- (id)outstandingActivitiesForObject:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_activitiesByObject objectForKey:v4];
  v12 = v5;
  if (v5)
  {
    v13 = [v5 copy];
  }

  else
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Object %@ is not being tracked by activity tracker %@", v6, v7, v8, v9, v10, v11, v4);
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
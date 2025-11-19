@interface RERelevanceEnginePreferencesController
- (RERelevanceEnginePreferences)effectivePreferences;
- (RERelevanceEnginePreferencesController)initWithQueue:(id)a3;
- (void)_resetEffectivePreferences;
- (void)removePreferencesForObject:(id)a3;
- (void)setPreferences:(id)a3 forObject:(id)a4;
@end

@implementation RERelevanceEnginePreferencesController

- (RERelevanceEnginePreferencesController)initWithQueue:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = RERelevanceEnginePreferencesController;
  v6 = [(RERelevanceEnginePreferencesController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    preferences = v7->_preferences;
    v7->_preferences = v8;

    effectivePreferences = v7->_effectivePreferences;
    v7->_effectivePreferences = 0;
  }

  return v7;
}

- (RERelevanceEnginePreferences)effectivePreferences
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  effectivePreferences = self->_effectivePreferences;
  if (!effectivePreferences)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = self->_preferences;
    v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [(NSMapTable *)self->_preferences objectForKey:*(*(&v21 + 1) + 8 * i), v21];
          v12 = v11;
          if (v11)
          {
            if (v8)
            {
              v13 = [v11 disabledDataSourceIdentifiers];
              [v8 intersectSet:v13];
            }

            else
            {
              v14 = MEMORY[0x277CBEB58];
              v13 = [v11 disabledDataSourceIdentifiers];
              v8 = [v14 setWithSet:v13];
            }

            v7 |= [v12 mode];
          }
        }

        v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);

      if (v8)
      {
        v15 = objc_alloc_init(RERelevanceEnginePreferences);
        v16 = self->_effectivePreferences;
        self->_effectivePreferences = v15;

        [(RERelevanceEnginePreferences *)self->_effectivePreferences setDisabledDataSourceIdentifiers:v8];
        [(RERelevanceEnginePreferences *)self->_effectivePreferences setMode:v7];
LABEL_18:

        effectivePreferences = self->_effectivePreferences;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v17 = +[RERelevanceEnginePreferences defaultPreferences];
    v8 = self->_effectivePreferences;
    self->_effectivePreferences = v17;
    goto LABEL_18;
  }

LABEL_19:
  v18 = [(RERelevanceEnginePreferences *)effectivePreferences copy];
  os_unfair_lock_unlock(&self->_lock);
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)setPreferences:(id)a3 forObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v7 setDelegate:self];
  [(NSMapTable *)self->_preferences setObject:v7 forKey:v6];

  os_unfair_lock_unlock(&self->_lock);

  [(RERelevanceEnginePreferencesController *)self _resetEffectivePreferences];
}

- (void)removePreferencesForObject:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_preferences objectForKey:v4];
  [v5 setDelegate:0];
  [(NSMapTable *)self->_preferences removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
  [(RERelevanceEnginePreferencesController *)self _resetEffectivePreferences];
}

- (void)_resetEffectivePreferences
{
  os_unfair_lock_lock(&self->_lock);
  effectivePreferences = self->_effectivePreferences;
  self->_effectivePreferences = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"RERelevanceEnginePreferencesDidUpdate" object:self];
}

@end
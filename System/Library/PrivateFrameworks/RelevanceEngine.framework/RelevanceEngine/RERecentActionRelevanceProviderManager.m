@interface RERecentActionRelevanceProviderManager
+ (id)_features;
- (BOOL)_isHistoricProvider:(id)a3;
- (RERecentActionRelevanceProviderManager)initWithQueue:(id)a3;
- (float)_relevanceForHistoricProvider:(id)a3;
- (id)_valueForProvider:(id)a3 feature:(id)a4;
- (void)_addedProvider:(id)a3;
- (void)_handleActionPerformedNotifiction:(id)a3;
- (void)_handleSignificantTimeChange;
- (void)_prepareForUpdate;
- (void)_removeProvider:(id)a3;
- (void)_scheduleUpdatesForActionProvider:(id)a3;
- (void)dealloc;
- (void)pause;
- (void)resume;
@end

@implementation RERecentActionRelevanceProviderManager

- (RERecentActionRelevanceProviderManager)initWithQueue:(id)a3
{
  v8.receiver = self;
  v8.super_class = RERecentActionRelevanceProviderManager;
  v3 = [(RERelevanceProviderManager *)&v8 initWithQueue:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel__handleActionPerformedNotifiction_ name:@"RERecentActionManagerDidUpdateAction" object:0];

    v5 = [MEMORY[0x277CBEB38] dictionary];
    relevanceProviderMap = v3->_relevanceProviderMap;
    v3->_relevanceProviderMap = v5;
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RERecentActionRelevanceProviderManager;
  [(RERelevanceProviderManager *)&v4 dealloc];
}

+ (id)_features
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature recentSiriActionFeature];
  v7[0] = v2;
  v3 = +[REFeature siriActionPerformedCountFeature];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_valueForProvider:(id)a3 feature:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[REFeature recentSiriActionFeature];
  v8 = [v6 isEqual:v7];

  v9 = +[(RESingleton *)RERecentActionManager];
  v10 = [v5 recentAction];
  if (v8)
  {
    v11 = [v9 lastPerformedDateForAction:v10];

    if (v11)
    {
      v12 = [MEMORY[0x277CBEAA8] date];
      [v12 timeIntervalSinceReferenceDate];
      v14 = v13;
      [v11 timeIntervalSinceReferenceDate];
      v16 = v15;
      [v11 timeIntervalSinceReferenceDate];
      *&v14 = REPercentThroughRange(v14, v16, v17 + 21600.0);

      v18 = *&v14;
    }

    else
    {
      v18 = 0.0;
    }

    v20 = [REFeatureValue featureValueWithDouble:v18];
  }

  else
  {
    v19 = [v9 actionNumberOfTimesPeformedToday:v10];

    v20 = [REFeatureValue featureValueWithInt64:v19];
  }

  return v20;
}

- (BOOL)_isHistoricProvider:(id)a3
{
  v3 = a3;
  v4 = +[(RESingleton *)RERecentActionManager];
  v5 = [v3 recentAction];
  v6 = [v4 actionWasPerformedLocally:v5];

  if (v6)
  {
    v7 = +[(RESingleton *)RERecentActionManager];
    v8 = [v3 recentAction];
    v9 = [v7 lastPerformedDateForAction:v8];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 duration:900.0];
      v11 = [MEMORY[0x277CBEAA8] date];
      v12 = [v10 containsDate:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (float)_relevanceForHistoricProvider:(id)a3
{
  v4 = a3;
  v5 = +[(RESingleton *)RERecentActionManager];
  v6 = [v4 recentAction];

  v7 = [v5 lastPerformedDateForAction:v6];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [v8 dateByAddingUnit:16 value:1 toDate:v7 options:0];

    v10 = 1.0 - REPercentBetweenDates(self->_lastDateUpdate, v9);
  }

  else
  {
    v10 = 1.0;
  }

  return v10;
}

- (void)_handleActionPerformedNotifiction:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKeyedSubscript:@"RERecentActionManagerUpdatedActionKey"];

  v5 = v8;
  if (v8)
  {
    v6 = [(NSMutableDictionary *)self->_relevanceProviderMap objectForKeyedSubscript:?];
    if (v6)
    {
      v7 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
      [(RERelevanceProviderManager *)self _scheduleUpdate:v7];

      [(RERecentActionRelevanceProviderManager *)self _scheduleUpdatesForActionProvider:v6];
    }

    v5 = v8;
  }
}

- (void)_addedProvider:(id)a3
{
  v4 = a3;
  [(RERecentActionRelevanceProviderManager *)self _scheduleUpdatesForActionProvider:v4];
  relevanceProviderMap = self->_relevanceProviderMap;
  v6 = [v4 recentAction];
  [(NSMutableDictionary *)relevanceProviderMap setObject:v4 forKeyedSubscript:v6];
}

- (void)_removeProvider:(id)a3
{
  relevanceProviderMap = self->_relevanceProviderMap;
  v4 = [a3 recentAction];
  [(NSMutableDictionary *)relevanceProviderMap setObject:0 forKeyedSubscript:v4];
}

- (void)_scheduleUpdatesForActionProvider:(id)a3
{
  v15 = a3;
  v4 = +[(RESingleton *)RERecentActionManager];
  v5 = [v15 recentAction];
  v6 = [v4 lastPerformedDateForAction:v5];

  if (v6)
  {
    v7 = [v6 dateByAddingTimeInterval:900.0];
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [v8 laterDate:v7];
    v10 = [v9 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      v11 = [RERelevanceProviderManagerUpdate scheduledUpdateForAllProvidersAtDate:v7];
      [(RERelevanceProviderManager *)self _scheduleUpdate:v11];

      for (i = 1; i != 13; ++i)
      {
        v13 = [v6 dateByAddingTimeInterval:i * 1800.0];
        v14 = [RERelevanceProviderManagerUpdate scheduledUpdateForProvider:v15 atDate:v13];
        [(RERelevanceProviderManager *)self _scheduleUpdate:v14];
      }
    }
  }
}

- (void)resume
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = RESignificantTimeChangeNotification();
  [v4 addObserver:self selector:sel__handleSignificantTimeChange name:v3 object:0];
}

- (void)pause
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = RESignificantTimeChangeNotification();
  [v4 removeObserver:self name:v3 object:0];
}

- (void)_handleSignificantTimeChange
{
  [(RERelevanceProviderManager *)self _removeAllPendingUpdates];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __70__RERecentActionRelevanceProviderManager__handleSignificantTimeChange__block_invoke;
  v4[3] = &unk_2785F9C30;
  v4[4] = self;
  [(RERelevanceProviderManager *)self _enumerateProviders:v4];
  v3 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v3];
}

- (void)_prepareForUpdate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  lastDateUpdate = self->_lastDateUpdate;
  self->_lastDateUpdate = v3;

  MEMORY[0x2821F96F8](v3, lastDateUpdate);
}

@end
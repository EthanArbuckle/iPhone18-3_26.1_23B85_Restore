@interface RERecentActionRelevanceProviderManager
+ (id)_features;
- (BOOL)_isHistoricProvider:(id)provider;
- (RERecentActionRelevanceProviderManager)initWithQueue:(id)queue;
- (float)_relevanceForHistoricProvider:(id)provider;
- (id)_valueForProvider:(id)provider feature:(id)feature;
- (void)_addedProvider:(id)provider;
- (void)_handleActionPerformedNotifiction:(id)notifiction;
- (void)_handleSignificantTimeChange;
- (void)_prepareForUpdate;
- (void)_removeProvider:(id)provider;
- (void)_scheduleUpdatesForActionProvider:(id)provider;
- (void)dealloc;
- (void)pause;
- (void)resume;
@end

@implementation RERecentActionRelevanceProviderManager

- (RERecentActionRelevanceProviderManager)initWithQueue:(id)queue
{
  v8.receiver = self;
  v8.super_class = RERecentActionRelevanceProviderManager;
  v3 = [(RERelevanceProviderManager *)&v8 initWithQueue:queue];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleActionPerformedNotifiction_ name:@"RERecentActionManagerDidUpdateAction" object:0];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    relevanceProviderMap = v3->_relevanceProviderMap;
    v3->_relevanceProviderMap = dictionary;
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (id)_valueForProvider:(id)provider feature:(id)feature
{
  providerCopy = provider;
  featureCopy = feature;
  v7 = +[REFeature recentSiriActionFeature];
  v8 = [featureCopy isEqual:v7];

  v9 = +[(RESingleton *)RERecentActionManager];
  recentAction = [providerCopy recentAction];
  if (v8)
  {
    v11 = [v9 lastPerformedDateForAction:recentAction];

    if (v11)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceReferenceDate];
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
    v19 = [v9 actionNumberOfTimesPeformedToday:recentAction];

    v20 = [REFeatureValue featureValueWithInt64:v19];
  }

  return v20;
}

- (BOOL)_isHistoricProvider:(id)provider
{
  providerCopy = provider;
  v4 = +[(RESingleton *)RERecentActionManager];
  recentAction = [providerCopy recentAction];
  v6 = [v4 actionWasPerformedLocally:recentAction];

  if (v6)
  {
    v7 = +[(RESingleton *)RERecentActionManager];
    recentAction2 = [providerCopy recentAction];
    v9 = [v7 lastPerformedDateForAction:recentAction2];

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 duration:900.0];
      date = [MEMORY[0x277CBEAA8] date];
      v12 = [v10 containsDate:date];
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

- (float)_relevanceForHistoricProvider:(id)provider
{
  providerCopy = provider;
  v5 = +[(RESingleton *)RERecentActionManager];
  recentAction = [providerCopy recentAction];

  v7 = [v5 lastPerformedDateForAction:recentAction];

  if (v7)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v7 options:0];

    v10 = 1.0 - REPercentBetweenDates(self->_lastDateUpdate, v9);
  }

  else
  {
    v10 = 1.0;
  }

  return v10;
}

- (void)_handleActionPerformedNotifiction:(id)notifiction
{
  userInfo = [notifiction userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"RERecentActionManagerUpdatedActionKey"];

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

- (void)_addedProvider:(id)provider
{
  providerCopy = provider;
  [(RERecentActionRelevanceProviderManager *)self _scheduleUpdatesForActionProvider:providerCopy];
  relevanceProviderMap = self->_relevanceProviderMap;
  recentAction = [providerCopy recentAction];
  [(NSMutableDictionary *)relevanceProviderMap setObject:providerCopy forKeyedSubscript:recentAction];
}

- (void)_removeProvider:(id)provider
{
  relevanceProviderMap = self->_relevanceProviderMap;
  recentAction = [provider recentAction];
  [(NSMutableDictionary *)relevanceProviderMap setObject:0 forKeyedSubscript:recentAction];
}

- (void)_scheduleUpdatesForActionProvider:(id)provider
{
  providerCopy = provider;
  v4 = +[(RESingleton *)RERecentActionManager];
  recentAction = [providerCopy recentAction];
  v6 = [v4 lastPerformedDateForAction:recentAction];

  if (v6)
  {
    v7 = [v6 dateByAddingTimeInterval:900.0];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = [date laterDate:v7];
    v10 = [v9 isEqual:date];

    if ((v10 & 1) == 0)
    {
      v11 = [RERelevanceProviderManagerUpdate scheduledUpdateForAllProvidersAtDate:v7];
      [(RERelevanceProviderManager *)self _scheduleUpdate:v11];

      for (i = 1; i != 13; ++i)
      {
        v13 = [v6 dateByAddingTimeInterval:i * 1800.0];
        v14 = [RERelevanceProviderManagerUpdate scheduledUpdateForProvider:providerCopy atDate:v13];
        [(RERelevanceProviderManager *)self _scheduleUpdate:v14];
      }
    }
  }
}

- (void)resume
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = RESignificantTimeChangeNotification();
  [defaultCenter addObserver:self selector:sel__handleSignificantTimeChange name:v3 object:0];
}

- (void)pause
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = RESignificantTimeChangeNotification();
  [defaultCenter removeObserver:self name:v3 object:0];
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
  date = [MEMORY[0x277CBEAA8] date];
  lastDateUpdate = self->_lastDateUpdate;
  self->_lastDateUpdate = date;

  MEMORY[0x2821F96F8](date, lastDateUpdate);
}

@end
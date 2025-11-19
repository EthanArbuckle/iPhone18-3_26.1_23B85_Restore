@interface RESessionRelevanceProviderManager
+ (id)_features;
- (float)_relevanceForProvider:(id)a3;
- (void)_handleSignificantTimeChange;
- (void)_prepareForUpdate;
- (void)_scheduleUpdatesForSessionProvider:(id)a3;
- (void)pause;
- (void)resume;
@end

@implementation RESessionRelevanceProviderManager

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature sessionFeature];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (float)_relevanceForProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  if (v5)
  {
  }

  else
  {
    v6 = [v4 endDate];

    if (!v6)
    {
      v15 = 1.0;
      goto LABEL_19;
    }
  }

  v7 = [v4 startDate];
  if (v7)
  {
  }

  else
  {
    v16 = [v4 endDate];

    if (v16)
    {
      v14 = [v4 endDate];
      v17 = [v14 earlierDate:self->_lastDateUpdate];
LABEL_14:
      if (v17 == self->_lastDateUpdate)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 0.0;
      }

      goto LABEL_18;
    }
  }

  v8 = [v4 startDate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 endDate];

    if (!v10)
    {
      v14 = [v4 startDate];
      v17 = [v14 laterDate:self->_lastDateUpdate];
      goto LABEL_14;
    }
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [v4 startDate];
  v13 = [v4 endDate];
  v14 = [v11 initWithStartDate:v12 endDate:v13];

  if ([v14 containsDate:self->_lastDateUpdate])
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

LABEL_18:

LABEL_19:
  return v15;
}

- (void)_scheduleUpdatesForSessionProvider:(id)a3
{
  v10 = a3;
  v4 = [v10 startDate];

  if (v4)
  {
    v5 = [v10 startDate];
    v6 = [RERelevanceProviderManagerUpdate scheduledUpdateForProvider:v10 atDate:v5];
    [(RERelevanceProviderManager *)self _scheduleUpdate:v6];
  }

  v7 = [v10 endDate];

  if (v7)
  {
    v8 = [v10 endDate];
    v9 = [RERelevanceProviderManagerUpdate scheduledUpdateForProvider:v10 atDate:v8];
    [(RERelevanceProviderManager *)self _scheduleUpdate:v9];
  }
}

- (void)_prepareForUpdate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  lastDateUpdate = self->_lastDateUpdate;
  self->_lastDateUpdate = v3;

  MEMORY[0x2821F96F8](v3, lastDateUpdate);
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
  v4[2] = __65__RESessionRelevanceProviderManager__handleSignificantTimeChange__block_invoke;
  v4[3] = &unk_2785F9C30;
  v4[4] = self;
  [(RERelevanceProviderManager *)self _enumerateProviders:v4];
  v3 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v3];
}

@end
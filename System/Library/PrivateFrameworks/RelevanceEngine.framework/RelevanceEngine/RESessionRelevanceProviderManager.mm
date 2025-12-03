@interface RESessionRelevanceProviderManager
+ (id)_features;
- (float)_relevanceForProvider:(id)provider;
- (void)_handleSignificantTimeChange;
- (void)_prepareForUpdate;
- (void)_scheduleUpdatesForSessionProvider:(id)provider;
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

- (float)_relevanceForProvider:(id)provider
{
  providerCopy = provider;
  startDate = [providerCopy startDate];
  if (startDate)
  {
  }

  else
  {
    endDate = [providerCopy endDate];

    if (!endDate)
    {
      v15 = 1.0;
      goto LABEL_19;
    }
  }

  startDate2 = [providerCopy startDate];
  if (startDate2)
  {
  }

  else
  {
    endDate2 = [providerCopy endDate];

    if (endDate2)
    {
      endDate3 = [providerCopy endDate];
      v17 = [endDate3 earlierDate:self->_lastDateUpdate];
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

  startDate3 = [providerCopy startDate];
  if (startDate3)
  {
    v9 = startDate3;
    endDate4 = [providerCopy endDate];

    if (!endDate4)
    {
      endDate3 = [providerCopy startDate];
      v17 = [endDate3 laterDate:self->_lastDateUpdate];
      goto LABEL_14;
    }
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  startDate4 = [providerCopy startDate];
  endDate5 = [providerCopy endDate];
  endDate3 = [v11 initWithStartDate:startDate4 endDate:endDate5];

  if ([endDate3 containsDate:self->_lastDateUpdate])
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

- (void)_scheduleUpdatesForSessionProvider:(id)provider
{
  providerCopy = provider;
  startDate = [providerCopy startDate];

  if (startDate)
  {
    startDate2 = [providerCopy startDate];
    v6 = [RERelevanceProviderManagerUpdate scheduledUpdateForProvider:providerCopy atDate:startDate2];
    [(RERelevanceProviderManager *)self _scheduleUpdate:v6];
  }

  endDate = [providerCopy endDate];

  if (endDate)
  {
    endDate2 = [providerCopy endDate];
    v9 = [RERelevanceProviderManagerUpdate scheduledUpdateForProvider:providerCopy atDate:endDate2];
    [(RERelevanceProviderManager *)self _scheduleUpdate:v9];
  }
}

- (void)_prepareForUpdate
{
  date = [MEMORY[0x277CBEAA8] date];
  lastDateUpdate = self->_lastDateUpdate;
  self->_lastDateUpdate = date;

  MEMORY[0x2821F96F8](date, lastDateUpdate);
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
  v4[2] = __65__RESessionRelevanceProviderManager__handleSignificantTimeChange__block_invoke;
  v4[3] = &unk_2785F9C30;
  v4[4] = self;
  [(RERelevanceProviderManager *)self _enumerateProviders:v4];
  v3 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v3];
}

@end
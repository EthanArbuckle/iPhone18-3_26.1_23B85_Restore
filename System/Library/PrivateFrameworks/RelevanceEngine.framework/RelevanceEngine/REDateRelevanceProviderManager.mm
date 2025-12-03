@interface REDateRelevanceProviderManager
+ (id)_dependencyClasses;
+ (id)_features;
- (BOOL)_isHistoricProvider:(id)provider;
- (id)_valueForHistoricProvider:(id)provider feature:(id)feature;
- (id)_valueForProvider:(id)provider context:(id)context feature:(id)feature;
- (void)_handleSignificantTimeChange;
- (void)_prepareForUpdate;
- (void)_scheduleUpdateForDate:(id)date;
- (void)_scheduleUpdatesForDateProvider:(id)provider;
- (void)pause;
- (void)resume;
@end

@implementation REDateRelevanceProviderManager

+ (id)_features
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature dateFeature];
  v3 = +[REFeature dateInformationalFeature];
  v8[1] = v3;
  v4 = +[REFeature dateOccursTodayFeature];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)_dependencyClasses
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:3];
  v4 = [v2 setWithArray:{v3, v7, v8}];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_valueForProvider:(id)provider context:(id)context feature:(id)feature
{
  v59 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  featureCopy = feature;
  v10 = providerCopy;
  v11 = [context attributeForKey:@"RETrainingContextDateKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CCA970]);
      v13 = REStartOfDayForDate(v11);
      v14 = REEndOfDayForDate(v11);
      v15 = [v12 initWithStartDate:v13 endDate:v14];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = self->_lastDateUpdate;
  v15 = self->_todayInterval;
LABEL_6:
  v16 = RELogForDomain(3);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    name = [featureCopy name];
    initialRelevanceDate = [v10 initialRelevanceDate];
    irrelevantDate = [v10 irrelevantDate];
    startDate = [v10 startDate];
    endDate = [v10 endDate];
    v47 = 138413570;
    v48 = name;
    v49 = 2112;
    v50 = initialRelevanceDate;
    v51 = 2112;
    v52 = irrelevantDate;
    v53 = 2112;
    v54 = startDate;
    v55 = 2112;
    v56 = endDate;
    v57 = 2112;
    v58 = v11;
    _os_log_debug_impl(&dword_22859F000, v16, OS_LOG_TYPE_DEBUG, "Calculating value for feature: %@ with provider initialRelevanceDate: %@, irrelevantDate: %@, startDate: %@, endDate: %@ at currentDate: %@", &v47, 0x3Eu);
  }

  v17 = +[REFeature dateOccursTodayFeature];
  v18 = [featureCopy isEqual:v17];

  if (v18)
  {
    interval = [v10 interval];
    v20 = [interval intersectionWithDateInterval:v15];

    v21 = RELogForDomain(3);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [REDateRelevanceProviderManager _valueForProvider:context:feature:];
    }

    v22 = [REFeatureValue featureValueWithBool:v20 != 0];
LABEL_21:
    v27 = v22;
    goto LABEL_36;
  }

  v23 = +[REFeature dateFeature];
  if ([featureCopy isEqual:v23] && objc_msgSend(v10, "priority") != 1)
  {

    goto LABEL_23;
  }

  v24 = +[REFeature dateInformationalFeature];
  if (([featureCopy isEqual:v24] & 1) == 0)
  {

    goto LABEL_18;
  }

  priority = [v10 priority];

  if (priority != 1)
  {
LABEL_18:
    v26 = RELogForDomain(3);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [REDateRelevanceProviderManager _valueForProvider:context:feature:];
    }

    v22 = [REFeatureValue featureValueWithDouble:0.0];
    goto LABEL_21;
  }

LABEL_23:
  initialRelevanceDate2 = [v10 initialRelevanceDate];
  interval2 = [v10 interval];
  endDate2 = [interval2 endDate];

  v31 = 0.0;
  if (initialRelevanceDate2)
  {
    if (endDate2)
    {
      v32 = [initialRelevanceDate2 laterDate:endDate2];

      if (v32 == endDate2)
      {
        v33 = RELogForDomain(3);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [REDateRelevanceProviderManager _valueForProvider:context:feature:];
        }

        v34 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:initialRelevanceDate2 endDate:endDate2];
        if ([v34 containsDate:v11])
        {
          v35 = RELogForDomain(3);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [REDateRelevanceProviderManager _valueForProvider:context:feature:];
          }

          interval3 = [v10 interval];
          startDate2 = [interval3 startDate];
          v38 = REPercentBetweenDates(v11, startDate2);

          v31 = v38;
        }
      }
    }
  }

  v39 = RELogForDomain(3);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    [REDateRelevanceProviderManager _valueForProvider:context:feature:];
  }

  v27 = [REFeatureValue featureValueWithDouble:v31];

LABEL_36:
  v40 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)_isHistoricProvider:(id)provider
{
  irrelevantDate = [provider irrelevantDate];
  LOBYTE(self) = [irrelevantDate compare:self->_lastDateUpdate] == -1;

  return self;
}

- (id)_valueForHistoricProvider:(id)provider feature:(id)feature
{
  v58 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  featureCopy = feature;
  v8 = providerCopy;
  irrelevantDate = [v8 irrelevantDate];
  interval = [v8 interval];
  endDate = [interval endDate];

  [v8 recentDuration];
  v43 = endDate;
  v12 = [endDate dateByAddingTimeInterval:?];
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:irrelevantDate endDate:v12];
  v14 = RELogForDomain(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    name = [featureCopy name];
    initialRelevanceDate = [v8 initialRelevanceDate];
    irrelevantDate2 = [v8 irrelevantDate];
    startDate = [v8 startDate];
    [v8 endDate];
    v38 = v41 = v13;
    [v8 recentDuration];
    lastDateUpdate = self->_lastDateUpdate;
    *buf = 138413826;
    v45 = name;
    v46 = 2112;
    v47 = initialRelevanceDate;
    v48 = 2112;
    v49 = irrelevantDate2;
    v50 = 2112;
    v51 = startDate;
    v52 = 2112;
    v53 = v38;
    v54 = 2048;
    v55 = v40;
    v56 = 2112;
    v57 = lastDateUpdate;
    _os_log_debug_impl(&dword_22859F000, v14, OS_LOG_TYPE_DEBUG, "Calculating value for feature: %@ with historic provider initialRelevanceDate: %@, irrelevantDate: %@, startDate: %@, endDate: %@, recentDurationInSeconds: %f at lastUpdateDate: %@", buf, 0x48u);

    v13 = v41;
  }

  v15 = +[REFeature dateFeature];
  if ([featureCopy isEqual:v15])
  {

LABEL_6:
    v19 = v13;
    v20 = [v13 containsDate:self->_lastDateUpdate];
    v21 = RELogForDomain(3);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
    if (v20)
    {
      if (v22)
      {
        [REDateRelevanceProviderManager _valueForProvider:context:feature:];
      }

      currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
      interval2 = [v8 interval];
      startDate2 = [interval2 startDate];
      v26 = [currentCalendar dateByAddingUnit:16 value:1 toDate:startDate2 options:0];

      v27 = 1.0 - REPercentBetweenDates(self->_lastDateUpdate, v26);
      v28 = v27;
    }

    else
    {
      if (v22)
      {
        [REDateRelevanceProviderManager _valueForHistoricProvider:feature:];
      }

      v28 = 0.0;
    }

    v29 = RELogForDomain(3);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [REDateRelevanceProviderManager _valueForProvider:context:feature:];
    }

    v30 = [REFeatureValue featureValueWithDouble:v28];
    v13 = v19;
    goto LABEL_19;
  }

  +[REFeature dateInformationalFeature];
  v17 = v16 = v13;
  v18 = [featureCopy isEqual:v17];

  v13 = v16;
  if (v18)
  {
    goto LABEL_6;
  }

  v31 = [v16 intersectionWithDateInterval:self->_todayInterval];

  v32 = RELogForDomain(3);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [REDateRelevanceProviderManager _valueForProvider:context:feature:];
  }

  v30 = [REFeatureValue featureValueWithBool:v31 != 0];
LABEL_19:

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)_scheduleUpdatesForDateProvider:(id)provider
{
  providerCopy = provider;
  interval = [providerCopy interval];
  startDate = [interval startDate];
  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:startDate];

  interval2 = [providerCopy interval];
  endDate = [interval2 endDate];
  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:endDate];

  irrelevantDate = [providerCopy irrelevantDate];
  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:irrelevantDate];

  initialRelevanceDate = [providerCopy initialRelevanceDate];
  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:initialRelevanceDate];

  interval3 = [providerCopy interval];
  endDate2 = [interval3 endDate];
  [providerCopy recentDuration];
  v13 = [endDate2 dateByAddingTimeInterval:?];

  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:v13];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__REDateRelevanceProviderManager__scheduleUpdatesForDateProvider___block_invoke;
  v15[3] = &unk_2785F9C08;
  v16 = providerCopy;
  selfCopy = self;
  v14 = providerCopy;
  [(RERelevanceProviderManager *)self enumerateInflectionFeatureValues:v15];
}

void __66__REDateRelevanceProviderManager__scheduleUpdatesForDateProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  v6 = +[REFeature dateFeature];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v12 type];

    if (v8 != 2)
    {
      goto LABEL_5;
    }

    v9 = [*(a1 + 32) interval];
    v10 = [v9 startDate];
    [v12 doubleValue];
    *&v11 = v11;
    v6 = REDateFromPercentFromDate(v10, *&v11);

    [*(a1 + 40) _scheduleUpdateForDate:v6];
  }

LABEL_5:
}

- (void)_scheduleUpdateForDate:(id)date
{
  v4 = [RERelevanceProviderManagerUpdate scheduledUpdateForAllProvidersAtDate:date];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v4];
}

- (void)_prepareForUpdate
{
  date = [MEMORY[0x277CBEAA8] date];
  lastDateUpdate = self->_lastDateUpdate;
  self->_lastDateUpdate = date;

  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v9 = REStartOfDayForDate(self->_lastDateUpdate);
  v6 = REEndOfDayForDate(self->_lastDateUpdate);
  v7 = [v5 initWithStartDate:v9 endDate:v6];
  todayInterval = self->_todayInterval;
  self->_todayInterval = v7;
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
  v4[2] = __62__REDateRelevanceProviderManager__handleSignificantTimeChange__block_invoke;
  v4[3] = &unk_2785F9C30;
  v4[4] = self;
  [(RERelevanceProviderManager *)self _enumerateProviders:v4];
  v3 = +[RERelevanceProviderManagerUpdate immediateUpdateForAllProviders];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v3];
}

- (void)_valueForProvider:context:feature:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_valueForProvider:context:feature:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_valueForProvider:context:feature:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_valueForProvider:context:feature:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_valueForHistoricProvider:feature:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
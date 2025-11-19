@interface REDateRelevanceProviderManager
+ (id)_dependencyClasses;
+ (id)_features;
- (BOOL)_isHistoricProvider:(id)a3;
- (id)_valueForHistoricProvider:(id)a3 feature:(id)a4;
- (id)_valueForProvider:(id)a3 context:(id)a4 feature:(id)a5;
- (void)_handleSignificantTimeChange;
- (void)_prepareForUpdate;
- (void)_scheduleUpdateForDate:(id)a3;
- (void)_scheduleUpdatesForDateProvider:(id)a3;
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

- (id)_valueForProvider:(id)a3 context:(id)a4 feature:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = v8;
  v11 = [a4 attributeForKey:@"RETrainingContextDateKey"];
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
    v42 = [v9 name];
    v43 = [v10 initialRelevanceDate];
    v44 = [v10 irrelevantDate];
    v45 = [v10 startDate];
    v46 = [v10 endDate];
    v47 = 138413570;
    v48 = v42;
    v49 = 2112;
    v50 = v43;
    v51 = 2112;
    v52 = v44;
    v53 = 2112;
    v54 = v45;
    v55 = 2112;
    v56 = v46;
    v57 = 2112;
    v58 = v11;
    _os_log_debug_impl(&dword_22859F000, v16, OS_LOG_TYPE_DEBUG, "Calculating value for feature: %@ with provider initialRelevanceDate: %@, irrelevantDate: %@, startDate: %@, endDate: %@ at currentDate: %@", &v47, 0x3Eu);
  }

  v17 = +[REFeature dateOccursTodayFeature];
  v18 = [v9 isEqual:v17];

  if (v18)
  {
    v19 = [v10 interval];
    v20 = [v19 intersectionWithDateInterval:v15];

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
  if ([v9 isEqual:v23] && objc_msgSend(v10, "priority") != 1)
  {

    goto LABEL_23;
  }

  v24 = +[REFeature dateInformationalFeature];
  if (([v9 isEqual:v24] & 1) == 0)
  {

    goto LABEL_18;
  }

  v25 = [v10 priority];

  if (v25 != 1)
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
  v28 = [v10 initialRelevanceDate];
  v29 = [v10 interval];
  v30 = [v29 endDate];

  v31 = 0.0;
  if (v28)
  {
    if (v30)
    {
      v32 = [v28 laterDate:v30];

      if (v32 == v30)
      {
        v33 = RELogForDomain(3);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [REDateRelevanceProviderManager _valueForProvider:context:feature:];
        }

        v34 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v28 endDate:v30];
        if ([v34 containsDate:v11])
        {
          v35 = RELogForDomain(3);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [REDateRelevanceProviderManager _valueForProvider:context:feature:];
          }

          v36 = [v10 interval];
          v37 = [v36 startDate];
          v38 = REPercentBetweenDates(v11, v37);

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

- (BOOL)_isHistoricProvider:(id)a3
{
  v4 = [a3 irrelevantDate];
  LOBYTE(self) = [v4 compare:self->_lastDateUpdate] == -1;

  return self;
}

- (id)_valueForHistoricProvider:(id)a3 feature:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 irrelevantDate];
  v10 = [v8 interval];
  v11 = [v10 endDate];

  [v8 recentDuration];
  v43 = v11;
  v12 = [v11 dateByAddingTimeInterval:?];
  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:v12];
  v14 = RELogForDomain(3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v42 = [v7 name];
    v35 = [v8 initialRelevanceDate];
    v36 = [v8 irrelevantDate];
    v37 = [v8 startDate];
    [v8 endDate];
    v38 = v41 = v13;
    [v8 recentDuration];
    lastDateUpdate = self->_lastDateUpdate;
    *buf = 138413826;
    v45 = v42;
    v46 = 2112;
    v47 = v35;
    v48 = 2112;
    v49 = v36;
    v50 = 2112;
    v51 = v37;
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
  if ([v7 isEqual:v15])
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

      v23 = [MEMORY[0x277CBEA80] currentCalendar];
      v24 = [v8 interval];
      v25 = [v24 startDate];
      v26 = [v23 dateByAddingUnit:16 value:1 toDate:v25 options:0];

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
  v18 = [v7 isEqual:v17];

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

- (void)_scheduleUpdatesForDateProvider:(id)a3
{
  v4 = a3;
  v5 = [v4 interval];
  v6 = [v5 startDate];
  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:v6];

  v7 = [v4 interval];
  v8 = [v7 endDate];
  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:v8];

  v9 = [v4 irrelevantDate];
  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:v9];

  v10 = [v4 initialRelevanceDate];
  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:v10];

  v11 = [v4 interval];
  v12 = [v11 endDate];
  [v4 recentDuration];
  v13 = [v12 dateByAddingTimeInterval:?];

  [(REDateRelevanceProviderManager *)self _scheduleUpdateForDate:v13];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__REDateRelevanceProviderManager__scheduleUpdatesForDateProvider___block_invoke;
  v15[3] = &unk_2785F9C08;
  v16 = v4;
  v17 = self;
  v14 = v4;
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

- (void)_scheduleUpdateForDate:(id)a3
{
  v4 = [RERelevanceProviderManagerUpdate scheduledUpdateForAllProvidersAtDate:a3];
  [(RERelevanceProviderManager *)self _scheduleUpdate:v4];
}

- (void)_prepareForUpdate
{
  v3 = [MEMORY[0x277CBEAA8] date];
  lastDateUpdate = self->_lastDateUpdate;
  self->_lastDateUpdate = v3;

  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v9 = REStartOfDayForDate(self->_lastDateUpdate);
  v6 = REEndOfDayForDate(self->_lastDateUpdate);
  v7 = [v5 initWithStartDate:v9 endDate:v6];
  todayInterval = self->_todayInterval;
  self->_todayInterval = v7;
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
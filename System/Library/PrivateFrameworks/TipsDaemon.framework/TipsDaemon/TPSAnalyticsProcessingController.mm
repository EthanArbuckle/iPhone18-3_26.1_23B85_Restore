@interface TPSAnalyticsProcessingController
- (TPSAnalyticsProcessingController)initWithAllTipStatus:(id)status contextualInfoMap:(id)map eventHistoryMap:(id)historyMap experiment:(id)experiment;
- (TPSAnalyticsProcessingController)initWithAllTipStatus:(id)status contextualInfoMap:(id)map eventHistoryMap:(id)historyMap experiment:(id)experiment processors:(id)processors;
- (void)processAnalytics;
- (void)resetAnalytics;
@end

@implementation TPSAnalyticsProcessingController

- (TPSAnalyticsProcessingController)initWithAllTipStatus:(id)status contextualInfoMap:(id)map eventHistoryMap:(id)historyMap experiment:(id)experiment
{
  v20[2] = *MEMORY[0x277D85DE8];
  experimentCopy = experiment;
  historyMapCopy = historyMap;
  mapCopy = map;
  statusCopy = status;
  v14 = objc_alloc_init(TPSAnalyticsUsageEventsProcessor);
  [(TPSAnalyticsProcessor *)v14 setDataSource:self];
  v15 = objc_alloc_init(TPSAnalyticsHistoricTipsDataProcessor);
  [(TPSAnalyticsProcessor *)v15 setDataSource:self];
  v20[0] = v14;
  v20[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v17 = [(TPSAnalyticsProcessingController *)self initWithAllTipStatus:statusCopy contextualInfoMap:mapCopy eventHistoryMap:historyMapCopy experiment:experimentCopy processors:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (TPSAnalyticsProcessingController)initWithAllTipStatus:(id)status contextualInfoMap:(id)map eventHistoryMap:(id)historyMap experiment:(id)experiment processors:(id)processors
{
  statusCopy = status;
  mapCopy = map;
  historyMapCopy = historyMap;
  experimentCopy = experiment;
  processorsCopy = processors;
  v21.receiver = self;
  v21.super_class = TPSAnalyticsProcessingController;
  v17 = [(TPSAnalyticsProcessingController *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_processors, processors);
    objc_storeStrong(&v18->_allTipStatus, status);
    objc_storeStrong(&v18->_contextualInfoMap, map);
    objc_storeStrong(&v18->_eventHistoryMap, historyMap);
    objc_storeStrong(&v18->_experiment, experiment);
  }

  return v18;
}

- (void)processAnalytics
{
  v23 = *MEMORY[0x277D85DE8];
  analytics = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(analytics, OS_LOG_TYPE_DEFAULT))
  {
    processors = self->_processors;
    *buf = 138412290;
    v22 = processors;
    _os_log_impl(&dword_232D6F000, analytics, OS_LOG_TYPE_DEFAULT, "Processing analytics: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_processors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        date = [MEMORY[0x277CBEAA8] date];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __52__TPSAnalyticsProcessingController_processAnalytics__block_invoke;
        v14[3] = &unk_2789B08F8;
        v14[4] = v10;
        v15 = date;
        v12 = date;
        [v10 processAnalytics:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)resetAnalytics
{
  v18 = *MEMORY[0x277D85DE8];
  analytics = [MEMORY[0x277D71778] analytics];
  if (os_log_type_enabled(analytics, OS_LOG_TYPE_DEFAULT))
  {
    processors = self->_processors;
    *buf = 138412290;
    v17 = processors;
    _os_log_impl(&dword_232D6F000, analytics, OS_LOG_TYPE_DEFAULT, "Resetting analytics: %@", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_processors;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) resetAnalytics];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end
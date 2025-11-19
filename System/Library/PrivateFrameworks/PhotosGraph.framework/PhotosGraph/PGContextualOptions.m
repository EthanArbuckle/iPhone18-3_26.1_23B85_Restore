@interface PGContextualOptions
- (PGContextualOptions)initWithGraph:(id)a3 photoLibrary:(id)a4 curationManager:(id)a5 options:(id)a6 loggingConnection:(id)a7;
- (id)availableContextualRules;
@end

@implementation PGContextualOptions

- (id)availableContextualRules
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_contextualRules;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 canProvideContextualKeyAssetsWithOptions:{self, v12}])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (PGContextualOptions)initWithGraph:(id)a3 photoLibrary:(id)a4 curationManager:(id)a5 options:(id)a6 loggingConnection:(id)a7
{
  v36[4] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v35.receiver = self;
  v35.super_class = PGContextualOptions;
  v17 = [(PGContextualOptions *)&v35 init];
  if (v17)
  {
    v18 = [[PGBirthdayContextualRule alloc] initWithGraph:v12 photoLibrary:v13 curationManager:v14 loggingConnection:v16];
    v36[0] = v18;
    v19 = [[PGHolidayContextualRule alloc] initWithGraph:v12 photoLibrary:v13 loggingConnection:v16];
    v36[1] = v19;
    v20 = [[PGPublicEventContextualRule alloc] initWithGraph:v12 photoLibrary:v13 loggingConnection:v16];
    v36[2] = v20;
    v21 = objc_alloc_init(PGOnThisDayContextualRule);
    v36[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    contextualRules = v17->_contextualRules;
    v17->_contextualRules = v22;

    v24 = [MEMORY[0x277CBEA80] currentCalendar];
    v25 = [v15 objectForKeyedSubscript:*MEMORY[0x277D3AE28]];
    if (v25)
    {
      objc_storeStrong(&v17->_localToday, v25);
      v26 = [v24 timeZone];
    }

    else
    {
      v27 = [MEMORY[0x277D27690] currentLocalDate];
      localToday = v17->_localToday;
      v17->_localToday = v27;

      v29 = [MEMORY[0x277CBEAA8] date];
      [v29 timeIntervalSinceDate:v17->_localToday];
      v26 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:v30];
    }

    v31 = [v24 componentsInTimeZone:v26 fromDate:v17->_localToday];
    localTodayComponents = v17->_localTodayComponents;
    v17->_localTodayComponents = v31;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v17;
}

@end
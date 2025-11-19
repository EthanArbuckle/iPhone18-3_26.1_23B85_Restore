@interface PGHolidayContextualRule
- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)a3;
- (PGHolidayContextualRule)initWithGraph:(id)a3 photoLibrary:(id)a4 loggingConnection:(id)a5;
@end

@implementation PGHolidayContextualRule

- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D276D8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v6 initWithLocale:v7];

  v9 = [v5 localToday];

  v10 = [v8 eventRulesForLocalDate:v9];

  if ([v10 count])
  {
    v11 = [v10 firstObject];
    v12 = [v11 name];
    graph = self->_graph;
    v34 = @"name";
    v35[0] = v12;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v15 = [(MAGraph *)graph anyNodeForLabel:@"Holiday" domain:401 properties:v14];
    holidayNode = self->_holidayNode;
    self->_holidayNode = v15;

    v17 = self->_holidayNode;
    if (v17)
    {
      v18 = [(PGGraphHolidayNode *)v17 collection];
      v19 = [v18 celebratingMomentNodes];
      momentNodesForHoliday = self->_momentNodesForHoliday;
      self->_momentNodesForHoliday = v19;
    }
  }

  else
  {
    v12 = 0;
  }

  v21 = [(MAElementCollection *)self->_momentNodesForHoliday count];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->_holidayNode;
    v26 = 138413058;
    v27 = self;
    v28 = 1024;
    v29 = v21 != 0;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v23;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@: canProvideContextualKeyAssets: %d\n\tEvent rule: %@\n\tHoliday node %@", &v26, 0x26u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v21 != 0;
}

- (PGHolidayContextualRule)initWithGraph:(id)a3 photoLibrary:(id)a4 loggingConnection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGHolidayContextualRule;
  v12 = [(PGHolidayContextualRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, a3);
    objc_storeStrong(&v13->_photoLibrary, a4);
    objc_storeStrong(&v13->_loggingConnection, a5);
  }

  return v13;
}

@end
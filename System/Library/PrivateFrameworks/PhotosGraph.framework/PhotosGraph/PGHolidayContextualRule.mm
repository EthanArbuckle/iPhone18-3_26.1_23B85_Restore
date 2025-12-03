@interface PGHolidayContextualRule
- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options;
- (PGHolidayContextualRule)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection;
@end

@implementation PGHolidayContextualRule

- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D276D8];
  optionsCopy = options;
  v6 = [v4 alloc];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v6 initWithLocale:currentLocale];

  localToday = [optionsCopy localToday];

  v10 = [v8 eventRulesForLocalDate:localToday];

  if ([v10 count])
  {
    firstObject = [v10 firstObject];
    name = [firstObject name];
    graph = self->_graph;
    v34 = @"name";
    v35[0] = name;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v15 = [(MAGraph *)graph anyNodeForLabel:@"Holiday" domain:401 properties:v14];
    holidayNode = self->_holidayNode;
    self->_holidayNode = v15;

    v17 = self->_holidayNode;
    if (v17)
    {
      collection = [(PGGraphHolidayNode *)v17 collection];
      celebratingMomentNodes = [collection celebratingMomentNodes];
      momentNodesForHoliday = self->_momentNodesForHoliday;
      self->_momentNodesForHoliday = celebratingMomentNodes;
    }
  }

  else
  {
    name = 0;
  }

  v21 = [(MAElementCollection *)self->_momentNodesForHoliday count];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->_holidayNode;
    v26 = 138413058;
    selfCopy = self;
    v28 = 1024;
    v29 = v21 != 0;
    v30 = 2112;
    v31 = name;
    v32 = 2112;
    v33 = v23;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@: canProvideContextualKeyAssets: %d\n\tEvent rule: %@\n\tHoliday node %@", &v26, 0x26u);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v21 != 0;
}

- (PGHolidayContextualRule)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection
{
  graphCopy = graph;
  libraryCopy = library;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = PGHolidayContextualRule;
  v12 = [(PGHolidayContextualRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, graph);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_loggingConnection, connection);
  }

  return v13;
}

@end
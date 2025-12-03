@interface PGTitleGenerationContext
- (PGGraphPublicEventCategoryNodeCollection)appleEventsCategoryNodes;
- (PGTitleGenerationContext)initWithGraph:(id)graph serviceManager:(id)manager;
- (id)initForTestingWithGraph:(id)graph;
- (id)initLegacyForMemoriesWithServiceManager:(id)manager;
@end

@implementation PGTitleGenerationContext

- (PGGraphPublicEventCategoryNodeCollection)appleEventsCategoryNodes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_appleEventsCategoryNodes)
  {
    appleEvents = [MEMORY[0x277D27780] appleEvents];
    v4 = [PGGraphPublicEventCategoryNodeCollection publicEventCategoryNodesForCategory:appleEvents inGraph:selfCopy->_graph];
    appleEventsCategoryNodes = selfCopy->_appleEventsCategoryNodes;
    selfCopy->_appleEventsCategoryNodes = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_appleEventsCategoryNodes;

  return v6;
}

- (id)initLegacyForMemoriesWithServiceManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = PGTitleGenerationContext;
  v6 = [(PGTitleGenerationContext *)&v14 init];
  if (v6)
  {
    v7 = +[PGGraphLocationHelper inefficientLocationHelper];
    locationHelper = v6->_locationHelper;
    v6->_locationHelper = v7;

    v9 = objc_alloc(MEMORY[0x277D276D8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v9 initWithLocale:currentLocale];
    holidayService = v6->_holidayService;
    v6->_holidayService = v11;

    if (!managerCopy)
    {
      __assert_rtn("[PGTitleGenerationContext initLegacyForMemoriesWithServiceManager:]", "PGTitleGenerationContext.m", 57, "serviceManager != nil");
    }

    objc_storeStrong(&v6->_serviceManager, manager);
  }

  return v6;
}

- (id)initForTestingWithGraph:(id)graph
{
  graphCopy = graph;
  v15.receiver = self;
  v15.super_class = PGTitleGenerationContext;
  v6 = [(PGTitleGenerationContext *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, graph);
    v8 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
    locationHelper = v7->_locationHelper;
    v7->_locationHelper = v8;

    v10 = objc_alloc(MEMORY[0x277D276D8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v10 initWithLocale:currentLocale];
    holidayService = v7->_holidayService;
    v7->_holidayService = v12;
  }

  return v7;
}

- (PGTitleGenerationContext)initWithGraph:(id)graph serviceManager:(id)manager
{
  graphCopy = graph;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = PGTitleGenerationContext;
  v9 = [(PGTitleGenerationContext *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, graph);
    v11 = [[PGGraphLocationHelper alloc] initWithGraph:graphCopy];
    locationHelper = v10->_locationHelper;
    v10->_locationHelper = v11;

    v13 = objc_alloc(MEMORY[0x277D276D8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v15 = [v13 initWithLocale:currentLocale];
    holidayService = v10->_holidayService;
    v10->_holidayService = v15;

    objc_storeStrong(&v10->_serviceManager, manager);
  }

  return v10;
}

@end
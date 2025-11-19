@interface PGTitleGenerationContext
- (PGGraphPublicEventCategoryNodeCollection)appleEventsCategoryNodes;
- (PGTitleGenerationContext)initWithGraph:(id)a3 serviceManager:(id)a4;
- (id)initForTestingWithGraph:(id)a3;
- (id)initLegacyForMemoriesWithServiceManager:(id)a3;
@end

@implementation PGTitleGenerationContext

- (PGGraphPublicEventCategoryNodeCollection)appleEventsCategoryNodes
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_appleEventsCategoryNodes)
  {
    v3 = [MEMORY[0x277D27780] appleEvents];
    v4 = [PGGraphPublicEventCategoryNodeCollection publicEventCategoryNodesForCategory:v3 inGraph:v2->_graph];
    appleEventsCategoryNodes = v2->_appleEventsCategoryNodes;
    v2->_appleEventsCategoryNodes = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_appleEventsCategoryNodes;

  return v6;
}

- (id)initLegacyForMemoriesWithServiceManager:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PGTitleGenerationContext;
  v6 = [(PGTitleGenerationContext *)&v14 init];
  if (v6)
  {
    v7 = +[PGGraphLocationHelper inefficientLocationHelper];
    locationHelper = v6->_locationHelper;
    v6->_locationHelper = v7;

    v9 = objc_alloc(MEMORY[0x277D276D8]);
    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v9 initWithLocale:v10];
    holidayService = v6->_holidayService;
    v6->_holidayService = v11;

    if (!v5)
    {
      __assert_rtn("[PGTitleGenerationContext initLegacyForMemoriesWithServiceManager:]", "PGTitleGenerationContext.m", 57, "serviceManager != nil");
    }

    objc_storeStrong(&v6->_serviceManager, a3);
  }

  return v6;
}

- (id)initForTestingWithGraph:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PGTitleGenerationContext;
  v6 = [(PGTitleGenerationContext *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_graph, a3);
    v8 = [[PGGraphLocationHelper alloc] initWithGraph:v5];
    locationHelper = v7->_locationHelper;
    v7->_locationHelper = v8;

    v10 = objc_alloc(MEMORY[0x277D276D8]);
    v11 = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = [v10 initWithLocale:v11];
    holidayService = v7->_holidayService;
    v7->_holidayService = v12;
  }

  return v7;
}

- (PGTitleGenerationContext)initWithGraph:(id)a3 serviceManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PGTitleGenerationContext;
  v9 = [(PGTitleGenerationContext *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_graph, a3);
    v11 = [[PGGraphLocationHelper alloc] initWithGraph:v7];
    locationHelper = v10->_locationHelper;
    v10->_locationHelper = v11;

    v13 = objc_alloc(MEMORY[0x277D276D8]);
    v14 = [MEMORY[0x277CBEAF8] currentLocale];
    v15 = [v13 initWithLocale:v14];
    holidayService = v10->_holidayService;
    v10->_holidayService = v15;

    objc_storeStrong(&v10->_serviceManager, a4);
  }

  return v10;
}

@end
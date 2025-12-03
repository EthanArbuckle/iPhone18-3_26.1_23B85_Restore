@interface PGChildOutdoorMemoryTitleGenerator
- (PGChildOutdoorMemoryTitleGenerator)initWithMomentNodes:(id)nodes personNode:(id)node type:(int64_t)type titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGChildOutdoorMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  if (result)
  {
    personNode = self->_personNode;
    serviceManager = self->_serviceManager;
    resultCopy = result;
    v20 = [PGPeopleTitleUtility nameFromPersonNode:personNode serviceManager:serviceManager];
    if ([v20 length])
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"PGChildAdventuresMemoryTitle %@" value:@"PGChildAdventuresMemoryTitle %@" table:@"Localizable"];
      v10 = [v7 localizedStringWithFormat:v9, v20];

      v11 = v10;
      v12 = 3;
    }

    else
    {
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v13 localizedStringForKey:@"PGChildAdventuresMemoryTitle" value:@"PGChildAdventuresMemoryTitle" table:@"Localizable"];

      v11 = v10;
      v12 = 1;
    }

    v14 = [PGTitle titleWithString:v11 category:v12];
    v15 = objc_alloc_init(PGTimeTitleOptions);
    momentNodes = [(PGTitleGenerator *)self momentNodes];
    [(PGTimeTitleOptions *)v15 setMomentNodes:momentNodes];

    [(PGTimeTitleOptions *)v15 setAllowedFormats:20];
    featuredYearNodes = [(PGTitleGenerator *)self featuredYearNodes];
    [(PGTimeTitleOptions *)v15 setFeaturedYearNodes:featuredYearNodes];

    v18 = [PGTimeTitleUtility timeTitleWithOptions:v15];
    v19 = [PGTitle titleWithString:v18 category:5];
    resultCopy[2](resultCopy, v14, v19);
  }
}

- (PGChildOutdoorMemoryTitleGenerator)initWithMomentNodes:(id)nodes personNode:(id)node type:(int64_t)type titleGenerationContext:(id)context
{
  nodeCopy = node;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = PGChildOutdoorMemoryTitleGenerator;
  v13 = [(PGTitleGenerator *)&v18 initWithMomentNodes:nodes type:type titleGenerationContext:contextCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_personNode, node);
    serviceManager = [contextCopy serviceManager];
    serviceManager = v14->_serviceManager;
    v14->_serviceManager = serviceManager;
  }

  return v14;
}

@end
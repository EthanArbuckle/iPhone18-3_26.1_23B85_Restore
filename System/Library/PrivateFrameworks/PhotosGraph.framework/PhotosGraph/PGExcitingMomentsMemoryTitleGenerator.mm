@interface PGExcitingMomentsMemoryTitleGenerator
- (PGExcitingMomentsMemoryTitleGenerator)initWithMomentNodes:(id)nodes type:(int64_t)type titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGExcitingMomentsMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  personNodeAsCollection = self->_personNodeAsCollection;
  resultCopy = result;
  anyNode = [(MANodeCollection *)personNodeAsCollection anyNode];
  v7 = [PGPeopleTitleUtility nameFromPersonNode:anyNode serviceManager:self->_serviceManager];

  if ([v7 length])
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"PGExcitingMomentsWithPersonMemoryTypeFormat" value:@"PGExcitingMomentsWithPersonMemoryTypeFormat" table:@"Localizable"];
    v11 = [v8 localizedStringWithFormat:v10, v7];
  }

  else
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v9 localizedStringForKey:@"PGExcitingMomentsMemoryTypeFormat" value:@"PGExcitingMomentsMemoryTypeFormat" table:@"Localizable"];
  }

  v17 = [PGTitle titleWithString:v11 category:0];

  v12 = objc_alloc_init(PGTimeTitleOptions);
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v12 setMomentNodes:momentNodes];

  [(PGTimeTitleOptions *)v12 setAllowedFormats:20];
  featuredYearNodes = [(PGTitleGenerator *)self featuredYearNodes];
  [(PGTimeTitleOptions *)v12 setFeaturedYearNodes:featuredYearNodes];

  v15 = [PGTimeTitleUtility timeTitleWithOptions:v12];
  v16 = [PGTitle titleWithString:v15 category:5];
  resultCopy[2](resultCopy, v17, v16);
}

- (PGExcitingMomentsMemoryTitleGenerator)initWithMomentNodes:(id)nodes type:(int64_t)type titleGenerationContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = PGExcitingMomentsMemoryTitleGenerator;
  v9 = [(PGTitleGenerator *)&v13 initWithMomentNodes:nodes type:type titleGenerationContext:contextCopy];
  if (v9)
  {
    serviceManager = [contextCopy serviceManager];
    serviceManager = v9->_serviceManager;
    v9->_serviceManager = serviceManager;
  }

  return v9;
}

@end
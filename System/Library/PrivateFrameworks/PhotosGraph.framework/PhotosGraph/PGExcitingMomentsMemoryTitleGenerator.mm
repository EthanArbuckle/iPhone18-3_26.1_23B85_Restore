@interface PGExcitingMomentsMemoryTitleGenerator
- (PGExcitingMomentsMemoryTitleGenerator)initWithMomentNodes:(id)a3 type:(int64_t)a4 titleGenerationContext:(id)a5;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGExcitingMomentsMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  personNodeAsCollection = self->_personNodeAsCollection;
  v5 = a3;
  v6 = [(MANodeCollection *)personNodeAsCollection anyNode];
  v7 = [PGPeopleTitleUtility nameFromPersonNode:v6 serviceManager:self->_serviceManager];

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
  v13 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v12 setMomentNodes:v13];

  [(PGTimeTitleOptions *)v12 setAllowedFormats:20];
  v14 = [(PGTitleGenerator *)self featuredYearNodes];
  [(PGTimeTitleOptions *)v12 setFeaturedYearNodes:v14];

  v15 = [PGTimeTitleUtility timeTitleWithOptions:v12];
  v16 = [PGTitle titleWithString:v15 category:5];
  v5[2](v5, v17, v16);
}

- (PGExcitingMomentsMemoryTitleGenerator)initWithMomentNodes:(id)a3 type:(int64_t)a4 titleGenerationContext:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = PGExcitingMomentsMemoryTitleGenerator;
  v9 = [(PGTitleGenerator *)&v13 initWithMomentNodes:a3 type:a4 titleGenerationContext:v8];
  if (v9)
  {
    v10 = [v8 serviceManager];
    serviceManager = v9->_serviceManager;
    v9->_serviceManager = v10;
  }

  return v9;
}

@end
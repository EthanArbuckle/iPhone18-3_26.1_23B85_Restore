@interface PGTrendsMemoryTitleGenerator
- (PGTrendsMemoryTitleGenerator)initWithMomentNodes:(id)a3 sceneFeatureLabel:(id)a4 cityNode:(id)a5 titleGenerationContext:(id)a6 timeTitleOptions:(id)a7;
- (PGTrendsMemoryTitleGenerator)initWithMomentNodes:(id)a3 sceneFeatureLabel:(id)a4 personNode:(id)a5 titleGenerationContext:(id)a6 timeTitleOptions:(id)a7;
- (PGTrendsMemoryTitleGenerator)initWithMomentNodes:(id)a3 sceneFeatureLabel:(id)a4 titleGenerationContext:(id)a5 timeTitleOptions:(id)a6;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGTrendsMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v26 = a3;
  v4 = [@"PGTrendsMemoryTitle" stringByAppendingString:self->_sceneFeatureLabel];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v4 value:v4 table:@"Localizable"];

  v7 = [PGTitle titleWithString:v6 category:1];
  v8 = [PGTimeTitleUtility timeTitleWithOptions:self->_timeTitleOptions];
  v9 = [PGTitle titleWithString:v8 category:5];
  type = self->_type;
  if (type == 3)
  {
    v25 = v6;
    cityNode = self->_cityNode;
    v18 = [(PGTitleGenerator *)self titleGenerationContext];
    v19 = [v18 locationHelper];
    v11 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:cityNode locationHelper:v19];

    if (![v11 length])
    {
      v6 = v25;
      goto LABEL_10;
    }

    v20 = [@"PGLocationTrendsMemoryTitle" stringByAppendingString:self->_sceneFeatureLabel];

    v21 = [v20 stringByAppendingString:@" %@"];

    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:v21 value:v21 table:@"Localizable"];
    v4 = PFLocalizedStringWithValidatedFormat();

    v24 = [PGTitle titleWithString:v4 category:4, v11];
    v6 = v25;
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_11;
    }

    v11 = [PGPeopleTitleUtility nameFromPersonNode:self->_personNode serviceManager:self->_serviceManager];
    v12 = [@"PGPersonTrendsMemoryTitle" stringByAppendingString:self->_sceneFeatureLabel];

    if ([v11 length])
    {
      [v12 stringByAppendingString:@" %@"];
      v14 = v13 = v6;

      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:v14 value:v14 table:@"Localizable"];
      v4 = PFLocalizedStringWithValidatedFormat();

      v6 = v13;
    }

    else
    {
      v16 = [v12 stringByAppendingString:@"Unnamed"];

      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v4 = [v15 localizedStringForKey:v16 value:v16 table:@"Localizable"];
    }

    v24 = [PGTitle titleWithString:v4 category:3];
  }

  v7 = v24;
LABEL_10:

LABEL_11:
  v26[2](v26, v7, v9);
}

- (PGTrendsMemoryTitleGenerator)initWithMomentNodes:(id)a3 sceneFeatureLabel:(id)a4 cityNode:(id)a5 titleGenerationContext:(id)a6 timeTitleOptions:(id)a7
{
  v13 = a5;
  v14 = [(PGTrendsMemoryTitleGenerator *)self initWithMomentNodes:a3 sceneFeatureLabel:a4 titleGenerationContext:a6 timeTitleOptions:a7];
  v15 = v14;
  if (v14)
  {
    v14->_type = 3;
    objc_storeStrong(&v14->_cityNode, a5);
  }

  return v15;
}

- (PGTrendsMemoryTitleGenerator)initWithMomentNodes:(id)a3 sceneFeatureLabel:(id)a4 personNode:(id)a5 titleGenerationContext:(id)a6 timeTitleOptions:(id)a7
{
  v13 = a5;
  v14 = [(PGTrendsMemoryTitleGenerator *)self initWithMomentNodes:a3 sceneFeatureLabel:a4 titleGenerationContext:a6 timeTitleOptions:a7];
  v15 = v14;
  if (v14)
  {
    v14->_type = 2;
    objc_storeStrong(&v14->_personNode, a5);
  }

  return v15;
}

- (PGTrendsMemoryTitleGenerator)initWithMomentNodes:(id)a3 sceneFeatureLabel:(id)a4 titleGenerationContext:(id)a5 timeTitleOptions:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = PGTrendsMemoryTitleGenerator;
  v15 = [(PGTitleGenerator *)&v20 initWithMomentNodes:v11 type:0 titleGenerationContext:v13];
  v16 = v15;
  if (v15)
  {
    v15->_type = 1;
    objc_storeStrong(&v15->_momentNodes, a3);
    objc_storeStrong(&v16->_sceneFeatureLabel, a4);
    objc_storeStrong(&v16->_timeTitleOptions, a6);
    v17 = [v13 serviceManager];
    serviceManager = v16->_serviceManager;
    v16->_serviceManager = v17;
  }

  return v16;
}

@end
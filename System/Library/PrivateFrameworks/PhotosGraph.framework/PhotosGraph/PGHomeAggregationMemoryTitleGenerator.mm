@interface PGHomeAggregationMemoryTitleGenerator
- (PGHomeAggregationMemoryTitleGenerator)initWithMomentNodes:(id)a3 titleGenerationContext:(id)a4;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGHomeAggregationMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v4 = a3;
  v17 = objc_opt_new();
  [v17 setAllowedFormats:8];
  v5 = [(PGTitleGenerator *)self momentNodes];
  [v17 setMomentNodes:v5];

  v6 = [PGTimeTitleUtility timeTitleWithOptions:v17];
  v7 = MEMORY[0x277CCACA8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"PGHomeAggregationMemoryTitleFormatLastMonth %@" value:@"PGHomeAggregationMemoryTitleFormatLastMonth %@" table:@"Localizable"];
  v10 = [v7 localizedStringWithFormat:v9, v6];

  v11 = [PGCommonTitleUtility titleWithLineBreakForTitle:v10];

  v12 = [PGTitle titleWithString:v11 category:4];
  v13 = objc_opt_new();
  [v13 setAllowedFormats:4];
  v14 = [(PGTitleGenerator *)self momentNodes];
  [v13 setMomentNodes:v14];

  v15 = [PGTimeTitleUtility timeTitleWithOptions:v13];
  v16 = [PGTitle titleWithString:v15 category:5];
  v4[2](v4, v12, v16);
}

- (PGHomeAggregationMemoryTitleGenerator)initWithMomentNodes:(id)a3 titleGenerationContext:(id)a4
{
  v5.receiver = self;
  v5.super_class = PGHomeAggregationMemoryTitleGenerator;
  return [(PGTitleGenerator *)&v5 initWithMomentNodes:a3 referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:a4];
}

@end
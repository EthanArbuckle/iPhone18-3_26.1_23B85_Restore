@interface PGDayInHistoryAggregationMemoryTitleGenerator
- (PGDayInHistoryAggregationMemoryTitleGenerator)initWithMomentNodes:(id)a3 referenceDateInterval:(id)a4 titleGenerationContext:(id)a5;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGDayInHistoryAggregationMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v4 = a3;
  v12 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v12 setAllowedFormats:64];
  v5 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v12 setMomentNodes:v5];

  v6 = [PGTimeTitleUtility timeTitleWithOptions:v12];
  v7 = [PGTitle titleWithString:v6 category:5];
  v8 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v8 setAllowedFormats:16];
  v9 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v8 setMomentNodes:v9];

  v10 = [PGTimeTitleUtility timeTitleWithOptions:v8];
  v11 = [PGTitle titleWithString:v10 category:5];
  v4[2](v4, v7, v11);
}

- (PGDayInHistoryAggregationMemoryTitleGenerator)initWithMomentNodes:(id)a3 referenceDateInterval:(id)a4 titleGenerationContext:(id)a5
{
  v6.receiver = self;
  v6.super_class = PGDayInHistoryAggregationMemoryTitleGenerator;
  return [(PGTitleGenerator *)&v6 initWithMomentNodes:a3 referenceDateInterval:a4 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:a5];
}

@end
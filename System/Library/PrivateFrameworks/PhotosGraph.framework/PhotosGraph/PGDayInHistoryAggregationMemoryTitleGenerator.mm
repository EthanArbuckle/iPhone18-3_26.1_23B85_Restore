@interface PGDayInHistoryAggregationMemoryTitleGenerator
- (PGDayInHistoryAggregationMemoryTitleGenerator)initWithMomentNodes:(id)nodes referenceDateInterval:(id)interval titleGenerationContext:(id)context;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGDayInHistoryAggregationMemoryTitleGenerator

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  v12 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v12 setAllowedFormats:64];
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v12 setMomentNodes:momentNodes];

  v6 = [PGTimeTitleUtility timeTitleWithOptions:v12];
  v7 = [PGTitle titleWithString:v6 category:5];
  v8 = objc_alloc_init(PGTimeTitleOptions);
  [(PGTimeTitleOptions *)v8 setAllowedFormats:16];
  momentNodes2 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v8 setMomentNodes:momentNodes2];

  v10 = [PGTimeTitleUtility timeTitleWithOptions:v8];
  v11 = [PGTitle titleWithString:v10 category:5];
  resultCopy[2](resultCopy, v7, v11);
}

- (PGDayInHistoryAggregationMemoryTitleGenerator)initWithMomentNodes:(id)nodes referenceDateInterval:(id)interval titleGenerationContext:(id)context
{
  v6.receiver = self;
  v6.super_class = PGDayInHistoryAggregationMemoryTitleGenerator;
  return [(PGTitleGenerator *)&v6 initWithMomentNodes:nodes referenceDateInterval:interval keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:context];
}

@end
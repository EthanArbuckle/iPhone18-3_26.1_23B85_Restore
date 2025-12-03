@interface PGPlaceMemoryTitleGenerator
- (PGPlaceMemoryTitleGenerator)initWithMomentNodes:(id)nodes placeNode:(id)node titleGenerationContext:(id)context;
- (id)_placeTitle;
- (void)_generateTitleAndSubtitleWithResult:(id)result;
@end

@implementation PGPlaceMemoryTitleGenerator

- (id)_placeTitle
{
  placeNode = self->_placeNode;
  titleGenerationContext = [(PGTitleGenerator *)self titleGenerationContext];
  locationHelper = [titleGenerationContext locationHelper];
  v5 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:placeNode locationHelper:locationHelper];

  v6 = [PGCommonTitleUtility titleWithLineBreakForTitle:v5];

  v7 = [PGTitle titleWithString:v6 category:4];

  return v7;
}

- (void)_generateTitleAndSubtitleWithResult:(id)result
{
  resultCopy = result;
  _placeTitle = [(PGPlaceMemoryTitleGenerator *)self _placeTitle];
  v5 = objc_alloc_init(PGTimeTitleOptions);
  momentNodes = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v5 setMomentNodes:momentNodes];

  [(PGTimeTitleOptions *)v5 setAllowedFormats:20];
  [(PGTimeTitleOptions *)v5 setFilterDates:0];
  locale = [(PGTitleGenerator *)self locale];
  [(PGTimeTitleOptions *)v5 setLocale:locale];

  featuredYearNodes = [(PGTitleGenerator *)self featuredYearNodes];
  [(PGTimeTitleOptions *)v5 setFeaturedYearNodes:featuredYearNodes];

  v9 = [PGTimeTitleUtility timeTitleWithOptions:v5];
  v10 = [PGTitle titleWithString:v9 category:5];
  if (resultCopy)
  {
    resultCopy[2](resultCopy, _placeTitle, v10);
  }
}

- (PGPlaceMemoryTitleGenerator)initWithMomentNodes:(id)nodes placeNode:(id)node titleGenerationContext:(id)context
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = PGPlaceMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:nodes referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_placeNode, node);
  }

  return v11;
}

@end
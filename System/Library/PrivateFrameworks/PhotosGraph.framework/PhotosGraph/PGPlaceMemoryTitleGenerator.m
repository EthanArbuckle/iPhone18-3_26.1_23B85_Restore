@interface PGPlaceMemoryTitleGenerator
- (PGPlaceMemoryTitleGenerator)initWithMomentNodes:(id)a3 placeNode:(id)a4 titleGenerationContext:(id)a5;
- (id)_placeTitle;
- (void)_generateTitleAndSubtitleWithResult:(id)a3;
@end

@implementation PGPlaceMemoryTitleGenerator

- (id)_placeTitle
{
  placeNode = self->_placeNode;
  v3 = [(PGTitleGenerator *)self titleGenerationContext];
  v4 = [v3 locationHelper];
  v5 = [PGLocationTitleUtility beautifiedLocationNodeStringWithPlaceNode:placeNode locationHelper:v4];

  v6 = [PGCommonTitleUtility titleWithLineBreakForTitle:v5];

  v7 = [PGTitle titleWithString:v6 category:4];

  return v7;
}

- (void)_generateTitleAndSubtitleWithResult:(id)a3
{
  v11 = a3;
  v4 = [(PGPlaceMemoryTitleGenerator *)self _placeTitle];
  v5 = objc_alloc_init(PGTimeTitleOptions);
  v6 = [(PGTitleGenerator *)self momentNodes];
  [(PGTimeTitleOptions *)v5 setMomentNodes:v6];

  [(PGTimeTitleOptions *)v5 setAllowedFormats:20];
  [(PGTimeTitleOptions *)v5 setFilterDates:0];
  v7 = [(PGTitleGenerator *)self locale];
  [(PGTimeTitleOptions *)v5 setLocale:v7];

  v8 = [(PGTitleGenerator *)self featuredYearNodes];
  [(PGTimeTitleOptions *)v5 setFeaturedYearNodes:v8];

  v9 = [PGTimeTitleUtility timeTitleWithOptions:v5];
  v10 = [PGTitle titleWithString:v9 category:5];
  if (v11)
  {
    v11[2](v11, v4, v10);
  }
}

- (PGPlaceMemoryTitleGenerator)initWithMomentNodes:(id)a3 placeNode:(id)a4 titleGenerationContext:(id)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = PGPlaceMemoryTitleGenerator;
  v10 = [(PGTitleGenerator *)&v13 initWithMomentNodes:a3 referenceDateInterval:0 keyAsset:0 curatedAssetCollection:0 assetCollection:0 type:0 titleGenerationContext:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_placeNode, a4);
  }

  return v11;
}

@end
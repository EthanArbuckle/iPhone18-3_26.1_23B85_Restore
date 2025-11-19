@interface PXStoryDefaultStylesProducerFactory
- (id)initialStyleProducerForAssetCollection:(id)a3;
- (id)initialStyleProducerForPersistableRecipe:(id)a3 songResource:(id)a4 autoEditDecisionList:(id)a5;
- (id)stylesProducerForAutoEditDecisionLists:(id)a3;
@end

@implementation PXStoryDefaultStylesProducerFactory

- (id)initialStyleProducerForPersistableRecipe:(id)a3 songResource:(id)a4 autoEditDecisionList:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PXStoryPersistedStyleProducer alloc] initWithPersistedRecipe:v9 songResource:v8 autoEditDecisionList:v7];

  return v10;
}

- (id)initialStyleProducerForAssetCollection:(id)a3
{
  v3 = a3;
  v4 = [[PXStoryAssetCollectionStyleProducer alloc] initWithAssetCollection:v3];

  return v4;
}

- (id)stylesProducerForAutoEditDecisionLists:(id)a3
{
  v3 = a3;
  v4 = [[PXStoryDefaultStylesProducer alloc] initWithAutoEditDecisionLists:v3];

  return v4;
}

@end
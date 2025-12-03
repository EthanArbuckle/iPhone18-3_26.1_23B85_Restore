@interface PXStoryDefaultStylesProducerFactory
- (id)initialStyleProducerForAssetCollection:(id)collection;
- (id)initialStyleProducerForPersistableRecipe:(id)recipe songResource:(id)resource autoEditDecisionList:(id)list;
- (id)stylesProducerForAutoEditDecisionLists:(id)lists;
@end

@implementation PXStoryDefaultStylesProducerFactory

- (id)initialStyleProducerForPersistableRecipe:(id)recipe songResource:(id)resource autoEditDecisionList:(id)list
{
  listCopy = list;
  resourceCopy = resource;
  recipeCopy = recipe;
  v10 = [[PXStoryPersistedStyleProducer alloc] initWithPersistedRecipe:recipeCopy songResource:resourceCopy autoEditDecisionList:listCopy];

  return v10;
}

- (id)initialStyleProducerForAssetCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [[PXStoryAssetCollectionStyleProducer alloc] initWithAssetCollection:collectionCopy];

  return v4;
}

- (id)stylesProducerForAutoEditDecisionLists:(id)lists
{
  listsCopy = lists;
  v4 = [[PXStoryDefaultStylesProducer alloc] initWithAutoEditDecisionLists:listsCopy];

  return v4;
}

@end
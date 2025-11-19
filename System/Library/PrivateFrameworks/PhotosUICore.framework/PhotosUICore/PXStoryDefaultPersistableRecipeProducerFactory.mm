@interface PXStoryDefaultPersistableRecipeProducerFactory
- (id)persistableRecipeProducerForConfiguration:(id)a3;
@end

@implementation PXStoryDefaultPersistableRecipeProducerFactory

- (id)persistableRecipeProducerForConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 persistableRecipe];
  v5 = [v3 assetCollection];
  if ([v3 isAppleMusicPreview])
  {
    goto LABEL_2;
  }

  if (v4)
  {
    v6 = [[PXStoryPassthroughPersistableRecipeProducer alloc] initWithPersistableRecipe:v4];
    goto LABEL_5;
  }

  if (([v3 options] & 2) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_2:
    v6 = objc_alloc_init(PXStoryPassthroughPersistableRecipeProducer);
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  v9 = [PXStoryPHMemoryPersistableRecipeProducer alloc];
  v10 = [v3 keyAsset];
  v11 = [v10 firstObject];
  v7 = [(PXStoryPHMemoryPersistableRecipeProducer *)v9 initWithMemory:v5 keyAsset:v11];

LABEL_6:

  return v7;
}

@end
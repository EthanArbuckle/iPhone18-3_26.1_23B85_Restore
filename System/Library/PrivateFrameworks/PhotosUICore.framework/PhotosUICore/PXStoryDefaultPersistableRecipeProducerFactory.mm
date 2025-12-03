@interface PXStoryDefaultPersistableRecipeProducerFactory
- (id)persistableRecipeProducerForConfiguration:(id)configuration;
@end

@implementation PXStoryDefaultPersistableRecipeProducerFactory

- (id)persistableRecipeProducerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  persistableRecipe = [configurationCopy persistableRecipe];
  assetCollection = [configurationCopy assetCollection];
  if ([configurationCopy isAppleMusicPreview])
  {
    goto LABEL_2;
  }

  if (persistableRecipe)
  {
    v6 = [[PXStoryPassthroughPersistableRecipeProducer alloc] initWithPersistableRecipe:persistableRecipe];
    goto LABEL_5;
  }

  if (([configurationCopy options] & 2) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_2:
    v6 = objc_alloc_init(PXStoryPassthroughPersistableRecipeProducer);
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  v9 = [PXStoryPHMemoryPersistableRecipeProducer alloc];
  keyAsset = [configurationCopy keyAsset];
  firstObject = [keyAsset firstObject];
  v7 = [(PXStoryPHMemoryPersistableRecipeProducer *)v9 initWithMemory:assetCollection keyAsset:firstObject];

LABEL_6:

  return v7;
}

@end
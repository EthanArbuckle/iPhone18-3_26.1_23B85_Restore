@interface PXStoryDefaultSongResourceProducerFactory
- (id)songResourceProducerForPersistableRecipe:(id)recipe configuration:(id)configuration;
@end

@implementation PXStoryDefaultSongResourceProducerFactory

- (id)songResourceProducerForPersistableRecipe:(id)recipe configuration:(id)configuration
{
  recipeCopy = recipe;
  configurationCopy = configuration;
  songsProducerKind = [configurationCopy songsProducerKind];
  if (![configurationCopy isAllowedToPlayAnyMusicOrSound])
  {
    goto LABEL_7;
  }

  if (!songsProducerKind)
  {
    v8 = +[PXStorySettings sharedInstance];
    songsProducerKind = [v8 songsProducerKind];
  }

  if (songsProducerKind < 3)
  {
    v9 = [[PXStoryPersistableRecipeSongResourceProducer alloc] initWithPersistableRecipe:recipeCopy configuration:configurationCopy];
    goto LABEL_8;
  }

  if (songsProducerKind - 3 >= 2)
  {
    v9 = 0;
  }

  else
  {
LABEL_7:
    v10 = [PXStoryPassthroughSongResourceProducer alloc];
    v11 = objc_alloc_init(PXStoryNullSongResource);
    v9 = [(PXStoryPassthroughSongResourceProducer *)v10 initWithSongResource:v11];
  }

LABEL_8:

  return v9;
}

@end
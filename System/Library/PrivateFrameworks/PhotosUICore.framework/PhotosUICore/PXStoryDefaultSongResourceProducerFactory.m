@interface PXStoryDefaultSongResourceProducerFactory
- (id)songResourceProducerForPersistableRecipe:(id)a3 configuration:(id)a4;
@end

@implementation PXStoryDefaultSongResourceProducerFactory

- (id)songResourceProducerForPersistableRecipe:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 songsProducerKind];
  if (![v6 isAllowedToPlayAnyMusicOrSound])
  {
    goto LABEL_7;
  }

  if (!v7)
  {
    v8 = +[PXStorySettings sharedInstance];
    v7 = [v8 songsProducerKind];
  }

  if (v7 < 3)
  {
    v9 = [[PXStoryPersistableRecipeSongResourceProducer alloc] initWithPersistableRecipe:v5 configuration:v6];
    goto LABEL_8;
  }

  if (v7 - 3 >= 2)
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
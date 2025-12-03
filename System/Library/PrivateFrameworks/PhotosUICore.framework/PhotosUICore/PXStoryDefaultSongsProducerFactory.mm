@interface PXStoryDefaultSongsProducerFactory
- (id)songsProducerForConfiguration:(id)configuration;
@end

@implementation PXStoryDefaultSongsProducerFactory

- (id)songsProducerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([configurationCopy options] & 2) != 0 || (objc_msgSend(configurationCopy, "isAllowedToPlayAnyMusicOrSound") & 1) == 0)
  {
    v8 = objc_alloc_init(PXStoryPassthroughSongsProducer);
    goto LABEL_20;
  }

  songsProducerKind = [configurationCopy songsProducerKind];
  if (!songsProducerKind)
  {
    v5 = +[PXStorySettings sharedInstance];
    songsProducerKind = [v5 songsProducerKind];
  }

  songsConfiguration = [configurationCopy songsConfiguration];
  v7 = songsConfiguration;
  v8 = 0;
  if (songsProducerKind > 1)
  {
    if (songsProducerKind == 2)
    {
      v9 = PXStoryDummyAppleMusicSongsProducer;
      goto LABEL_15;
    }

    if (songsProducerKind != 3)
    {
      if (songsProducerKind == 4)
      {
        v9 = PXStoryExceptionThrowingSongsProducer;
LABEL_15:
        v10 = objc_alloc_init(v9);
LABEL_18:
        v8 = v10;
        goto LABEL_19;
      }

      goto LABEL_19;
    }

LABEL_17:
    v10 = [[PXStoryPassthroughSongsProducer alloc] initWithSongsConfiguration:songsConfiguration];
    goto LABEL_18;
  }

  if (!songsProducerKind)
  {
    if (!songsConfiguration)
    {
      photoKitAssetContainer = [configurationCopy photoKitAssetContainer];
      if (photoKitAssetContainer)
      {
        v13 = [PXStoryDefaultSongsProducer alloc];
        musicCurationProvider = [configurationCopy musicCurationProvider];
        v8 = [(PXStoryDefaultSongsProducer *)v13 initWithAssetContainer:photoKitAssetContainer configuration:configurationCopy curationProvider:musicCurationProvider];
      }

      else
      {
        v8 = objc_alloc_init(PXStoryPassthroughSongsProducer);
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (songsProducerKind == 1)
  {
    v9 = PXStoryDummySongsProducer;
    goto LABEL_15;
  }

LABEL_19:

LABEL_20:

  return v8;
}

@end
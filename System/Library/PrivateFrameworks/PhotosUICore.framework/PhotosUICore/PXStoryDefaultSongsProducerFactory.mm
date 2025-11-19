@interface PXStoryDefaultSongsProducerFactory
- (id)songsProducerForConfiguration:(id)a3;
@end

@implementation PXStoryDefaultSongsProducerFactory

- (id)songsProducerForConfiguration:(id)a3
{
  v3 = a3;
  if (([v3 options] & 2) != 0 || (objc_msgSend(v3, "isAllowedToPlayAnyMusicOrSound") & 1) == 0)
  {
    v8 = objc_alloc_init(PXStoryPassthroughSongsProducer);
    goto LABEL_20;
  }

  v4 = [v3 songsProducerKind];
  if (!v4)
  {
    v5 = +[PXStorySettings sharedInstance];
    v4 = [v5 songsProducerKind];
  }

  v6 = [v3 songsConfiguration];
  v7 = v6;
  v8 = 0;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v9 = PXStoryDummyAppleMusicSongsProducer;
      goto LABEL_15;
    }

    if (v4 != 3)
    {
      if (v4 == 4)
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
    v10 = [[PXStoryPassthroughSongsProducer alloc] initWithSongsConfiguration:v6];
    goto LABEL_18;
  }

  if (!v4)
  {
    if (!v6)
    {
      v12 = [v3 photoKitAssetContainer];
      if (v12)
      {
        v13 = [PXStoryDefaultSongsProducer alloc];
        v14 = [v3 musicCurationProvider];
        v8 = [(PXStoryDefaultSongsProducer *)v13 initWithAssetContainer:v12 configuration:v3 curationProvider:v14];
      }

      else
      {
        v8 = objc_alloc_init(PXStoryPassthroughSongsProducer);
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v4 == 1)
  {
    v9 = PXStoryDummySongsProducer;
    goto LABEL_15;
  }

LABEL_19:

LABEL_20:

  return v8;
}

@end
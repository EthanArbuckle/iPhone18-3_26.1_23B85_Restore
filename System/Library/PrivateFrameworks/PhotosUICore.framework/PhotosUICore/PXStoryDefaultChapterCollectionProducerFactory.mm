@interface PXStoryDefaultChapterCollectionProducerFactory
- (id)chapterCollectionProducerForConfiguration:(id)a3;
@end

@implementation PXStoryDefaultChapterCollectionProducerFactory

- (id)chapterCollectionProducerForConfiguration:(id)a3
{
  v3 = a3;
  if (([v3 options] & 2) == 0)
  {
    v4 = [v3 storyQueue];
    v5 = +[PXStoryChapterSettings sharedInstance];
    v6 = [v5 chapterCollectionProducerKind];
    if (v6 == 3)
    {
      v9 = -[PXStoryDummyCountChapterCollectionProducer initWithCountInterval:storyQueue:]([PXStoryDummyCountChapterCollectionProducer alloc], "initWithCountInterval:storyQueue:", [v5 dummyChaptersCountInterval], v4);
    }

    else
    {
      if (v6 != 2)
      {
        if (v6 == 1)
        {
          v7 = [v3 assetCollection];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [[PXStoryMemoryChapterCollectionProducer alloc] initWithMemory:v7 storyQueue:v4];
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }

LABEL_13:
        v10 = [v3 errorReporter];
        [(PXStoryTransientChapterCollectionProducer *)v8 setErrorReporter:v10];

        if (v8)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v9 = -[PXStoryDummyDailyChapterCollectionProducer initWithDayInterval:storyQueue:]([PXStoryDummyDailyChapterCollectionProducer alloc], "initWithDayInterval:storyQueue:", [v5 dummyChaptersDayInterval], v4);
    }

    v8 = v9;
    goto LABEL_13;
  }

LABEL_14:
  v8 = objc_alloc_init(PXStoryPassthroughChapterCollectionProducer);
LABEL_15:

  return v8;
}

@end
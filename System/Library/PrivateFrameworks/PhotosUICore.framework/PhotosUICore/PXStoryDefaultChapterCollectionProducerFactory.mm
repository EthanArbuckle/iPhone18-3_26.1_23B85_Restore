@interface PXStoryDefaultChapterCollectionProducerFactory
- (id)chapterCollectionProducerForConfiguration:(id)configuration;
@end

@implementation PXStoryDefaultChapterCollectionProducerFactory

- (id)chapterCollectionProducerForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([configurationCopy options] & 2) == 0)
  {
    storyQueue = [configurationCopy storyQueue];
    v5 = +[PXStoryChapterSettings sharedInstance];
    chapterCollectionProducerKind = [v5 chapterCollectionProducerKind];
    if (chapterCollectionProducerKind == 3)
    {
      v9 = -[PXStoryDummyCountChapterCollectionProducer initWithCountInterval:storyQueue:]([PXStoryDummyCountChapterCollectionProducer alloc], "initWithCountInterval:storyQueue:", [v5 dummyChaptersCountInterval], storyQueue);
    }

    else
    {
      if (chapterCollectionProducerKind != 2)
      {
        if (chapterCollectionProducerKind == 1)
        {
          assetCollection = [configurationCopy assetCollection];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [[PXStoryMemoryChapterCollectionProducer alloc] initWithMemory:assetCollection storyQueue:storyQueue];
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
        errorReporter = [configurationCopy errorReporter];
        [(PXStoryTransientChapterCollectionProducer *)v8 setErrorReporter:errorReporter];

        if (v8)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v9 = -[PXStoryDummyDailyChapterCollectionProducer initWithDayInterval:storyQueue:]([PXStoryDummyDailyChapterCollectionProducer alloc], "initWithDayInterval:storyQueue:", [v5 dummyChaptersDayInterval], storyQueue);
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
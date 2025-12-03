@interface PXFeedbackManager
+ (id)sharedManager;
- (PXFeedbackManager)init;
- (id)provideUserFeedbackFromDictionary:(id)dictionary forFeedbackType:(unint64_t)type;
- (void)removeFeedbackEntry:(id)entry;
@end

@implementation PXFeedbackManager

- (void)removeFeedbackEntry:(id)entry
{
  if (entry)
  {
    entryCopy = entry;
    feedbackCollector = [(PXFeedbackManager *)self feedbackCollector];
    [feedbackCollector removeFeedbackEntry:entryCopy];
  }
}

- (id)provideUserFeedbackFromDictionary:(id)dictionary forFeedbackType:(unint64_t)type
{
  dictionaryCopy = dictionary;
  self->_feedbackCollectionType = type;
  if (dictionaryCopy)
  {
    feedbackCollector = [(PXFeedbackManager *)self feedbackCollector];
    v8 = [feedbackCollector feedbackEntryFromDictionary:dictionaryCopy];

    if (v8)
    {
      [(PXFeedbackManager *)self provideUserFeedbackEntry:v8];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PXFeedbackManager)init
{
  v6.receiver = self;
  v6.super_class = PXFeedbackManager;
  v2 = [(PXFeedbackManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXFeedbackCollector);
    feedbackCollector = v2->_feedbackCollector;
    v2->_feedbackCollector = v3;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_55867);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

void __34__PXFeedbackManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

@end
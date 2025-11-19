@interface PXFeedbackManager
+ (id)sharedManager;
- (PXFeedbackManager)init;
- (id)provideUserFeedbackFromDictionary:(id)a3 forFeedbackType:(unint64_t)a4;
- (void)removeFeedbackEntry:(id)a3;
@end

@implementation PXFeedbackManager

- (void)removeFeedbackEntry:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(PXFeedbackManager *)self feedbackCollector];
    [v5 removeFeedbackEntry:v4];
  }
}

- (id)provideUserFeedbackFromDictionary:(id)a3 forFeedbackType:(unint64_t)a4
{
  v6 = a3;
  self->_feedbackCollectionType = a4;
  if (v6)
  {
    v7 = [(PXFeedbackManager *)self feedbackCollector];
    v8 = [v7 feedbackEntryFromDictionary:v6];

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
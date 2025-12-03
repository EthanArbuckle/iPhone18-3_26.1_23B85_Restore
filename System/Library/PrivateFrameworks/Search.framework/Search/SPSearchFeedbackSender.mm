@interface SPSearchFeedbackSender
+ (id)feedbackListeners;
+ (void)_gatherFeedbackListeners;
+ (void)initialize;
+ (void)updateFeedbackListeners;
@end

@implementation SPSearchFeedbackSender

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = dispatch_queue_attr_make_initially_inactive(0);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("feedback queue", v5);
    v7 = sFeedbackQueue;
    sFeedbackQueue = v6;

    v8 = sFeedbackQueue;

    dispatch_activate(v8);
  }
}

+ (void)updateFeedbackListeners
{
  v3 = SPLogForSPLogCategoryDefault();
  v4 = v3;
  if (gSPLogDebugAsDefault)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v4, v5, "[FEEDBACK-DEBUG] (gatherFeedbackListeners) updateFeedbackListeners called", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SPSearchFeedbackSender_updateFeedbackListeners__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(sFeedbackQueue, block);
}

+ (void)_gatherFeedbackListeners
{
  if (_gatherFeedbackListeners_onceToken != -1)
  {
    +[SPSearchFeedbackSender _gatherFeedbackListeners];
  }

  v19 = objc_opt_new();
  v2 = +[SPCoreParsecInterface sharedFeedbackListener];
  if (v2)
  {
    v3 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v2];
    if ([v3 supportedTypes])
    {
      [v19 addObject:v3];
    }
  }

  else
  {
    v3 = 0;
  }

  if (NSClassFromString(&cfstr_Atxsearchfeedb.isa))
  {
    v4 = objc_alloc_init(MEMORY[0x1E698AF28]);

    if (v4)
    {
      v5 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v4];

      if ([v5 supportedTypes])
      {
        [v19 addObject:v5];
      }

      v3 = v5;
    }
  }

  else
  {
    v4 = v2;
  }

  if (_gatherFeedbackListeners_suggestionsFeedbackListener)
  {
    v6 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:?];

    if ([v6 supportedTypes])
    {
      [v19 addObject:v6];
    }
  }

  else
  {
    v6 = v3;
  }

  v7 = +[SDFeedbackInterceptor sharedInstance];

  if (v7)
  {
    v8 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v7];

    if ([v8 supportedTypes])
    {
      [v19 addObject:v8];
    }
  }

  else
  {
    v8 = v6;
  }

  v9 = +[SDCoreSpotlightFeedbackHandler sharedInstance];

  if (v9)
  {
    v10 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v9];

    if ([v10 supportedTypes])
    {
      [v19 addObject:v10];
    }
  }

  else
  {
    v10 = v8;
  }

  v11 = objc_opt_new();

  if (v11)
  {
    v12 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v11];

    if ([v12 supportedTypes])
    {
      [v19 addObject:v12];
    }
  }

  else
  {
    v12 = v10;
  }

  v13 = objc_opt_new();

  if (v13)
  {
    v14 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v13];

    if ([v14 supportedTypes])
    {
      [v19 addObject:v14];
    }
  }

  else
  {
    v14 = v12;
  }

  v15 = objc_alloc_init(MEMORY[0x1E69CA618]);

  if (v15)
  {
    v16 = [SPFeedbackListenerWrapper wrapperWithFeedbackListener:v15];

    if ([v16 supportedTypes])
    {
      [v19 addObject:v16];
    }
  }

  else
  {
    v16 = v14;
  }

  v17 = [v19 copy];
  v18 = sFeedbackListeners;
  sFeedbackListeners = v17;
}

uint64_t __50__SPSearchFeedbackSender__gatherFeedbackListeners__block_invoke()
{
  _gatherFeedbackListeners_suggestionsFeedbackListener = objc_alloc_init(MEMORY[0x1E69D4E20]);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)feedbackListeners
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SPSearchFeedbackSender_feedbackListeners__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (feedbackListeners_onceToken != -1)
  {
    dispatch_once(&feedbackListeners_onceToken, block);
  }

  v2 = sFeedbackListeners;

  return v2;
}

uint64_t __43__SPSearchFeedbackSender_feedbackListeners__block_invoke(uint64_t a1)
{
  result = [sFeedbackListeners count];
  if (!result)
  {
    v3 = *(a1 + 32);

    return [v3 _gatherFeedbackListeners];
  }

  return result;
}

@end
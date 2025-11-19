@interface UIWebClipEligibilityObserver
+ (id)sharedObserver;
- (id)_init;
- (void)_updateEligibilityIfNeeded;
- (void)dealloc;
- (void)startObservingEligibility;
@end

@implementation UIWebClipEligibilityObserver

+ (id)sharedObserver
{
  if (qword_1ED4A2FC8 != -1)
  {
    dispatch_once(&qword_1ED4A2FC8, &__block_literal_global_828);
  }

  v3 = _MergedGlobals_1400;

  return v3;
}

void __46__UIWebClipEligibilityObserver_sharedObserver__block_invoke()
{
  v0 = [[UIWebClipEligibilityObserver alloc] _init];
  v1 = _MergedGlobals_1400;
  _MergedGlobals_1400 = v0;
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = UIWebClipEligibilityObserver;
  v2 = [(UIWebClipEligibilityObserver *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.UIKit.webClipEligibilityObserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)startObservingEligibility
{
  if (!self->_notifyToken)
  {
    block[9] = v2;
    block[10] = v3;
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.springboard"];

    if (v7)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__UIWebClipEligibilityObserver_startObservingEligibility__block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = self;
      if (startObservingEligibility_onceTokenCompletion != -1)
      {
        dispatch_once(&startObservingEligibility_onceTokenCompletion, block);
      }
    }
  }
}

uint64_t __57__UIWebClipEligibilityObserver_startObservingEligibility__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__UIWebClipEligibilityObserver_startObservingEligibility__block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = v2;
  dispatch_async(v3, block);
  v4 = _os_feature_enabled_impl();
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  if (v4)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__UIWebClipEligibilityObserver_startObservingEligibility__block_invoke_3;
    v12[3] = &unk_1E70FFAF8;
    v12[4] = v5;
    v7 = "com.apple.os-eligibility-domain.change.yttrium";
    v8 = (v5 + 8);
    v9 = v12;
  }

  else
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __57__UIWebClipEligibilityObserver_startObservingEligibility__block_invoke_4;
    handler[3] = &unk_1E70FFAF8;
    handler[4] = v5;
    v7 = "com.apple.os-eligibility-domain.change.beryllium";
    v8 = (v5 + 8);
    v9 = handler;
  }

  return notify_register_dispatch(v7, v8, v6, v9);
}

- (void)_updateEligibilityIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() webClips];
  v3 = [objc_opt_class() _determineEligibility];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 _subjectToEligibilityUpdates])
        {
          [v9 _updateWebClipWithEligibility:v3];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = UIWebClipEligibilityObserver;
  [(UIWebClipEligibilityObserver *)&v4 dealloc];
}

@end
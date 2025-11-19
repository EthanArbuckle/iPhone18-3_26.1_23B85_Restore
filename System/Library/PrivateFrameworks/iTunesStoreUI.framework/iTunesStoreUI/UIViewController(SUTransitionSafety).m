@interface UIViewController(SUTransitionSafety)
+ (SUTransitionSafetyDelegate)transitionSafetyDelegate;
+ (SUTransitionSafetyInvocationRecorder)transitionSafePerformer:()SUTransitionSafety;
+ (uint64_t)_iTunesStoreUI_dequeueTransitionSafeInvocations;
+ (uint64_t)endTransitionSafety;
+ (void)_iTunesStoreUI_enqueueTransitionSafeInvocation:()SUTransitionSafety;
+ (void)_iTunesStoreUI_timeoutTransitionSafety;
- (uint64_t)transitionSafePresentModalViewController:()SUTransitionSafety animated:;
@end

@implementation UIViewController(SUTransitionSafety)

+ (uint64_t)_iTunesStoreUI_dequeueTransitionSafeInvocations
{
  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  if (__TransitionSafetyTimer)
  {
    dispatch_source_cancel(__TransitionSafetyTimer);
    dispatch_release(__TransitionSafetyTimer);
    __TransitionSafetyTimer = 0;
  }

  result = [__TransitionSafetyInvocations count];
  if (result >= 1 && __TransitionSafetyCount == 0)
  {
    v2 = result;
    v3 = 1;
    do
    {
      [objc_msgSend(__TransitionSafetyInvocations objectAtIndex:{0), "invoke"}];
      result = [__TransitionSafetyInvocations removeObjectAtIndex:0];
      if (v3 >= v2)
      {
        break;
      }

      ++v3;
    }

    while (!__TransitionSafetyCount);
  }

  return result;
}

+ (void)_iTunesStoreUI_enqueueTransitionSafeInvocation:()SUTransitionSafety
{
  if (__TransitionSafetyCount)
  {
    v4 = __TransitionSafetyInvocations;
    if (!__TransitionSafetyInvocations)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      __TransitionSafetyInvocations = v4;
    }

    [v4 addObject:a3];
    v5 = __TransitionSafetyTimer;
    if (__TransitionSafetyTimer)
    {
      v6 = dispatch_time(0, 1000000000);

      dispatch_source_set_timer(v5, v6, 0, 0);
    }

    else
    {
      v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      __TransitionSafetyTimer = v7;
      v8 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v7, v8, 0, 0);
      dispatch_source_set_event_handler(__TransitionSafetyTimer, &__block_literal_global_5);
      v9 = __TransitionSafetyTimer;

      dispatch_resume(v9);
    }
  }

  else
  {

    [a3 invoke];
  }
}

+ (void)_iTunesStoreUI_timeoutTransitionSafety
{
  v14 = *MEMORY[0x1E69E9840];
  if (__TransitionSafetyTimer)
  {
    dispatch_source_cancel(__TransitionSafetyTimer);
    dispatch_release(__TransitionSafetyTimer);
    __TransitionSafetyTimer = 0;
  }

  if (__TransitionSafetyCount >= 1)
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v10 = 138412546;
      v11 = objc_opt_class();
      v12 = 2048;
      v13 = __TransitionSafetyCount;
      LODWORD(v9) = 22;
      v8 = &v10;
      v5 = _os_log_send_and_compose_impl();
      if (v5)
      {
        v6 = v5;
        v7 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, &v10, v9}];
        free(v6);
        v8 = v7;
        SSFileLog();
      }
    }

    if (__TransitionSafetyCount >= 1)
    {
      do
      {
        [a1 endTransitionSafety];
      }

      while (__TransitionSafetyCount > 0);
    }
  }
}

+ (uint64_t)endTransitionSafety
{
  v2 = __TransitionSafetyCount == 1;
  if (__TransitionSafetyCount >= 1)
  {
    --__TransitionSafetyCount;
    if (v2)
    {
      v3 = result;
      [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];

      return [v3 performSelector:sel__iTunesStoreUI_dequeueTransitionSafeInvocations withObject:0 afterDelay:0.0];
    }
  }

  return result;
}

+ (SUTransitionSafetyInvocationRecorder)transitionSafePerformer:()SUTransitionSafety
{
  if (!a3)
  {
    return 0;
  }

  v3 = [(ISInvocationRecorder *)[SUTransitionSafetyInvocationRecorder alloc] initWithTarget:a3];

  return v3;
}

+ (SUTransitionSafetyDelegate)transitionSafetyDelegate
{
  result = __TransitionSafetyDelegate;
  if (!__TransitionSafetyDelegate)
  {
    result = objc_alloc_init(SUTransitionSafetyDelegate);
    __TransitionSafetyDelegate = result;
  }

  return result;
}

- (uint64_t)transitionSafePresentModalViewController:()SUTransitionSafety animated:
{
  if ([a1 presentedViewController])
  {
    [a1 dismissViewControllerAnimated:a4 completion:0];
  }

  v7 = [objc_opt_class() transitionSafePerformer:a1];

  return [v7 presentViewController:a3 animated:1 completion:0];
}

@end
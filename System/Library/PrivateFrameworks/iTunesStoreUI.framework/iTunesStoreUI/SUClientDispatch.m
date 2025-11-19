@interface SUClientDispatch
+ (BOOL)composeReviewWithViewController:(id)a3 animated:(BOOL)a4;
+ (BOOL)enterAccountFlowWithViewController:(id)a3 animated:(BOOL)a4;
+ (BOOL)hidePreviewOverlayAnimated:(BOOL)a3;
+ (BOOL)isTabBarControllerLoaded;
+ (BOOL)matchesClientApplication:(id)a3;
+ (BOOL)presentOverlayBackgroundViewController:(id)a3;
+ (BOOL)sendActionForDialog:(id)a3 button:(id)a4;
+ (BOOL)showPreviewOverlayAnimated:(BOOL)a3;
+ (BOOL)wasLaunchedFromLibrary;
+ (id)clientInterface;
+ (id)exitStoreButtonTitle;
+ (id)imageCache;
+ (id)imagePool;
+ (id)newScriptInterface;
+ (id)overlayBackgroundViewController;
+ (id)overlayConfigurationForStorePage:(id)a3;
+ (id)scriptExecutionContext;
+ (id)tabBarController;
+ (void)composeEmailWithSubject:(id)a3 body:(id)a4;
+ (void)dismissOverlayBackgroundViewController;
+ (void)setClientBridge:(id)a3;
@end

@implementation SUClientDispatch

+ (id)clientInterface
{
  v2 = __LegacyBridge;
  if (!__LegacyBridge)
  {
    v2 = +[SUClient sharedClient];
    if (!v2)
    {
      v2 = +[SUClientController sharedController];
    }
  }

  return [v2 clientInterface];
}

+ (void)composeEmailWithSubject:(id)a3 body:(id)a4
{
  v6 = __LegacyBridge;
  if (!__LegacyBridge)
  {
    v6 = +[SUStoreController sharedInstance];
    if (!v6)
    {
      v6 = +[SUClientController sharedController];
    }
  }

  [(SUStoreController *)v6 composeEmailWithSubject:a3 body:a4];
}

+ (BOOL)composeReviewWithViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = __LegacyBridge;
  if (!__LegacyBridge)
  {
    v6 = +[SUClient sharedClient];
    if (!v6)
    {
      v6 = +[SUClientController sharedController];
    }
  }

  return [v6 composeReviewWithViewController:a3 animated:v4];
}

+ (void)dismissOverlayBackgroundViewController
{
  v2 = __LegacyBridge;
  if (!__LegacyBridge)
  {
    v2 = +[SUStoreController sharedInstance];
    if (!v2)
    {
      v2 = +[SUClientController sharedController];
    }
  }

  [(SUStoreController *)v2 dismissOverlayBackgroundViewController];
}

+ (BOOL)enterAccountFlowWithViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = __LegacyBridge;
  if (__LegacyBridge || (v6 = +[SUClient sharedClient]) != 0)
  {

    return [v6 enterAccountFlowWithViewController:a3 animated:v4];
  }

  else
  {
    v8 = +[SUClientController sharedController];

    return [v8 presentAccountViewController:a3 animated:v4];
  }
}

+ (id)exitStoreButtonTitle
{
  if (__LegacyBridge)
  {
    return 0;
  }

  v2 = +[SUClientApplicationController sharedController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 exitStoreButtonTitle];
}

+ (BOOL)hidePreviewOverlayAnimated:(BOOL)a3
{
  v3 = __LegacyBridge;
  if (__LegacyBridge)
  {
    [__LegacyBridge hidePreviewOverlayAnimated:a3];
  }

  return v3 != 0;
}

+ (id)imageCache
{
  v2 = +[SUClient sharedClient];
  if (!v2)
  {
    v2 = +[SUClientController sharedController];
  }

  return [v2 imageCache];
}

+ (id)imagePool
{
  v2 = +[SUClient sharedClient];
  if (v2)
  {

    return [v2 imagePool];
  }

  else
  {
    v4 = +[SUClientController sharedController];

    return [v4 imageOperationPool];
  }
}

+ (BOOL)isTabBarControllerLoaded
{
  if (__LegacyBridge)
  {
    return 1;
  }

  v3 = +[SUStoreController sharedInstance];
  if (!v3)
  {
    v4 = +[SUClientApplicationController sharedController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v3 = v4;
  }

  return [(SUStoreController *)v3 isTabBarControllerLoaded];
}

+ (BOOL)matchesClientApplication:(id)a3
{
  if (__LegacyBridge)
  {
    v4 = [__LegacyBridge clientInterface];
LABEL_3:
    v5 = [v4 clientIdentifier];

    return [v5 isEqualToString:a3];
  }

  v7 = +[SUStoreController sharedInstance];
  if (!v7)
  {
    v4 = +[SUClientController sharedController];
    goto LABEL_3;
  }

  return [(SUStoreController *)v7 matchesClientApplication:a3];
}

+ (id)newScriptInterface
{
  if (__LegacyBridge)
  {

    return objc_alloc_init(SUScriptInterface);
  }

  else
  {
    v3 = +[SUStoreController sharedInstance];
    if (!v3)
    {
      v3 = +[SUClientController sharedController];
    }

    return [(SUStoreController *)v3 newScriptInterface];
  }
}

+ (id)overlayBackgroundViewController
{
  v2 = __LegacyBridge;
  if (!__LegacyBridge)
  {
    v2 = +[SUStoreController sharedInstance];
    if (!v2)
    {
      v2 = +[SUClientController sharedController];
    }
  }

  return [(SUStoreController *)v2 overlayBackgroundViewController];
}

+ (id)overlayConfigurationForStorePage:(id)a3
{
  if (__LegacyBridge)
  {
    return 0;
  }

  v5 = +[SUStoreController sharedInstance];
  if (!v5)
  {
    v5 = +[SUClientController sharedController];
  }

  return [(SUStoreController *)v5 overlayConfigurationForStorePage:a3];
}

+ (BOOL)presentOverlayBackgroundViewController:(id)a3
{
  v4 = __LegacyBridge;
  if (!__LegacyBridge)
  {
    v4 = +[SUStoreController sharedInstance];
    if (!v4)
    {
      v4 = +[SUClientController sharedController];
    }
  }

  return [(SUStoreController *)v4 presentOverlayBackgroundViewController:a3];
}

+ (id)scriptExecutionContext
{
  if (__LegacyBridge)
  {
    return 0;
  }

  v3 = +[SUClient sharedClient];
  if (!v3)
  {
    v3 = +[SUClientController sharedController];
  }

  return [v3 scriptExecutionContext];
}

+ (BOOL)sendActionForDialog:(id)a3 button:(id)a4
{
  v6 = __LegacyBridge;
  if (__LegacyBridge)
  {
LABEL_2:

    return [v6 performActionForDialog:a3 button:a4];
  }

  v8 = +[SUClient sharedClient];
  if (!v8)
  {
    v6 = +[SUClientController sharedController];
    goto LABEL_2;
  }

  return [v8 sendActionForDialog:a3 button:a4];
}

+ (void)setClientBridge:(id)a3
{
  if (__LegacyBridge != a3)
  {

    __LegacyBridge = a3;
  }
}

+ (BOOL)showPreviewOverlayAnimated:(BOOL)a3
{
  v3 = __LegacyBridge;
  if (__LegacyBridge)
  {
    [__LegacyBridge showPreviewOverlayAnimated:a3];
  }

  return v3 != 0;
}

+ (id)tabBarController
{
  v2 = +[SUStoreController sharedInstance];
  if (!v2)
  {
    v3 = +[SUClientApplicationController sharedController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v2 = v3;
  }

  return [(SUStoreController *)v2 tabBarController];
}

+ (BOOL)wasLaunchedFromLibrary
{
  if (__LegacyBridge)
  {
    return 0;
  }

  v2 = +[SUClientApplicationController sharedController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 wasLaunchedFromLibrary];
}

@end
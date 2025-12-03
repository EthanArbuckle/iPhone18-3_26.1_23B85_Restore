@interface SUClientDispatch
+ (BOOL)composeReviewWithViewController:(id)controller animated:(BOOL)animated;
+ (BOOL)enterAccountFlowWithViewController:(id)controller animated:(BOOL)animated;
+ (BOOL)hidePreviewOverlayAnimated:(BOOL)animated;
+ (BOOL)isTabBarControllerLoaded;
+ (BOOL)matchesClientApplication:(id)application;
+ (BOOL)presentOverlayBackgroundViewController:(id)controller;
+ (BOOL)sendActionForDialog:(id)dialog button:(id)button;
+ (BOOL)showPreviewOverlayAnimated:(BOOL)animated;
+ (BOOL)wasLaunchedFromLibrary;
+ (id)clientInterface;
+ (id)exitStoreButtonTitle;
+ (id)imageCache;
+ (id)imagePool;
+ (id)newScriptInterface;
+ (id)overlayBackgroundViewController;
+ (id)overlayConfigurationForStorePage:(id)page;
+ (id)scriptExecutionContext;
+ (id)tabBarController;
+ (void)composeEmailWithSubject:(id)subject body:(id)body;
+ (void)dismissOverlayBackgroundViewController;
+ (void)setClientBridge:(id)bridge;
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

+ (void)composeEmailWithSubject:(id)subject body:(id)body
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

  [(SUStoreController *)v6 composeEmailWithSubject:subject body:body];
}

+ (BOOL)composeReviewWithViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = __LegacyBridge;
  if (!__LegacyBridge)
  {
    v6 = +[SUClient sharedClient];
    if (!v6)
    {
      v6 = +[SUClientController sharedController];
    }
  }

  return [v6 composeReviewWithViewController:controller animated:animatedCopy];
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

+ (BOOL)enterAccountFlowWithViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = __LegacyBridge;
  if (__LegacyBridge || (v6 = +[SUClient sharedClient]) != 0)
  {

    return [v6 enterAccountFlowWithViewController:controller animated:animatedCopy];
  }

  else
  {
    v8 = +[SUClientController sharedController];

    return [v8 presentAccountViewController:controller animated:animatedCopy];
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

+ (BOOL)hidePreviewOverlayAnimated:(BOOL)animated
{
  v3 = __LegacyBridge;
  if (__LegacyBridge)
  {
    [__LegacyBridge hidePreviewOverlayAnimated:animated];
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

+ (BOOL)matchesClientApplication:(id)application
{
  if (__LegacyBridge)
  {
    clientInterface = [__LegacyBridge clientInterface];
LABEL_3:
    clientIdentifier = [clientInterface clientIdentifier];

    return [clientIdentifier isEqualToString:application];
  }

  v7 = +[SUStoreController sharedInstance];
  if (!v7)
  {
    clientInterface = +[SUClientController sharedController];
    goto LABEL_3;
  }

  return [(SUStoreController *)v7 matchesClientApplication:application];
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

+ (id)overlayConfigurationForStorePage:(id)page
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

  return [(SUStoreController *)v5 overlayConfigurationForStorePage:page];
}

+ (BOOL)presentOverlayBackgroundViewController:(id)controller
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

  return [(SUStoreController *)v4 presentOverlayBackgroundViewController:controller];
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

+ (BOOL)sendActionForDialog:(id)dialog button:(id)button
{
  v6 = __LegacyBridge;
  if (__LegacyBridge)
  {
LABEL_2:

    return [v6 performActionForDialog:dialog button:button];
  }

  v8 = +[SUClient sharedClient];
  if (!v8)
  {
    v6 = +[SUClientController sharedController];
    goto LABEL_2;
  }

  return [v8 sendActionForDialog:dialog button:button];
}

+ (void)setClientBridge:(id)bridge
{
  if (__LegacyBridge != bridge)
  {

    __LegacyBridge = bridge;
  }
}

+ (BOOL)showPreviewOverlayAnimated:(BOOL)animated
{
  v3 = __LegacyBridge;
  if (__LegacyBridge)
  {
    [__LegacyBridge showPreviewOverlayAnimated:animated];
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
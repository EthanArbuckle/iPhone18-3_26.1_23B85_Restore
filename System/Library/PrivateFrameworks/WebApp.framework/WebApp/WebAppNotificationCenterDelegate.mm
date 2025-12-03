@interface WebAppNotificationCenterDelegate
+ (id)sharedDelegate;
- (WebAppNotificationCenterDelegate)init;
- (void)addWebAppViewController:(id)controller;
- (void)removeWebAppViewController:(id)controller;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation WebAppNotificationCenterDelegate

+ (id)sharedDelegate
{
  if (sharedDelegate_onceToken != -1)
  {
    +[WebAppNotificationCenterDelegate sharedDelegate];
  }

  v3 = sharedDelegate_sharedDelegate;

  return v3;
}

void __50__WebAppNotificationCenterDelegate_sharedDelegate__block_invoke()
{
  v0 = objc_alloc_init(WebAppNotificationCenterDelegate);
  v1 = sharedDelegate_sharedDelegate;
  sharedDelegate_sharedDelegate = v0;

  v2 = sharedDelegate_sharedDelegate;
  v3 = [MEMORY[0x277CE2028] currentNotificationCenter];
  [v3 setDelegate:v2];
}

- (WebAppNotificationCenterDelegate)init
{
  v7.receiver = self;
  v7.super_class = WebAppNotificationCenterDelegate;
  v2 = [(WebAppNotificationCenterDelegate *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    webAppViewControllers = v2->_webAppViewControllers;
    v2->_webAppViewControllers = v3;

    v5 = v2;
  }

  return v2;
}

- (void)addWebAppViewController:(id)controller
{
  webAppViewControllers = self->_webAppViewControllers;
  controllerCopy = controller;
  webClip = [controllerCopy webClip];
  identifier = [webClip identifier];
  [(NSMutableDictionary *)webAppViewControllers setObject:controllerCopy forKeyedSubscript:identifier];
}

- (void)removeWebAppViewController:(id)controller
{
  controllerCopy = controller;
  webClip = [controllerCopy webClip];
  identifier = [webClip identifier];

  if (identifier)
  {
    webAppViewControllers = self->_webAppViewControllers;
    webClip2 = [controllerCopy webClip];
    identifier2 = [webClip2 identifier];
    [(NSMutableDictionary *)webAppViewControllers setObject:0 forKeyedSubscript:identifier2];
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  actionIdentifier = [responseCopy actionIdentifier];
  v10 = [actionIdentifier isEqualToString:*MEMORY[0x277CE20E8]];

  if (v10)
  {
    webAppViewControllers = self->_webAppViewControllers;
    notification = [responseCopy notification];
    request = [notification request];
    content = [request content];
    targetContentIdentifier = [content targetContentIdentifier];
    v16 = [(NSMutableDictionary *)webAppViewControllers objectForKeyedSubscript:targetContentIdentifier];

    if (v16)
    {
      notification2 = [responseCopy notification];
      request2 = [notification2 request];
      content2 = [request2 content];
      userInfo = [content2 userInfo];
      [v16 notificationActivated:userInfo];
    }

    else
    {
      notification2 = viewServiceLog();
      if (!os_log_type_enabled(notification2, OS_LOG_TYPE_INFO))
      {
LABEL_10:

        handlerCopy[2](handlerCopy);
        goto LABEL_11;
      }

      request2 = [responseCopy notification];
      content2 = [request2 request];
      userInfo = [content2 content];
      targetContentIdentifier2 = [userInfo targetContentIdentifier];
      v25 = 138543362;
      v26 = targetContentIdentifier2;
      _os_log_impl(&dword_272C17000, notification2, OS_LOG_TYPE_INFO, "Received UNNotificationResponse for WebClip %{public}@, but cannot find associated WebAppViewController", &v25, 0xCu);
    }

    goto LABEL_10;
  }

  v21 = viewServiceLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    actionIdentifier2 = [responseCopy actionIdentifier];
    v25 = 138412290;
    v26 = actionIdentifier2;
    _os_log_impl(&dword_272C17000, v21, OS_LOG_TYPE_INFO, "Received UNNotificationResponse that was not for the default action: %@", &v25, 0xCu);
  }

  handlerCopy[2](handlerCopy);
LABEL_11:

  v24 = *MEMORY[0x277D85DE8];
}

@end
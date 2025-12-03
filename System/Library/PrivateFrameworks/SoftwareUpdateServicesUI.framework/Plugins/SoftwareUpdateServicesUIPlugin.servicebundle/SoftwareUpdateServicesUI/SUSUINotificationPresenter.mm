@interface SUSUINotificationPresenter
- (BOOL)presentAlert;
- (SUSUINotificationPresenter)init;
- (SUSUINotificationPresenter)initWithQueue:(id)queue alert:(id)alert;
- (id)_notificationButtonActions;
- (id)_notificationButtons;
- (id)_notificationOptions;
- (int)_SBPresentationStyleForSUSPresentationStyle:(unint64_t)style;
- (unint64_t)_notificationFlags;
- (void)dismissAlert;
- (void)updateAlert;
@end

@implementation SUSUINotificationPresenter

- (SUSUINotificationPresenter)init
{
  location = self;
  objc_storeStrong(&location, 0);
  return 0;
}

- (SUSUINotificationPresenter)initWithQueue:(id)queue alert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queue);
  v10 = 0;
  objc_storeStrong(&v10, alert);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = SUSUINotificationPresenter;
  v8 = [(SUSUINotificationPresenter *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_alertItem, v10);
    objc_storeStrong(&selfCopy->_queue, location[0]);
    selfCopy->_notification = 0;
    objc_storeStrong(&selfCopy->_buttonActions, 0);
  }

  v6 = selfCopy;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (BOOL)presentAlert
{
  selfCopy = self;
  v19 = a2;
  [(SUSUIBaseAlertItem *)self->_alertItem willPresentAlert];
  _notificationFlags = [(SUSUINotificationPresenter *)selfCopy _notificationFlags];
  _notificationOptions = [(SUSUINotificationPresenter *)selfCopy _notificationOptions];
  _notificationButtonActions = [(SUSUINotificationPresenter *)selfCopy _notificationButtonActions];
  error = -1;
  v2 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, _notificationFlags, &error, _notificationOptions);
  selfCopy->_notification = v2;
  if (selfCopy->_notification && !error)
  {
    queue = dispatch_get_global_queue(33, 0);
    v5 = _NSConcreteStackBlock;
    v6 = -1073741824;
    v7 = 0;
    v8 = sub_38648;
    v9 = &unk_5D008;
    v10 = selfCopy;
    v11 = _notificationButtonActions;
    dispatch_async(queue, &v5);

    v21 = 1;
    v12 = 1;
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
  }

  else
  {
    location = SUSUILog();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      sub_13774(v22, error);
      _os_log_impl(&dword_0, location, v13, "failed to display notification: %ld", v22, 0xCu);
    }

    objc_storeStrong(&location, 0);
    v21 = 0;
    v12 = 1;
  }

  objc_storeStrong(&_notificationButtonActions, 0);
  objc_storeStrong(&_notificationOptions, 0);
  return v21 & 1;
}

- (void)dismissAlert
{
  if (self->_notification)
  {
    CFUserNotificationCancel(self->_notification);
  }
}

- (void)updateAlert
{
  selfCopy = self;
  v4 = a2;
  flags = [(SUSUINotificationPresenter *)self _notificationFlags];
  dictionary = [(SUSUINotificationPresenter *)selfCopy _notificationOptions];
  if (selfCopy->_notification)
  {
    CFUserNotificationUpdate(selfCopy->_notification, 0.0, flags, dictionary);
  }

  objc_storeStrong(&dictionary, 0);
}

- (id)_notificationOptions
{
  selfCopy = self;
  v42[1] = a2;
  v42[0] = +[NSMutableDictionary dictionary];
  buildAlertItemDefinition = [(SUSUIBaseAlertItem *)selfCopy->_alertItem buildAlertItemDefinition];
  title = [buildAlertItemDefinition title];

  if (title)
  {
    title2 = [buildAlertItemDefinition title];
    [v42[0] setObject:? forKeyedSubscript:?];
  }

  contentExtensionID = [(SUSUIBaseAlertItem *)selfCopy->_alertItem contentExtensionID];

  if (contentExtensionID)
  {
    contentExtensionID2 = [(SUSUIBaseAlertItem *)selfCopy->_alertItem contentExtensionID];
    [v42[0] setObject:? forKeyedSubscript:?];

    extensionDictionary = [(SUSUIBaseAlertItem *)selfCopy->_alertItem extensionDictionary];
    if (extensionDictionary)
    {
      v40 = objc_alloc_init(NSExtensionItem);
      extensionDictionary2 = [(SUSUIBaseAlertItem *)selfCopy->_alertItem extensionDictionary];
      [v40 setUserInfo:?];

      v48 = v40;
      v26 = [NSArray arrayWithObjects:&v48 count:1];
      location = [NSKeyedArchiver archivedDataWithRootObject:"archivedDataWithRootObject:requiringSecureCoding:error:" requiringSecureCoding:? error:?];

      if (location)
      {
        [v42[0] setObject:location forKeyedSubscript:SBUserNotificationExtensionItemsKey];
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v40, 0);
    }
  }

  else
  {
    message = [buildAlertItemDefinition message];

    if (message)
    {
      message2 = [buildAlertItemDefinition message];
      [v42[0] setObject:? forKeyedSubscript:?];
    }
  }

  _notificationButtons = [(SUSUINotificationPresenter *)selfCopy _notificationButtons];
  if (_notificationButtons && [_notificationButtons count])
  {
    _notificationButtons2 = [(SUSUINotificationPresenter *)selfCopy _notificationButtons];
    [v42[0] setObject:? forKeyedSubscript:?];
  }

  alertItem = [(SUSUINotificationPresenter *)selfCopy alertItem];
  graphicIcon = [(SUSUIBaseAlertItem *)alertItem graphicIcon];

  if (graphicIcon)
  {
    v46 = SBUserNotificationGraphicIconTypeKey;
    alertItem2 = [(SUSUINotificationPresenter *)selfCopy alertItem];
    graphicIcon2 = [(SUSUIBaseAlertItem *)alertItem2 graphicIcon];
    v47 = graphicIcon2;
    v19 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    [v42[0] setObject:? forKeyedSubscript:?];

    [v42[0] setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationIconDoNotMaskKey];
    v37 = SUSUILog();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      log = v37;
      type = v36;
      alertItem3 = [(SUSUINotificationPresenter *)selfCopy alertItem];
      graphicIcon3 = [(SUSUIBaseAlertItem *)alertItem3 graphicIcon];
      v35 = graphicIcon3;
      sub_1FCC(v45, v35);
      _os_log_impl(&dword_0, log, type, "Using custom graphic icon: %@", v45, 0xCu);

      objc_storeStrong(&v35, 0);
    }

    objc_storeStrong(&v37, 0);
  }

  v5 = [NSNumber numberWithBool:[(SUSUIBaseAlertItem *)selfCopy->_alertItem shouldShowInLockScreen]];
  [v42[0] setObject:? forKeyedSubscript:?];

  v6 = [NSNumber numberWithInt:[(SUSUIBaseAlertItem *)selfCopy->_alertItem reappearsAfterLock]^ 1];
  [v42[0] setObject:? forKeyedSubscript:?];

  v7 = [NSNumber numberWithBool:[(SUSUIBaseAlertItem *)selfCopy->_alertItem reappearsAfterUnlock]];
  [v42[0] setObject:? forKeyedSubscript:?];

  v8 = [NSNumber numberWithBool:[(SUSUIBaseAlertItem *)selfCopy->_alertItem forcesModalAlertAppearance]];
  [v42[0] setObject:? forKeyedSubscript:?];

  v9 = [NSNumber numberWithBool:[(SUSUIBaseAlertItem *)selfCopy->_alertItem showButtonsOnLockScreen]];
  [v42[0] setObject:? forKeyedSubscript:?];

  v10 = [NSNumber numberWithBool:[(SUSUIBaseAlertItem *)selfCopy->_alertItem allowInSetup]];
  [v42[0] setObject:? forKeyedSubscript:?];

  v11 = [NSNumber numberWithBool:[(SUSUIBaseAlertItem *)selfCopy->_alertItem undimsScreen]];
  [v42[0] setObject:? forKeyedSubscript:?];

  v12 = [NSNumber numberWithBool:[(SUSUIBaseAlertItem *)selfCopy->_alertItem allowLockScreenDismissal]];
  [v42[0] setObject:? forKeyedSubscript:?];

  v13 = [NSNumber numberWithBool:[(SUSUIBaseAlertItem *)selfCopy->_alertItem allowMenuButtonDismissal]];
  [v42[0] setObject:? forKeyedSubscript:?];

  allowedApps = [(SUSUIBaseAlertItem *)selfCopy->_alertItem allowedApps];
  if (allowedApps)
  {
    allowedApps2 = [(SUSUIBaseAlertItem *)selfCopy->_alertItem allowedApps];
    [v42[0] setObject:? forKeyedSubscript:?];
  }

  v34 = SUSUILog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    sub_1FCC(v44, v42[0]);
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "notificationOptions %@", v44, 0xCu);
  }

  objc_storeStrong(&v34, 0);
  v3 = v42[0];
  objc_storeStrong(&_notificationButtons, 0);
  objc_storeStrong(&buildAlertItemDefinition, 0);
  objc_storeStrong(v42, 0);

  return v3;
}

- (unint64_t)_notificationFlags
{
  v3 = 3;
  if ([(SUSUIBaseAlertItem *)self->_alertItem allowNoButton])
  {
    return 35;
  }

  return v3;
}

- (id)_notificationButtons
{
  selfCopy = self;
  v18[1] = a2;
  v18[0] = +[NSMutableArray array];
  buildAlertItemDefinition = [(SUSUIBaseAlertItem *)selfCopy->_alertItem buildAlertItemDefinition];
  memset(__b, 0, sizeof(__b));
  obj = [buildAlertItemDefinition buttons];
  v13 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(__b[1] + 8 * v10);
      v4 = [SBSMutableUserNotificationButtonDefinition alloc];
      label = [v16 label];
      v14 = [v4 initWithTitle:?];

      [v14 setPresentationStyle:{-[SUSUINotificationPresenter _SBPresentationStyleForSUSPresentationStyle:](selfCopy, "_SBPresentationStyleForSUSPresentationStyle:", objc_msgSend(v16, "presentationStyle"))}];
      [v14 setIsPreferredButton:{objc_msgSend(v16, "isPreferredButton")}];
      v6 = v18[0];
      build = [v14 build];
      [v6 addObject:?];

      objc_storeStrong(&v14, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  v3 = [v18[0] copy];
  objc_storeStrong(&buildAlertItemDefinition, 0);
  objc_storeStrong(v18, 0);

  return v3;
}

- (id)_notificationButtonActions
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = +[NSMutableArray array];
  location = [(SUSUIBaseAlertItem *)selfCopy->_alertItem buildAlertItemDefinition];
  memset(__b, 0, sizeof(__b));
  obj = [location buttons];
  v11 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v8);
      v4 = v15[0];
      handler = [v13 handler];
      [v4 addObject:?];

      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  v3 = [v15[0] copy];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v15, 0);

  return v3;
}

- (int)_SBPresentationStyleForSUSPresentationStyle:(unint64_t)style
{
  if (!style)
  {
    return 0;
  }

  if (style == 1)
  {
    return 1;
  }

  if (style != 2)
  {
    return 0;
  }

  return 2;
}

@end
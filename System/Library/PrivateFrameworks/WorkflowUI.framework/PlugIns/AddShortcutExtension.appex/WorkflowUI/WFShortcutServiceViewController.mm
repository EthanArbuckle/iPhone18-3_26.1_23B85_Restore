@interface WFShortcutServiceViewController
+ (void)initialize;
- (NSBundle)bundle;
- (id)_secureHostApplicationBundleIdentifier;
- (id)notificationNameForApplicationStateEvent:(int64_t)event;
- (id)remoteViewControllerProxy;
- (void)_startAccessingAppBundle;
- (void)_stopAccessingAppBundle;
- (void)addToSiriViewController:(id)controller didCreateShortcut:(id)shortcut;
- (void)addToSiriViewController:(id)controller didDeleteShortcut:(id)shortcut;
- (void)addToSiriViewController:(id)controller didSaveShortcut:(id)shortcut;
- (void)addToSiriViewControllerDidCancel:(id)cancel;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)buildForAddingShortcut:(id)shortcut;
- (void)buildForEditingVoiceShortcut:(id)shortcut;
- (void)loadView;
- (void)setupWithShortcutViewController:(id)controller;
@end

@implementation WFShortcutServiceViewController

- (NSBundle)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)notificationNameForApplicationStateEvent:(int64_t)event
{
  if (event <= 3)
  {
    self = **(&off_1000082A8 + event);
  }

  return self;
}

- (void)addToSiriViewController:(id)controller didDeleteShortcut:(id)shortcut
{
  controllerCopy = controller;
  shortcutCopy = shortcut;
  childViewController = [(WFShortcutServiceViewController *)self childViewController];

  if (childViewController == controllerCopy)
  {
    v10 = [NSUUID alloc];
    reference = [shortcutCopy reference];
    identifier = [reference identifier];
    v13 = [v10 initWithUUIDString:identifier];

    remoteViewControllerProxy = [(WFShortcutServiceViewController *)self remoteViewControllerProxy];
    [remoteViewControllerProxy remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:v13];
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[WFShortcutServiceViewController addToSiriViewController:didDeleteShortcut:]";
      v17 = 2114;
      v18 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Unexpected viewController=%{public}@", &v15, 0x16u);
    }
  }
}

- (void)addToSiriViewController:(id)controller didSaveShortcut:(id)shortcut
{
  controllerCopy = controller;
  shortcutCopy = shortcut;
  childViewController = [(WFShortcutServiceViewController *)self childViewController];

  if (childViewController == controllerCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001380;
    v10[3] = &unk_100008260;
    v10[4] = self;
    sub_1000013E4(shortcutCopy, v10);
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[WFShortcutServiceViewController addToSiriViewController:didSaveShortcut:]";
      v13 = 2114;
      v14 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Unexpected viewController=%{public}@", buf, 0x16u);
    }
  }
}

- (void)addToSiriViewController:(id)controller didCreateShortcut:(id)shortcut
{
  controllerCopy = controller;
  shortcutCopy = shortcut;
  childViewController = [(WFShortcutServiceViewController *)self childViewController];

  if (childViewController == controllerCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001708;
    v10[3] = &unk_100008260;
    v10[4] = self;
    sub_1000013E4(shortcutCopy, v10);
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[WFShortcutServiceViewController addToSiriViewController:didCreateShortcut:]";
      v13 = 2114;
      v14 = controllerCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Unexpected viewController=%{public}@", buf, 0x16u);
    }
  }
}

- (void)addToSiriViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  childViewController = [(WFShortcutServiceViewController *)self childViewController];

  if (childViewController == cancelCopy)
  {
    remoteViewControllerProxy = [(WFShortcutServiceViewController *)self remoteViewControllerProxy];
    [remoteViewControllerProxy remoteViewControllerDidCancel];
  }

  else
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[WFShortcutServiceViewController addToSiriViewControllerDidCancel:]";
      v10 = 2114;
      v11 = cancelCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Unexpected viewController=%{public}@", &v8, 0x16u);
    }
  }
}

- (void)setupWithShortcutViewController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setDelegate:self];
  [controllerCopy willMoveToParentViewController:self];
  [(WFShortcutServiceViewController *)self addChildViewController:controllerCopy];
  view = [controllerCopy view];
  view2 = [(WFShortcutServiceViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  view3 = [controllerCopy view];
  [view3 setAutoresizingMask:18];

  view4 = [(WFShortcutServiceViewController *)self view];
  view5 = [controllerCopy view];
  [view4 addSubview:view5];

  [controllerCopy didMoveToParentViewController:self];
  [(WFShortcutServiceViewController *)self setChildViewController:controllerCopy];
}

- (void)buildForEditingVoiceShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v5 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[WFShortcutServiceViewController buildForEditingVoiceShortcut:]";
    v26 = 2114;
    v27 = shortcutCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Build for editing voiceShortcut=%{public}@", buf, 0x16u);
  }

  v6 = +[WFDatabase defaultDatabase];
  identifier = [shortcutCopy identifier];
  uUIDString = [identifier UUIDString];
  v9 = [v6 referenceForWorkflowID:uUIDString];

  if (v9)
  {
    v23 = 0;
    v10 = [WFWorkflow workflowWithReference:v9 database:v6 error:&v23];
    v11 = v23;
    if (v10)
    {
      v12 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v25 = "[WFShortcutServiceViewController buildForEditingVoiceShortcut:]";
        v26 = 2112;
        v27 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Got shortcut=%@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100001CD0;
      block[3] = &unk_100008238;
      objc_copyWeak(&v22, buf);
      v21 = v10;
      v13 = v10;
      dispatch_async(&_dispatch_main_q, block);

      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v18 = v14;
    identifier2 = [shortcutCopy identifier];
    *buf = 136315394;
    v25 = "[WFShortcutServiceViewController buildForEditingVoiceShortcut:]";
    v26 = 2114;
    v27 = identifier2;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Couldn't find shortcut with identfier=%{public}@", buf, 0x16u);
  }

  identifier3 = [shortcutCopy identifier];
  v16 = [NSString stringWithFormat:@"Couldn't find shortcut to edit with identifier=%@", identifier3];
  v13 = INIntentError();

  remoteViewControllerProxy = [(WFShortcutServiceViewController *)self remoteViewControllerProxy];
  [remoteViewControllerProxy remoteViewControllerDidUpdateVoiceShortcut:0 error:v13];

LABEL_12:
}

- (void)buildForAddingShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v5 = INSiriLogContextIntents;
  if (shortcutCopy)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[WFShortcutServiceViewController buildForAddingShortcut:]";
      v13 = 2114;
      v14 = shortcutCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s build for adding shortcut=%{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001F64;
    v8[3] = &unk_100008238;
    objc_copyWeak(&v10, buf);
    v9 = shortcutCopy;
    dispatch_async(&_dispatch_main_q, v8);

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = "[WFShortcutServiceViewController buildForAddingShortcut:]";
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s No shortcut provided to shortcut service", buf, 0xCu);
    }

    v6 = INIntentError();
    remoteViewControllerProxy = [(WFShortcutServiceViewController *)self remoteViewControllerProxy];
    [remoteViewControllerProxy remoteViewControllerDidCreateVoiceShortcut:0 error:v6];
  }
}

- (id)remoteViewControllerProxy
{
  _remoteViewControllerProxy = [(WFShortcutServiceViewController *)self _remoteViewControllerProxy];
  v4 = _remoteViewControllerProxy;
  if (_remoteViewControllerProxy)
  {
    remoteObjectProxy = _remoteViewControllerProxy;
  }

  else
  {
    extensionContext = [(WFShortcutServiceViewController *)self extensionContext];
    _auxiliaryConnection = [extensionContext _auxiliaryConnection];
    remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];
  }

  return remoteObjectProxy;
}

- (void)_stopAccessingAppBundle
{
  containedAppBundleURL = self->_containedAppBundleURL;
  if (containedAppBundleURL)
  {
    [(NSURL *)containedAppBundleURL stopAccessingSecurityScopedResource];
    v4 = self->_containedAppBundleURL;
    self->_containedAppBundleURL = 0;
  }
}

- (void)_startAccessingAppBundle
{
  [(WFShortcutServiceViewController *)self _stopAccessingAppBundle];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  extensionContext = [(WFShortcutServiceViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];

  v5 = [inputItems countByEnumeratingWithState:&v20 objects:v24 count:16];
  v6 = &NSObject__properties;
  if (v5)
  {
    v7 = v5;
    v8 = *v21;
    v9 = INUIVoiceShortcutExtensionItemBundleURLKey;
    v10 = INUIVoiceShortcutExtensionItemSandboxExtensionDataKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(inputItems);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        userInfo = [v12 userInfo];
        v14 = [userInfo objectForKey:v9];

        userInfo2 = [v12 userInfo];
        v16 = [userInfo2 objectForKey:v10];

        if (v14)
        {
          v17 = v16 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          _CFURLAttachSecurityScopeToFileURL();
          v6 = &NSObject__properties;
          containedAppBundleURL = self->_containedAppBundleURL;
          self->_containedAppBundleURL = v14;

          goto LABEL_13;
        }
      }

      v7 = [inputItems countByEnumeratingWithState:&v20 objects:v24 count:16];
      v6 = &NSObject__properties;
    }

    while (v7);
  }

LABEL_13:

  v19 = *(&self->super.super.super.isa + v6[256].count);
  if (v19)
  {
    [v19 startAccessingSecurityScopedResource];
  }
}

- (id)_secureHostApplicationBundleIdentifier
{
  extensionContext = [(WFShortcutServiceViewController *)self extensionContext];
  if (extensionContext)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = extensionContext;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v12 = 0u;
  v13 = 0u;
  if (v5)
  {
    _auxiliaryConnection = [v5 _auxiliaryConnection];
    v7 = _auxiliaryConnection;
    if (_auxiliaryConnection)
    {
      [_auxiliaryConnection auditToken];
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }
  }

  else
  {
    [(WFShortcutServiceViewController *)self _hostAuditToken];
  }

  v11[0] = v12;
  v11[1] = v13;
  v8 = [VCAccessSpecifier accessSpecifierForAuditToken:v11];
  associatedAppBundleIdentifier = [v8 associatedAppBundleIdentifier];

  return associatedAppBundleIdentifier;
}

- (void)loadView
{
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = +[UIColor whiteColor];
  [v4 setBackgroundColor:v3];

  [(WFShortcutServiceViewController *)self setView:v4];
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = WFShortcutServiceViewController;
  [(WFShortcutServiceViewController *)&v9 beginRequestWithExtensionContext:contextCopy];
  [contextCopy setExtensionApplicationContextProviderDelegate:self];
  v5 = +[WFApplicationContext sharedContext];
  [v5 setProvider:contextCopy];

  [WFInitialization initializeProcessWithDatabase:1];
  v6 = contextCopy;
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setDelegate:self];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    _INLogInitIfNeeded();
  }
}

@end
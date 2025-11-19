@interface WFShortcutServiceViewController
+ (void)initialize;
- (NSBundle)bundle;
- (id)_secureHostApplicationBundleIdentifier;
- (id)notificationNameForApplicationStateEvent:(int64_t)a3;
- (id)remoteViewControllerProxy;
- (void)_startAccessingAppBundle;
- (void)_stopAccessingAppBundle;
- (void)addToSiriViewController:(id)a3 didCreateShortcut:(id)a4;
- (void)addToSiriViewController:(id)a3 didDeleteShortcut:(id)a4;
- (void)addToSiriViewController:(id)a3 didSaveShortcut:(id)a4;
- (void)addToSiriViewControllerDidCancel:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)buildForAddingShortcut:(id)a3;
- (void)buildForEditingVoiceShortcut:(id)a3;
- (void)loadView;
- (void)setupWithShortcutViewController:(id)a3;
@end

@implementation WFShortcutServiceViewController

- (NSBundle)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)notificationNameForApplicationStateEvent:(int64_t)a3
{
  if (a3 <= 3)
  {
    self = **(&off_1000082A8 + a3);
  }

  return self;
}

- (void)addToSiriViewController:(id)a3 didDeleteShortcut:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFShortcutServiceViewController *)self childViewController];

  if (v8 == v6)
  {
    v10 = [NSUUID alloc];
    v11 = [v7 reference];
    v12 = [v11 identifier];
    v13 = [v10 initWithUUIDString:v12];

    v14 = [(WFShortcutServiceViewController *)self remoteViewControllerProxy];
    [v14 remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:v13];
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v15 = 136315394;
      v16 = "[WFShortcutServiceViewController addToSiriViewController:didDeleteShortcut:]";
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Unexpected viewController=%{public}@", &v15, 0x16u);
    }
  }
}

- (void)addToSiriViewController:(id)a3 didSaveShortcut:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFShortcutServiceViewController *)self childViewController];

  if (v8 == v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001380;
    v10[3] = &unk_100008260;
    v10[4] = self;
    sub_1000013E4(v7, v10);
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[WFShortcutServiceViewController addToSiriViewController:didSaveShortcut:]";
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Unexpected viewController=%{public}@", buf, 0x16u);
    }
  }
}

- (void)addToSiriViewController:(id)a3 didCreateShortcut:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFShortcutServiceViewController *)self childViewController];

  if (v8 == v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001708;
    v10[3] = &unk_100008260;
    v10[4] = self;
    sub_1000013E4(v7, v10);
  }

  else
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[WFShortcutServiceViewController addToSiriViewController:didCreateShortcut:]";
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s Unexpected viewController=%{public}@", buf, 0x16u);
    }
  }
}

- (void)addToSiriViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = [(WFShortcutServiceViewController *)self childViewController];

  if (v5 == v4)
  {
    v7 = [(WFShortcutServiceViewController *)self remoteViewControllerProxy];
    [v7 remoteViewControllerDidCancel];
  }

  else
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[WFShortcutServiceViewController addToSiriViewControllerDidCancel:]";
      v10 = 2114;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Unexpected viewController=%{public}@", &v8, 0x16u);
    }
  }
}

- (void)setupWithShortcutViewController:(id)a3
{
  v9 = a3;
  [v9 setDelegate:self];
  [v9 willMoveToParentViewController:self];
  [(WFShortcutServiceViewController *)self addChildViewController:v9];
  v4 = [v9 view];
  v5 = [(WFShortcutServiceViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];

  v6 = [v9 view];
  [v6 setAutoresizingMask:18];

  v7 = [(WFShortcutServiceViewController *)self view];
  v8 = [v9 view];
  [v7 addSubview:v8];

  [v9 didMoveToParentViewController:self];
  [(WFShortcutServiceViewController *)self setChildViewController:v9];
}

- (void)buildForEditingVoiceShortcut:(id)a3
{
  v4 = a3;
  v5 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v25 = "[WFShortcutServiceViewController buildForEditingVoiceShortcut:]";
    v26 = 2114;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s Build for editing voiceShortcut=%{public}@", buf, 0x16u);
  }

  v6 = +[WFDatabase defaultDatabase];
  v7 = [v4 identifier];
  v8 = [v7 UUIDString];
  v9 = [v6 referenceForWorkflowID:v8];

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
    v19 = [v4 identifier];
    *buf = 136315394;
    v25 = "[WFShortcutServiceViewController buildForEditingVoiceShortcut:]";
    v26 = 2114;
    v27 = v19;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Couldn't find shortcut with identfier=%{public}@", buf, 0x16u);
  }

  v15 = [v4 identifier];
  v16 = [NSString stringWithFormat:@"Couldn't find shortcut to edit with identifier=%@", v15];
  v13 = INIntentError();

  v17 = [(WFShortcutServiceViewController *)self remoteViewControllerProxy];
  [v17 remoteViewControllerDidUpdateVoiceShortcut:0 error:v13];

LABEL_12:
}

- (void)buildForAddingShortcut:(id)a3
{
  v4 = a3;
  v5 = INSiriLogContextIntents;
  if (v4)
  {
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "[WFShortcutServiceViewController buildForAddingShortcut:]";
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s build for adding shortcut=%{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001F64;
    v8[3] = &unk_100008238;
    objc_copyWeak(&v10, buf);
    v9 = v4;
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
    v7 = [(WFShortcutServiceViewController *)self remoteViewControllerProxy];
    [v7 remoteViewControllerDidCreateVoiceShortcut:0 error:v6];
  }
}

- (id)remoteViewControllerProxy
{
  v3 = [(WFShortcutServiceViewController *)self _remoteViewControllerProxy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(WFShortcutServiceViewController *)self extensionContext];
    v7 = [v6 _auxiliaryConnection];
    v5 = [v7 remoteObjectProxy];
  }

  return v5;
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
  v3 = [(WFShortcutServiceViewController *)self extensionContext];
  v4 = [v3 inputItems];

  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 userInfo];
        v14 = [v13 objectForKey:v9];

        v15 = [v12 userInfo];
        v16 = [v15 objectForKey:v10];

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

      v7 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  v3 = [(WFShortcutServiceViewController *)self extensionContext];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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
    v6 = [v5 _auxiliaryConnection];
    v7 = v6;
    if (v6)
    {
      [v6 auditToken];
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
  v9 = [v8 associatedAppBundleIdentifier];

  return v9;
}

- (void)loadView
{
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v3 = +[UIColor whiteColor];
  [v4 setBackgroundColor:v3];

  [(WFShortcutServiceViewController *)self setView:v4];
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFShortcutServiceViewController;
  [(WFShortcutServiceViewController *)&v9 beginRequestWithExtensionContext:v4];
  [v4 setExtensionApplicationContextProviderDelegate:self];
  v5 = +[WFApplicationContext sharedContext];
  [v5 setProvider:v4];

  [WFInitialization initializeProcessWithDatabase:1];
  v6 = v4;
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
  if (objc_opt_class() == a1)
  {

    _INLogInitIfNeeded();
  }
}

@end
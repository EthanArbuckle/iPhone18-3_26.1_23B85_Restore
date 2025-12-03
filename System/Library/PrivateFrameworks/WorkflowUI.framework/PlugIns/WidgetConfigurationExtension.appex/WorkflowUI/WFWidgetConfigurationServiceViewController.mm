@interface WFWidgetConfigurationServiceViewController
+ (void)initialize;
- (BOOL)shouldShowShortcutPickerPresentation;
- (id)customIntentActionFromRequest:(id)request;
- (id)hostViewControllerProxy;
- (id)parameterConfigurationViewControllerForAction:(id)action request:(id)request;
- (id)shortcutsMigratedAppIntentForIntent:(id)intent;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)dealloc;
- (void)getActionFromRequest:(id)request completion:(id)completion;
- (void)getLinkActionFromRequest:(id)request completion:(id)completion;
- (void)initializeDatabase;
- (void)initializeDatabaseIfNeeded;
- (void)linkActionOrIntentActionFromRequest:(id)request completion:(id)completion;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)requestViewControllerCancel;
- (void)requestViewControllerDismissal;
- (void)setConfigurationCardViewFrame:(CGRect)frame;
- (void)setupChildViewController:(id)controller;
- (void)startConfigurationWithRequest:(id)request completion:(id)completion;
- (void)viewDidLoad;
- (void)widgetConfigurationContainerViewControllerDidRequestToCancel:(id)cancel;
@end

@implementation WFWidgetConfigurationServiceViewController

- (void)requestViewControllerCancel
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000186D4;
  v6[3] = &unk_10002DC30;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  systemShortcutPickerModuleSummaryCoordinator = [(WFWidgetConfigurationServiceViewController *)self systemShortcutPickerModuleSummaryCoordinator];

  if (systemShortcutPickerModuleSummaryCoordinator)
  {
    systemShortcutPickerModuleSummaryCoordinator2 = [(WFWidgetConfigurationServiceViewController *)self systemShortcutPickerModuleSummaryCoordinator];
    [systemShortcutPickerModuleSummaryCoordinator2 populateConfiguredAppIntentWithCompletion:v3];
  }

  else
  {
    systemShortcutPickerModuleSummaryCoordinator2 = [(WFWidgetConfigurationServiceViewController *)self parameterConfigurationViewController];
    [systemShortcutPickerModuleSummaryCoordinator2 populateConfiguredIntentWithCompletion:v3];
  }
}

- (void)requestViewControllerDismissal
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018830;
  v6[3] = &unk_10002DC30;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  systemShortcutPickerModuleSummaryCoordinator = [(WFWidgetConfigurationServiceViewController *)self systemShortcutPickerModuleSummaryCoordinator];

  if (systemShortcutPickerModuleSummaryCoordinator)
  {
    systemShortcutPickerModuleSummaryCoordinator2 = [(WFWidgetConfigurationServiceViewController *)self systemShortcutPickerModuleSummaryCoordinator];
    [systemShortcutPickerModuleSummaryCoordinator2 populateConfiguredAppIntentWithCompletion:v3];
  }

  else
  {
    systemShortcutPickerModuleSummaryCoordinator2 = [(WFWidgetConfigurationServiceViewController *)self parameterConfigurationViewController];
    [systemShortcutPickerModuleSummaryCoordinator2 populateConfiguredIntentWithCompletion:v3];
  }
}

- (void)widgetConfigurationContainerViewControllerDidRequestToCancel:(id)cancel
{
  extensionContext = [(WFWidgetConfigurationServiceViewController *)self extensionContext];
  v3 = +[NSError userCancelledError];
  [extensionContext cancelRequestWithError:v3];
}

- (id)parameterConfigurationViewControllerForAction:(id)action request:(id)request
{
  actionCopy = action;
  requestCopy = request;
  configurableParameters = [actionCopy configurableParameters];
  firstObject = [configurableParameters firstObject];
  if (firstObject)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = firstObject;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if ([v11 allowsMultipleValues])
  {
    v12 = [v11 arrayMaxCountForWidgetFamily:{objc_msgSend(requestCopy, "family")}] != 1;
  }

  else
  {
    v12 = 0;
  }

  if ([requestCopy resolvedWidgetConfigurationStyle] == 2 && objc_msgSend(configurableParameters, "count") == 1 && !v12 && objc_msgSend(v11, "preferParameterValuePicker"))
  {
    v13 = [WFWidgetValuePickerViewController alloc];
    intent = [requestCopy intent];
    identifier = [intent identifier];
    v16 = -[WFWidgetValuePickerViewController initWithAction:parameter:intentIdentifier:widgetFamily:](v13, "initWithAction:parameter:intentIdentifier:widgetFamily:", actionCopy, v11, identifier, [requestCopy family]);

    [(WFWidgetValuePickerViewController *)v16 setPickerDelegate:self];
    [(WFWidgetValuePickerViewController *)v16 setShowsPrompt:0];
    [(WFWidgetValuePickerViewController *)v16 setShowsCancelButton:0];
  }

  else
  {
    v17 = [WFWidgetConfigurationParametersViewController alloc];
    intent2 = [requestCopy intent];
    identifier2 = [intent2 identifier];
    v27 = v11;
    v20 = configurableParameters;
    selfCopy = self;
    family = [requestCopy family];
    widgetDisplayName = [requestCopy widgetDisplayName];
    widgetDescription = [requestCopy widgetDescription];
    v16 = -[WFWidgetConfigurationParametersViewController initWithAction:intentIdentifier:widgetFamily:widgetDisplayName:widgetDescription:widgetConfigurationType:](v17, "initWithAction:intentIdentifier:widgetFamily:widgetDisplayName:widgetDescription:widgetConfigurationType:", actionCopy, identifier2, family, widgetDisplayName, widgetDescription, [requestCopy widgetConfigurationType]);

    v25 = selfCopy;
    configurableParameters = v20;
    v11 = v27;
    [(WFWidgetValuePickerViewController *)v16 setDelegate:v25];
  }

  return v16;
}

- (void)getActionFromRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  remoteWidgetConnection = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];

  if (remoteWidgetConnection)
  {
    intent = [requestCopy intent];
    v10 = [WFRemoteWidgetConfigurationRequest localizedIntentRequestWithIntent:intent];
    remoteWidgetConnection2 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100018E18;
    v15[3] = &unk_10002DC08;
    v18 = completionCopy;
    v16 = requestCopy;
    selfCopy = self;
    v12 = completionCopy;
    [remoteWidgetConnection2 sendRemoteConfigurationRequest:v10 completion:v15];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100018F4C;
    v13[3] = &unk_10002DBE0;
    v14 = completionCopy;
    intent = completionCopy;
    [(WFWidgetConfigurationServiceViewController *)self linkActionOrIntentActionFromRequest:requestCopy completion:v13];
    v10 = v14;
  }
}

- (void)linkActionOrIntentActionFromRequest:(id)request completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019038;
  v7[3] = &unk_10002DBB8;
  selfCopy = self;
  requestCopy = request;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = requestCopy;
  [(WFWidgetConfigurationServiceViewController *)selfCopy getLinkActionFromRequest:v6 completion:v7];
}

- (void)getLinkActionFromRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v30 = +[WFLinkActionProvider sharedProvider];
  intent = [requestCopy intent];
  if (!intent || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    intent2 = [requestCopy intent];
    launchId = [intent2 launchId];
    intent3 = [requestCopy intent];
    _className = [intent3 _className];
    v12 = [v30 customIntentMigratedActionIdentifierWithLaunchId:launchId className:_className];

    intent = 0;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_9:
    completionCopy[2](completionCopy, 0);
    goto LABEL_12;
  }

  launchId2 = [intent launchId];
  v49[0] = launchId2;
  appIntentIdentifier = [intent appIntentIdentifier];
  v49[1] = appIntentIdentifier;
  v11 = [NSArray arrayWithObjects:v49 count:2];
  v12 = [v11 componentsJoinedByString:@"."];

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:
  intent4 = [requestCopy intent];
  v14 = [(WFWidgetConfigurationServiceViewController *)self shortcutsMigratedAppIntentForIntent:intent4];

  if (v14)
  {
    v15 = v14;

    intent = v15;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100019534;
  v47 = sub_100019544;
  v48 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10001954C;
  v38[3] = &unk_10002DB68;
  v42 = &v43;
  v39 = requestCopy;
  intent = intent;
  v40 = intent;
  v41 = completionCopy;
  v16 = objc_retainBlock(v38);
  remoteWidgetConnection = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];

  if (remoteWidgetConnection)
  {
    v18 = WFLinkActionIdentifierFromShortcutsActionIdentifier();
    serializedParameters = [intent serializedParameters];
    v20 = [WFRemoteWidgetConfigurationRequest lnActionMetadataRequestWithActionIdentifier:v12 serializedParameters:serializedParameters];

    remoteWidgetConnection2 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10001964C;
    v31[3] = &unk_10002DB90;
    v22 = v18;
    v32 = v22;
    v37 = &v43;
    v33 = v12;
    v34 = intent;
    selfCopy = self;
    v36 = v16;
    [remoteWidgetConnection2 sendRemoteConfigurationRequest:v20 completion:v31];
  }

  else
  {
    serializedParameters2 = [intent serializedParameters];
    v28 = [WFLinkAction providedActionWithIdentifier:v12 serializedParameters:serializedParameters2];
    v29 = v44[5];
    v44[5] = v28;

    (v16[2])(v16);
  }

  _Block_object_dispose(&v43, 8);
LABEL_12:
}

- (id)customIntentActionFromRequest:(id)request
{
  requestCopy = request;
  remoteLocalizedIntent = [requestCopy remoteLocalizedIntent];
  if (remoteLocalizedIntent)
  {
    intent = remoteLocalizedIntent;
  }

  else
  {
    intent = [requestCopy intent];
    if (!intent)
    {
      v13 = 0;
      goto LABEL_12;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _className = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(_className, OS_LOG_TYPE_FAULT))
    {
      appIntentIdentifier = [intent appIntentIdentifier];
      launchId = [intent launchId];
      remoteLocalizedIntent2 = [requestCopy remoteLocalizedIntent];
      v11 = @"YES";
      *buf = 136315906;
      v29 = "[WFWidgetConfigurationServiceViewController customIntentActionFromRequest:]";
      if (!remoteLocalizedIntent2)
      {
        v11 = @"NO";
      }

      v30 = 2114;
      v31 = appIntentIdentifier;
      v32 = 2114;
      v33 = launchId;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&_mh_execute_header, _className, OS_LOG_TYPE_FAULT, "%s Unable to create WFHandleCustomIntentAction because intent is an app intent. Identifier: %{public}@, launchId: %{public}@, remote: %{public}@", buf, 0x2Au);
    }

    v12 = 0;
    v13 = intent;
    goto LABEL_20;
  }

  v13 = intent;
LABEL_12:

  extensionBundleId = [v13 extensionBundleId];
  v15 = extensionBundleId;
  if (extensionBundleId)
  {
    launchId2 = extensionBundleId;
  }

  else
  {
    launchId2 = [v13 launchId];
  }

  intent = launchId2;

  _className = [v13 _className];
  v17 = WFGetCustomIntentActionIdentifier();
  v26 = INAppResolverOptionsSkipSupportedIntentsCheckKey;
  v27 = &__kCFBooleanTrue;
  v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v19 = [INAppResolverOptions optionsWithDictionary:v18];

  v20 = +[INAppResolver sharedResolver];
  [v20 setOptions:v19 forIntentClassName:_className];

  v21 = [[WFHandleCustomIntentAction alloc] initWithIdentifier:v17 intent:v13 className:_className bundleIdentifier:intent];
  remoteWidgetConnection = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
  [v21 setRemoteWidgetConnection:remoteWidgetConnection];

  if (!v21)
  {
    v23 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v29 = "[WFWidgetConfigurationServiceViewController customIntentActionFromRequest:]";
      v30 = 2114;
      v31 = _className;
      v32 = 2114;
      v33 = intent;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s Unable to create WFHandleCustomIntentAction for %{public}@ in bundle %{public}@", buf, 0x20u);
    }
  }

  [v21 setWidgetFamily:{objc_msgSend(requestCopy, "family")}];
  v24 = [v21 serializedParametersForDonatedIntent:v13 allowDroppingUnconfigurableValues:1];
  v12 = [v21 copyWithSerializedParameters:v24];

  [v12 setWidgetFamily:{objc_msgSend(requestCopy, "family")}];
LABEL_20:

  return v12;
}

- (void)dealloc
{
  remoteWidgetConnection = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
  [remoteWidgetConnection invalidate];

  v4.receiver = self;
  v4.super_class = WFWidgetConfigurationServiceViewController;
  [(WFWidgetConfigurationServiceViewController *)&v4 dealloc];
}

- (void)setupChildViewController:(id)controller
{
  controllerCopy = controller;
  [(WFWidgetConfigurationServiceViewController *)self addChildViewController:controllerCopy];
  view = [(WFWidgetConfigurationServiceViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view2 = [controllerCopy view];
  [view2 setFrame:{v6, v8, v10, v12}];

  view3 = [(WFWidgetConfigurationServiceViewController *)self view];
  view4 = [controllerCopy view];
  [view3 addSubview:view4];

  [controllerCopy didMoveToParentViewController:self];
}

- (void)initializeDatabase
{
  if ([WFInitialization initializeProcessWithDatabase:1]>= 2)
  {
    v2 = getWFWidgetLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "[WFWidgetConfigurationServiceViewController initializeDatabase]";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s Could not initialize database, shortcut may fail to appear in the system shortcut picker!", &v3, 0xCu);
    }
  }
}

- (void)initializeDatabaseIfNeeded
{
  request = [(WFWidgetConfigurationServiceViewController *)self request];
  intent = [request intent];
  _className = [intent _className];
  v6 = _className;
  if (_className == @"WFShortcutsSmallWidgetConfigurationIntent")
  {
    goto LABEL_9;
  }

  if (_className)
  {
    v7 = [(__CFString *)_className isEqualToString:@"WFShortcutsSmallWidgetConfigurationIntent"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  request2 = [(WFWidgetConfigurationServiceViewController *)self request];
  intent2 = [request2 intent];
  _className2 = [intent2 _className];
  if (_className2 == @"WFShortcutsWidgetConfigurationIntent")
  {

LABEL_9:
    goto LABEL_10;
  }

  v11 = _className2;
  if (!_className2)
  {

LABEL_14:
    request3 = [(WFWidgetConfigurationServiceViewController *)self request];
    intent3 = [request3 intent];

    v14 = intent3;
    if (!intent3 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14 = intent3, (isKindOfClass & 1) == 0))
    {
LABEL_30:

      return;
    }

    appIntentIdentifier = [intent3 appIntentIdentifier];
    v17 = appIntentIdentifier;
    if (appIntentIdentifier == @"RunShortcutConfigurationIntent" || appIntentIdentifier && ((v18 = [(__CFString *)appIntentIdentifier isEqualToString:@"RunShortcutConfigurationIntent"], v17, (v18 & 1) != 0) || (v19 = v17, v19 == @"RunShortcutIntent") || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"RunShortcutIntent"], v20, v21)))
    {
      extensionBundleId = [intent3 extensionBundleId];
      v23 = VCBundleIdentifierShortcutsWidgetExtension;
      v24 = extensionBundleId;
      v25 = v24;
      if (v24 == v23)
      {
      }

      else
      {
        if (!v24 || !v23)
        {

          goto LABEL_29;
        }

        v26 = [v24 isEqualToString:v23];

        if (!v26)
        {
          goto LABEL_29;
        }
      }

      [(WFWidgetConfigurationServiceViewController *)self initializeDatabase];
    }

LABEL_29:

    v14 = intent3;
    goto LABEL_30;
  }

  v12 = [(__CFString *)_className2 isEqualToString:@"WFShortcutsWidgetConfigurationIntent"];

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:

  [(WFWidgetConfigurationServiceViewController *)self initializeDatabase];
}

- (id)shortcutsMigratedAppIntentForIntent:(id)intent
{
  intentCopy = intent;
  request = [(WFWidgetConfigurationServiceViewController *)self request];
  intent = [request intent];
  _className = [intent _className];
  v8 = _className;
  if (_className == @"WFShortcutsWidgetConfigurationIntent")
  {
    goto LABEL_9;
  }

  if (_className)
  {
    v9 = [(__CFString *)_className isEqualToString:@"WFShortcutsWidgetConfigurationIntent"];

    if (v9)
    {
      goto LABEL_9;
    }
  }

  request2 = [(WFWidgetConfigurationServiceViewController *)self request];
  intent2 = [request2 intent];
  _className2 = [intent2 _className];
  if (_className2 == @"WFShortcutsSmallWidgetConfigurationIntent")
  {

LABEL_9:
    goto LABEL_10;
  }

  v13 = _className2;
  if (!_className2)
  {

    goto LABEL_27;
  }

  v14 = [(__CFString *)_className2 isEqualToString:@"WFShortcutsSmallWidgetConfigurationIntent"];

  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  launchId = [intentCopy launchId];
  v16 = VCBundleIdentifierShortcutsiOS;
  v17 = launchId;
  request = v17;
  if (v17 == v16)
  {

    goto LABEL_16;
  }

  if (v17 && v16)
  {
    v18 = [v17 isEqualToString:v16];

    if (!v18)
    {
      goto LABEL_28;
    }

LABEL_16:
    v19 = intentCopy;
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v20 = INIntentWithTypedIntent();
      _asMigratedAppIntent = [v20 _asMigratedAppIntent];

      if (_asMigratedAppIntent)
      {
        v19 = _asMigratedAppIntent;
        v22 = v19;
LABEL_25:

        goto LABEL_29;
      }

      v23 = getWFWidgetLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = 136315394;
        v26 = "[WFWidgetConfigurationServiceViewController shortcutsMigratedAppIntentForIntent:]";
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Failed to migrate shortcuts intent %@", &v25, 0x16u);
      }

      v19 = 0;
    }

    v22 = 0;
    goto LABEL_25;
  }

LABEL_27:
LABEL_28:
  v22 = 0;
LABEL_29:

  return v22;
}

- (BOOL)shouldShowShortcutPickerPresentation
{
  request = [(WFWidgetConfigurationServiceViewController *)self request];
  intent = [request intent];

  if (intent)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      appIntentIdentifier = [intent appIntentIdentifier];
      v6 = appIntentIdentifier;
      if (appIntentIdentifier != @"RunShortcutConfigurationIntent")
      {
        if (!appIntentIdentifier || (v7 = [(__CFString *)appIntentIdentifier isEqualToString:@"RunShortcutConfigurationIntent"], v6, !v7))
        {
          LOBYTE(v12) = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      extensionBundleId = [intent extensionBundleId];
      v9 = VCBundleIdentifierShortcutsWidgetExtension;
      v10 = extensionBundleId;
      v11 = v10;
      if (v10 == v9)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        request2 = v10;
        if (!v10 || !v9)
        {
          goto LABEL_15;
        }

        v12 = [v10 isEqualToString:v9];

        if (!v12)
        {
          goto LABEL_16;
        }
      }

      request2 = [(WFWidgetConfigurationServiceViewController *)self request];
      LOBYTE(v12) = [request2 family] == 10;
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }
  }

  LOBYTE(v12) = 0;
LABEL_18:

  return v12;
}

- (void)startConfigurationWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (requestCopy)
  {
    remoteDeviceIdentifier = [requestCopy remoteDeviceIdentifier];
    if (remoteDeviceIdentifier)
    {
      v9 = [WFRemoteWidgetConnection connectionToDevice:remoteDeviceIdentifier connectionType:1];
      [(WFWidgetConfigurationServiceViewController *)self setRemoteWidgetConnection:v9];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10001A72C;
      v26[3] = &unk_10002DAF0;
      v27 = completionCopy;
      remoteWidgetConnection = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
      [remoteWidgetConnection setConnectionTimeoutHandler:v26];
    }

    [(WFWidgetConfigurationServiceViewController *)self setRequest:requestCopy];
    [(WFWidgetConfigurationServiceViewController *)self initializeDatabaseIfNeeded];
    request = [(WFWidgetConfigurationServiceViewController *)self request];
    [request startAccessingSecurityScopedBundleResource];

    request2 = [(WFWidgetConfigurationServiceViewController *)self request];
    appBundleIdentifier = [request2 appBundleIdentifier];

    if (appBundleIdentifier)
    {
      v14 = [WFShowWidgetConfigurationEvent alloc];
      request3 = [(WFWidgetConfigurationServiceViewController *)self request];
      intent = [request3 intent];
      _className = [intent _className];
      request4 = [(WFWidgetConfigurationServiceViewController *)self request];
      v19 = [request4 family] - 1;
      if (v19 > 3)
      {
        v20 = @"Invalid";
      }

      else
      {
        v20 = *(&off_10002DC50 + v19);
      }

      v22 = [v14 initWithAppBundleIdentifier:appBundleIdentifier intentType:_className sizeClass:v20];

      [v22 track];
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001A82C;
    v23[3] = &unk_10002DB40;
    v25 = completionCopy;
    v23[4] = self;
    v24 = requestCopy;
    [(WFWidgetConfigurationServiceViewController *)self getActionFromRequest:v24 completion:v23];
  }

  else
  {
    v21 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v29 = "[WFWidgetConfigurationServiceViewController startConfigurationWithRequest:completion:]";
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Unable to find widget configuration request on extension item", buf, 0xCu);
    }

    remoteDeviceIdentifier = [NSError errorWithDomain:@"WFWidgetConfigurationErrorDomain" code:1000 userInfo:0];
    (*(completionCopy + 2))(completionCopy, remoteDeviceIdentifier);
  }
}

- (void)beginRequestWithExtensionContext:(id)context
{
  v3.receiver = self;
  v3.super_class = WFWidgetConfigurationServiceViewController;
  [(WFWidgetConfigurationServiceViewController *)&v3 beginRequestWithExtensionContext:context];
}

- (id)hostViewControllerProxy
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001ADF8;
  v4[3] = &unk_10002DAC8;
  v4[4] = self;
  v2 = [(WFWidgetConfigurationServiceViewController *)self _remoteViewControllerProxyWithErrorHandler:v4];

  return v2;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v9.receiver = self;
  v9.super_class = WFWidgetConfigurationServiceViewController;
  [(WFWidgetConfigurationServiceViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  parameterConfigurationViewController = [(WFWidgetConfigurationServiceViewController *)self parameterConfigurationViewController];
  v6 = parameterConfigurationViewController;
  if (parameterConfigurationViewController == containerCopy)
  {

LABEL_5:
    hostViewControllerProxy = [(WFWidgetConfigurationServiceViewController *)self hostViewControllerProxy];
    [containerCopy preferredContentSize];
    [hostViewControllerProxy preferredCardSizeDidUpdate:?];

    goto LABEL_6;
  }

  rootWidgetConfigurationViewController = [(WFWidgetConfigurationServiceViewController *)self rootWidgetConfigurationViewController];

  if (rootWidgetConfigurationViewController == containerCopy)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = WFWidgetConfigurationServiceViewController;
  [(WFWidgetConfigurationServiceViewController *)&v2 viewDidLoad];
}

- (void)setConfigurationCardViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  rootWidgetConfigurationViewController = [(WFWidgetConfigurationServiceViewController *)self rootWidgetConfigurationViewController];
  if (rootWidgetConfigurationViewController)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = rootWidgetConfigurationViewController;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [v9 setConfigurationCardViewFrame:{x, y, width, height}];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = NSClassFromString(@"INAppTrust");
    ClassMethod = class_getClassMethod(v2, "shouldTrustExtensionForLaunch:");
    v4 = imp_implementationWithBlock(&stru_10002D7C0);
    method_setImplementation(ClassMethod, v4);
    v5 = class_getClassMethod(v2, "extensionsTrustedForLaunch:");
    v6 = imp_implementationWithBlock(&stru_10002D800);
    method_setImplementation(v5, v6);
    v7 = class_getClassMethod(v2, "shouldTrustAppForLaunch:");
    v8 = imp_implementationWithBlock(&stru_10002D820);
    method_setImplementation(v7, v8);
    v9 = class_getClassMethod(v2, "appsTrustedForLaunch:");
    v10 = imp_implementationWithBlock(&stru_10002D840);

    method_setImplementation(v9, v10);
  }
}

@end
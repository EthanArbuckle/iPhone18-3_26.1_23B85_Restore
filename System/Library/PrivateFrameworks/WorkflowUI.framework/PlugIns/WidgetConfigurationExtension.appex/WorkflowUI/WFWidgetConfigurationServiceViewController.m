@interface WFWidgetConfigurationServiceViewController
+ (void)initialize;
- (BOOL)shouldShowShortcutPickerPresentation;
- (id)customIntentActionFromRequest:(id)a3;
- (id)hostViewControllerProxy;
- (id)parameterConfigurationViewControllerForAction:(id)a3 request:(id)a4;
- (id)shortcutsMigratedAppIntentForIntent:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)dealloc;
- (void)getActionFromRequest:(id)a3 completion:(id)a4;
- (void)getLinkActionFromRequest:(id)a3 completion:(id)a4;
- (void)initializeDatabase;
- (void)initializeDatabaseIfNeeded;
- (void)linkActionOrIntentActionFromRequest:(id)a3 completion:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)requestViewControllerCancel;
- (void)requestViewControllerDismissal;
- (void)setConfigurationCardViewFrame:(CGRect)a3;
- (void)setupChildViewController:(id)a3;
- (void)startConfigurationWithRequest:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
- (void)widgetConfigurationContainerViewControllerDidRequestToCancel:(id)a3;
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
  v4 = [(WFWidgetConfigurationServiceViewController *)self systemShortcutPickerModuleSummaryCoordinator];

  if (v4)
  {
    v5 = [(WFWidgetConfigurationServiceViewController *)self systemShortcutPickerModuleSummaryCoordinator];
    [v5 populateConfiguredAppIntentWithCompletion:v3];
  }

  else
  {
    v5 = [(WFWidgetConfigurationServiceViewController *)self parameterConfigurationViewController];
    [v5 populateConfiguredIntentWithCompletion:v3];
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
  v4 = [(WFWidgetConfigurationServiceViewController *)self systemShortcutPickerModuleSummaryCoordinator];

  if (v4)
  {
    v5 = [(WFWidgetConfigurationServiceViewController *)self systemShortcutPickerModuleSummaryCoordinator];
    [v5 populateConfiguredAppIntentWithCompletion:v3];
  }

  else
  {
    v5 = [(WFWidgetConfigurationServiceViewController *)self parameterConfigurationViewController];
    [v5 populateConfiguredIntentWithCompletion:v3];
  }
}

- (void)widgetConfigurationContainerViewControllerDidRequestToCancel:(id)a3
{
  v4 = [(WFWidgetConfigurationServiceViewController *)self extensionContext];
  v3 = +[NSError userCancelledError];
  [v4 cancelRequestWithError:v3];
}

- (id)parameterConfigurationViewControllerForAction:(id)a3 request:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 configurableParameters];
  v9 = [v8 firstObject];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
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
    v12 = [v11 arrayMaxCountForWidgetFamily:{objc_msgSend(v7, "family")}] != 1;
  }

  else
  {
    v12 = 0;
  }

  if ([v7 resolvedWidgetConfigurationStyle] == 2 && objc_msgSend(v8, "count") == 1 && !v12 && objc_msgSend(v11, "preferParameterValuePicker"))
  {
    v13 = [WFWidgetValuePickerViewController alloc];
    v14 = [v7 intent];
    v15 = [v14 identifier];
    v16 = -[WFWidgetValuePickerViewController initWithAction:parameter:intentIdentifier:widgetFamily:](v13, "initWithAction:parameter:intentIdentifier:widgetFamily:", v6, v11, v15, [v7 family]);

    [(WFWidgetValuePickerViewController *)v16 setPickerDelegate:self];
    [(WFWidgetValuePickerViewController *)v16 setShowsPrompt:0];
    [(WFWidgetValuePickerViewController *)v16 setShowsCancelButton:0];
  }

  else
  {
    v17 = [WFWidgetConfigurationParametersViewController alloc];
    v18 = [v7 intent];
    v19 = [v18 identifier];
    v27 = v11;
    v20 = v8;
    v21 = self;
    v22 = [v7 family];
    v23 = [v7 widgetDisplayName];
    v24 = [v7 widgetDescription];
    v16 = -[WFWidgetConfigurationParametersViewController initWithAction:intentIdentifier:widgetFamily:widgetDisplayName:widgetDescription:widgetConfigurationType:](v17, "initWithAction:intentIdentifier:widgetFamily:widgetDisplayName:widgetDescription:widgetConfigurationType:", v6, v19, v22, v23, v24, [v7 widgetConfigurationType]);

    v25 = v21;
    v8 = v20;
    v11 = v27;
    [(WFWidgetValuePickerViewController *)v16 setDelegate:v25];
  }

  return v16;
}

- (void)getActionFromRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];

  if (v8)
  {
    v9 = [v6 intent];
    v10 = [WFRemoteWidgetConfigurationRequest localizedIntentRequestWithIntent:v9];
    v11 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100018E18;
    v15[3] = &unk_10002DC08;
    v18 = v7;
    v16 = v6;
    v17 = self;
    v12 = v7;
    [v11 sendRemoteConfigurationRequest:v10 completion:v15];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100018F4C;
    v13[3] = &unk_10002DBE0;
    v14 = v7;
    v9 = v7;
    [(WFWidgetConfigurationServiceViewController *)self linkActionOrIntentActionFromRequest:v6 completion:v13];
    v10 = v14;
  }
}

- (void)linkActionOrIntentActionFromRequest:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100019038;
  v7[3] = &unk_10002DBB8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(WFWidgetConfigurationServiceViewController *)v8 getLinkActionFromRequest:v6 completion:v7];
}

- (void)getLinkActionFromRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = +[WFLinkActionProvider sharedProvider];
  v8 = [v6 intent];
  if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v23 = [v6 intent];
    v24 = [v23 launchId];
    v25 = [v6 intent];
    v26 = [v25 _className];
    v12 = [v30 customIntentMigratedActionIdentifierWithLaunchId:v24 className:v26];

    v8 = 0;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_9:
    v7[2](v7, 0);
    goto LABEL_12;
  }

  v9 = [v8 launchId];
  v49[0] = v9;
  v10 = [v8 appIntentIdentifier];
  v49[1] = v10;
  v11 = [NSArray arrayWithObjects:v49 count:2];
  v12 = [v11 componentsJoinedByString:@"."];

  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_4:
  v13 = [v6 intent];
  v14 = [(WFWidgetConfigurationServiceViewController *)self shortcutsMigratedAppIntentForIntent:v13];

  if (v14)
  {
    v15 = v14;

    v8 = v15;
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
  v39 = v6;
  v8 = v8;
  v40 = v8;
  v41 = v7;
  v16 = objc_retainBlock(v38);
  v17 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];

  if (v17)
  {
    v18 = WFLinkActionIdentifierFromShortcutsActionIdentifier();
    v19 = [v8 serializedParameters];
    v20 = [WFRemoteWidgetConfigurationRequest lnActionMetadataRequestWithActionIdentifier:v12 serializedParameters:v19];

    v21 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10001964C;
    v31[3] = &unk_10002DB90;
    v22 = v18;
    v32 = v22;
    v37 = &v43;
    v33 = v12;
    v34 = v8;
    v35 = self;
    v36 = v16;
    [v21 sendRemoteConfigurationRequest:v20 completion:v31];
  }

  else
  {
    v27 = [v8 serializedParameters];
    v28 = [WFLinkAction providedActionWithIdentifier:v12 serializedParameters:v27];
    v29 = v44[5];
    v44[5] = v28;

    (v16[2])(v16);
  }

  _Block_object_dispose(&v43, 8);
LABEL_12:
}

- (id)customIntentActionFromRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 remoteLocalizedIntent];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [v4 intent];
    if (!v6)
    {
      v13 = 0;
      goto LABEL_12;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v8 = [v6 appIntentIdentifier];
      v9 = [v6 launchId];
      v10 = [v4 remoteLocalizedIntent];
      v11 = @"YES";
      *buf = 136315906;
      v29 = "[WFWidgetConfigurationServiceViewController customIntentActionFromRequest:]";
      if (!v10)
      {
        v11 = @"NO";
      }

      v30 = 2114;
      v31 = v8;
      v32 = 2114;
      v33 = v9;
      v34 = 2114;
      v35 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "%s Unable to create WFHandleCustomIntentAction because intent is an app intent. Identifier: %{public}@, launchId: %{public}@, remote: %{public}@", buf, 0x2Au);
    }

    v12 = 0;
    v13 = v6;
    goto LABEL_20;
  }

  v13 = v6;
LABEL_12:

  v14 = [v13 extensionBundleId];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [v13 launchId];
  }

  v6 = v16;

  v7 = [v13 _className];
  v17 = WFGetCustomIntentActionIdentifier();
  v26 = INAppResolverOptionsSkipSupportedIntentsCheckKey;
  v27 = &__kCFBooleanTrue;
  v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v19 = [INAppResolverOptions optionsWithDictionary:v18];

  v20 = +[INAppResolver sharedResolver];
  [v20 setOptions:v19 forIntentClassName:v7];

  v21 = [[WFHandleCustomIntentAction alloc] initWithIdentifier:v17 intent:v13 className:v7 bundleIdentifier:v6];
  v22 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
  [v21 setRemoteWidgetConnection:v22];

  if (!v21)
  {
    v23 = getWFWidgetConfigurationLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v29 = "[WFWidgetConfigurationServiceViewController customIntentActionFromRequest:]";
      v30 = 2114;
      v31 = v7;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_FAULT, "%s Unable to create WFHandleCustomIntentAction for %{public}@ in bundle %{public}@", buf, 0x20u);
    }
  }

  [v21 setWidgetFamily:{objc_msgSend(v4, "family")}];
  v24 = [v21 serializedParametersForDonatedIntent:v13 allowDroppingUnconfigurableValues:1];
  v12 = [v21 copyWithSerializedParameters:v24];

  [v12 setWidgetFamily:{objc_msgSend(v4, "family")}];
LABEL_20:

  return v12;
}

- (void)dealloc
{
  v3 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = WFWidgetConfigurationServiceViewController;
  [(WFWidgetConfigurationServiceViewController *)&v4 dealloc];
}

- (void)setupChildViewController:(id)a3
{
  v16 = a3;
  [(WFWidgetConfigurationServiceViewController *)self addChildViewController:v16];
  v4 = [(WFWidgetConfigurationServiceViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v16 view];
  [v13 setFrame:{v6, v8, v10, v12}];

  v14 = [(WFWidgetConfigurationServiceViewController *)self view];
  v15 = [v16 view];
  [v14 addSubview:v15];

  [v16 didMoveToParentViewController:self];
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
  v3 = [(WFWidgetConfigurationServiceViewController *)self request];
  v4 = [v3 intent];
  v5 = [v4 _className];
  v6 = v5;
  if (v5 == @"WFShortcutsSmallWidgetConfigurationIntent")
  {
    goto LABEL_9;
  }

  if (v5)
  {
    v7 = [(__CFString *)v5 isEqualToString:@"WFShortcutsSmallWidgetConfigurationIntent"];

    if (v7)
    {
      goto LABEL_9;
    }
  }

  v8 = [(WFWidgetConfigurationServiceViewController *)self request];
  v9 = [v8 intent];
  v10 = [v9 _className];
  if (v10 == @"WFShortcutsWidgetConfigurationIntent")
  {

LABEL_9:
    goto LABEL_10;
  }

  v11 = v10;
  if (!v10)
  {

LABEL_14:
    v13 = [(WFWidgetConfigurationServiceViewController *)self request];
    v27 = [v13 intent];

    v14 = v27;
    if (!v27 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14 = v27, (isKindOfClass & 1) == 0))
    {
LABEL_30:

      return;
    }

    v16 = [v27 appIntentIdentifier];
    v17 = v16;
    if (v16 == @"RunShortcutConfigurationIntent" || v16 && ((v18 = [(__CFString *)v16 isEqualToString:@"RunShortcutConfigurationIntent"], v17, (v18 & 1) != 0) || (v19 = v17, v19 == @"RunShortcutIntent") || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"RunShortcutIntent"], v20, v21)))
    {
      v22 = [v27 extensionBundleId];
      v23 = VCBundleIdentifierShortcutsWidgetExtension;
      v24 = v22;
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

    v14 = v27;
    goto LABEL_30;
  }

  v12 = [(__CFString *)v10 isEqualToString:@"WFShortcutsWidgetConfigurationIntent"];

  if ((v12 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:

  [(WFWidgetConfigurationServiceViewController *)self initializeDatabase];
}

- (id)shortcutsMigratedAppIntentForIntent:(id)a3
{
  v4 = a3;
  v5 = [(WFWidgetConfigurationServiceViewController *)self request];
  v6 = [v5 intent];
  v7 = [v6 _className];
  v8 = v7;
  if (v7 == @"WFShortcutsWidgetConfigurationIntent")
  {
    goto LABEL_9;
  }

  if (v7)
  {
    v9 = [(__CFString *)v7 isEqualToString:@"WFShortcutsWidgetConfigurationIntent"];

    if (v9)
    {
      goto LABEL_9;
    }
  }

  v10 = [(WFWidgetConfigurationServiceViewController *)self request];
  v11 = [v10 intent];
  v12 = [v11 _className];
  if (v12 == @"WFShortcutsSmallWidgetConfigurationIntent")
  {

LABEL_9:
    goto LABEL_10;
  }

  v13 = v12;
  if (!v12)
  {

    goto LABEL_27;
  }

  v14 = [(__CFString *)v12 isEqualToString:@"WFShortcutsSmallWidgetConfigurationIntent"];

  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  v15 = [v4 launchId];
  v16 = VCBundleIdentifierShortcutsiOS;
  v17 = v15;
  v5 = v17;
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
    v19 = v4;
    if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v20 = INIntentWithTypedIntent();
      v21 = [v20 _asMigratedAppIntent];

      if (v21)
      {
        v19 = v21;
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
  v3 = [(WFWidgetConfigurationServiceViewController *)self request];
  v4 = [v3 intent];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 appIntentIdentifier];
      v6 = v5;
      if (v5 != @"RunShortcutConfigurationIntent")
      {
        if (!v5 || (v7 = [(__CFString *)v5 isEqualToString:@"RunShortcutConfigurationIntent"], v6, !v7))
        {
          LOBYTE(v12) = 0;
LABEL_17:

          goto LABEL_18;
        }
      }

      v8 = [v4 extensionBundleId];
      v9 = VCBundleIdentifierShortcutsWidgetExtension;
      v10 = v8;
      v11 = v10;
      if (v10 == v9)
      {
      }

      else
      {
        LOBYTE(v12) = 0;
        v13 = v10;
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

      v13 = [(WFWidgetConfigurationServiceViewController *)self request];
      LOBYTE(v12) = [v13 family] == 10;
LABEL_15:

LABEL_16:
      goto LABEL_17;
    }
  }

  LOBYTE(v12) = 0;
LABEL_18:

  return v12;
}

- (void)startConfigurationWithRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 remoteDeviceIdentifier];
    if (v8)
    {
      v9 = [WFRemoteWidgetConnection connectionToDevice:v8 connectionType:1];
      [(WFWidgetConfigurationServiceViewController *)self setRemoteWidgetConnection:v9];

      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_10001A72C;
      v26[3] = &unk_10002DAF0;
      v27 = v7;
      v10 = [(WFWidgetConfigurationServiceViewController *)self remoteWidgetConnection];
      [v10 setConnectionTimeoutHandler:v26];
    }

    [(WFWidgetConfigurationServiceViewController *)self setRequest:v6];
    [(WFWidgetConfigurationServiceViewController *)self initializeDatabaseIfNeeded];
    v11 = [(WFWidgetConfigurationServiceViewController *)self request];
    [v11 startAccessingSecurityScopedBundleResource];

    v12 = [(WFWidgetConfigurationServiceViewController *)self request];
    v13 = [v12 appBundleIdentifier];

    if (v13)
    {
      v14 = [WFShowWidgetConfigurationEvent alloc];
      v15 = [(WFWidgetConfigurationServiceViewController *)self request];
      v16 = [v15 intent];
      v17 = [v16 _className];
      v18 = [(WFWidgetConfigurationServiceViewController *)self request];
      v19 = [v18 family] - 1;
      if (v19 > 3)
      {
        v20 = @"Invalid";
      }

      else
      {
        v20 = *(&off_10002DC50 + v19);
      }

      v22 = [v14 initWithAppBundleIdentifier:v13 intentType:v17 sizeClass:v20];

      [v22 track];
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10001A82C;
    v23[3] = &unk_10002DB40;
    v25 = v7;
    v23[4] = self;
    v24 = v6;
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

    v8 = [NSError errorWithDomain:@"WFWidgetConfigurationErrorDomain" code:1000 userInfo:0];
    (*(v7 + 2))(v7, v8);
  }
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v3.receiver = self;
  v3.super_class = WFWidgetConfigurationServiceViewController;
  [(WFWidgetConfigurationServiceViewController *)&v3 beginRequestWithExtensionContext:a3];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFWidgetConfigurationServiceViewController;
  [(WFWidgetConfigurationServiceViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(WFWidgetConfigurationServiceViewController *)self parameterConfigurationViewController];
  v6 = v5;
  if (v5 == v4)
  {

LABEL_5:
    v8 = [(WFWidgetConfigurationServiceViewController *)self hostViewControllerProxy];
    [v4 preferredContentSize];
    [v8 preferredCardSizeDidUpdate:?];

    goto LABEL_6;
  }

  v7 = [(WFWidgetConfigurationServiceViewController *)self rootWidgetConfigurationViewController];

  if (v7 == v4)
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

- (void)setConfigurationCardViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(WFWidgetConfigurationServiceViewController *)self rootWidgetConfigurationViewController];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
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
  if (objc_opt_class() == a1)
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
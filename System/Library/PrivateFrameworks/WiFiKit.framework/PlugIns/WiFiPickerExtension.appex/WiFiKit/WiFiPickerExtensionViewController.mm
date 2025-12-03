@interface WiFiPickerExtensionViewController
- (void)configureWithCompletion:(id)completion;
- (void)invalidate;
- (void)loadView;
- (void)openSettingsForScanRecord:(id)record;
- (void)viewDidLoad;
@end

@implementation WiFiPickerExtensionViewController

- (void)loadView
{
  extensionContext = [(WiFiPickerExtensionViewController *)self extensionContext];
  inputItems = [extensionContext inputItems];

  v5 = WFLogForCategory();
  v6 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v43 = "[WiFiPickerExtensionViewController loadView]";
    v44 = 2112;
    v45 = inputItems;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s inputItems %@", buf, 0x16u);
  }

  v7 = objc_alloc_init(WFClient);
  [(WiFiPickerExtensionViewController *)self setWifiClient:v7];

  if (inputItems && [inputItems count])
  {
    firstObject = [inputItems firstObject];
    userInfo = [firstObject userInfo];
    v10 = userInfo;
    if (!userInfo || ([userInfo objectForKey:@"notificationId"], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
    {
      v14 = WFLogForCategory();
      v19 = OSLogForWFLogLevel();
      if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v19))
      {
        *buf = 136315138;
        v43 = "[WiFiPickerExtensionViewController loadView]";
        _os_log_impl(&_mh_execute_header, v14, v19, "%s: notificationId not present in extension context userInfo", buf, 0xCu);
      }
    }

    else
    {
      v13 = [v10 objectForKey:@"notificationId"];
      -[WiFiPickerExtensionViewController setNotificationId:](self, "setNotificationId:", [v13 intValue]);

      v14 = WFLogForCategory();
      v15 = OSLogForWFLogLevel();
      if (WFCurrentLogLevel() && v14)
      {
        v14 = v14;
        if (os_log_type_enabled(v14, v15))
        {
          notificationId = [(WiFiPickerExtensionViewController *)self notificationId];
          *buf = 136315394;
          v43 = "[WiFiPickerExtensionViewController loadView]";
          v44 = 1024;
          LODWORD(v45) = notificationId;
          _os_log_impl(&_mh_execute_header, v14, v15, "%s: notificationId %d", buf, 0x12u);
        }
      }
    }

LABEL_24:
    goto LABEL_25;
  }

  firstObject = WFLogForCategory();
  v17 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && firstObject)
  {
    v10 = firstObject;
    if (os_log_type_enabled(v10, v17))
    {
      extensionContext2 = [(WiFiPickerExtensionViewController *)self extensionContext];
      *buf = 136315394;
      v43 = "[WiFiPickerExtensionViewController loadView]";
      v44 = 2112;
      v45 = extensionContext2;
      _os_log_impl(&_mh_execute_header, v10, v17, "%s: extension items is nil (context %@)", buf, 0x16u);
    }

    firstObject = v10;
    goto LABEL_24;
  }

LABEL_25:

  v20 = [[WFPickerViewProvider alloc] initWithRootViewController:self];
  [(WiFiPickerExtensionViewController *)self setViewProvider:v20];

  viewProvider = [(WiFiPickerExtensionViewController *)self viewProvider];
  [viewProvider setDelegate:self];

  v22 = objc_alloc_init(WFPickerViewController);
  [(WiFiPickerExtensionViewController *)self setViewController:v22];

  v23 = [WFNetworkListController alloc];
  viewController = [(WiFiPickerExtensionViewController *)self viewController];
  viewProvider2 = [(WiFiPickerExtensionViewController *)self viewProvider];
  wifiClient = [(WiFiPickerExtensionViewController *)self wifiClient];
  v27 = [v23 initWithViewController:viewController viewProvider:viewProvider2 client:wifiClient];
  [(WiFiPickerExtensionViewController *)self setAirportController:v27];

  airportController = [(WiFiPickerExtensionViewController *)self airportController];
  [airportController startScanning];

  v29 = objc_alloc_init(UIView);
  [v29 setFrame:{0.0, 0.0, 300.0, 300.0}];
  [(WiFiPickerExtensionViewController *)self setView:v29];
  objc_initWeak(buf, self);
  v30 = +[NSNotificationCenter defaultCenter];
  airportController2 = [(WiFiPickerExtensionViewController *)self airportController];
  v32 = +[NSOperationQueue mainQueue];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100001488;
  v40[3] = &unk_100004188;
  objc_copyWeak(&v41, buf);
  v33 = [v30 addObserverForName:WFNetworkListControllerAssociationDidFinishNotification object:airportController2 queue:v32 usingBlock:v40];

  v34 = +[NSNotificationCenter defaultCenter];
  airportController3 = [(WiFiPickerExtensionViewController *)self airportController];
  v36 = +[NSOperationQueue mainQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100001698;
  v38[3] = &unk_1000041B0;
  objc_copyWeak(&v39, buf);
  v38[4] = self;
  v37 = [v34 addObserverForName:WFNetworkListControllerScanDidFinishNotification object:airportController3 queue:v36 usingBlock:v38];

  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);
}

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = WiFiPickerExtensionViewController;
  [(WiFiPickerExtensionViewController *)&v47 viewDidLoad];
  v3 = WFLogForCategory();
  v4 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
  {
    *buf = 136315138;
    v49 = "[WiFiPickerExtensionViewController viewDidLoad]";
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", buf, 0xCu);
  }

  viewController = [(WiFiPickerExtensionViewController *)self viewController];
  [viewController willMoveToParentViewController:self];

  view = [(WiFiPickerExtensionViewController *)self view];
  viewController2 = [(WiFiPickerExtensionViewController *)self viewController];
  view2 = [viewController2 view];
  [view addSubview:view2];

  viewController3 = [(WiFiPickerExtensionViewController *)self viewController];
  view3 = [viewController3 view];
  [view3 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  viewController4 = [(WiFiPickerExtensionViewController *)self viewController];
  view4 = [viewController4 view];
  [view4 setFrame:{v12, v14, v16, v18}];

  viewController5 = [(WiFiPickerExtensionViewController *)self viewController];
  view5 = [viewController5 view];
  [view5 setTranslatesAutoresizingMaskIntoConstraints:0];

  viewController6 = [(WiFiPickerExtensionViewController *)self viewController];
  view6 = [viewController6 view];
  leftAnchor = [view6 leftAnchor];
  view7 = [(WiFiPickerExtensionViewController *)self view];
  leftAnchor2 = [view7 leftAnchor];
  v28 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v28 setActive:1];

  viewController7 = [(WiFiPickerExtensionViewController *)self viewController];
  view8 = [viewController7 view];
  topAnchor = [view8 topAnchor];
  view9 = [(WiFiPickerExtensionViewController *)self view];
  topAnchor2 = [view9 topAnchor];
  v34 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v34 setActive:1];

  viewController8 = [(WiFiPickerExtensionViewController *)self viewController];
  view10 = [viewController8 view];
  rightAnchor = [view10 rightAnchor];
  view11 = [(WiFiPickerExtensionViewController *)self view];
  rightAnchor2 = [view11 rightAnchor];
  v40 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v40 setActive:1];

  viewController9 = [(WiFiPickerExtensionViewController *)self viewController];
  view12 = [viewController9 view];
  bottomAnchor = [view12 bottomAnchor];
  view13 = [(WiFiPickerExtensionViewController *)self view];
  bottomAnchor2 = [view13 bottomAnchor];
  v46 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v46 setActive:1];

  [(WiFiPickerExtensionViewController *)self setPreferredContentSize:300.0, 300.0];
}

- (void)configureWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = WFLogForCategory();
  v6 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v7 = 136315138;
    v8 = "[WiFiPickerExtensionViewController configureWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", &v7, 0xCu);
  }

  [(WiFiPickerExtensionViewController *)self setCompletionBlock:completionCopy];
}

- (void)invalidate
{
  v3 = WFLogForCategory();
  v4 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v3)
  {
    v5 = v3;
    if (os_log_type_enabled(v5, v4))
    {
      v12 = 136315650;
      v13 = "[WiFiPickerExtensionViewController invalidate]";
      v14 = 2112;
      selfCopy = self;
      v16 = 1024;
      userDismissed = [(WiFiPickerExtensionViewController *)self userDismissed];
      _os_log_impl(&_mh_execute_header, v5, v4, "%s: %@ (userDismissed %d)", &v12, 0x1Cu);
    }
  }

  airportController = [(WiFiPickerExtensionViewController *)self airportController];
  [airportController stopScanning];

  airportController2 = [(WiFiPickerExtensionViewController *)self airportController];
  viewController = [(WiFiPickerExtensionViewController *)self viewController];
  [airportController2 networkListViewControllerDidFinish:viewController];

  [(WiFiPickerExtensionViewController *)self setWifiClient:0];
  [(WiFiPickerExtensionViewController *)self setAirportController:0];
  [(WiFiPickerExtensionViewController *)self setViewController:0];
  [(WiFiPickerExtensionViewController *)self setViewProvider:0];
  if (![(WiFiPickerExtensionViewController *)self userDismissed])
  {
    v9 = WFLogForCategory();
    v10 = OSLogForWFLogLevel();
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v10))
    {
      v12 = 136315138;
      v13 = "[WiFiPickerExtensionViewController invalidate]";
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: user cancelled picker", &v12, 0xCu);
    }

    wifiClient = [(WiFiPickerExtensionViewController *)self wifiClient];
    [wifiClient dispatchAskToJoinAction:0 notificationId:-[WiFiPickerExtensionViewController notificationId](self network:{"notificationId"), 0}];
  }
}

- (void)openSettingsForScanRecord:(id)record
{
  recordCopy = record;
  v5 = WFLogForCategory();
  v6 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v9 = 136315394;
    v10 = "[WiFiPickerExtensionViewController openSettingsForScanRecord:]";
    v11 = 2112;
    v12 = recordCopy;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: opening settings for network %@", &v9, 0x16u);
  }

  [(WiFiPickerExtensionViewController *)self setUserDismissed:1];
  viewController = [(WiFiPickerExtensionViewController *)self viewController];
  [viewController setDismissed:1];

  wifiClient = [(WiFiPickerExtensionViewController *)self wifiClient];
  [wifiClient dispatchAskToJoinAction:2 notificationId:-[WiFiPickerExtensionViewController notificationId](self network:{"notificationId"), recordCopy}];
}

@end
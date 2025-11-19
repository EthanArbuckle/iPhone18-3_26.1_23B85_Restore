@interface WiFiPickerExtensionViewController
- (void)configureWithCompletion:(id)a3;
- (void)invalidate;
- (void)loadView;
- (void)openSettingsForScanRecord:(id)a3;
- (void)viewDidLoad;
@end

@implementation WiFiPickerExtensionViewController

- (void)loadView
{
  v3 = [(WiFiPickerExtensionViewController *)self extensionContext];
  v4 = [v3 inputItems];

  v5 = WFLogForCategory();
  v6 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v43 = "[WiFiPickerExtensionViewController loadView]";
    v44 = 2112;
    v45 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s inputItems %@", buf, 0x16u);
  }

  v7 = objc_alloc_init(WFClient);
  [(WiFiPickerExtensionViewController *)self setWifiClient:v7];

  if (v4 && [v4 count])
  {
    v8 = [v4 firstObject];
    v9 = [v8 userInfo];
    v10 = v9;
    if (!v9 || ([v9 objectForKey:@"notificationId"], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
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
          v16 = [(WiFiPickerExtensionViewController *)self notificationId];
          *buf = 136315394;
          v43 = "[WiFiPickerExtensionViewController loadView]";
          v44 = 1024;
          LODWORD(v45) = v16;
          _os_log_impl(&_mh_execute_header, v14, v15, "%s: notificationId %d", buf, 0x12u);
        }
      }
    }

LABEL_24:
    goto LABEL_25;
  }

  v8 = WFLogForCategory();
  v17 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v8)
  {
    v10 = v8;
    if (os_log_type_enabled(v10, v17))
    {
      v18 = [(WiFiPickerExtensionViewController *)self extensionContext];
      *buf = 136315394;
      v43 = "[WiFiPickerExtensionViewController loadView]";
      v44 = 2112;
      v45 = v18;
      _os_log_impl(&_mh_execute_header, v10, v17, "%s: extension items is nil (context %@)", buf, 0x16u);
    }

    v8 = v10;
    goto LABEL_24;
  }

LABEL_25:

  v20 = [[WFPickerViewProvider alloc] initWithRootViewController:self];
  [(WiFiPickerExtensionViewController *)self setViewProvider:v20];

  v21 = [(WiFiPickerExtensionViewController *)self viewProvider];
  [v21 setDelegate:self];

  v22 = objc_alloc_init(WFPickerViewController);
  [(WiFiPickerExtensionViewController *)self setViewController:v22];

  v23 = [WFNetworkListController alloc];
  v24 = [(WiFiPickerExtensionViewController *)self viewController];
  v25 = [(WiFiPickerExtensionViewController *)self viewProvider];
  v26 = [(WiFiPickerExtensionViewController *)self wifiClient];
  v27 = [v23 initWithViewController:v24 viewProvider:v25 client:v26];
  [(WiFiPickerExtensionViewController *)self setAirportController:v27];

  v28 = [(WiFiPickerExtensionViewController *)self airportController];
  [v28 startScanning];

  v29 = objc_alloc_init(UIView);
  [v29 setFrame:{0.0, 0.0, 300.0, 300.0}];
  [(WiFiPickerExtensionViewController *)self setView:v29];
  objc_initWeak(buf, self);
  v30 = +[NSNotificationCenter defaultCenter];
  v31 = [(WiFiPickerExtensionViewController *)self airportController];
  v32 = +[NSOperationQueue mainQueue];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100001488;
  v40[3] = &unk_100004188;
  objc_copyWeak(&v41, buf);
  v33 = [v30 addObserverForName:WFNetworkListControllerAssociationDidFinishNotification object:v31 queue:v32 usingBlock:v40];

  v34 = +[NSNotificationCenter defaultCenter];
  v35 = [(WiFiPickerExtensionViewController *)self airportController];
  v36 = +[NSOperationQueue mainQueue];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100001698;
  v38[3] = &unk_1000041B0;
  objc_copyWeak(&v39, buf);
  v38[4] = self;
  v37 = [v34 addObserverForName:WFNetworkListControllerScanDidFinishNotification object:v35 queue:v36 usingBlock:v38];

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

  v5 = [(WiFiPickerExtensionViewController *)self viewController];
  [v5 willMoveToParentViewController:self];

  v6 = [(WiFiPickerExtensionViewController *)self view];
  v7 = [(WiFiPickerExtensionViewController *)self viewController];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v9 = [(WiFiPickerExtensionViewController *)self viewController];
  v10 = [v9 view];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = [(WiFiPickerExtensionViewController *)self viewController];
  v20 = [v19 view];
  [v20 setFrame:{v12, v14, v16, v18}];

  v21 = [(WiFiPickerExtensionViewController *)self viewController];
  v22 = [v21 view];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(WiFiPickerExtensionViewController *)self viewController];
  v24 = [v23 view];
  v25 = [v24 leftAnchor];
  v26 = [(WiFiPickerExtensionViewController *)self view];
  v27 = [v26 leftAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [(WiFiPickerExtensionViewController *)self viewController];
  v30 = [v29 view];
  v31 = [v30 topAnchor];
  v32 = [(WiFiPickerExtensionViewController *)self view];
  v33 = [v32 topAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];
  [v34 setActive:1];

  v35 = [(WiFiPickerExtensionViewController *)self viewController];
  v36 = [v35 view];
  v37 = [v36 rightAnchor];
  v38 = [(WiFiPickerExtensionViewController *)self view];
  v39 = [v38 rightAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  [v40 setActive:1];

  v41 = [(WiFiPickerExtensionViewController *)self viewController];
  v42 = [v41 view];
  v43 = [v42 bottomAnchor];
  v44 = [(WiFiPickerExtensionViewController *)self view];
  v45 = [v44 bottomAnchor];
  v46 = [v43 constraintEqualToAnchor:v45];
  [v46 setActive:1];

  [(WiFiPickerExtensionViewController *)self setPreferredContentSize:300.0, 300.0];
}

- (void)configureWithCompletion:(id)a3
{
  v4 = a3;
  v5 = WFLogForCategory();
  v6 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v7 = 136315138;
    v8 = "[WiFiPickerExtensionViewController configureWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", &v7, 0xCu);
  }

  [(WiFiPickerExtensionViewController *)self setCompletionBlock:v4];
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
      v15 = self;
      v16 = 1024;
      v17 = [(WiFiPickerExtensionViewController *)self userDismissed];
      _os_log_impl(&_mh_execute_header, v5, v4, "%s: %@ (userDismissed %d)", &v12, 0x1Cu);
    }
  }

  v6 = [(WiFiPickerExtensionViewController *)self airportController];
  [v6 stopScanning];

  v7 = [(WiFiPickerExtensionViewController *)self airportController];
  v8 = [(WiFiPickerExtensionViewController *)self viewController];
  [v7 networkListViewControllerDidFinish:v8];

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

    v11 = [(WiFiPickerExtensionViewController *)self wifiClient];
    [v11 dispatchAskToJoinAction:0 notificationId:-[WiFiPickerExtensionViewController notificationId](self network:{"notificationId"), 0}];
  }
}

- (void)openSettingsForScanRecord:(id)a3
{
  v4 = a3;
  v5 = WFLogForCategory();
  v6 = OSLogForWFLogLevel();
  if (WFCurrentLogLevel() && v5 && os_log_type_enabled(v5, v6))
  {
    v9 = 136315394;
    v10 = "[WiFiPickerExtensionViewController openSettingsForScanRecord:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: opening settings for network %@", &v9, 0x16u);
  }

  [(WiFiPickerExtensionViewController *)self setUserDismissed:1];
  v7 = [(WiFiPickerExtensionViewController *)self viewController];
  [v7 setDismissed:1];

  v8 = [(WiFiPickerExtensionViewController *)self wifiClient];
  [v8 dispatchAskToJoinAction:2 notificationId:-[WiFiPickerExtensionViewController notificationId](self network:{"notificationId"), v4}];
}

@end
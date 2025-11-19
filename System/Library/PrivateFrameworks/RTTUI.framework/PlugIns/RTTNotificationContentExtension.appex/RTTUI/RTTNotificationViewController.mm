@interface RTTNotificationViewController
- (void)didReceiveNotification:(id)a3;
- (void)viewDidLoad;
@end

@implementation RTTNotificationViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = RTTNotificationViewController;
  [(RTTNotificationViewController *)&v2 viewDidLoad];
}

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"CallUID"];

  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Received notification[%@]: %@", buf, 0x16u);
  }

  if (v8)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = sub_1000013C0;
    v44 = sub_1000013D0;
    v45 = 0;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000013D8;
    v37[3] = &unk_100004110;
    v39 = buf;
    v38 = v8;
    [RTTTelephonyUtilities performCallCenterTask:v37];
    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(*&buf[8] + 40);
      *v40 = 138412290;
      v41 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Found call: %@", v40, 0xCu);
    }

    if (+[UNUserNotificationCenter supportsContentExtensions])
    {
      viewController = self->_viewController;
      if (!viewController)
      {
        goto LABEL_9;
      }

      v13 = [(RTTUIConversationViewController *)viewController call];
      v14 = [v13 callUUID];
      v15 = [*(*&buf[8] + 40) callUUID];
      v16 = [v14 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
LABEL_9:
        v17 = [RTTUIConversationViewController viewControllerForCall:*(*&buf[8] + 40)];
        v18 = self->_viewController;
        self->_viewController = v17;

        v19 = [(RTTUIConversationViewController *)self->_viewController conversation];
        v20 = v19 == 0;

        if (v20)
        {
          objc_initWeak(v40, self);
          objc_initWeak(&location, self->_viewController);
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_100001448;
          v33[3] = &unk_100004138;
          objc_copyWeak(&v34, v40);
          objc_copyWeak(&v35, &location);
          [(RTTUIConversationViewController *)self->_viewController setRttConversationAvailabilityCallback:v33];
          objc_destroyWeak(&v35);
          objc_destroyWeak(&v34);
          objc_destroyWeak(&location);
          objc_destroyWeak(v40);
        }

        else
        {
          v21 = [(RTTUIConversationViewController *)self->_viewController contactDisplayString];
          [(RTTNotificationViewController *)self setTitle:v21];
        }

        v26 = AXLogRTT();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = self->_viewController;
          *v40 = 138412290;
          v41 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Created VC: %@", v40, 0xCu);
        }

        v28 = [(RTTUIConversationViewController *)self->_viewController view];
        v29 = [(RTTNotificationViewController *)self view];
        [v29 frame];
        [v28 setFrame:?];

        [(RTTNotificationViewController *)self addChildViewController:self->_viewController];
        v30 = [(RTTNotificationViewController *)self view];
        v31 = [(RTTUIConversationViewController *)self->_viewController view];
        [v30 addSubview:v31];

        [(RTTUIConversationViewController *)self->_viewController didMoveToParentViewController:self];
      }

      v32 = [(RTTUIConversationViewController *)self->_viewController inputTextView];
      [v32 becomeFirstResponder];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = AXLogRTT();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [v4 request];
      v24 = [v23 content];
      v25 = [v24 userInfo];
      *buf = 138412290;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "No callId: %@", buf, 0xCu);
    }
  }
}

@end
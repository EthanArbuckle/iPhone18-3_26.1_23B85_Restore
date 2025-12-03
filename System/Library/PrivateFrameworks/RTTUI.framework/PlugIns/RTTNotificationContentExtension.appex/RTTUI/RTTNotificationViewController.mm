@interface RTTNotificationViewController
- (void)didReceiveNotification:(id)notification;
- (void)viewDidLoad;
@end

@implementation RTTNotificationViewController

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = RTTNotificationViewController;
  [(RTTNotificationViewController *)&v2 viewDidLoad];
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];
  v8 = [userInfo objectForKeyedSubscript:@"CallUID"];

  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = notificationCopy;
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

      call = [(RTTUIConversationViewController *)viewController call];
      callUUID = [call callUUID];
      callUUID2 = [*(*&buf[8] + 40) callUUID];
      v16 = [callUUID isEqualToString:callUUID2];

      if ((v16 & 1) == 0)
      {
LABEL_9:
        v17 = [RTTUIConversationViewController viewControllerForCall:*(*&buf[8] + 40)];
        v18 = self->_viewController;
        self->_viewController = v17;

        conversation = [(RTTUIConversationViewController *)self->_viewController conversation];
        v20 = conversation == 0;

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
          contactDisplayString = [(RTTUIConversationViewController *)self->_viewController contactDisplayString];
          [(RTTNotificationViewController *)self setTitle:contactDisplayString];
        }

        v26 = AXLogRTT();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = self->_viewController;
          *v40 = 138412290;
          v41 = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Created VC: %@", v40, 0xCu);
        }

        view = [(RTTUIConversationViewController *)self->_viewController view];
        view2 = [(RTTNotificationViewController *)self view];
        [view2 frame];
        [view setFrame:?];

        [(RTTNotificationViewController *)self addChildViewController:self->_viewController];
        view3 = [(RTTNotificationViewController *)self view];
        view4 = [(RTTUIConversationViewController *)self->_viewController view];
        [view3 addSubview:view4];

        [(RTTUIConversationViewController *)self->_viewController didMoveToParentViewController:self];
      }

      inputTextView = [(RTTUIConversationViewController *)self->_viewController inputTextView];
      [inputTextView becomeFirstResponder];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v22 = AXLogRTT();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      request2 = [notificationCopy request];
      content2 = [request2 content];
      userInfo2 = [content2 userInfo];
      *buf = 138412290;
      *&buf[4] = userInfo2;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "No callId: %@", buf, 0xCu);
    }
  }
}

@end
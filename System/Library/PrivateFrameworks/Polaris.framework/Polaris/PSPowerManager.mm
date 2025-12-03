@interface PSPowerManager
- (PSPowerManager)initWithgsm:(ps_gsm_s *)withgsm;
- (id)descriptionForActivity:(unint64_t)activity;
- (id)userActivityStatusDescription;
- (unint64_t)resolvedUserActivity;
- (void)deregisterForUserActivityNotifications;
- (void)disableUserActivityOverride;
- (void)handleUserActivityStateChange;
- (void)overrideUserActivityToUserActive;
- (void)overrideUserActivityToUserInactive;
- (void)registerForUserActivityNotifications:(void *)notifications;
- (void)stop;
@end

@implementation PSPowerManager

- (PSPowerManager)initWithgsm:(ps_gsm_s *)withgsm
{
  v12.receiver = self;
  v12.super_class = PSPowerManager;
  v4 = [(PSPowerManager *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_pm_ack_port = IORegisterForSystemPower(v4, &v4->_systemPowerPort, sub_100013D60, &v4->_systemPowerNotifier);
    v6 = dispatch_queue_create("Polaris IOPM queue", 0);
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v6;

    systemPowerPort = v5->_systemPowerPort;
    if (systemPowerPort && v5->_systemPowerNotifier)
    {
      IONotificationPortSetDispatchQueue(systemPowerPort, v5->_notificationQueue);
      v9 = sub_100013BF4();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PolarisD IOPM initialized.", v11, 2u);
      }
    }

    v5->_gsm = withgsm;
    *&v5->_iopm_notification_handle = 0u;
    *&v5->_user_activity.iopm = 0u;
  }

  return v5;
}

- (void)stop
{
  v5 = 0;
  v4 = 4;
  if (sysctlbyname("kern.willshutdown", &v5, &v4, 0, 0))
  {
    v3 = 1;
  }

  else
  {
    v3 = v5 == 0;
  }

  if (v3)
  {
    [(PSPowerManager *)self deregisterForUserActivityNotifications];
  }
}

- (void)deregisterForUserActivityNotifications
{
  if (self->_iopm_notification_handle)
  {
    IOPMUnregisterNotification();
    self->_iopm_notification_handle = 0;
  }
}

- (unint64_t)resolvedUserActivity
{
  result = self->_user_activity.override;
  if (!result)
  {
    return self->_user_activity.iopm;
  }

  return result;
}

- (id)descriptionForActivity:(unint64_t)activity
{
  if (activity < 3)
  {
    return *(&off_100028F38 + activity);
  }

  v5 = sub_100013BF4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    activityCopy = activity;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unexpected activity level: %lu", &v6, 0xCu);
  }

  return result;
}

- (void)handleUserActivityStateChange
{
  resolvedUserActivity = [(PSPowerManager *)self resolvedUserActivity];
  if (resolvedUserActivity != self->_user_activity.previous)
  {
    v4 = resolvedUserActivity;
    switch(resolvedUserActivity)
    {
      case 0uLL:
LABEL_7:
        self->_user_activity.previous = v4;
        return;
      case 1uLL:
        ps_liveness_server_pause_liveness();
        pssg_server = self->_pssg_server;
        ps_sysgraph_send_user_is_inactive_notification();
        goto LABEL_7;
      case 2uLL:
        ps_liveness_server_resume_liveness();
        v5 = self->_pssg_server;
        ps_sysgraph_send_user_is_active_notification();
        goto LABEL_7;
    }

    v7 = sub_100013BF4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unexpected activity level: %lu", &v8, 0xCu);
    }
  }
}

- (void)registerForUserActivityNotifications:(void *)notifications
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100014294;
  v3[3] = &unk_100028EC8;
  v3[4] = self;
  v3[5] = notifications;
  if (qword_100032120 != -1)
  {
    dispatch_once(&qword_100032120, v3);
  }
}

- (void)disableUserActivityOverride
{
  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000144FC;
  block[3] = &unk_100028EF0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(notificationQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)overrideUserActivityToUserActive
{
  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014608;
  block[3] = &unk_100028EF0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(notificationQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)overrideUserActivityToUserInactive
{
  objc_initWeak(&location, self);
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014718;
  block[3] = &unk_100028EF0;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(notificationQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)userActivityStatusDescription
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100014868;
  v10 = sub_100014878;
  v11 = 0;
  notificationQueue = self->_notificationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100014880;
  v5[3] = &unk_100028F18;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_async_and_wait(notificationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end
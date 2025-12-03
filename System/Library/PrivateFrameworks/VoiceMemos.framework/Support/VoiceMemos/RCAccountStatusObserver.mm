@interface RCAccountStatusObserver
- (RCAccountStatusDelegate)delegate;
- (RCAccountStatusObserver)init;
- (void)_checkAccountStatus;
- (void)_handleCKAccountChangedNotification:(id)notification;
- (void)_notifyDelegate;
- (void)startMonitoringAccountStatus;
@end

@implementation RCAccountStatusObserver

- (RCAccountStatusObserver)init
{
  v3.receiver = self;
  v3.super_class = RCAccountStatusObserver;
  result = [(RCAccountStatusObserver *)&v3 init];
  if (result)
  {
    result->_encryptedFieldsAccountStatus = 0;
  }

  return result;
}

- (void)startMonitoringAccountStatus
{
  if (!self->_isObservingAccountChanges)
  {
    self->_isObservingAccountChanges = 1;
    v3 = OSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[RCAccountStatusObserver startMonitoringAccountStatus]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s -- Registering for CKAccountChangedNotification", &v5, 0xCu);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_handleCKAccountChangedNotification:" name:CKAccountChangedNotification object:0];

    [(RCAccountStatusObserver *)self _checkAccountStatus];
  }
}

- (void)_handleCKAccountChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = OSLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[RCAccountStatusObserver _handleCKAccountChangedNotification:]";
    v8 = 2112;
    v9 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s -- notification received %@", &v6, 0x16u);
  }

  [(RCAccountStatusObserver *)self _checkAccountStatus];
}

- (void)_checkAccountStatus
{
  v3 = +[RCCloudKitContainerUtilities createContainer];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001F000;
  v4[3] = &unk_100056290;
  v4[4] = self;
  [v3 accountInfoWithCompletionHandler:v4];
}

- (void)_notifyDelegate
{
  delegate = [(RCAccountStatusObserver *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    [delegate accountStatusUpdated:self];
    delegate = v4;
  }
}

- (RCAccountStatusDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
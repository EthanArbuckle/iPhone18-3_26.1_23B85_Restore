@interface TCCDAlertManager
- (TCCDAlertManager)initWithAlerts:(id)alerts;
- (void)displayAlertForCondition:(int64_t)condition withCustomUserInfo:(id)info;
@end

@implementation TCCDAlertManager

- (TCCDAlertManager)initWithAlerts:(id)alerts
{
  alertsCopy = alerts;
  v11.receiver = self;
  v11.super_class = TCCDAlertManager;
  v5 = [(TCCDAlertManager *)&v11 init];
  if (v5)
  {
    v6 = [alertsCopy copy];
    alerts = v5->_alerts;
    v5->_alerts = v6;

    v8 = dispatch_queue_create("com.apple.tccd.AlertManager", 0);
    displayQueue = v5->_displayQueue;
    v5->_displayQueue = v8;
  }

  return v5;
}

- (void)displayAlertForCondition:(int64_t)condition withCustomUserInfo:(id)info
{
  infoCopy = info;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  alerts = [(TCCDAlertManager *)self alerts];
  v8 = [alerts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(alerts);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isDisplayableForCondition:condition])
        {
          displayQueue = [(TCCDAlertManager *)self displayQueue];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10005EA80;
          v14[3] = &unk_1000A50C0;
          v14[4] = v12;
          v15 = infoCopy;
          dispatch_sync(displayQueue, v14);
        }
      }

      v9 = [alerts countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

@end
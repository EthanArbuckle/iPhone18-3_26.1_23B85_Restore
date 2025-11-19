@interface TCCDAlertManager
- (TCCDAlertManager)initWithAlerts:(id)a3;
- (void)displayAlertForCondition:(int64_t)a3 withCustomUserInfo:(id)a4;
@end

@implementation TCCDAlertManager

- (TCCDAlertManager)initWithAlerts:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TCCDAlertManager;
  v5 = [(TCCDAlertManager *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    alerts = v5->_alerts;
    v5->_alerts = v6;

    v8 = dispatch_queue_create("com.apple.tccd.AlertManager", 0);
    displayQueue = v5->_displayQueue;
    v5->_displayQueue = v8;
  }

  return v5;
}

- (void)displayAlertForCondition:(int64_t)a3 withCustomUserInfo:(id)a4
{
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(TCCDAlertManager *)self alerts];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isDisplayableForCondition:a3])
        {
          v13 = [(TCCDAlertManager *)self displayQueue];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10005EA80;
          v14[3] = &unk_1000A50C0;
          v14[4] = v12;
          v15 = v6;
          dispatch_sync(v13, v14);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

@end
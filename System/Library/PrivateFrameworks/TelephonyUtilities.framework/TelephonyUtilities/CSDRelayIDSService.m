@interface CSDRelayIDSService
+ (id)sharedInstance;
- (void)_handlePairedDeviceChangedFrom:(id)a3 to:(id)a4;
- (void)handleActiveAccountsChanged:(id)a3;
@end

@implementation CSDRelayIDSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AABD8;
  block[3] = &unk_10061A860;
  block[4] = a1;
  if (qword_1006ACC08 != -1)
  {
    dispatch_once(&qword_1006ACC08, block);
  }

  v2 = qword_1006ACC00;

  return v2;
}

- (void)handleActiveAccountsChanged:(id)a3
{
  v5.receiver = self;
  v5.super_class = CSDRelayIDSService;
  [(CSDIDSService *)&v5 handleActiveAccountsChanged:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CSDRelayIDSActiveAccountsChanged" object:self];
}

- (void)_handlePairedDeviceChangedFrom:(id)a3 to:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (!v9 && v6)
  {
    v7 = @"CSDRelayPairedDeviceConnectedNotification";
LABEL_7:
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:v7 object:self];

    goto LABEL_8;
  }

  if (v9 && !v6)
  {
    v7 = @"CSDRelayPairedDeviceDisconnectedNotification";
    goto LABEL_7;
  }

LABEL_8:
}

@end
@interface CSDRelayIDSService
+ (id)sharedInstance;
- (void)_handlePairedDeviceChangedFrom:(id)from to:(id)to;
- (void)handleActiveAccountsChanged:(id)changed;
@end

@implementation CSDRelayIDSService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AABD8;
  block[3] = &unk_10061A860;
  block[4] = self;
  if (qword_1006ACC08 != -1)
  {
    dispatch_once(&qword_1006ACC08, block);
  }

  v2 = qword_1006ACC00;

  return v2;
}

- (void)handleActiveAccountsChanged:(id)changed
{
  v5.receiver = self;
  v5.super_class = CSDRelayIDSService;
  [(CSDIDSService *)&v5 handleActiveAccountsChanged:changed];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CSDRelayIDSActiveAccountsChanged" object:self];
}

- (void)_handlePairedDeviceChangedFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (!fromCopy && toCopy)
  {
    v7 = @"CSDRelayPairedDeviceConnectedNotification";
LABEL_7:
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:v7 object:self];

    goto LABEL_8;
  }

  if (fromCopy && !toCopy)
  {
    v7 = @"CSDRelayPairedDeviceDisconnectedNotification";
    goto LABEL_7;
  }

LABEL_8:
}

@end
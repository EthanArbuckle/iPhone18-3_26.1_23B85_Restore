@interface CSDFaceTimeIDSService
- (CSDFaceTimeIDSService)initWithName:(id)name;
- (id)callerID;
- (void)account:(id)account aliasesChanged:(id)changed;
- (void)dealloc;
- (void)faceTimeIMAccountCallerIDChanged:(id)changed;
@end

@implementation CSDFaceTimeIDSService

- (CSDFaceTimeIDSService)initWithName:(id)name
{
  v7.receiver = self;
  v7.super_class = CSDFaceTimeIDSService;
  v3 = [(CSDIDSService *)&v7 initWithName:name];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"faceTimeIMAccountCallerIDChanged:" name:@"CSDFaceTimeIMAccountCallerIDChangedNotification" object:0];

    v5 = +[CSDFaceTimeIMAccount sharedInstance];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDFaceTimeIDSService;
  [(CSDIDSService *)&v4 dealloc];
}

- (id)callerID
{
  v2 = +[CSDFaceTimeIMAccount sharedInstance];
  callerID = [v2 callerID];

  return callerID;
}

- (void)faceTimeIMAccountCallerIDChanged:(id)changed
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CSDIDSServiceCallerIDChangedNotification" object:self];
}

- (void)account:(id)account aliasesChanged:(id)changed
{
  accountCopy = account;
  changedCopy = changed;
  v6 = +[CSDFaceTimeIMAccount sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    [v6 account:accountCopy aliasesChanged:changedCopy];
  }
}

@end
@interface CSDFaceTimeIDSService
- (CSDFaceTimeIDSService)initWithName:(id)a3;
- (id)callerID;
- (void)account:(id)a3 aliasesChanged:(id)a4;
- (void)dealloc;
- (void)faceTimeIMAccountCallerIDChanged:(id)a3;
@end

@implementation CSDFaceTimeIDSService

- (CSDFaceTimeIDSService)initWithName:(id)a3
{
  v7.receiver = self;
  v7.super_class = CSDFaceTimeIDSService;
  v3 = [(CSDIDSService *)&v7 initWithName:a3];
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
  v3 = [v2 callerID];

  return v3;
}

- (void)faceTimeIMAccountCallerIDChanged:(id)a3
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CSDIDSServiceCallerIDChangedNotification" object:self];
}

- (void)account:(id)a3 aliasesChanged:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = +[CSDFaceTimeIMAccount sharedInstance];
  if (objc_opt_respondsToSelector())
  {
    [v6 account:v7 aliasesChanged:v5];
  }
}

@end
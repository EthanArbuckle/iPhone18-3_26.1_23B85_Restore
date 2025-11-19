@interface NANDTelemetry_Base
+ (void)registerActivityWithIdentifier:(const char *)a3 XpcCriteria:(id)a4 ActivityQ:(id)a5 PersistentState:(BOOL)a6;
- (BOOL)isXpcActivityDeferred;
- (BOOL)tryDeferXpcActivity;
- (NANDTelemetry_Base)initWithXpcActivityMgr:(id)a3 persistentStateMgr:(id)a4 privacyMgr:(id)a5;
@end

@implementation NANDTelemetry_Base

- (NANDTelemetry_Base)initWithXpcActivityMgr:(id)a3 persistentStateMgr:(id)a4 privacyMgr:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = NANDTelemetry_Base;
  v12 = [(NANDTelemetry_Base *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityMgr, a3);
    objc_storeStrong(&v13->_stateMgr, a4);
    objc_storeStrong(&v13->_privacyMgr, a5);
    v14 = v13;
  }

  return v13;
}

- (BOOL)tryDeferXpcActivity
{
  v2 = [(NANDTelemetry_Base *)self activityMgr];
  v3 = [v2 tryDeferXpcActivity];

  return v3;
}

- (BOOL)isXpcActivityDeferred
{
  v2 = [(NANDTelemetry_Base *)self activityMgr];
  v3 = [v2 isXpcActivityDeferred];

  return v3;
}

+ (void)registerActivityWithIdentifier:(const char *)a3 XpcCriteria:(id)a4 ActivityQ:(id)a5 PersistentState:(BOOL)a6
{
  v10 = a4;
  v11 = a5;
  if ([a1 shouldRegisterActivity])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000018A8;
    v12[3] = &unk_10009C858;
    v12[4] = a1;
    v13 = a6;
    SafeXpcActivityRegister(a3, v10, v11, v12);
  }
}

@end
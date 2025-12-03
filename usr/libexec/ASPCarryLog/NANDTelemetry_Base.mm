@interface NANDTelemetry_Base
+ (void)registerActivityWithIdentifier:(const char *)identifier XpcCriteria:(id)criteria ActivityQ:(id)q PersistentState:(BOOL)state;
- (BOOL)isXpcActivityDeferred;
- (BOOL)tryDeferXpcActivity;
- (NANDTelemetry_Base)initWithXpcActivityMgr:(id)mgr persistentStateMgr:(id)stateMgr privacyMgr:(id)privacyMgr;
@end

@implementation NANDTelemetry_Base

- (NANDTelemetry_Base)initWithXpcActivityMgr:(id)mgr persistentStateMgr:(id)stateMgr privacyMgr:(id)privacyMgr
{
  mgrCopy = mgr;
  stateMgrCopy = stateMgr;
  privacyMgrCopy = privacyMgr;
  v16.receiver = self;
  v16.super_class = NANDTelemetry_Base;
  v12 = [(NANDTelemetry_Base *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activityMgr, mgr);
    objc_storeStrong(&v13->_stateMgr, stateMgr);
    objc_storeStrong(&v13->_privacyMgr, privacyMgr);
    v14 = v13;
  }

  return v13;
}

- (BOOL)tryDeferXpcActivity
{
  activityMgr = [(NANDTelemetry_Base *)self activityMgr];
  tryDeferXpcActivity = [activityMgr tryDeferXpcActivity];

  return tryDeferXpcActivity;
}

- (BOOL)isXpcActivityDeferred
{
  activityMgr = [(NANDTelemetry_Base *)self activityMgr];
  isXpcActivityDeferred = [activityMgr isXpcActivityDeferred];

  return isXpcActivityDeferred;
}

+ (void)registerActivityWithIdentifier:(const char *)identifier XpcCriteria:(id)criteria ActivityQ:(id)q PersistentState:(BOOL)state
{
  criteriaCopy = criteria;
  qCopy = q;
  if ([self shouldRegisterActivity])
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000018A8;
    v12[3] = &unk_10009C858;
    v12[4] = self;
    stateCopy = state;
    SafeXpcActivityRegister(identifier, criteriaCopy, qCopy, v12);
  }
}

@end
@interface BKSecurityManager
+ (BOOL)hasEntitlement:(id)entitlement forAuditToken:(id *)token;
+ (BOOL)hasEntitlement:(id)entitlement forConnection:(id)connection;
+ (id)sharedInstance;
- (BKSecurityManager)init;
- (BOOL)_lock_hasEntitlement:(id)entitlement usingCacheForAuditToken:(id *)token;
- (BOOL)hasEntitlement:(id)entitlement forAuditToken:(id *)token;
- (void)_processDidTerminate:(int64_t)terminate;
@end

@implementation BKSecurityManager

+ (id)sharedInstance
{
  if (qword_100125E70 != -1)
  {
    dispatch_once(&qword_100125E70, &stru_1000FAD98);
  }

  v3 = qword_100125E68;

  return v3;
}

- (void)_processDidTerminate:(int64_t)terminate
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  lock_vpidToCacheEntry = self->_lock_vpidToCacheEntry;
  v6 = [NSNumber numberWithLongLong:terminate];
  v10 = [(NSMutableDictionary *)lock_vpidToCacheEntry objectForKey:v6];

  if (v10)
  {
    deathWatcher = [v10 deathWatcher];
    [deathWatcher invalidate];

    v8 = self->_lock_vpidToCacheEntry;
    v9 = [NSNumber numberWithLongLong:terminate];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_lock_hasEntitlement:(id)entitlement usingCacheForAuditToken:(id *)token
{
  entitlementCopy = entitlement;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = *&token->var0[4];
  v23[0] = *token->var0;
  v23[1] = v7;
  v8 = [BSAuditToken tokenFromAuditToken:v23];
  versionedPID = [v8 versionedPID];
  lock_vpidToCacheEntry = self->_lock_vpidToCacheEntry;
  v11 = [NSNumber numberWithLongLong:versionedPID];
  v12 = [(NSMutableDictionary *)lock_vpidToCacheEntry objectForKey:v11];

  if (!v12)
  {
    v12 = objc_opt_new();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100039140;
    v22[3] = &unk_1000FCF78;
    v22[4] = self;
    v22[5] = versionedPID;
    v13 = [[BSProcessDeathWatcher alloc] initWithPID:objc_msgSend(v8 queue:"pid") deathHandler:{&_dispatch_main_q, v22}];
    [v12 setDeathWatcher:v13];

    v14 = self->_lock_vpidToCacheEntry;
    v15 = [NSNumber numberWithLongLong:versionedPID];
    [(NSMutableDictionary *)v14 setObject:v12 forKey:v15];
  }

  entitlementCache = [v12 entitlementCache];
  if (!entitlementCache)
  {
    entitlementCache = objc_opt_new();
    [v12 setEntitlementCache:entitlementCache];
  }

  v17 = [entitlementCache objectForKey:entitlementCopy];
  v18 = v17;
  if (v17)
  {
    LOBYTE(v19) = [v17 BOOLValue];
  }

  else
  {
    v19 = [v8 hasEntitlement:entitlementCopy];
    v20 = [NSNumber numberWithBool:v19];
    [entitlementCache setObject:v20 forKey:entitlementCopy];
  }

  return v19;
}

- (BOOL)hasEntitlement:(id)entitlement forAuditToken:(id *)token
{
  entitlementCopy = entitlement;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(token) = [(BKSecurityManager *)self _lock_hasEntitlement:entitlementCopy usingCacheForAuditToken:token];

  os_unfair_lock_unlock(&self->_lock);
  return token;
}

- (BKSecurityManager)init
{
  v7.receiver = self;
  v7.super_class = BKSecurityManager;
  v2 = [(BKSecurityManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(NSMutableDictionary);
    lock_vpidToCacheEntry = v3->_lock_vpidToCacheEntry;
    v3->_lock_vpidToCacheEntry = v4;
  }

  return v3;
}

+ (BOOL)hasEntitlement:(id)entitlement forConnection:(id)connection
{
  memset(v8, 0, sizeof(v8));
  entitlementCopy = entitlement;
  xpc_connection_get_audit_token();
  v6 = [self hasEntitlement:entitlementCopy forAuditToken:v8];

  return v6;
}

+ (BOOL)hasEntitlement:(id)entitlement forAuditToken:(id *)token
{
  entitlementCopy = entitlement;
  v6 = +[BKSecurityManager sharedInstance];
  LOBYTE(token) = [v6 hasEntitlement:entitlementCopy forAuditToken:token];

  return token;
}

@end
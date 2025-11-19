@interface BKSecurityManager
+ (BOOL)hasEntitlement:(id)a3 forAuditToken:(id *)a4;
+ (BOOL)hasEntitlement:(id)a3 forConnection:(id)a4;
+ (id)sharedInstance;
- (BKSecurityManager)init;
- (BOOL)_lock_hasEntitlement:(id)a3 usingCacheForAuditToken:(id *)a4;
- (BOOL)hasEntitlement:(id)a3 forAuditToken:(id *)a4;
- (void)_processDidTerminate:(int64_t)a3;
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

- (void)_processDidTerminate:(int64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  lock_vpidToCacheEntry = self->_lock_vpidToCacheEntry;
  v6 = [NSNumber numberWithLongLong:a3];
  v10 = [(NSMutableDictionary *)lock_vpidToCacheEntry objectForKey:v6];

  if (v10)
  {
    v7 = [v10 deathWatcher];
    [v7 invalidate];

    v8 = self->_lock_vpidToCacheEntry;
    v9 = [NSNumber numberWithLongLong:a3];
    [(NSMutableDictionary *)v8 removeObjectForKey:v9];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_lock_hasEntitlement:(id)a3 usingCacheForAuditToken:(id *)a4
{
  v6 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = *&a4->var0[4];
  v23[0] = *a4->var0;
  v23[1] = v7;
  v8 = [BSAuditToken tokenFromAuditToken:v23];
  v9 = [v8 versionedPID];
  lock_vpidToCacheEntry = self->_lock_vpidToCacheEntry;
  v11 = [NSNumber numberWithLongLong:v9];
  v12 = [(NSMutableDictionary *)lock_vpidToCacheEntry objectForKey:v11];

  if (!v12)
  {
    v12 = objc_opt_new();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100039140;
    v22[3] = &unk_1000FCF78;
    v22[4] = self;
    v22[5] = v9;
    v13 = [[BSProcessDeathWatcher alloc] initWithPID:objc_msgSend(v8 queue:"pid") deathHandler:{&_dispatch_main_q, v22}];
    [v12 setDeathWatcher:v13];

    v14 = self->_lock_vpidToCacheEntry;
    v15 = [NSNumber numberWithLongLong:v9];
    [(NSMutableDictionary *)v14 setObject:v12 forKey:v15];
  }

  v16 = [v12 entitlementCache];
  if (!v16)
  {
    v16 = objc_opt_new();
    [v12 setEntitlementCache:v16];
  }

  v17 = [v16 objectForKey:v6];
  v18 = v17;
  if (v17)
  {
    LOBYTE(v19) = [v17 BOOLValue];
  }

  else
  {
    v19 = [v8 hasEntitlement:v6];
    v20 = [NSNumber numberWithBool:v19];
    [v16 setObject:v20 forKey:v6];
  }

  return v19;
}

- (BOOL)hasEntitlement:(id)a3 forAuditToken:(id *)a4
{
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  LOBYTE(a4) = [(BKSecurityManager *)self _lock_hasEntitlement:v6 usingCacheForAuditToken:a4];

  os_unfair_lock_unlock(&self->_lock);
  return a4;
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

+ (BOOL)hasEntitlement:(id)a3 forConnection:(id)a4
{
  memset(v8, 0, sizeof(v8));
  v5 = a3;
  xpc_connection_get_audit_token();
  v6 = [a1 hasEntitlement:v5 forAuditToken:v8];

  return v6;
}

+ (BOOL)hasEntitlement:(id)a3 forAuditToken:(id *)a4
{
  v5 = a3;
  v6 = +[BKSecurityManager sharedInstance];
  LOBYTE(a4) = [v6 hasEntitlement:v5 forAuditToken:a4];

  return a4;
}

@end
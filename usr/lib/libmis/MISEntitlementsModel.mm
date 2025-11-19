@interface MISEntitlementsModel
- (MISEntitlementsModel)initWithDB:(id)a3;
- (int)insertEntitlement:(id)a3 forProfile:(id)a4;
- (void)emitEntitlementPredicates:(id)a3 predicateHandler:(id)a4;
@end

@implementation MISEntitlementsModel

- (int)insertEntitlement:(id)a3 forProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  hasSuffix = objc_msgSend_hasSuffix_(v6, v9, @"*");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B9DC28F0;
  v15[3] = &unk_1E7ED8448;
  v16 = v7;
  v17 = v6;
  v18 = hasSuffix;
  v11 = v6;
  v12 = v7;
  LODWORD(v7) = objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v13, @"INSERT OR IGNORE INTO entitlements_provisioning_cache VALUES (NULL, @uuid, @predicate, @wildcard)", v15, 0);

  return v7;
}

- (void)emitEntitlementPredicates:(id)a3 predicateHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B9DC2A4C;
  v7[3] = &unk_1E7ED8420;
  v8 = v5;
  v6 = v5;
  sub_1B9DC841C(a3, v7);
}

- (MISEntitlementsModel)initWithDB:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MISEntitlementsModel;
  v5 = [(MISEntitlementsModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weak_db, v4);
    v7 = v6;
  }

  return v6;
}

@end
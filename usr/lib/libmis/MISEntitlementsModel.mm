@interface MISEntitlementsModel
- (MISEntitlementsModel)initWithDB:(id)b;
- (int)insertEntitlement:(id)entitlement forProfile:(id)profile;
- (void)emitEntitlementPredicates:(id)predicates predicateHandler:(id)handler;
@end

@implementation MISEntitlementsModel

- (int)insertEntitlement:(id)entitlement forProfile:(id)profile
{
  entitlementCopy = entitlement;
  profileCopy = profile;
  WeakRetained = objc_loadWeakRetained(&self->_weak_db);
  hasSuffix = objc_msgSend_hasSuffix_(entitlementCopy, v9, @"*");
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B9DC28F0;
  v15[3] = &unk_1E7ED8448;
  v16 = profileCopy;
  v17 = entitlementCopy;
  v18 = hasSuffix;
  v11 = entitlementCopy;
  v12 = profileCopy;
  LODWORD(profileCopy) = objc_msgSend_executeQuery_withBind_withResults_(WeakRetained, v13, @"INSERT OR IGNORE INTO entitlements_provisioning_cache VALUES (NULL, @uuid, @predicate, @wildcard)", v15, 0);

  return profileCopy;
}

- (void)emitEntitlementPredicates:(id)predicates predicateHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B9DC2A4C;
  v7[3] = &unk_1E7ED8420;
  v8 = handlerCopy;
  v6 = handlerCopy;
  sub_1B9DC841C(predicates, v7);
}

- (MISEntitlementsModel)initWithDB:(id)b
{
  bCopy = b;
  v9.receiver = self;
  v9.super_class = MISEntitlementsModel;
  v5 = [(MISEntitlementsModel *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weak_db, bCopy);
    v7 = v6;
  }

  return v6;
}

@end
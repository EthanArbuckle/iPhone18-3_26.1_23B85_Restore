@interface _REMDefaultReplicaManagerProvider
- (BOOL)isEqual:(id)equal;
- (_REMDefaultReplicaManagerProvider)initWithStore:(id)store;
- (id)replicaManagerForAccountID:(id)d;
- (id)unsavedReplicaManagersForAccountIDs:(id)ds;
@end

@implementation _REMDefaultReplicaManagerProvider

- (_REMDefaultReplicaManagerProvider)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _REMDefaultReplicaManagerProvider;
  v6 = [(_REMDefaultReplicaManagerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)replicaManagerForAccountID:(id)d
{
  dCopy = d;
  store = [(_REMDefaultReplicaManagerProvider *)self store];
  v6 = [REMReplicaManager replicaManagerForAccountID:dCopy store:store];

  return v6;
}

- (id)unsavedReplicaManagersForAccountIDs:(id)ds
{
  v3 = [REMReplicaManager unsavedReplicaManagersForAccountIDs:ds];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    store = [(_REMDefaultReplicaManagerProvider *)self store];
    store2 = [equalCopy store];
    if (store == store2)
    {
      v9 = 1;
    }

    else
    {
      store3 = [(_REMDefaultReplicaManagerProvider *)self store];
      store4 = [equalCopy store];
      v9 = [store3 isEqual:store4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

@end
@interface _REMDefaultReplicaManagerProvider
- (BOOL)isEqual:(id)a3;
- (_REMDefaultReplicaManagerProvider)initWithStore:(id)a3;
- (id)replicaManagerForAccountID:(id)a3;
- (id)unsavedReplicaManagersForAccountIDs:(id)a3;
@end

@implementation _REMDefaultReplicaManagerProvider

- (_REMDefaultReplicaManagerProvider)initWithStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _REMDefaultReplicaManagerProvider;
  v6 = [(_REMDefaultReplicaManagerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
  }

  return v7;
}

- (id)replicaManagerForAccountID:(id)a3
{
  v4 = a3;
  v5 = [(_REMDefaultReplicaManagerProvider *)self store];
  v6 = [REMReplicaManager replicaManagerForAccountID:v4 store:v5];

  return v6;
}

- (id)unsavedReplicaManagersForAccountIDs:(id)a3
{
  v3 = [REMReplicaManager unsavedReplicaManagersForAccountIDs:a3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(_REMDefaultReplicaManagerProvider *)self store];
    v6 = [v4 store];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(_REMDefaultReplicaManagerProvider *)self store];
      v8 = [v4 store];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

@end
@interface REMReplicaIDHelper
+ (id)nonEditingReplicaUUID;
- (NSString)crdtID;
- (REMReplicaIDHelper)initWithReplicaIDSource:(id)a3 owner:(id)a4 replicaClockProvider:(id)a5;
- (REMReplicaIDHelperOwner)owner;
- (REMReplicaManager)replicaManager;
- (id)clockElementListForReplicaUUID:(id)a3;
- (void)dealloc;
- (void)didSerialize;
- (void)willEdit;
@end

@implementation REMReplicaIDHelper

+ (id)nonEditingReplicaUUID
{
  if (nonEditingReplicaUUID_onceToken != -1)
  {
    +[REMReplicaIDHelper nonEditingReplicaUUID];
  }

  v3 = nonEditingReplicaUUID_replicaUUID;

  return v3;
}

uint64_t __43__REMReplicaIDHelper_nonEditingReplicaUUID__block_invoke()
{
  nonEditingReplicaUUID_replicaUUID = [MEMORY[0x1E696AFB0] UUID];

  return MEMORY[0x1EEE66BB8]();
}

- (REMReplicaIDHelper)initWithReplicaIDSource:(id)a3 owner:(id)a4 replicaClockProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMReplicaIDHelper;
  v12 = [(REMReplicaIDHelper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replicaIDSource, a3);
    objc_storeWeak(&v13->_owner, v10);
    objc_storeStrong(&v13->_replicaClockProvider, a5);
  }

  return v13;
}

- (void)dealloc
{
  if (self->_acquiredReplicaUUID)
  {
    v3 = [(REMReplicaIDHelper *)self replicaManager];
    [v3 returnReplicaForClient:self];
  }

  v4.receiver = self;
  v4.super_class = REMReplicaIDHelper;
  [(REMReplicaIDHelper *)&v4 dealloc];
}

- (void)willEdit
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[REMLog crdt];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v4 = 138412290;
    v5 = a1;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!self.owner) -- Editting REMReplicaIDHelper without an owner {replicaIDHelper: %@}", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)didSerialize
{
  v3 = [(REMReplicaIDHelper *)self acquiredReplicaUUID];

  if (v3)
  {
    v4 = [(REMReplicaIDHelper *)self replicaManager];
    [v4 updateVersionForClient:self];
  }
}

- (REMReplicaManager)replicaManager
{
  v3 = [(REMReplicaIDHelper *)self lazilyCachedReplicaManagerProvider];
  if (!v3)
  {
    v4 = [(REMReplicaIDHelper *)self owner];
    v3 = [v4 replicaManagerProvider];

    if (!v3)
    {
      v3 = [[_REMDefaultReplicaManagerProvider alloc] initWithStore:0];
    }

    [(REMReplicaIDHelper *)self setLazilyCachedReplicaManagerProvider:v3];
  }

  v5 = [(REMReplicaIDHelper *)self replicaIDSource];
  v6 = [v5 accountID];
  v7 = [(_REMDefaultReplicaManagerProvider *)v3 replicaManagerForAccountID:v6];

  return v7;
}

- (NSString)crdtID
{
  v2 = [(REMReplicaIDHelper *)self replicaIDSource];
  v3 = [v2 crdtID];

  return v3;
}

- (id)clockElementListForReplicaUUID:(id)a3
{
  v4 = a3;
  v5 = [(REMReplicaIDHelper *)self replicaClockProvider];
  v6 = [v5 clockElementListForReplicaUUID:v4];

  return v6;
}

- (REMReplicaIDHelperOwner)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end
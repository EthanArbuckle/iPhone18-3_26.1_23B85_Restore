@interface REMReplicaIDHelper
+ (id)nonEditingReplicaUUID;
- (NSString)crdtID;
- (REMReplicaIDHelper)initWithReplicaIDSource:(id)source owner:(id)owner replicaClockProvider:(id)provider;
- (REMReplicaIDHelperOwner)owner;
- (REMReplicaManager)replicaManager;
- (id)clockElementListForReplicaUUID:(id)d;
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

- (REMReplicaIDHelper)initWithReplicaIDSource:(id)source owner:(id)owner replicaClockProvider:(id)provider
{
  sourceCopy = source;
  ownerCopy = owner;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = REMReplicaIDHelper;
  v12 = [(REMReplicaIDHelper *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_replicaIDSource, source);
    objc_storeWeak(&v13->_owner, ownerCopy);
    objc_storeStrong(&v13->_replicaClockProvider, provider);
  }

  return v13;
}

- (void)dealloc
{
  if (self->_acquiredReplicaUUID)
  {
    replicaManager = [(REMReplicaIDHelper *)self replicaManager];
    [replicaManager returnReplicaForClient:self];
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
    selfCopy = self;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!self.owner) -- Editting REMReplicaIDHelper without an owner {replicaIDHelper: %@}", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)didSerialize
{
  acquiredReplicaUUID = [(REMReplicaIDHelper *)self acquiredReplicaUUID];

  if (acquiredReplicaUUID)
  {
    replicaManager = [(REMReplicaIDHelper *)self replicaManager];
    [replicaManager updateVersionForClient:self];
  }
}

- (REMReplicaManager)replicaManager
{
  lazilyCachedReplicaManagerProvider = [(REMReplicaIDHelper *)self lazilyCachedReplicaManagerProvider];
  if (!lazilyCachedReplicaManagerProvider)
  {
    owner = [(REMReplicaIDHelper *)self owner];
    lazilyCachedReplicaManagerProvider = [owner replicaManagerProvider];

    if (!lazilyCachedReplicaManagerProvider)
    {
      lazilyCachedReplicaManagerProvider = [[_REMDefaultReplicaManagerProvider alloc] initWithStore:0];
    }

    [(REMReplicaIDHelper *)self setLazilyCachedReplicaManagerProvider:lazilyCachedReplicaManagerProvider];
  }

  replicaIDSource = [(REMReplicaIDHelper *)self replicaIDSource];
  accountID = [replicaIDSource accountID];
  v7 = [(_REMDefaultReplicaManagerProvider *)lazilyCachedReplicaManagerProvider replicaManagerForAccountID:accountID];

  return v7;
}

- (NSString)crdtID
{
  replicaIDSource = [(REMReplicaIDHelper *)self replicaIDSource];
  crdtID = [replicaIDSource crdtID];

  return crdtID;
}

- (id)clockElementListForReplicaUUID:(id)d
{
  dCopy = d;
  replicaClockProvider = [(REMReplicaIDHelper *)self replicaClockProvider];
  v6 = [replicaClockProvider clockElementListForReplicaUUID:dCopy];

  return v6;
}

- (REMReplicaIDHelperOwner)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end
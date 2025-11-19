@interface STStatusDomain
- (BOOL)isInvalidated;
- (NSArray)preferredLocalizations;
- (STStatusDomain)init;
- (STStatusDomain)initWithServerHandle:(id)a3 wantsUntransformedData:(BOOL)a4;
- (STStatusDomainData)data;
- (void)dealloc;
- (void)invalidate;
- (void)observeData:(id)a3;
- (void)observeData:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5;
- (void)observeDataWithBlock:(id)a3;
@end

@implementation STStatusDomain

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (STStatusDomainData)data
{
  if ([(STStatusDomain *)self isInvalidated])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(STStatusDomain *)self serverHandle];
    v3 = [v4 dataForDomain:objc_msgSend(objc_opt_class() client:{"statusDomainName"), self}];
  }

  return v3;
}

- (STStatusDomain)init
{
  v3 = +[STStatusDomainXPCServerHandle sharedMachServiceServerHandle];
  v4 = [(STStatusDomain *)self initWithServerHandle:v3];

  return v4;
}

- (STStatusDomain)initWithServerHandle:(id)a3 wantsUntransformedData:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = STStatusDomain;
  v8 = [(STStatusDomain *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_wantsUntransformedData = a4;
    objc_storeStrong(&v8->_serverHandle, a3);
    [v7 registerClient:v9 forDomain:{objc_msgSend(objc_opt_class(), "statusDomainName")}];
  }

  return v9;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(STStatusDomain *)self isInvalidated])
  {
    v3 = STSystemStatusLogObservation();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v5 = [objc_opt_class() statusDomainName];
      v6 = STSystemStatusDescriptionForDomain(v5);
      *buf = 138543362;
      v9 = v6;
      _os_log_fault_impl(&dword_1DA9C2000, v3, OS_LOG_TYPE_FAULT, "SYSTEMSTATUS CLIENT ERROR: %{public}@ domain was deallocated without being invalidated", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = STStatusDomain;
  [(STStatusDomain *)&v7 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (lock_invalidated)
  {
    v4 = STSystemStatusLogObservation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v7 = [objc_opt_class() statusDomainName];
      v8 = STSystemStatusDescriptionForDomain(v7);
      *buf = 138543362;
      v11 = v8;
      _os_log_fault_impl(&dword_1DA9C2000, v4, OS_LOG_TYPE_FAULT, "Attempted to invalidate %{public}@ domain which was already invalidated", buf, 0xCu);
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = [(STStatusDomain *)self serverHandle];
    [v9 removeClient:self forDomain:{objc_msgSend(objc_opt_class(), "statusDomainName")}];
    v6 = *MEMORY[0x1E69E9840];
  }
}

- (void)observeDataWithBlock:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_dataChangedBlock != v6)
  {
    v4 = [v6 copy];
    lock_dataChangedBlock = self->_lock_dataChangedBlock;
    self->_lock_dataChangedBlock = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)observeData:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_dataChangedWithContextBlock != v6)
  {
    v4 = [v6 copy];
    lock_dataChangedWithContextBlock = self->_lock_dataChangedWithContextBlock;
    self->_lock_dataChangedWithContextBlock = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)preferredLocalizations
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 preferredLocalizations];

  return v3;
}

- (void)observeData:(id)a3 forDomain:(unint64_t)a4 withChangeContext:(id)a5
{
  v11 = a3;
  v8 = a5;
  if ([objc_opt_class() statusDomainName] == a4)
  {
    os_unfair_lock_lock(&self->_lock);
    if (self->_lock_invalidated)
    {
      os_unfair_lock_unlock(&self->_lock);
      v9 = 0;
    }

    else
    {
      v9 = MEMORY[0x1E1274600](self->_lock_dataChangedBlock);
      v10 = MEMORY[0x1E1274600](self->_lock_dataChangedWithContextBlock);
      os_unfair_lock_unlock(&self->_lock);
      if (v9)
      {
        (v9)[2](v9, v11);
      }

      if (v10)
      {
        (v10)[2](v10, v11, v8);
      }
    }
  }
}

@end
@interface STStatusDomain
- (BOOL)isInvalidated;
- (NSArray)preferredLocalizations;
- (STStatusDomain)init;
- (STStatusDomain)initWithServerHandle:(id)handle wantsUntransformedData:(BOOL)data;
- (STStatusDomainData)data;
- (void)dealloc;
- (void)invalidate;
- (void)observeData:(id)data;
- (void)observeData:(id)data forDomain:(unint64_t)domain withChangeContext:(id)context;
- (void)observeDataWithBlock:(id)block;
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
    serverHandle = [(STStatusDomain *)self serverHandle];
    v3 = [serverHandle dataForDomain:objc_msgSend(objc_opt_class() client:{"statusDomainName"), self}];
  }

  return v3;
}

- (STStatusDomain)init
{
  v3 = +[STStatusDomainXPCServerHandle sharedMachServiceServerHandle];
  v4 = [(STStatusDomain *)self initWithServerHandle:v3];

  return v4;
}

- (STStatusDomain)initWithServerHandle:(id)handle wantsUntransformedData:(BOOL)data
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = STStatusDomain;
  v8 = [(STStatusDomain *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v8->_wantsUntransformedData = data;
    objc_storeStrong(&v8->_serverHandle, handle);
    [handleCopy registerClient:v9 forDomain:{objc_msgSend(objc_opt_class(), "statusDomainName")}];
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
      statusDomainName = [objc_opt_class() statusDomainName];
      v6 = STSystemStatusDescriptionForDomain(statusDomainName);
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
      statusDomainName = [objc_opt_class() statusDomainName];
      v8 = STSystemStatusDescriptionForDomain(statusDomainName);
      *buf = 138543362;
      v11 = v8;
      _os_log_fault_impl(&dword_1DA9C2000, v4, OS_LOG_TYPE_FAULT, "Attempted to invalidate %{public}@ domain which was already invalidated", buf, 0xCu);
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    serverHandle = [(STStatusDomain *)self serverHandle];
    [serverHandle removeClient:self forDomain:{objc_msgSend(objc_opt_class(), "statusDomainName")}];
    v6 = *MEMORY[0x1E69E9840];
  }
}

- (void)observeDataWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_dataChangedBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    lock_dataChangedBlock = self->_lock_dataChangedBlock;
    self->_lock_dataChangedBlock = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)observeData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_dataChangedWithContextBlock != dataCopy)
  {
    v4 = [dataCopy copy];
    lock_dataChangedWithContextBlock = self->_lock_dataChangedWithContextBlock;
    self->_lock_dataChangedWithContextBlock = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)preferredLocalizations
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];

  return preferredLocalizations;
}

- (void)observeData:(id)data forDomain:(unint64_t)domain withChangeContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  if ([objc_opt_class() statusDomainName] == domain)
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
        (v9)[2](v9, dataCopy);
      }

      if (v10)
      {
        (v10)[2](v10, dataCopy, contextCopy);
      }
    }
  }
}

@end
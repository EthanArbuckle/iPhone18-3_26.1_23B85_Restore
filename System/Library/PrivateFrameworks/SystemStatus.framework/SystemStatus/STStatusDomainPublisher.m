@interface STStatusDomainPublisher
+ (STStatusDomainDataChangeContext)emptyChangeContext;
- (BOOL)isInvalidated;
- (STStatusDomainData)data;
- (STStatusDomainData)volatileData;
- (STStatusDomainPublisher)init;
- (STStatusDomainPublisher)initWithServerHandle:(id)a3;
- (id)_validatedChangeContext:(uint64_t)a1;
- (void)_setData:(void *)a3 withChangeContext:(void *)a4 completion:;
- (void)_setVolatileData:(void *)a3 withChangeContext:(void *)a4 completion:;
- (void)_updateDataWithBlock:(void *)a3 completion:;
- (void)_updateVolatileDataWithBlock:(void *)a3 completion:;
- (void)dealloc;
- (void)invalidate;
- (void)updateDataWithBlock:(id)a3;
- (void)updateDataWithBlock:(id)a3 completion:(id)a4;
- (void)updateVolatileDataWithBlock:(id)a3;
- (void)updateVolatileDataWithBlock:(id)a3 completion:(id)a4;
@end

@implementation STStatusDomainPublisher

+ (STStatusDomainDataChangeContext)emptyChangeContext
{
  v2 = objc_alloc_init(STStatusDomainDataChangeContext);

  return v2;
}

- (BOOL)isInvalidated
{
  os_unfair_lock_lock(&self->_lock);
  lock_invalidated = self->_lock_invalidated;
  os_unfair_lock_unlock(&self->_lock);
  return lock_invalidated;
}

- (STStatusDomainPublisher)init
{
  v3 = +[STStatusDomainPublisherXPCServerHandle sharedMachServiceServerHandle];
  v4 = [(STStatusDomainPublisher *)self initWithServerHandle:v3];

  return v4;
}

- (STStatusDomainPublisher)initWithServerHandle:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = STStatusDomainPublisher;
  v6 = [(STStatusDomainPublisher *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_serverHandle, a3);
    v8 = [objc_opt_class() statusDomainName];
    v9 = [objc_opt_class() emptyData];
    [v5 registerPublisherClient:v7 forDomain:v8 fallbackData:v9];
  }

  return v7;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  if (![(STStatusDomainPublisher *)self isInvalidated])
  {
    v3 = STSystemStatusLogPublishing();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      v5 = [objc_opt_class() statusDomainName];
      v6 = STSystemStatusDescriptionForDomain(v5);
      *buf = 138543362;
      v9 = v6;
      _os_log_fault_impl(&dword_1DA9C2000, v3, OS_LOG_TYPE_FAULT, "SYSTEMSTATUS CLIENT ERROR: %{public}@ publisher was deallocated without being invalidated", buf, 0xCu);
    }
  }

  v7.receiver = self;
  v7.super_class = STStatusDomainPublisher;
  [(STStatusDomainPublisher *)&v7 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (STStatusDomainData)data
{
  if ([(STStatusDomainPublisher *)self isInvalidated])
  {
    v3 = 0;
  }

  else
  {
    if (self)
    {
      serverHandle = self->_serverHandle;
    }

    else
    {
      serverHandle = 0;
    }

    v5 = serverHandle;
    v3 = -[STStatusDomainPublisherServerHandle publishedDataForDomain:](v5, "publishedDataForDomain:", [objc_opt_class() statusDomainName]);
  }

  return v3;
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
    v4 = STSystemStatusLogPublishing();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v7 = [objc_opt_class() statusDomainName];
      v8 = STSystemStatusDescriptionForDomain(v7);
      *buf = 138543362;
      v11 = v8;
      _os_log_fault_impl(&dword_1DA9C2000, v4, OS_LOG_TYPE_FAULT, "Attempted to invalidate %{public}@ publisher which was already invalidated", buf, 0xCu);
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = self->_serverHandle;
    -[STStatusDomainPublisherServerHandle removePublisherClient:forDomain:](v9, "removePublisherClient:forDomain:", self, [objc_opt_class() statusDomainName]);
    v6 = *MEMORY[0x1E69E9840];
  }
}

- (void)_setData:(void *)a3 withChangeContext:(void *)a4 completion:
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if ([a1 isInvalidated])
    {
      v10 = STSystemStatusLogPublishing();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v15 = [objc_opt_class() statusDomainName];
        v16 = STSystemStatusDescriptionForDomain(v15);
        v17 = 138543362;
        v18 = v16;
        _os_log_fault_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_FAULT, "%{public}@ publisher attempted to set data after being invalidated", &v17, 0xCu);
      }

      if (v9)
      {
        v9[2](v9);
      }
    }

    else
    {
      v11 = [(STStatusDomainPublisher *)a1 _validatedChangeContext:v8];
      v12 = a1[2];
      v13 = [v7 copyWithZone:0];
      [v12 publishData:v13 forPublisherClient:a1 domain:objc_msgSend(objc_opt_class() withChangeContext:"statusDomainName") completion:{v11, v9}];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateDataWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__STStatusDomainPublisher_updateDataWithBlock___block_invoke;
  v6[3] = &unk_1E85DE7F0;
  v7 = v4;
  v5 = v4;
  [(STStatusDomainPublisher *)&self->super.isa _updateDataWithBlock:v6 completion:0];
}

- (void)_updateDataWithBlock:(void *)a3 completion:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 isInvalidated];
    if (!v5 || (v7 & 1) != 0)
    {
      if (v7)
      {
        v10 = STSystemStatusLogPublishing();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          v12 = [objc_opt_class() statusDomainName];
          v13 = STSystemStatusDescriptionForDomain(v12);
          *buf = 138543362;
          v17 = v13;
          _os_log_fault_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_FAULT, "%{public}@ publisher attempted to update data after being invalidated", buf, 0xCu);
        }
      }

      if (v6)
      {
        v6[2](v6);
      }
    }

    else
    {
      v8 = a1[2];
      v9 = [objc_opt_class() statusDomainName];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __59__STStatusDomainPublisher__updateDataWithBlock_completion___block_invoke;
      v14[3] = &unk_1E85DE818;
      v14[4] = a1;
      v15 = v5;
      [v8 updateDataForPublisherClient:a1 domain:v9 usingDiffProvider:v14 completion:v6];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)updateDataWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__STStatusDomainPublisher_updateDataWithBlock_completion___block_invoke;
  v8[3] = &unk_1E85DE7F0;
  v9 = v6;
  v7 = v6;
  [(STStatusDomainPublisher *)&self->super.isa _updateDataWithBlock:v8 completion:a4];
}

- (STStatusDomainData)volatileData
{
  if ([(STStatusDomainPublisher *)self isInvalidated])
  {
    v3 = 0;
  }

  else
  {
    if (self)
    {
      serverHandle = self->_serverHandle;
    }

    else
    {
      serverHandle = 0;
    }

    v5 = serverHandle;
    v3 = -[STStatusDomainPublisherServerHandle publishedVolatileDataForDomain:](v5, "publishedVolatileDataForDomain:", [objc_opt_class() statusDomainName]);
  }

  return v3;
}

- (void)_setVolatileData:(void *)a3 withChangeContext:(void *)a4 completion:
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if ([a1 isInvalidated])
    {
      v10 = STSystemStatusLogPublishing();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v15 = [objc_opt_class() statusDomainName];
        v16 = STSystemStatusDescriptionForDomain(v15);
        v17 = 138543362;
        v18 = v16;
        _os_log_fault_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_FAULT, "%{public}@ publisher attempted to set volatile data after being invalidated", &v17, 0xCu);
      }

      if (v9)
      {
        v9[2](v9);
      }
    }

    else
    {
      v11 = [(STStatusDomainPublisher *)a1 _validatedChangeContext:v8];
      v12 = a1[2];
      v13 = [v7 copyWithZone:0];
      [v12 publishVolatileData:v13 forPublisherClient:a1 domain:objc_msgSend(objc_opt_class() withChangeContext:"statusDomainName") completion:{v11, v9}];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateVolatileDataWithBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__STStatusDomainPublisher_updateVolatileDataWithBlock___block_invoke;
  v6[3] = &unk_1E85DE7F0;
  v7 = v4;
  v5 = v4;
  [(STStatusDomainPublisher *)&self->super.isa _updateVolatileDataWithBlock:v6 completion:0];
}

- (void)_updateVolatileDataWithBlock:(void *)a3 completion:
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [a1 isInvalidated];
    if (!v5 || (v7 & 1) != 0)
    {
      if (v7)
      {
        v10 = STSystemStatusLogPublishing();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          v12 = [objc_opt_class() statusDomainName];
          v13 = STSystemStatusDescriptionForDomain(v12);
          *buf = 138543362;
          v17 = v13;
          _os_log_fault_impl(&dword_1DA9C2000, v10, OS_LOG_TYPE_FAULT, "%{public}@ publisher attempted to update volatile data after being invalidated", buf, 0xCu);
        }
      }

      if (v6)
      {
        v6[2](v6);
      }
    }

    else
    {
      v8 = a1[2];
      v9 = [objc_opt_class() statusDomainName];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __67__STStatusDomainPublisher__updateVolatileDataWithBlock_completion___block_invoke;
      v14[3] = &unk_1E85DE818;
      v14[4] = a1;
      v15 = v5;
      [v8 updateVolatileDataForPublisherClient:a1 domain:v9 usingDiffProvider:v14 completion:v6];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)updateVolatileDataWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__STStatusDomainPublisher_updateVolatileDataWithBlock_completion___block_invoke;
  v8[3] = &unk_1E85DE7F0;
  v9 = v6;
  v7 = v6;
  [(STStatusDomainPublisher *)&self->super.isa _updateVolatileDataWithBlock:v8 completion:a4];
}

- (id)_validatedChangeContext:(uint64_t)a1
{
  v2 = a2;
  if (v2)
  {
    v4 = [objc_opt_class() emptyChangeContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 mutableCopyWithZone:0];
        [v5 setUserInitiated:{objc_msgSend(v2, "isUserInitiated")}];
        v3 = [v5 copyWithZone:0];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __59__STStatusDomainPublisher__updateDataWithBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 mutableCopyWithZone:0];
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() emptyChangeContext];
  v9 = [v8 mutableCopyWithZone:0];

  (*(*(a1 + 40) + 16))();
  if (a3)
  {
    *a3 = [v9 copyWithZone:0];
  }

  v10 = [v6 diffFromData:v5];

  return v10;
}

id __67__STStatusDomainPublisher__updateVolatileDataWithBlock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 mutableCopyWithZone:0];
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() emptyChangeContext];
  v9 = [v8 mutableCopyWithZone:0];

  (*(*(a1 + 40) + 16))();
  if (a3)
  {
    *a3 = [v9 copyWithZone:0];
  }

  v10 = [v6 diffFromData:v5];

  return v10;
}

@end
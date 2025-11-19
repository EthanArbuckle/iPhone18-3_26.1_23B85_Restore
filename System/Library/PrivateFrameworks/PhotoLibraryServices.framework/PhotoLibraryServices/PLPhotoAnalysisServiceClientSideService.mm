@interface PLPhotoAnalysisServiceClientSideService
- (PLPhotoAnalysisServiceClientSideService)initWithConnection:(id)a3 remoteInterface:(id)a4 instantiationBlock:(id)a5;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)synchronousRemoteServiceProxyWithErrorHandler:(id)a3;
- (void)remoteServiceProxyWithErrorHandler:(id)a3 reply:(id)a4;
@end

@implementation PLPhotoAnalysisServiceClientSideService

- (id)synchronousRemoteServiceProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  p_service = &self->_service;
  v6 = self->_service;
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__95072;
    v22 = __Block_byref_object_dispose__95073;
    v23 = 0;
    v7 = [(NSXPCConnection *)self->_connection synchronousRemoteObjectProxyWithErrorHandler:v4];
    if (v7)
    {
      instantiationBlock = self->_instantiationBlock;
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __89__PLPhotoAnalysisServiceClientSideService_synchronousRemoteServiceProxyWithErrorHandler___block_invoke;
      v15 = &unk_1E7574840;
      v17 = &v18;
      v16 = v4;
      instantiationBlock[2](instantiationBlock, v7, &v12);
    }

    if (v19[5])
    {
      os_unfair_lock_lock(&self->_lock);
      v9 = *p_service;
      if (!*p_service)
      {
        objc_storeStrong(&self->_service, v19[5]);
        v9 = *p_service;
      }

      v6 = v9;
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  v10 = [(NSXPCProxyCreating *)v6 synchronousRemoteObjectProxyWithErrorHandler:v4, v12, v13, v14, v15];

  return v10;
}

void __89__PLPhotoAnalysisServiceClientSideService_synchronousRemoteServiceProxyWithErrorHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)remoteServiceProxyWithErrorHandler:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v8 = self->_service;
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    v9 = [(NSXPCProxyCreating *)v8 remoteObjectProxyWithErrorHandler:v6];
    if (v9)
    {
      v7[2](v7, v9);
    }
  }

  else
  {
    v10 = [(NSXPCConnection *)self->_connection remoteObjectProxyWithErrorHandler:v6];
    if (v10)
    {
      instantiationBlock = self->_instantiationBlock;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __84__PLPhotoAnalysisServiceClientSideService_remoteServiceProxyWithErrorHandler_reply___block_invoke;
      v12[3] = &unk_1E7574818;
      v12[4] = self;
      v13 = v6;
      v14 = v7;
      instantiationBlock[2](instantiationBlock, v10, v12);
    }
  }
}

void __84__PLPhotoAnalysisServiceClientSideService_remoteServiceProxyWithErrorHandler_reply___block_invoke(void *a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    os_unfair_lock_lock((a1[4] + 40));
    v4 = a1[4];
    v7 = *(v4 + 32);
    v5 = (v4 + 32);
    v6 = v7;
    if (!v7)
    {
      objc_storeStrong(v5, a2);
      v6 = *(a1[4] + 32);
    }

    v8 = v6;
    os_unfair_lock_unlock((a1[4] + 40));
    v9 = [v8 remoteObjectProxyWithErrorHandler:a1[5]];
    if (v9)
    {
      (*(a1[6] + 16))();
    }
  }

  else
  {
    (*(a1[5] + 16))();
  }
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [[PLPhotoAnalysisServiceRemoteServiceProxy alloc] initWithServiceProvider:self remoteInterface:self->_remoteInterface synchronous:1 errorHandler:v4];

  return v5;
}

- (id)remoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [[PLPhotoAnalysisServiceRemoteServiceProxy alloc] initWithServiceProvider:self remoteInterface:self->_remoteInterface synchronous:0 errorHandler:v4];

  return v5;
}

- (id)remoteObjectProxy
{
  v2 = [[PLPhotoAnalysisServiceRemoteServiceProxy alloc] initWithServiceProvider:self remoteInterface:self->_remoteInterface synchronous:0 errorHandler:0];

  return v2;
}

- (PLPhotoAnalysisServiceClientSideService)initWithConnection:(id)a3 remoteInterface:(id)a4 instantiationBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PLPhotoAnalysisServiceClientSideService;
  v12 = [(PLPhotoAnalysisServiceClientSideService *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, a3);
    objc_storeStrong(&v13->_remoteInterface, a4);
    v14 = _Block_copy(v11);
    instantiationBlock = v13->_instantiationBlock;
    v13->_instantiationBlock = v14;

    v13->_lock._os_unfair_lock_opaque = 0;
  }

  return v13;
}

@end
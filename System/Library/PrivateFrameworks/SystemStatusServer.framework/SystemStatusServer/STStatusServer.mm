@interface STStatusServer
- (BSIntegerSet)publishedDomains;
- (STStatusServer)init;
- (STStatusServerDelegate)delegate;
- (id)dataForDomain:(unint64_t)domain client:(id)client;
- (id)initWithLocalStatusServer:(void *)server serverHandle:(void *)handle publisherServerHandle:;
- (id)publishedDataForDomain:(unint64_t)domain;
- (id)publishedVolatileDataForDomain:(unint64_t)domain;
- (void)addClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain;
- (void)addDataTransformer:(id)transformer forDomain:(unint64_t)domain;
- (void)modifyClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain usingBlock:(id)block;
- (void)modifyDataTransformer:(id)transformer forDomain:(unint64_t)domain usingBlock:(id)block;
- (void)publishData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion;
- (void)publishVolatileData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion;
- (void)registerClient:(id)client forDomain:(unint64_t)domain;
- (void)registerPublisherClient:(id)client forDomain:(unint64_t)domain fallbackData:(id)data;
- (void)removeClient:(id)client forDomain:(unint64_t)domain;
- (void)removeClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain;
- (void)removeDataTransformer:(id)transformer forDomain:(unint64_t)domain;
- (void)removePublisherClient:(id)client forDomain:(unint64_t)domain;
- (void)replaceDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion;
- (void)replaceVolatileDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion;
- (void)reportUserInteraction:(id)interaction forClient:(id)client domain:(unint64_t)domain;
- (void)updateDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion;
- (void)updateVolatileDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion;
@end

@implementation STStatusServer

- (STStatusServer)init
{
  if (_os_feature_enabled_impl())
  {
    v3 = STDefaultStatusDomainServerHandle();
    v4 = STDefaultStatusDomainPublisherServerHandle();
    v5 = [(STStatusServer *)&self->super.isa initWithLocalStatusServer:v3 serverHandle:v4 publisherServerHandle:?];
  }

  else
  {
    v3 = objc_alloc_init(STLocalStatusServer);
    v5 = [(STStatusServer *)&self->super.isa initWithLocalStatusServer:v3 serverHandle:v3 publisherServerHandle:v3];
  }

  return v5;
}

- (id)initWithLocalStatusServer:(void *)server serverHandle:(void *)handle publisherServerHandle:
{
  v8 = a2;
  serverCopy = server;
  handleCopy = handle;
  if (self)
  {
    v13.receiver = self;
    v13.super_class = STStatusServer;
    v11 = objc_msgSendSuper2(&v13, sel_init);
    self = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 2, a2);
      objc_storeStrong(self + 3, server);
      objc_storeStrong(self + 4, handle);
    }
  }

  return self;
}

- (BSIntegerSet)publishedDomains
{
  v2 = objc_alloc_init(MEMORY[0x277CF0C48]);

  return v2;
}

- (id)publishedDataForDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  return [(STStatusServer *)self publishedDataForDomain:domain];
}

- (id)publishedVolatileDataForDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  return [(STStatusServer *)self publishedVolatileDataForDomain:domain];
}

- (void)registerPublisherClient:(id)client forDomain:(unint64_t)domain fallbackData:(id)data
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  [(STStatusServer *)self registerPublisherClient:client forDomain:domain fallbackData:data];
}

- (void)removePublisherClient:(id)client forDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  [(STStatusServer *)self removePublisherClient:client forDomain:domain];
}

- (void)replaceDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  [(STStatusServer *)self replaceDataChangeRecord:record forPublisherClient:client completion:completion];
}

- (void)replaceVolatileDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  [(STStatusServer *)self replaceVolatileDataChangeRecord:record forPublisherClient:client completion:completion];
}

- (void)publishData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  [(STStatusServer *)self publishData:data forPublisherClient:client domain:domain withChangeContext:context completion:completion];
}

- (void)publishVolatileData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  [(STStatusServer *)self publishVolatileData:data forPublisherClient:client domain:domain withChangeContext:context completion:completion];
}

- (void)updateDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  [(STStatusServer *)self updateDataForPublisherClient:client domain:domain usingDiffProvider:provider completion:completion];
}

- (void)updateVolatileDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion
{
  if (self)
  {
    self = self->_publisherServerHandle;
  }

  [(STStatusServer *)self updateVolatileDataForPublisherClient:client domain:domain usingDiffProvider:provider completion:completion];
}

- (id)dataForDomain:(unint64_t)domain client:(id)client
{
  if (self)
  {
    self = self->_serverHandle;
  }

  return [(STStatusServer *)self dataForDomain:domain client:client];
}

- (void)registerClient:(id)client forDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_serverHandle;
  }

  [(STStatusServer *)self registerClient:client forDomain:domain];
}

- (void)removeClient:(id)client forDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_serverHandle;
  }

  [(STStatusServer *)self removeClient:client forDomain:domain];
}

- (void)reportUserInteraction:(id)interaction forClient:(id)client domain:(unint64_t)domain
{
  if (self)
  {
    self = self->_serverHandle;
  }

  [(STStatusServer *)self reportUserInteraction:interaction forClient:client domain:domain];
}

- (void)addDataTransformer:(id)transformer forDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_localStatusServer;
  }

  [(STStatusServer *)self addDataTransformer:transformer forDomain:domain];
}

- (void)removeDataTransformer:(id)transformer forDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_localStatusServer;
  }

  [(STStatusServer *)self removeDataTransformer:transformer forDomain:domain];
}

- (void)modifyDataTransformer:(id)transformer forDomain:(unint64_t)domain usingBlock:(id)block
{
  if (self)
  {
    self = self->_localStatusServer;
  }

  [(STStatusServer *)self modifyDataTransformer:transformer forDomain:domain usingBlock:block];
}

- (void)addClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_localStatusServer;
  }

  [(STStatusServer *)self addClientDataTransformerProvider:provider forDomain:domain];
}

- (void)removeClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain
{
  if (self)
  {
    self = self->_localStatusServer;
  }

  [(STStatusServer *)self removeClientDataTransformerProvider:provider forDomain:domain];
}

- (void)modifyClientDataTransformerProvider:(id)provider forDomain:(unint64_t)domain usingBlock:(id)block
{
  if (self)
  {
    self = self->_localStatusServer;
  }

  [(STStatusServer *)self modifyClientDataTransformerProvider:provider forDomain:domain usingBlock:block];
}

- (STStatusServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
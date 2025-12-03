@interface _STInternalQueueLocalStatusServerWrapper
- (_STInternalQueueLocalStatusServerWrapper)initWithServer:(id)server;
- (id)publishedDataForDomain:(unint64_t)domain;
- (id)publishedVolatileDataForDomain:(unint64_t)domain;
- (void)publishData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion;
- (void)publishVolatileData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion;
- (void)registerPublisherClient:(id)client forDomain:(unint64_t)domain fallbackData:(id)data;
- (void)removePublisherClient:(id)client forDomain:(unint64_t)domain;
- (void)replaceDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion;
- (void)replaceVolatileDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion;
- (void)updateDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion;
- (void)updateVolatileDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion;
@end

@implementation _STInternalQueueLocalStatusServerWrapper

- (_STInternalQueueLocalStatusServerWrapper)initWithServer:(id)server
{
  serverCopy = server;
  v9.receiver = self;
  v9.super_class = _STInternalQueueLocalStatusServerWrapper;
  v6 = [(_STInternalQueueLocalStatusServerWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_server, server);
  }

  return v7;
}

- (id)publishedDataForDomain:(unint64_t)domain
{
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  v5 = [(STLocalStatusServer *)server _internalQueue_dataForDomain:domain];
  v6 = [v5 copyWithZone:0];

  return v6;
}

- (id)publishedVolatileDataForDomain:(unint64_t)domain
{
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  v5 = [(STLocalStatusServer *)server _internalQueue_volatileDataForDomain:domain];
  v6 = [v5 copyWithZone:0];

  return v6;
}

- (void)registerPublisherClient:(id)client forDomain:(unint64_t)domain fallbackData:(id)data
{
  dataCopy = data;
  clientCopy = client;
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)server _internalQueue_registerPublisherClient:clientCopy forDomain:domain fallbackData:dataCopy];
}

- (void)removePublisherClient:(id)client forDomain:(unint64_t)domain
{
  clientCopy = client;
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)server _internalQueue_removePublisherClient:clientCopy forDomain:domain];
}

- (void)replaceDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion
{
  completionCopy = completion;
  clientCopy = client;
  recordCopy = record;
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)server _internalQueue_replaceDataChangeRecord:recordCopy forPublisherClient:clientCopy completion:completionCopy];
}

- (void)replaceVolatileDataChangeRecord:(id)record forPublisherClient:(id)client completion:(id)completion
{
  completionCopy = completion;
  clientCopy = client;
  recordCopy = record;
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)server _internalQueue_replaceVolatileDataChangeRecord:recordCopy forPublisherClient:clientCopy completion:completionCopy];
}

- (void)publishData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  clientCopy = client;
  dataCopy = data;
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)server _internalQueue_publishData:dataCopy forPublisherClient:clientCopy domain:domain withChangeContext:contextCopy completion:completionCopy];
}

- (void)publishVolatileData:(id)data forPublisherClient:(id)client domain:(unint64_t)domain withChangeContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  clientCopy = client;
  dataCopy = data;
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)server _internalQueue_publishVolatileData:dataCopy forPublisherClient:clientCopy domain:domain withChangeContext:contextCopy completion:completionCopy];
}

- (void)updateDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion
{
  completionCopy = completion;
  providerCopy = provider;
  clientCopy = client;
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)server _internalQueue_updateDataForPublisherClient:clientCopy domain:domain usingDiffProvider:providerCopy completion:completionCopy];
}

- (void)updateVolatileDataForPublisherClient:(id)client domain:(unint64_t)domain usingDiffProvider:(id)provider completion:(id)completion
{
  completionCopy = completion;
  providerCopy = provider;
  clientCopy = client;
  server = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)server _internalQueue_updateVolatileDataForPublisherClient:clientCopy domain:domain usingDiffProvider:providerCopy completion:completionCopy];
}

@end
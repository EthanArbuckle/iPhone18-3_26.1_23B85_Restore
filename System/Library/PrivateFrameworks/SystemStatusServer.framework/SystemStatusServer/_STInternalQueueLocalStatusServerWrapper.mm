@interface _STInternalQueueLocalStatusServerWrapper
- (_STInternalQueueLocalStatusServerWrapper)initWithServer:(id)a3;
- (id)publishedDataForDomain:(unint64_t)a3;
- (id)publishedVolatileDataForDomain:(unint64_t)a3;
- (void)publishData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7;
- (void)publishVolatileData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7;
- (void)registerPublisherClient:(id)a3 forDomain:(unint64_t)a4 fallbackData:(id)a5;
- (void)removePublisherClient:(id)a3 forDomain:(unint64_t)a4;
- (void)replaceDataChangeRecord:(id)a3 forPublisherClient:(id)a4 completion:(id)a5;
- (void)replaceVolatileDataChangeRecord:(id)a3 forPublisherClient:(id)a4 completion:(id)a5;
- (void)updateDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6;
- (void)updateVolatileDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6;
@end

@implementation _STInternalQueueLocalStatusServerWrapper

- (_STInternalQueueLocalStatusServerWrapper)initWithServer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _STInternalQueueLocalStatusServerWrapper;
  v6 = [(_STInternalQueueLocalStatusServerWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_server, a3);
  }

  return v7;
}

- (id)publishedDataForDomain:(unint64_t)a3
{
  v4 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  v5 = [(STLocalStatusServer *)v4 _internalQueue_dataForDomain:a3];
  v6 = [v5 copyWithZone:0];

  return v6;
}

- (id)publishedVolatileDataForDomain:(unint64_t)a3
{
  v4 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  v5 = [(STLocalStatusServer *)v4 _internalQueue_volatileDataForDomain:a3];
  v6 = [v5 copyWithZone:0];

  return v6;
}

- (void)registerPublisherClient:(id)a3 forDomain:(unint64_t)a4 fallbackData:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)v10 _internalQueue_registerPublisherClient:v9 forDomain:a4 fallbackData:v8];
}

- (void)removePublisherClient:(id)a3 forDomain:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)v7 _internalQueue_removePublisherClient:v6 forDomain:a4];
}

- (void)replaceDataChangeRecord:(id)a3 forPublisherClient:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)v11 _internalQueue_replaceDataChangeRecord:v10 forPublisherClient:v9 completion:v8];
}

- (void)replaceVolatileDataChangeRecord:(id)a3 forPublisherClient:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)v11 _internalQueue_replaceVolatileDataChangeRecord:v10 forPublisherClient:v9 completion:v8];
}

- (void)publishData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)v16 _internalQueue_publishData:v15 forPublisherClient:v14 domain:a5 withChangeContext:v13 completion:v12];
}

- (void)publishVolatileData:(id)a3 forPublisherClient:(id)a4 domain:(unint64_t)a5 withChangeContext:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)v16 _internalQueue_publishVolatileData:v15 forPublisherClient:v14 domain:a5 withChangeContext:v13 completion:v12];
}

- (void)updateDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)v13 _internalQueue_updateDataForPublisherClient:v12 domain:a4 usingDiffProvider:v11 completion:v10];
}

- (void)updateVolatileDataForPublisherClient:(id)a3 domain:(unint64_t)a4 usingDiffProvider:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(_STInternalQueueLocalStatusServerWrapper *)self server];
  [(STLocalStatusServer *)v13 _internalQueue_updateVolatileDataForPublisherClient:v12 domain:a4 usingDiffProvider:v11 completion:v10];
}

@end
@interface STDataAccessStatusDomainDataProviderTransformer
- (STDataAccessStatusDomainDataProviderTransformer)initWithDataProvider:(id)provider publisherServerHandle:(id)handle;
- (id)transformedDataForData:(id)data domain:(unint64_t)domain;
@end

@implementation STDataAccessStatusDomainDataProviderTransformer

- (STDataAccessStatusDomainDataProviderTransformer)initWithDataProvider:(id)provider publisherServerHandle:(id)handle
{
  providerCopy = provider;
  handleCopy = handle;
  v12.receiver = self;
  v12.super_class = STDataAccessStatusDomainDataProviderTransformer;
  v9 = [(STDataAccessStatusDomainDataProviderTransformer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataProvider, provider);
    objc_storeStrong(&v10->_publisherServerHandle, handle);
  }

  return v10;
}

- (id)transformedDataForData:(id)data domain:(unint64_t)domain
{
  dataCopy = data;
  v7 = dataCopy;
  if (domain == 6)
  {
    v8 = 16;
  }

  else
  {
    if (domain != 7)
    {
      goto LABEL_8;
    }

    v8 = 24;
  }

  v9 = [dataCopy copy];
  v10 = *(&self->super.isa + v8);
  *(&self->super.isa + v8) = v9;

  v11 = [(STDataAccessStatusDomainDataProvider *)self->_dataProvider setLocationData:self->_locationData mediaData:self->_mediaData];
  dataAccessPublisher = self->_dataAccessPublisher;
  if (!dataAccessPublisher)
  {
    v13 = [objc_alloc(MEMORY[0x277D6B968]) initWithServerHandle:self->_publisherServerHandle];
    v14 = self->_dataAccessPublisher;
    self->_dataAccessPublisher = v13;

    dataAccessPublisher = self->_dataAccessPublisher;
  }

  v15 = dataAccessPublisher;
  [(STDataAccessStatusDomainPublisher *)v15 setVolatileData:v11];

LABEL_8:

  return v7;
}

@end
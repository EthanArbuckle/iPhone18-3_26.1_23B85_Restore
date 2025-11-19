@interface STDataAccessStatusDomainDataProviderTransformer
- (STDataAccessStatusDomainDataProviderTransformer)initWithDataProvider:(id)a3 publisherServerHandle:(id)a4;
- (id)transformedDataForData:(id)a3 domain:(unint64_t)a4;
@end

@implementation STDataAccessStatusDomainDataProviderTransformer

- (STDataAccessStatusDomainDataProviderTransformer)initWithDataProvider:(id)a3 publisherServerHandle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STDataAccessStatusDomainDataProviderTransformer;
  v9 = [(STDataAccessStatusDomainDataProviderTransformer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataProvider, a3);
    objc_storeStrong(&v10->_publisherServerHandle, a4);
  }

  return v10;
}

- (id)transformedDataForData:(id)a3 domain:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 6)
  {
    v8 = 16;
  }

  else
  {
    if (a4 != 7)
    {
      goto LABEL_8;
    }

    v8 = 24;
  }

  v9 = [v6 copy];
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
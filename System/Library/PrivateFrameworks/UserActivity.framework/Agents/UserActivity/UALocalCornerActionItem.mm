@interface UALocalCornerActionItem
- (UALocalCornerActionItem)initWithUUID:(id)d type:(unint64_t)type options:(id)options originatingClient:(id)client;
- (UAUserActivityClientProcess)originatingClient;
@end

@implementation UALocalCornerActionItem

- (UALocalCornerActionItem)initWithUUID:(id)d type:(unint64_t)type options:(id)options originatingClient:(id)client
{
  clientCopy = client;
  v14.receiver = self;
  v14.super_class = UALocalCornerActionItem;
  v11 = [(UALocalCornerActionItem *)&v14 initWithUUID:d type:type options:options];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_originatingClient, clientCopy);
  }

  return v12;
}

- (UAUserActivityClientProcess)originatingClient
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingClient);

  return WeakRetained;
}

@end
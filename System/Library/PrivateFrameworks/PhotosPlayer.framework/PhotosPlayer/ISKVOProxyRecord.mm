@interface ISKVOProxyRecord
- (ISKVOProxyRecord)initWithProxy:(id)proxy queue:(id)queue;
@end

@implementation ISKVOProxyRecord

- (ISKVOProxyRecord)initWithProxy:(id)proxy queue:(id)queue
{
  proxyCopy = proxy;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = ISKVOProxyRecord;
  v9 = [(ISKVOProxyRecord *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_proxy, proxy);
    objc_storeStrong(&v10->_queue, queue);
  }

  return v10;
}

@end
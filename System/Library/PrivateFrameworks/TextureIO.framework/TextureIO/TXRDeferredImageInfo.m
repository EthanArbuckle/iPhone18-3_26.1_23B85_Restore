@interface TXRDeferredImageInfo
- (TXRDeferredImageInfo)init;
- (TXRImageInfo)info;
@end

@implementation TXRDeferredImageInfo

- (TXRDeferredImageInfo)init
{
  v6.receiver = self;
  v6.super_class = TXRDeferredImageInfo;
  v2 = [(TXRDeferredImageInfo *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    infoLoaded = v2->_infoLoaded;
    v2->_infoLoaded = v3;
  }

  return v2;
}

- (TXRImageInfo)info
{
  dispatch_semaphore_wait(self->_infoLoaded, 0xFFFFFFFFFFFFFFFFLL);
  info = self->_info;

  return info;
}

@end
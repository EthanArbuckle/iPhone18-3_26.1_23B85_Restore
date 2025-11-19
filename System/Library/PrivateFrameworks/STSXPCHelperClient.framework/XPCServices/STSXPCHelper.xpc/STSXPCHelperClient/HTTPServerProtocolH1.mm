@interface HTTPServerProtocolH1
- (void)stop;
@end

@implementation HTTPServerProtocolH1

- (void)stop
{
  if (self)
  {
    objc_storeWeak(&self->_connectionHandle, 0);
  }
}

@end
@interface IPPSessionForStreaming
- (void)dealloc;
@end

@implementation IPPSessionForStreaming

- (void)dealloc
{
  transaction = self->_transaction;
  self->_transaction = 0;

  v4.receiver = self;
  v4.super_class = IPPSessionForStreaming;
  [(IPPSession *)&v4 dealloc];
}

@end
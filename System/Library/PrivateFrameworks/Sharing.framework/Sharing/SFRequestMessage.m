@interface SFRequestMessage
- (void)invalidate;
@end

@implementation SFRequestMessage

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = SFRequestMessage;
  [(SFMessage *)&v4 invalidate];
  responseHandler = self->_responseHandler;
  self->_responseHandler = 0;
}

@end
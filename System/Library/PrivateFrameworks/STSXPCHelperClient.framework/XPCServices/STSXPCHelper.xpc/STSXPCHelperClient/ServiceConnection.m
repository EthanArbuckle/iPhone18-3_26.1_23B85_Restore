@interface ServiceConnection
- (void)dealloc;
- (void)didInvalidate;
@end

@implementation ServiceConnection

- (void)dealloc
{
  if (self)
  {
    [(NSXPCConnection *)self->_xpcConnection invalidate];
    helper = self->_helper;
  }

  else
  {
    [0 invalidate];
    helper = 0;
  }

  [(STSXPCHelper *)helper invalidateWithCompletion:&stru_100059030];
  v4.receiver = self;
  v4.super_class = ServiceConnection;
  [(ServiceConnection *)&v4 dealloc];
}

- (void)didInvalidate
{
  if (self)
  {
    self = self->_xpcConnection;
  }

  [(ServiceConnection *)self invalidate];
}

@end
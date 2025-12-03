@interface VMWeakConnectionDelegate
+ (id)forConnection:(id)connection;
- (MFConnection)weak_connection;
- (id)initForObj:(id)obj;
- (void)handleStreamEvent:(unint64_t)event;
@end

@implementation VMWeakConnectionDelegate

+ (id)forConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[VMWeakConnectionDelegate alloc] initForObj:connectionCopy];

  return v4;
}

- (id)initForObj:(id)obj
{
  objCopy = obj;
  v8.receiver = self;
  v8.super_class = VMWeakConnectionDelegate;
  v5 = [(VMWeakConnectionDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VMWeakConnectionDelegate *)v5 setWeak_connection:objCopy];
  }

  return v6;
}

- (void)handleStreamEvent:(unint64_t)event
{
  weak_connection = [(VMWeakConnectionDelegate *)self weak_connection];
  [weak_connection handleStreamEvent:event];
}

- (MFConnection)weak_connection
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_connection);

  return WeakRetained;
}

@end
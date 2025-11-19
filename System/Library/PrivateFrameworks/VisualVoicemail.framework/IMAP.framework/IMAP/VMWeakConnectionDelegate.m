@interface VMWeakConnectionDelegate
+ (id)forConnection:(id)a3;
- (MFConnection)weak_connection;
- (id)initForObj:(id)a3;
- (void)handleStreamEvent:(unint64_t)a3;
@end

@implementation VMWeakConnectionDelegate

+ (id)forConnection:(id)a3
{
  v3 = a3;
  v4 = [[VMWeakConnectionDelegate alloc] initForObj:v3];

  return v4;
}

- (id)initForObj:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VMWeakConnectionDelegate;
  v5 = [(VMWeakConnectionDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VMWeakConnectionDelegate *)v5 setWeak_connection:v4];
  }

  return v6;
}

- (void)handleStreamEvent:(unint64_t)a3
{
  v4 = [(VMWeakConnectionDelegate *)self weak_connection];
  [v4 handleStreamEvent:a3];
}

- (MFConnection)weak_connection
{
  WeakRetained = objc_loadWeakRetained(&self->_weak_connection);

  return WeakRetained;
}

@end
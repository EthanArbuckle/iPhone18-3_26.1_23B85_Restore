@interface _UIRemoteViewControllerWeakWrapperProxy
- (_UIRemoteViewControllerWeakWrapperProxy)initWithTarget:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation _UIRemoteViewControllerWeakWrapperProxy

- (_UIRemoteViewControllerWeakWrapperProxy)initWithTarget:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIRemoteViewControllerWeakWrapperProxy;
  v5 = [(_UIRemoteViewControllerWeakWrapperProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, v4);
    v6->_targetClass = objc_opt_class();
  }

  return v6;
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end
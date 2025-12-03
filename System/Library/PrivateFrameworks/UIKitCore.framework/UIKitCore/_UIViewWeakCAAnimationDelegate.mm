@interface _UIViewWeakCAAnimationDelegate
+ (id)weakAnimationDelegate:(id)delegate;
- (CAAnimationDelegate)animationDelegate;
- (_UIViewWeakCAAnimationDelegate)initWithAnimationDelegate:(id)delegate;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation _UIViewWeakCAAnimationDelegate

- (_UIViewWeakCAAnimationDelegate)initWithAnimationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = _UIViewWeakCAAnimationDelegate;
  v5 = [(_UIViewWeakCAAnimationDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_animationDelegate, delegateCopy);
    *&v6->_flags = *&v6->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&v6->_flags = *&v6->_flags & 0xFD | v7;
  }

  return v6;
}

+ (id)weakAnimationDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [[self alloc] initWithAnimationDelegate:delegateCopy];

  return v5;
}

- (void)animationDidStart:(id)start
{
  if (*&self->_flags)
  {
    startCopy = start;
    WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
    [WeakRetained animationDidStart:startCopy];
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if ((*&self->_flags & 2) != 0)
  {
    finishedCopy = finished;
    stopCopy = stop;
    WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
    [WeakRetained animationDidStop:stopCopy finished:finishedCopy];
  }
}

- (CAAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

@end
@interface _UIViewWeakCAAnimationDelegate
+ (id)weakAnimationDelegate:(id)a3;
- (CAAnimationDelegate)animationDelegate;
- (_UIViewWeakCAAnimationDelegate)initWithAnimationDelegate:(id)a3;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation _UIViewWeakCAAnimationDelegate

- (_UIViewWeakCAAnimationDelegate)initWithAnimationDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIViewWeakCAAnimationDelegate;
  v5 = [(_UIViewWeakCAAnimationDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_animationDelegate, v4);
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

+ (id)weakAnimationDelegate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithAnimationDelegate:v4];

  return v5;
}

- (void)animationDidStart:(id)a3
{
  if (*&self->_flags)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
    [WeakRetained animationDidStart:v5];
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if ((*&self->_flags & 2) != 0)
  {
    v5 = a4;
    v7 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);
    [WeakRetained animationDidStop:v7 finished:v5];
  }
}

- (CAAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

@end
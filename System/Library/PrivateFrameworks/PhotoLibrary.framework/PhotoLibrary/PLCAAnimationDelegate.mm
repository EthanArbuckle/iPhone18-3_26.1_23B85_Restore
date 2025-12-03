@interface PLCAAnimationDelegate
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
@end

@implementation PLCAAnimationDelegate

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if ([(PLCAAnimationDelegate *)self completion])
  {
    v5 = *([(PLCAAnimationDelegate *)self completion]+ 16);

    v5();
  }
}

- (void)animationDidStart:(id)start
{
  if ([(PLCAAnimationDelegate *)self start])
  {
    v4 = *([(PLCAAnimationDelegate *)self start]+ 16);

    v4();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PLCAAnimationDelegate;
  [(PLCAAnimationDelegate *)&v3 dealloc];
}

@end
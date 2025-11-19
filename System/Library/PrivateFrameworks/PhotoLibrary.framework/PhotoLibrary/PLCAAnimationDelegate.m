@interface PLCAAnimationDelegate
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
@end

@implementation PLCAAnimationDelegate

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if ([(PLCAAnimationDelegate *)self completion])
  {
    v5 = *([(PLCAAnimationDelegate *)self completion]+ 16);

    v5();
  }
}

- (void)animationDidStart:(id)a3
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
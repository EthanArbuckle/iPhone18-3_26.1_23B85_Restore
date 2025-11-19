@interface OKTransitionParallaxReveal
- (OKTransitionParallaxReveal)init;
@end

@implementation OKTransitionParallaxReveal

- (OKTransitionParallaxReveal)init
{
  v5.receiver = self;
  v5.super_class = OKTransitionParallaxReveal;
  v2 = [(OKTransitionParallaxPush *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKTransition *)v2 setReversed:1];
  }

  return v3;
}

@end
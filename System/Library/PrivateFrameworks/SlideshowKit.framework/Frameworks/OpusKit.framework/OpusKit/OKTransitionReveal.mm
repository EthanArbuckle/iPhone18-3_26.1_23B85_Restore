@interface OKTransitionReveal
- (OKTransitionReveal)init;
@end

@implementation OKTransitionReveal

- (OKTransitionReveal)init
{
  v5.receiver = self;
  v5.super_class = OKTransitionReveal;
  v2 = [(OKTransitionParallaxPush *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKTransitionParallaxPush *)v2 setParallaxAmount:0.0];
    [(OKTransitionParallaxPush *)v3 setFadeFromAlpha:1.0];
    [(OKTransitionParallaxPush *)v3 setFadeToAlpha:1.0];
    [(OKTransition *)v3 setReversed:1];
  }

  return v3;
}

@end
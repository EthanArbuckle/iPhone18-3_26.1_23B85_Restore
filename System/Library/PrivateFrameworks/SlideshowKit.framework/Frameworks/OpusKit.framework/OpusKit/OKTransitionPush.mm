@interface OKTransitionPush
- (OKTransitionPush)init;
@end

@implementation OKTransitionPush

- (OKTransitionPush)init
{
  v5.receiver = self;
  v5.super_class = OKTransitionPush;
  v2 = [(OKTransitionParallaxPush *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKTransitionParallaxPush *)v2 setParallaxAmount:1.0];
    [(OKTransitionParallaxPush *)v3 setFadeFromAlpha:1.0];
    [(OKTransitionParallaxPush *)v3 setFadeToAlpha:1.0];
  }

  return v3;
}

@end
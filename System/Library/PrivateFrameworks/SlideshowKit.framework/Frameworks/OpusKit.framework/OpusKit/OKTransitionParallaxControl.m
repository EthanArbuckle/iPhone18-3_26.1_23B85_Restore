@interface OKTransitionParallaxControl
- (void)startInteractiveTransitionWithContext:(id)a3;
@end

@implementation OKTransitionParallaxControl

- (void)startInteractiveTransitionWithContext:(id)a3
{
  [(OKTransition *)self setReversed:[(OKTransition *)self isForward]];
  v5.receiver = self;
  v5.super_class = OKTransitionParallaxControl;
  [(OKTransitionParallaxPush *)&v5 startInteractiveTransitionWithContext:a3];
}

@end
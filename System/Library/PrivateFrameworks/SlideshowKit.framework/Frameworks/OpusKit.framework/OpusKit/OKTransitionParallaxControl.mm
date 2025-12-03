@interface OKTransitionParallaxControl
- (void)startInteractiveTransitionWithContext:(id)context;
@end

@implementation OKTransitionParallaxControl

- (void)startInteractiveTransitionWithContext:(id)context
{
  [(OKTransition *)self setReversed:[(OKTransition *)self isForward]];
  v5.receiver = self;
  v5.super_class = OKTransitionParallaxControl;
  [(OKTransitionParallaxPush *)&v5 startInteractiveTransitionWithContext:context];
}

@end
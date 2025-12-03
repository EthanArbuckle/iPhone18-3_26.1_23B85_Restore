@interface OKTransitionCut
- (void)_transitionInView:(id)view fromSubview:(id)subview toSubview:(id)toSubview wasInteractive:(BOOL)interactive duration:(double)duration doEaseIn:(BOOL)in doEaseOut:(BOOL)out isCompleting:(BOOL)self0 wasCancelled:(BOOL)self1 fromProgress:(double)self2 completionHandler:(id)self3;
- (void)startInteractiveTransitionWithContext:(id)context;
- (void)updateInteractiveTransitionWithContext:(id)context andProgress:(double)progress;
@end

@implementation OKTransitionCut

- (void)_transitionInView:(id)view fromSubview:(id)subview toSubview:(id)toSubview wasInteractive:(BOOL)interactive duration:(double)duration doEaseIn:(BOOL)in doEaseOut:(BOOL)out isCompleting:(BOOL)self0 wasCancelled:(BOOL)self1 fromProgress:(double)self2 completionHandler:(id)self3
{
  [view bounds];
  Width = CGRectGetWidth(v21);
  [view bounds];
  v18.n128_f64[0] = CGRectGetHeight(v22);
  if (!interactive)
  {
    [toSubview setFrame:{0.0, 0.0, Width, v18.n128_f64[0]}];
    [view insertSubview:toSubview aboveSubview:subview];
  }

  if (handler)
  {
    v19 = *(handler + 2);

    v19(handler, !cancelled, v18);
  }
}

- (void)startInteractiveTransitionWithContext:(id)context
{
  v10.receiver = self;
  v10.super_class = OKTransitionCut;
  [(OKTransition *)&v10 startInteractiveTransitionWithContext:?];
  fromViewController = [context fromViewController];
  toViewController = [context toViewController];
  [objc_msgSend(context "containerView")];
  [objc_msgSend(toViewController "view")];
  [objc_msgSend(context "containerView")];
}

- (void)updateInteractiveTransitionWithContext:(id)context andProgress:(double)progress
{
  v4.receiver = self;
  v4.super_class = OKTransitionCut;
  [(OKTransition *)&v4 updateInteractiveTransitionWithContext:context andProgress:progress];
}

@end
@interface OKTransitionCut
- (void)_transitionInView:(id)a3 fromSubview:(id)a4 toSubview:(id)a5 wasInteractive:(BOOL)a6 duration:(double)a7 doEaseIn:(BOOL)a8 doEaseOut:(BOOL)a9 isCompleting:(BOOL)a10 wasCancelled:(BOOL)a11 fromProgress:(double)a12 completionHandler:(id)a13;
- (void)startInteractiveTransitionWithContext:(id)a3;
- (void)updateInteractiveTransitionWithContext:(id)a3 andProgress:(double)a4;
@end

@implementation OKTransitionCut

- (void)_transitionInView:(id)a3 fromSubview:(id)a4 toSubview:(id)a5 wasInteractive:(BOOL)a6 duration:(double)a7 doEaseIn:(BOOL)a8 doEaseOut:(BOOL)a9 isCompleting:(BOOL)a10 wasCancelled:(BOOL)a11 fromProgress:(double)a12 completionHandler:(id)a13
{
  [a3 bounds];
  Width = CGRectGetWidth(v21);
  [a3 bounds];
  v18.n128_f64[0] = CGRectGetHeight(v22);
  if (!a6)
  {
    [a5 setFrame:{0.0, 0.0, Width, v18.n128_f64[0]}];
    [a3 insertSubview:a5 aboveSubview:a4];
  }

  if (a13)
  {
    v19 = *(a13 + 2);

    v19(a13, !a11, v18);
  }
}

- (void)startInteractiveTransitionWithContext:(id)a3
{
  v10.receiver = self;
  v10.super_class = OKTransitionCut;
  [(OKTransition *)&v10 startInteractiveTransitionWithContext:?];
  v4 = [a3 fromViewController];
  v5 = [a3 toViewController];
  [objc_msgSend(a3 "containerView")];
  [objc_msgSend(v5 "view")];
  [objc_msgSend(a3 "containerView")];
}

- (void)updateInteractiveTransitionWithContext:(id)a3 andProgress:(double)a4
{
  v4.receiver = self;
  v4.super_class = OKTransitionCut;
  [(OKTransition *)&v4 updateInteractiveTransitionWithContext:a3 andProgress:a4];
}

@end
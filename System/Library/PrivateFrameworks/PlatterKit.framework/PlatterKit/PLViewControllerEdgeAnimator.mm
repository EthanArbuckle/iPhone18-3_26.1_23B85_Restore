@interface PLViewControllerEdgeAnimator
- (id)_newPropertyAnimator;
- (void)_animateTransitionToEdge:(unint64_t)a3 withTransitionContext:(id)a4;
@end

@implementation PLViewControllerEdgeAnimator

- (id)_newPropertyAnimator
{
  v2 = objc_alloc(MEMORY[0x277D75D40]);
  v3 = [objc_alloc(MEMORY[0x277D75A60]) initWithMass:2.0 stiffness:300.0 damping:300.0 initialVelocity:{0.0, 0.0}];
  v4 = [v2 initWithDuration:v3 timingParameters:0.0];

  return v4;
}

- (void)_animateTransitionToEdge:(unint64_t)a3 withTransitionContext:(id)a4
{
  v5 = a4;
  v6 = [(PLViewControllerAnimator *)self _presentedViewControllerForPresentation:0 withTransitionContext:v5];
  v7 = [v6 expandedPlatterPresentationController];
  [v7 frameOfPresentedViewInContainerView];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 containerView];
  [v14 bounds];
  MaxY = CGRectGetMaxY(v19);
  v16 = [(PLViewControllerAnimator *)self _sourceViewForPresentation:0 withTransitionContext:v5];
  v17 = [(PLViewControllerAnimator *)self _presentedViewForPresentation:0 withTransitionContext:v5];

  [v16 setAlpha:1.0];
  PLSetViewFrameMaintainingTransform(v17, v9, MaxY, v11, v13);
  CGAffineTransformMakeScale(&v18, 0.9, 0.9);
  [v17 setTransform:&v18];
}

@end
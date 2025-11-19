@interface UIViewControllerTransition
@end

@implementation UIViewControllerTransition

uint64_t __45___UIViewControllerTransition__apiTransition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _interactiveDismissShouldBeginHandler];
  if (v5)
  {
    v6 = objc_opt_new();
    [v3 location];
    [v6 setLocation:?];
    [v3 velocity];
    [v6 setVelocity:?];
    [v6 setProposedBeginState:{objc_msgSend(v3, "willBegin")}];
    v7 = (v5)[2](v5, v6);
  }

  else
  {
    v7 = [v3 willBegin];
  }

  return v7;
}

double __45___UIViewControllerTransition__apiTransition__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _options];
  [v2 frameOfSourceInDestination];
  v4 = v3;

  return v4;
}

id __45___UIViewControllerTransition__apiTransition__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _viewProvider];
  v6 = [v3 zoomedViewController];

  v7 = (v5)[2](v5, v6);

  return v7;
}

@end
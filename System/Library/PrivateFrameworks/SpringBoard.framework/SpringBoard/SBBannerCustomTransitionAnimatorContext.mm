@interface SBBannerCustomTransitionAnimatorContext
- (CGRect)finalContentFrame;
- (CGRect)finalFrame;
- (CGRect)initialContentFrame;
- (CGRect)initialFrame;
- (UIView)transitionView;
- (id)targetViewController;
@end

@implementation SBBannerCustomTransitionAnimatorContext

- (id)targetViewController
{
  transitionContext = [(SBBannerCustomTransitionAnimatorContext *)self transitionContext];
  v4 = [transitionContext viewControllerForKey:*MEMORY[0x277D77230]];

  transitionContext2 = [(SBBannerCustomTransitionAnimatorContext *)self transitionContext];
  v6 = [transitionContext2 viewControllerForKey:*MEMORY[0x277D77240]];

  if ([(SBBannerCustomTransitionAnimatorContext *)self isPresentationTransition])
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (UIView)transitionView
{
  targetViewController = [(SBBannerCustomTransitionAnimatorContext *)self targetViewController];
  view = [targetViewController view];

  return view;
}

- (CGRect)initialFrame
{
  transitionContext = [(SBBannerCustomTransitionAnimatorContext *)self transitionContext];
  targetViewController = [(SBBannerCustomTransitionAnimatorContext *)self targetViewController];
  [transitionContext initialFrameForViewController:targetViewController];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)initialContentFrame
{
  targetViewController = [(SBBannerCustomTransitionAnimatorContext *)self targetViewController];
  if (objc_opt_respondsToSelector())
  {
    [targetViewController bannerContentOutsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v9 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
  }

  [(SBBannerCustomTransitionAnimatorContext *)self initialFrame];
  v13 = v7 + v12;
  v15 = v5 + v14;
  v17 = v16 - (v11 + v7);
  v19 = v18 - (v9 + v5);

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)finalFrame
{
  transitionContext = [(SBBannerCustomTransitionAnimatorContext *)self transitionContext];
  targetViewController = [(SBBannerCustomTransitionAnimatorContext *)self targetViewController];
  [transitionContext finalFrameForViewController:targetViewController];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)finalContentFrame
{
  targetViewController = [(SBBannerCustomTransitionAnimatorContext *)self targetViewController];
  if (objc_opt_respondsToSelector())
  {
    [targetViewController bannerContentOutsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v9 = *(MEMORY[0x277D768C8] + 16);
    v11 = *(MEMORY[0x277D768C8] + 24);
  }

  [(SBBannerCustomTransitionAnimatorContext *)self finalFrame];
  v13 = v7 + v12;
  v15 = v5 + v14;
  v17 = v16 - (v11 + v7);
  v19 = v18 - (v9 + v5);

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

@end
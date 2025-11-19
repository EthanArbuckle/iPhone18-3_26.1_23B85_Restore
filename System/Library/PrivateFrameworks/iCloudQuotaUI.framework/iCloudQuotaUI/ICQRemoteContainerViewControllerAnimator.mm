@interface ICQRemoteContainerViewControllerAnimator
- (ICQRemoteContainerViewControllerAnimator)initWithPresenting:(BOOL)a3;
- (id)_viewControllerForTransitionContext:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation ICQRemoteContainerViewControllerAnimator

- (ICQRemoteContainerViewControllerAnimator)initWithPresenting:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICQRemoteContainerViewControllerAnimator;
  result = [(ICQRemoteContainerViewControllerAnimator *)&v5 init];
  if (result)
  {
    result->_presenting = a3;
  }

  return result;
}

- (id)_viewControllerForTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(ICQRemoteContainerViewControllerAnimator *)self isPresenting];
  v6 = MEMORY[0x277D77240];
  if (!v5)
  {
    v6 = MEMORY[0x277D77230];
  }

  v7 = [v4 viewControllerForKey:*v6];

  return v7;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [(ICQRemoteContainerViewControllerAnimator *)self _viewControllerForTransitionContext:v4];
  v6 = [v5 view];
  v7 = [v4 containerView];
  [v7 addSubview:v6];
  v8 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__ICQRemoteContainerViewControllerAnimator_animateTransition___block_invoke;
  v15[3] = &unk_27A65A708;
  v16 = v6;
  v17 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performWithoutAnimation:v15];
  v11 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ICQRemoteContainerViewControllerAnimator_animateTransition___block_invoke_3;
  v13[3] = &unk_27A65A750;
  v14 = v4;
  v12 = v4;
  [v11 _animateUsingDefaultTimingWithOptions:134 animations:&__block_literal_global completion:v13];
}

uint64_t __62__ICQRemoteContainerViewControllerAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) bounds];
  [v2 setFrame:?];
  v3 = *(a1 + 32);

  return [v3 layoutIfNeeded];
}

@end
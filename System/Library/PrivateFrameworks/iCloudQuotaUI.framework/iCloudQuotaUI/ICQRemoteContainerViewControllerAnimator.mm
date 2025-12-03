@interface ICQRemoteContainerViewControllerAnimator
- (ICQRemoteContainerViewControllerAnimator)initWithPresenting:(BOOL)presenting;
- (id)_viewControllerForTransitionContext:(id)context;
- (void)animateTransition:(id)transition;
@end

@implementation ICQRemoteContainerViewControllerAnimator

- (ICQRemoteContainerViewControllerAnimator)initWithPresenting:(BOOL)presenting
{
  v5.receiver = self;
  v5.super_class = ICQRemoteContainerViewControllerAnimator;
  result = [(ICQRemoteContainerViewControllerAnimator *)&v5 init];
  if (result)
  {
    result->_presenting = presenting;
  }

  return result;
}

- (id)_viewControllerForTransitionContext:(id)context
{
  contextCopy = context;
  isPresenting = [(ICQRemoteContainerViewControllerAnimator *)self isPresenting];
  v6 = MEMORY[0x277D77240];
  if (!isPresenting)
  {
    v6 = MEMORY[0x277D77230];
  }

  v7 = [contextCopy viewControllerForKey:*v6];

  return v7;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [(ICQRemoteContainerViewControllerAnimator *)self _viewControllerForTransitionContext:transitionCopy];
  view = [v5 view];
  containerView = [transitionCopy containerView];
  [containerView addSubview:view];
  v8 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62__ICQRemoteContainerViewControllerAnimator_animateTransition___block_invoke;
  v15[3] = &unk_27A65A708;
  v16 = view;
  v17 = containerView;
  v9 = containerView;
  v10 = view;
  [v8 performWithoutAnimation:v15];
  v11 = MEMORY[0x277D75D18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ICQRemoteContainerViewControllerAnimator_animateTransition___block_invoke_3;
  v13[3] = &unk_27A65A750;
  v14 = transitionCopy;
  v12 = transitionCopy;
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
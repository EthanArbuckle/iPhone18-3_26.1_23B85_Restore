@interface ICQRemoteContaineriPhoneViewController
- (CGRect)_dismissalFrameForContentSize:(CGSize)a3;
- (CGRect)_layoutFrameForContentSize:(CGSize)a3;
- (CGSize)containerContentSize;
- (ICQRemoteContaineriPhoneViewController)initWithRootViewController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (void)_layoutContainerView:(BOOL)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setContainerContentSize:(CGSize)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ICQRemoteContaineriPhoneViewController

- (ICQRemoteContaineriPhoneViewController)initWithRootViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICQRemoteContaineriPhoneViewController;
  v3 = [(ICQRemoteContainerViewController *)&v6 initWithRootViewController:a3];
  v4 = v3;
  if (v3)
  {
    [(ICQRemoteContaineriPhoneViewController *)v3 setModalPresentationStyle:4];
    [(ICQRemoteContaineriPhoneViewController *)v4 setTransitioningDelegate:v4];
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ICQRemoteContaineriPhoneViewController;
  [(ICQRemoteContaineriPhoneViewController *)&v4 viewDidLoad];
  v3 = [(ICQRemoteContaineriPhoneViewController *)self view];
  [v3 setOpaque:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v25.receiver = self;
  v25.super_class = ICQRemoteContaineriPhoneViewController;
  [(ICQRemoteContaineriPhoneViewController *)&v25 viewWillAppear:a3];
  if ([(ICQRemoteContaineriPhoneViewController *)self isBeingPresented])
  {
    v4 = [(ICQRemoteContainerViewController *)self rootViewController];
    [v4 preferredContentSize];
    v6 = v5;
    v8 = v7;

    [(ICQRemoteContaineriPhoneViewController *)self _dismissalFrameForContentSize:v6, v8];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(ICQRemoteContainerViewController *)self rootViewController];
    v18 = [v17 viewIfLoaded];
    [v18 setFrame:{v10, v12, v14, v16}];

    v19 = [(ICQRemoteContainerViewController *)self rootViewController];
    v20 = [v19 viewIfLoaded];
    [v20 layoutIfNeeded];

    v21 = [(ICQRemoteContaineriPhoneViewController *)self view];
    v22 = [MEMORY[0x277D75348] clearColor];
    [v21 setBackgroundColor:v22];

    v23 = [(ICQRemoteContaineriPhoneViewController *)self transitionCoordinator];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__ICQRemoteContaineriPhoneViewController_viewWillAppear___block_invoke;
    v24[3] = &unk_27A65B410;
    v24[4] = self;
    *&v24[5] = v6;
    *&v24[6] = v8;
    [v23 animateAlongsideTransition:v24 completion:0];
  }
}

void __57__ICQRemoteContaineriPhoneViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  [*(a1 + 32) setContainerContentSize:objc_msgSend(a2 animated:{"isAnimated"), *(a1 + 40), *(a1 + 48)}];
  v4 = [*(a1 + 32) view];
  v3 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.800000012];
  [v4 setBackgroundColor:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ICQRemoteContaineriPhoneViewController;
  [(ICQRemoteContaineriPhoneViewController *)&v6 viewWillDisappear:a3];
  if ([(ICQRemoteContaineriPhoneViewController *)self isBeingDismissed])
  {
    v4 = [(ICQRemoteContaineriPhoneViewController *)self transitionCoordinator];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __60__ICQRemoteContaineriPhoneViewController_viewWillDisappear___block_invoke;
    v5[3] = &unk_27A65B438;
    v5[4] = self;
    [v4 animateAlongsideTransition:v5 completion:0];
  }
}

void __60__ICQRemoteContaineriPhoneViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 containerContentSize];
  [v2 _dismissalFrameForContentSize:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [*(a1 + 32) rootViewController];
  v12 = [v11 viewIfLoaded];
  [v12 setFrame:{v4, v6, v8, v10}];

  v13 = [*(a1 + 32) rootViewController];
  v14 = [v13 viewIfLoaded];
  [v14 layoutIfNeeded];

  v16 = [*(a1 + 32) view];
  v15 = [MEMORY[0x277D75348] clearColor];
  [v16 setBackgroundColor:v15];
}

- (void)setContainerContentSize:(CGSize)a3 animated:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  p_containerContentSize = &self->_containerContentSize;
  if (self->_containerContentSize.width != a3.width || self->_containerContentSize.height != a3.height)
  {
    v8 = a4;
    v10 = [(ICQRemoteContaineriPhoneViewController *)self view];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v22.origin.x = v12;
    v22.origin.y = v14;
    v22.size.width = v16;
    v22.size.height = v18;
    v19 = CGRectGetWidth(v22);
    if (v19 < width)
    {
      width = v19;
    }

    v23.origin.x = v12;
    v23.origin.y = v14;
    v23.size.width = v16;
    v23.size.height = v18;
    v20 = CGRectGetHeight(v23);
    if (v20 >= height)
    {
      v20 = height;
    }

    p_containerContentSize->width = width;
    p_containerContentSize->height = v20;

    [(ICQRemoteContaineriPhoneViewController *)self _layoutContainerView:v8];
  }
}

- (void)_layoutContainerView:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICQRemoteContainerViewController *)self rootViewController];
  v6 = [v5 viewIfLoaded];

  if (v6)
  {
    [(ICQRemoteContaineriPhoneViewController *)self containerContentSize];
    [(ICQRemoteContaineriPhoneViewController *)self _layoutFrameForContentSize:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v6 frame];
    v26.origin.x = v8;
    v26.origin.y = v10;
    v26.size.width = v12;
    v26.size.height = v14;
    if (!CGRectEqualToRect(v25, v26))
    {
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __63__ICQRemoteContaineriPhoneViewController__layoutContainerView___block_invoke;
      aBlock[3] = &unk_27A65B460;
      v20 = v6;
      v21 = v8;
      v22 = v10;
      v23 = v12;
      v24 = v14;
      v15 = _Block_copy(aBlock);
      v16 = v15;
      if (v3)
      {
        v17 = objc_alloc_init(MEMORY[0x277D75A60]);
        v18 = [objc_alloc(MEMORY[0x277D75D40]) initWithDuration:v17 timingParameters:0.35];
        [v18 addAnimations:v16];
        [v18 startAnimation];
      }

      else
      {
        (*(v15 + 2))(v15);
      }
    }
  }
}

- (CGRect)_layoutFrameForContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(ICQRemoteContaineriPhoneViewController *)self viewIfLoaded];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    x = v17.origin.x;
    y = v17.origin.y;
    v9 = v17.size.width;
    v10 = v17.size.height;
    v11 = (CGRectGetWidth(v17) - width) * 0.5;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = v9;
    v18.size.height = v10;
    v12 = CGRectGetHeight(v18) - height;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v13 = v11;
  v14 = v12;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_dismissalFrameForContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(ICQRemoteContaineriPhoneViewController *)self viewIfLoaded];
  v6 = v5;
  if (v5)
  {
    [v5 bounds];
    v7 = CGRectGetHeight(v13);
    v8 = 0.0;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    width = *(MEMORY[0x277CBF3A0] + 16);
    height = *(MEMORY[0x277CBF3A0] + 24);
  }

  v9 = v8;
  v10 = v7;
  v11 = width;
  v12 = height;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICQRemoteContaineriPhoneViewController;
  [(ICQRemoteContaineriPhoneViewController *)&v11 preferredContentSizeDidChangeForChildContentContainer:v4];
  if (([(ICQRemoteContaineriPhoneViewController *)self isBeingPresented]& 1) == 0)
  {
    v5 = [(ICQRemoteContainerViewController *)self rootViewController];
    v6 = v5;
    if (v5 == v4)
    {
      v7 = [v5 transitionCoordinator];
      if (v7)
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __96__ICQRemoteContaineriPhoneViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_2;
        v8[3] = &unk_27A65B4A8;
        v8[4] = self;
        v9 = v4;
        v10 = &__block_literal_global_11;
        [v7 animateAlongsideTransition:v8 completion:?];
      }

      else
      {
        [v4 preferredContentSize];
        [(ICQRemoteContaineriPhoneViewController *)self setContainerContentSize:1 animated:?];
      }
    }
  }
}

void __96__ICQRemoteContaineriPhoneViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = [v2 containerView];
  v3 = [v2 viewForKey:*MEMORY[0x277D77238]];
  v4 = [v2 viewForKey:*MEMORY[0x277D77248]];

  [v5 bounds];
  [v3 setFrame:?];
  [v5 bounds];
  [v4 setFrame:?];
}

void __96__ICQRemoteContaineriPhoneViewController_preferredContentSizeDidChangeForChildContentContainer___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v7 = a2;
  [v4 preferredContentSize];
  [v3 setContainerContentSize:objc_msgSend(v7 animated:{"isAnimated"), v5, v6}];
  (*(a1[6] + 16))();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = ICQRemoteContaineriPhoneViewController;
  v7 = a4;
  [(ICQRemoteContaineriPhoneViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__ICQRemoteContaineriPhoneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_27A65B438;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

uint64_t __93__ICQRemoteContaineriPhoneViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isAnimated];

  return [v2 _layoutContainerView:v3];
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v5 = [[ICQRemoteContainerViewControllerAnimator alloc] initWithPresenting:1];

  return v5;
}

- (id)animationControllerForDismissedController:(id)a3
{
  v3 = [[ICQRemoteContainerViewControllerAnimator alloc] initWithPresenting:0];

  return v3;
}

- (CGSize)containerContentSize
{
  width = self->_containerContentSize.width;
  height = self->_containerContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
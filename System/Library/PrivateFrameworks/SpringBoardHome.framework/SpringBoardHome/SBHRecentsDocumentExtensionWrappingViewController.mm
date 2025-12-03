@interface SBHRecentsDocumentExtensionWrappingViewController
- (BOOL)isTransparent;
- (SBHRecentsDocumentExtensionWrappingViewController)init;
- (SBHRecentsDocumentExtensionWrappingViewControllerDelegate)delegate;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (void)_updateViewIntrinsicContentSize:(CGSize)size;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setPreferredContentSize:(CGSize)size;
- (void)wrapRemoteViewController:(id)controller;
@end

@implementation SBHRecentsDocumentExtensionWrappingViewController

- (SBHRecentsDocumentExtensionWrappingViewController)init
{
  v6.receiver = self;
  v6.super_class = SBHRecentsDocumentExtensionWrappingViewController;
  v2 = [(SBHRecentsDocumentExtensionWrappingViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    constraints = v2->_constraints;
    v2->_constraints = v3;
  }

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_touchCancellationAssertionsToTokens;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMapTable *)self->_touchCancellationAssertionsToTokens removeAllObjects];
  v8.receiver = self;
  v8.super_class = SBHRecentsDocumentExtensionWrappingViewController;
  [(SBHRecentsDocumentExtensionWrappingViewController *)&v8 dealloc];
}

- (void)loadView
{
  if ([(SBHRecentsDocumentExtensionWrappingViewController *)self usesIntrinsicContentSizeBasedOnScreenSize])
  {
    v4 = __sb__runningInSpringBoard();
    v5 = v4;
    if (v4)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen _referenceBounds];
    }

    v12 = CGRectGetWidth(*&v6) * 0.46;
    v10 = floorf(v12);
    v11 = 220.5;
    if ((v5 & 1) == 0)
    {
    }
  }

  else
  {
    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
  }

  v13 = [[_SBHRecentsDocumentView alloc] initWithFrame:0.0, 0.0, v10, v11];
  [(_SBHRecentsDocumentView *)v13 setAutoresizingMask:18];
  [(SBHRecentsDocumentExtensionWrappingViewController *)self setView:v13];
  [(SBHRecentsDocumentExtensionWrappingViewController *)self _updateViewIntrinsicContentSize:v10, v11];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v9.receiver = self;
  v9.super_class = SBHRecentsDocumentExtensionWrappingViewController;
  containerCopy = container;
  [(SBHRecentsDocumentExtensionWrappingViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  [containerCopy preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(SBHRecentsDocumentExtensionWrappingViewController *)self _updateViewIntrinsicContentSize:v6, v8];
}

- (void)setPreferredContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = SBHRecentsDocumentExtensionWrappingViewController;
  [(SBHRecentsDocumentExtensionWrappingViewController *)&v12 setPreferredContentSize:?];
  view = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  [view frame];
  v8 = v7;
  v10 = v9;

  view2 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  [view2 setFrame:{v8, v10, width, height}];
}

- (void)_updateViewIntrinsicContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  view = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  [view setIntrinsicContentSize:{width, height}];
  [(SBHRecentsDocumentExtensionWrappingViewController *)self setPreferredContentSize:width, height];
  view2 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  [view2 setNeedsUpdateConstraints];
}

- (void)wrapRemoteViewController:(id)controller
{
  controllerCopy = controller;
  wrappedRemoteViewController = self->_wrappedRemoteViewController;
  v36 = controllerCopy;
  if (wrappedRemoteViewController != controllerCopy)
  {
    [(_UIRemoteViewController *)wrappedRemoteViewController willMoveToParentViewController:0];
    view = [(_UIRemoteViewController *)self->_wrappedRemoteViewController view];
    [view removeFromSuperview];

    [(_UIRemoteViewController *)self->_wrappedRemoteViewController removeFromParentViewController];
  }

  objc_storeStrong(&self->_wrappedRemoteViewController, controller);
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  view2 = [(_UIRemoteViewController *)v36 view];
  [view2 setAccessibilityIdentifier:@"Icon Pop Over"];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  v10 = view3;
  if (view2 && view3)
  {
    [(_UIRemoteViewController *)v36 bs_endAppearanceTransition:1];
    view4 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
    [(SBHRecentsDocumentExtensionWrappingViewController *)self bs_addChildViewController:v36 withSuperview:view4];

    constraints = self->_constraints;
    topAnchor = [view2 topAnchor];
    topAnchor2 = [v10 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(NSMutableArray *)constraints addObject:v15];

    v16 = self->_constraints;
    bottomAnchor = [view2 bottomAnchor];
    bottomAnchor2 = [v10 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(NSMutableArray *)v16 addObject:v19];

    v20 = self->_constraints;
    leadingAnchor = [view2 leadingAnchor];
    leadingAnchor2 = [v10 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(NSMutableArray *)v20 addObject:v23];

    v24 = self->_constraints;
    trailingAnchor = [view2 trailingAnchor];
    trailingAnchor2 = [v10 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(NSMutableArray *)v24 addObject:v27];

    v28 = self->_constraints;
    widthAnchor = [view2 widthAnchor];
    widthAnchor2 = [v10 widthAnchor];
    v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:1.0];
    [(NSMutableArray *)v28 addObject:v31];

    v32 = self->_constraints;
    heightAnchor = [view2 heightAnchor];
    heightAnchor2 = [v10 heightAnchor];
    v35 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
    [(NSMutableArray *)v32 addObject:v35];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  wrappedRemoteViewController = self->_wrappedRemoteViewController;
  if (wrappedRemoteViewController && ([(_UIRemoteViewController *)wrappedRemoteViewController _cancelTouchesForCurrentEventInHostedContent], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    if (!self->_touchCancellationAssertionsToTokens)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      touchCancellationAssertionsToTokens = self->_touchCancellationAssertionsToTokens;
      self->_touchCancellationAssertionsToTokens = weakToStrongObjectsMapTable;
    }

    objc_initWeak(&location, self);
    v8 = objc_alloc(MEMORY[0x1E698E778]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __96__SBHRecentsDocumentExtensionWrappingViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke;
    v14 = &unk_1E808A7B8;
    objc_copyWeak(&v15, &location);
    v9 = [v8 initWithIdentifier:@"recentsDocumentExtension.cancelTouchesAssertion" forReason:@"cancelTouches" invalidationBlock:&v11];
    [(NSMapTable *)self->_touchCancellationAssertionsToTokens setObject:v5 forKey:v9, v11, v12, v13, v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __96__SBHRecentsDocumentExtensionWrappingViewController_cancelTouchesForCurrentEventInHostedContent__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[125] removeObjectForKey:v5];
  }
}

- (BOOL)isTransparent
{
  selfCopy = self;
  delegate = [(SBHRecentsDocumentExtensionWrappingViewController *)self delegate];
  LOBYTE(selfCopy) = [delegate recentsDocumentExtensionWrappingViewControllerHasTransparentContent:selfCopy];

  return selfCopy;
}

- (SBHRecentsDocumentExtensionWrappingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
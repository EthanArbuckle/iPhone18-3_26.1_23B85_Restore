@interface SBHRecentsDocumentExtensionWrappingViewController
- (BOOL)isTransparent;
- (SBHRecentsDocumentExtensionWrappingViewController)init;
- (SBHRecentsDocumentExtensionWrappingViewControllerDelegate)delegate;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (void)_updateViewIntrinsicContentSize:(CGSize)a3;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)wrapRemoteViewController:(id)a3;
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
      v2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v2 _referenceBounds];
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v9.receiver = self;
  v9.super_class = SBHRecentsDocumentExtensionWrappingViewController;
  v4 = a3;
  [(SBHRecentsDocumentExtensionWrappingViewController *)&v9 preferredContentSizeDidChangeForChildContentContainer:v4];
  [v4 preferredContentSize];
  v6 = v5;
  v8 = v7;

  [(SBHRecentsDocumentExtensionWrappingViewController *)self _updateViewIntrinsicContentSize:v6, v8];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = SBHRecentsDocumentExtensionWrappingViewController;
  [(SBHRecentsDocumentExtensionWrappingViewController *)&v12 setPreferredContentSize:?];
  v6 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  [v6 frame];
  v8 = v7;
  v10 = v9;

  v11 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  [v11 setFrame:{v8, v10, width, height}];
}

- (void)_updateViewIntrinsicContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v7 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  [v7 setIntrinsicContentSize:{width, height}];
  [(SBHRecentsDocumentExtensionWrappingViewController *)self setPreferredContentSize:width, height];
  v6 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  [v6 setNeedsUpdateConstraints];
}

- (void)wrapRemoteViewController:(id)a3
{
  v5 = a3;
  wrappedRemoteViewController = self->_wrappedRemoteViewController;
  v36 = v5;
  if (wrappedRemoteViewController != v5)
  {
    [(_UIRemoteViewController *)wrappedRemoteViewController willMoveToParentViewController:0];
    v7 = [(_UIRemoteViewController *)self->_wrappedRemoteViewController view];
    [v7 removeFromSuperview];

    [(_UIRemoteViewController *)self->_wrappedRemoteViewController removeFromParentViewController];
  }

  objc_storeStrong(&self->_wrappedRemoteViewController, a3);
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_constraints];
  [(NSMutableArray *)self->_constraints removeAllObjects];
  v8 = [(_UIRemoteViewController *)v36 view];
  [v8 setAccessibilityIdentifier:@"Icon Pop Over"];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
  v10 = v9;
  if (v8 && v9)
  {
    [(_UIRemoteViewController *)v36 bs_endAppearanceTransition:1];
    v11 = [(SBHRecentsDocumentExtensionWrappingViewController *)self view];
    [(SBHRecentsDocumentExtensionWrappingViewController *)self bs_addChildViewController:v36 withSuperview:v11];

    constraints = self->_constraints;
    v13 = [v8 topAnchor];
    v14 = [v10 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [(NSMutableArray *)constraints addObject:v15];

    v16 = self->_constraints;
    v17 = [v8 bottomAnchor];
    v18 = [v10 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [(NSMutableArray *)v16 addObject:v19];

    v20 = self->_constraints;
    v21 = [v8 leadingAnchor];
    v22 = [v10 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [(NSMutableArray *)v20 addObject:v23];

    v24 = self->_constraints;
    v25 = [v8 trailingAnchor];
    v26 = [v10 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [(NSMutableArray *)v24 addObject:v27];

    v28 = self->_constraints;
    v29 = [v8 widthAnchor];
    v30 = [v10 widthAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 multiplier:1.0];
    [(NSMutableArray *)v28 addObject:v31];

    v32 = self->_constraints;
    v33 = [v8 heightAnchor];
    v34 = [v10 heightAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 multiplier:1.0];
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
      v6 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      touchCancellationAssertionsToTokens = self->_touchCancellationAssertionsToTokens;
      self->_touchCancellationAssertionsToTokens = v6;
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
  v2 = self;
  v3 = [(SBHRecentsDocumentExtensionWrappingViewController *)self delegate];
  LOBYTE(v2) = [v3 recentsDocumentExtensionWrappingViewControllerHasTransparentContent:v2];

  return v2;
}

- (SBHRecentsDocumentExtensionWrappingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
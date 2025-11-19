@interface PRQuickActionEditingViewController
- (PRQuickActionEditingViewController)initWithQuickActionsConfiguration:(id)a3;
- (PRQuickActionEditingViewControllerDelegate)delegate;
- (id)_configureEditingReticleViewWithTapGesture:(id)a3;
- (id)_configureRemoveButtonWithAction:(id)a3;
- (id)_controlViewForControl:(id)a3;
- (id)_validateControl:(id)a3;
- (void)_handleRemoveButtonActionForQuickActionPosition:(int64_t)a3;
- (void)_leadingActionDidFire;
- (void)_presentWidgetIntentConfigurationForControlWithPosition:(int64_t)a3;
- (void)_trailingActionDidFire;
- (void)_updateActiveReticleForPosition:(int64_t)a3;
- (void)_updateButtonsVisibility;
- (void)setLeadingControl:(id)a3;
- (void)setTrailingControl:(id)a3;
- (void)validateControls;
- (void)viewDidLoad;
@end

@implementation PRQuickActionEditingViewController

- (PRQuickActionEditingViewController)initWithQuickActionsConfiguration:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PRQuickActionEditingViewController;
  v5 = [(PRQuickActionEditingViewController *)&v17 init];
  if (v5)
  {
    v6 = [v4 leadingControl];
    v7 = [v4 trailingControl];
    if ([v6 category] == 3)
    {
      v8 = objc_alloc(MEMORY[0x1E6997278]);
      v9 = [v6 identity];
      v10 = [v8 initWithIdentity:v9 type:{objc_msgSend(v6, "type")}];
    }

    else
    {
      v10 = 0;
    }

    if ([v7 category] == 3)
    {
      v11 = objc_alloc(MEMORY[0x1E6997278]);
      v12 = [v7 identity];
      v13 = [v11 initWithIdentity:v12 type:{objc_msgSend(v7, "type")}];
    }

    else
    {
      v13 = 0;
    }

    [(PRQuickActionEditingViewController *)v5 setLeadingControl:v10];
    [(PRQuickActionEditingViewController *)v5 setTrailingControl:v13];
    v14 = PRSharedWidgetExtensionProvider();
    extensionProvider = v5->_extensionProvider;
    v5->_extensionProvider = v14;
  }

  return v5;
}

- (void)viewDidLoad
{
  v57[4] = *MEMORY[0x1E69E9840];
  v56.receiver = self;
  v56.super_class = PRQuickActionEditingViewController;
  [(PRQuickActionEditingViewController *)&v56 viewDidLoad];
  if (PRLockPickIsActive())
  {
    v46 = objc_alloc_init(MEMORY[0x1E6999620]);
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v46 setClickSuppressed:1];
    objc_initWeak(&location, self);
    v3 = MEMORY[0x1E69DC628];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke;
    v53[3] = &unk_1E7843448;
    objc_copyWeak(&v54, &location);
    v4 = [v3 actionWithHandler:v53];
    [v46 addAction:v4 forControlEvents:64];

    v5 = [(PRQuickActionEditingViewController *)self leadingControl];
    LOBYTE(v4) = v5 == 0;

    if (v4)
    {
      [v46 setHidden:1];
    }

    else
    {
      v6 = [(PRQuickActionEditingViewController *)self leadingControl];
      v7 = [(PRQuickActionEditingViewController *)self _controlViewForControl:v6];
      [v46 setGlyphView:v7];
    }

    v8 = objc_alloc_init(MEMORY[0x1E6999620]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setClickSuppressed:1];
    v45 = v8;
    v9 = MEMORY[0x1E69DC628];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_2;
    v51[3] = &unk_1E7843448;
    objc_copyWeak(&v52, &location);
    v10 = [v9 actionWithHandler:v51];
    [v45 addAction:v10 forControlEvents:64];

    v11 = [(PRQuickActionEditingViewController *)self trailingControl];
    LOBYTE(v10) = v11 == 0;

    if (v10)
    {
      [v45 setHidden:1];
    }

    else
    {
      v12 = [(PRQuickActionEditingViewController *)self trailingControl];
      v13 = [(PRQuickActionEditingViewController *)self _controlViewForControl:v12];
      [v45 setGlyphView:v13];
    }

    v14 = [objc_alloc(MEMORY[0x1E6999628]) initWithLeadingButton:v46 trailingButton:v45];
    v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__leadingActionDidFire];
    v16 = [(PRQuickActionEditingViewController *)self _configureEditingReticleViewWithTapGesture:v15];
    [v14 setLeadingReticle:v16];

    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__trailingActionDidFire];
    v18 = [(PRQuickActionEditingViewController *)self _configureEditingReticleViewWithTapGesture:v17];
    [v14 setTrailingReticle:v18];

    v19 = MEMORY[0x1E69DC628];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_3;
    v49[3] = &unk_1E7843448;
    objc_copyWeak(&v50, &location);
    v20 = [v19 actionWithHandler:v49];
    v44 = [(PRQuickActionEditingViewController *)self _configureRemoveButtonWithAction:v20];

    v21 = MEMORY[0x1E69DC628];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_4;
    v47[3] = &unk_1E7843448;
    objc_copyWeak(&v48, &location);
    v22 = [v21 actionWithHandler:v47];
    v43 = [(PRQuickActionEditingViewController *)self _configureRemoveButtonWithAction:v22];

    [v14 setLeadingRemoveButton:v44];
    [v14 setTrailingRemoveButton:v43];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [(PRQuickActionEditingViewController *)self view];
    [v23 addSubview:v14];

    v33 = MEMORY[0x1E696ACD8];
    v41 = [v14 bottomAnchor];
    v42 = [(PRQuickActionEditingViewController *)self view];
    v40 = [v42 bottomAnchor];
    v39 = [v41 constraintEqualToAnchor:v40];
    v57[0] = v39;
    v37 = [v14 topAnchor];
    v38 = [(PRQuickActionEditingViewController *)self view];
    v36 = [v38 topAnchor];
    v35 = [v37 constraintEqualToAnchor:v36];
    v57[1] = v35;
    v34 = [v14 leadingAnchor];
    v24 = [(PRQuickActionEditingViewController *)self view];
    v25 = [v24 leadingAnchor];
    v26 = [v34 constraintEqualToAnchor:v25];
    v57[2] = v26;
    v27 = [v14 trailingAnchor];
    v28 = [(PRQuickActionEditingViewController *)self view];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    v57[3] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:4];
    [v33 activateConstraints:v31];

    prominentButtonsView = self->_prominentButtonsView;
    self->_prominentButtonsView = v14;

    objc_destroyWeak(&v48);
    objc_destroyWeak(&v50);
    objc_destroyWeak(&v52);

    objc_destroyWeak(&v54);
    objc_destroyWeak(&location);
  }

  [(PRQuickActionEditingViewController *)self _updateButtonsVisibility];
}

void __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentWidgetIntentConfigurationForControlWithPosition:1];
}

void __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentWidgetIntentConfigurationForControlWithPosition:2];
}

void __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoveButtonActionForQuickActionPosition:1];
}

void __49__PRQuickActionEditingViewController_viewDidLoad__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRemoveButtonActionForQuickActionPosition:2];
}

- (void)validateControls
{
  v4 = [(PRQuickActionEditingViewController *)self _validateControl:self->_leadingControl];
  v3 = [(PRQuickActionEditingViewController *)self _validateControl:self->_trailingControl];
  if ((BSEqualObjects() & 1) == 0)
  {
    [(PRQuickActionEditingViewController *)self setLeadingControl:v4];
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    [(PRQuickActionEditingViewController *)self setTrailingControl:v3];
  }
}

- (id)_validateControl:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identity];
    v7 = [v6 extensionIdentity];
    v8 = [v7 containerBundleIdentifier];
    v9 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:v8];
    if (([v9 isLocked] & 1) != 0 || objc_msgSend(v9, "isHidden"))
    {
      v10 = PRLogEditing();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v19 = v5;
        v20 = 2114;
        v21 = v8;
        _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "[Quick Action] removing control %{public}@ with containerBundleIdentifier %{public}@ because app was hidden or locked", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_7;
    }

    v10 = [(CHSWidgetExtensionProvider *)self->_extensionProvider controlDescriptorForControl:v6];
    if (v10)
    {
      v11 = v5;
LABEL_7:

      goto LABEL_9;
    }

    v17 = 0;
    v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v8 allowPlaceholder:1 error:&v17];
    v14 = v17;
    if (v14)
    {
      v15 = PRLogEditing();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PRQuickActionEditingViewController _validateControl:];
      }
    }

    else
    {
      v16 = PRLogEditing();
      v15 = v16;
      if (v13)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [PRQuickActionEditingViewController _validateControl:];
        }

        v11 = v5;
        goto LABEL_22;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v19 = v5;
        _os_log_impl(&dword_1A8AA7000, v15, OS_LOG_TYPE_DEFAULT, "[Quick Action] removing button for %{public}@ because application was not found", buf, 0xCu);
      }
    }

    v11 = 0;
LABEL_22:

    goto LABEL_7;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (void)setLeadingControl:(id)a3
{
  v9 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leadingControl, a3);
    if (v9)
    {
      v5 = [(PRQuickActionEditingViewController *)self prominentButtonsView];
      v6 = [v5 leadingButton];
      v7 = [(PRQuickActionEditingViewController *)self _controlViewForControl:v9];
      [v6 setGlyphView:v7];

      [(PRQuickActionEditingViewController *)self _updateActiveReticleForPosition:0];
    }

    v8 = [(PRQuickActionEditingViewController *)self delegate];
    [v8 quickActionEditingViewController:self didSetControl:v9 forPosition:1];

    [(PRQuickActionEditingViewController *)self _updateButtonsVisibility];
  }
}

- (void)setTrailingControl:(id)a3
{
  v9 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_trailingControl, a3);
    if (v9)
    {
      v5 = [(PRQuickActionEditingViewController *)self prominentButtonsView];
      v6 = [v5 trailingButton];
      v7 = [(PRQuickActionEditingViewController *)self _controlViewForControl:v9];
      [v6 setGlyphView:v7];

      [(PRQuickActionEditingViewController *)self _updateActiveReticleForPosition:0];
    }

    v8 = [(PRQuickActionEditingViewController *)self delegate];
    [v8 quickActionEditingViewController:self didSetControl:v9 forPosition:2];

    [(PRQuickActionEditingViewController *)self _updateButtonsVisibility];
  }
}

- (id)_controlViewForControl:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [PRQuickActionControlView alloc];
    v5 = [v3 identity];
    v6 = [v3 type];

    v7 = [(PRQuickActionControlView *)v4 initWithControl:v5 type:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_leadingActionDidFire
{
  v3 = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  v4 = [v3 leadingButton];
  [v4 setSelected:0];

  v5 = [(PRQuickActionEditingViewController *)self delegate];
  [v5 quickActionEditingViewController:self didTapAddForPosition:1];
}

- (void)_trailingActionDidFire
{
  v3 = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  v4 = [v3 trailingButton];
  [v4 setSelected:0];

  v5 = [(PRQuickActionEditingViewController *)self delegate];
  [v5 quickActionEditingViewController:self didTapAddForPosition:2];
}

- (void)_presentWidgetIntentConfigurationForControlWithPosition:(int64_t)a3
{
  if ([(PRQuickActionEditingViewController *)self isGalleryPresented]|| !a3)
  {
    return;
  }

  if (a3 == 2)
  {
    v5 = [(PRQuickActionEditingViewController *)self trailingControl];
  }

  else
  {
    if (a3 != 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v5 = [(PRQuickActionEditingViewController *)self leadingControl];
  }

  v7 = v5;
LABEL_10:
  v6 = [(PRQuickActionEditingViewController *)self delegate];
  [v6 quickActionEditingViewController:self didRequestIntentConfigurationForControl:v7 withPosition:a3];
}

- (void)_handleRemoveButtonActionForQuickActionPosition:(int64_t)a3
{
  if (a3 == 2)
  {
    [(PRQuickActionEditingViewController *)self setTrailingControl:0];
  }

  else if (a3 == 1)
  {
    [(PRQuickActionEditingViewController *)self setLeadingControl:0];
  }
}

- (id)_configureEditingReticleViewWithTapGesture:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PRQuickActionsEditingReticleView);
  v5 = [(PRQuickActionsEditingReticleView *)v4 layer];
  [v5 setHitTestsAsOpaque:1];

  [(PRQuickActionsEditingReticleView *)v4 addGestureRecognizer:v3];

  return v4;
}

- (id)_configureRemoveButtonWithAction:(id)a3
{
  v3 = a3;
  v4 = [PREditingMinusCloseBoxButton alloc];
  v5 = [(PREditingButton *)v4 initWithStyle:7 frame:v3 primaryAction:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  v6 = [(PREditingMinusCloseBoxButton *)v5 configuration];
  [v6 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [(PREditingMinusCloseBoxButton *)v5 setConfiguration:v6];

  return v5;
}

- (void)_updateActiveReticleForPosition:(int64_t)a3
{
  v6 = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  v4 = [v6 leadingReticle];
  [v4 setActive:a3 == 1];

  v5 = [v6 trailingReticle];
  [v5 setActive:a3 == 2];
}

- (void)_updateButtonsVisibility
{
  v11 = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  v3 = self->_leadingControl == 0;
  v4 = self->_trailingControl == 0;
  v5 = [v11 leadingButton];
  [v5 setHidden:v3];

  v6 = [v11 trailingButton];
  [v6 setHidden:v4];

  v7 = [v11 leadingRemoveButton];
  [v7 setHidden:v3];

  v8 = [v11 leadingReticle];
  [v8 setShowsEmptyView:v3];

  v9 = [v11 trailingRemoveButton];
  [v9 setHidden:v4];

  v10 = [v11 trailingReticle];
  [v10 setShowsEmptyView:v4];
}

- (PRQuickActionEditingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
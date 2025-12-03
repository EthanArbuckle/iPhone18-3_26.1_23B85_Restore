@interface PRQuickActionEditingViewController
- (PRQuickActionEditingViewController)initWithQuickActionsConfiguration:(id)configuration;
- (PRQuickActionEditingViewControllerDelegate)delegate;
- (id)_configureEditingReticleViewWithTapGesture:(id)gesture;
- (id)_configureRemoveButtonWithAction:(id)action;
- (id)_controlViewForControl:(id)control;
- (id)_validateControl:(id)control;
- (void)_handleRemoveButtonActionForQuickActionPosition:(int64_t)position;
- (void)_leadingActionDidFire;
- (void)_presentWidgetIntentConfigurationForControlWithPosition:(int64_t)position;
- (void)_trailingActionDidFire;
- (void)_updateActiveReticleForPosition:(int64_t)position;
- (void)_updateButtonsVisibility;
- (void)setLeadingControl:(id)control;
- (void)setTrailingControl:(id)control;
- (void)validateControls;
- (void)viewDidLoad;
@end

@implementation PRQuickActionEditingViewController

- (PRQuickActionEditingViewController)initWithQuickActionsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v17.receiver = self;
  v17.super_class = PRQuickActionEditingViewController;
  v5 = [(PRQuickActionEditingViewController *)&v17 init];
  if (v5)
  {
    leadingControl = [configurationCopy leadingControl];
    trailingControl = [configurationCopy trailingControl];
    if ([leadingControl category] == 3)
    {
      v8 = objc_alloc(MEMORY[0x1E6997278]);
      identity = [leadingControl identity];
      v10 = [v8 initWithIdentity:identity type:{objc_msgSend(leadingControl, "type")}];
    }

    else
    {
      v10 = 0;
    }

    if ([trailingControl category] == 3)
    {
      v11 = objc_alloc(MEMORY[0x1E6997278]);
      identity2 = [trailingControl identity];
      v13 = [v11 initWithIdentity:identity2 type:{objc_msgSend(trailingControl, "type")}];
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

    leadingControl = [(PRQuickActionEditingViewController *)self leadingControl];
    LOBYTE(v4) = leadingControl == 0;

    if (v4)
    {
      [v46 setHidden:1];
    }

    else
    {
      leadingControl2 = [(PRQuickActionEditingViewController *)self leadingControl];
      v7 = [(PRQuickActionEditingViewController *)self _controlViewForControl:leadingControl2];
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

    trailingControl = [(PRQuickActionEditingViewController *)self trailingControl];
    LOBYTE(v10) = trailingControl == 0;

    if (v10)
    {
      [v45 setHidden:1];
    }

    else
    {
      trailingControl2 = [(PRQuickActionEditingViewController *)self trailingControl];
      v13 = [(PRQuickActionEditingViewController *)self _controlViewForControl:trailingControl2];
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
    view = [(PRQuickActionEditingViewController *)self view];
    [view addSubview:v14];

    v33 = MEMORY[0x1E696ACD8];
    bottomAnchor = [v14 bottomAnchor];
    view2 = [(PRQuickActionEditingViewController *)self view];
    bottomAnchor2 = [view2 bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v57[0] = v39;
    topAnchor = [v14 topAnchor];
    view3 = [(PRQuickActionEditingViewController *)self view];
    topAnchor2 = [view3 topAnchor];
    v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v57[1] = v35;
    leadingAnchor = [v14 leadingAnchor];
    view4 = [(PRQuickActionEditingViewController *)self view];
    leadingAnchor2 = [view4 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v57[2] = v26;
    trailingAnchor = [v14 trailingAnchor];
    view5 = [(PRQuickActionEditingViewController *)self view];
    trailingAnchor2 = [view5 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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

- (id)_validateControl:(id)control
{
  v22 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  v5 = controlCopy;
  if (controlCopy)
  {
    identity = [controlCopy identity];
    extensionIdentity = [identity extensionIdentity];
    containerBundleIdentifier = [extensionIdentity containerBundleIdentifier];
    v9 = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:containerBundleIdentifier];
    if (([v9 isLocked] & 1) != 0 || objc_msgSend(v9, "isHidden"))
    {
      v10 = PRLogEditing();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v19 = v5;
        v20 = 2114;
        v21 = containerBundleIdentifier;
        _os_log_impl(&dword_1A8AA7000, v10, OS_LOG_TYPE_DEFAULT, "[Quick Action] removing control %{public}@ with containerBundleIdentifier %{public}@ because app was hidden or locked", buf, 0x16u);
      }

      v11 = 0;
      goto LABEL_7;
    }

    v10 = [(CHSWidgetExtensionProvider *)self->_extensionProvider controlDescriptorForControl:identity];
    if (v10)
    {
      v11 = v5;
LABEL_7:

      goto LABEL_9;
    }

    v17 = 0;
    v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:containerBundleIdentifier allowPlaceholder:1 error:&v17];
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

- (void)setLeadingControl:(id)control
{
  controlCopy = control;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leadingControl, control);
    if (controlCopy)
    {
      prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
      leadingButton = [prominentButtonsView leadingButton];
      v7 = [(PRQuickActionEditingViewController *)self _controlViewForControl:controlCopy];
      [leadingButton setGlyphView:v7];

      [(PRQuickActionEditingViewController *)self _updateActiveReticleForPosition:0];
    }

    delegate = [(PRQuickActionEditingViewController *)self delegate];
    [delegate quickActionEditingViewController:self didSetControl:controlCopy forPosition:1];

    [(PRQuickActionEditingViewController *)self _updateButtonsVisibility];
  }
}

- (void)setTrailingControl:(id)control
{
  controlCopy = control;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_trailingControl, control);
    if (controlCopy)
    {
      prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
      trailingButton = [prominentButtonsView trailingButton];
      v7 = [(PRQuickActionEditingViewController *)self _controlViewForControl:controlCopy];
      [trailingButton setGlyphView:v7];

      [(PRQuickActionEditingViewController *)self _updateActiveReticleForPosition:0];
    }

    delegate = [(PRQuickActionEditingViewController *)self delegate];
    [delegate quickActionEditingViewController:self didSetControl:controlCopy forPosition:2];

    [(PRQuickActionEditingViewController *)self _updateButtonsVisibility];
  }
}

- (id)_controlViewForControl:(id)control
{
  if (control)
  {
    controlCopy = control;
    v4 = [PRQuickActionControlView alloc];
    identity = [controlCopy identity];
    type = [controlCopy type];

    v7 = [(PRQuickActionControlView *)v4 initWithControl:identity type:type];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_leadingActionDidFire
{
  prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  leadingButton = [prominentButtonsView leadingButton];
  [leadingButton setSelected:0];

  delegate = [(PRQuickActionEditingViewController *)self delegate];
  [delegate quickActionEditingViewController:self didTapAddForPosition:1];
}

- (void)_trailingActionDidFire
{
  prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  trailingButton = [prominentButtonsView trailingButton];
  [trailingButton setSelected:0];

  delegate = [(PRQuickActionEditingViewController *)self delegate];
  [delegate quickActionEditingViewController:self didTapAddForPosition:2];
}

- (void)_presentWidgetIntentConfigurationForControlWithPosition:(int64_t)position
{
  if ([(PRQuickActionEditingViewController *)self isGalleryPresented]|| !position)
  {
    return;
  }

  if (position == 2)
  {
    trailingControl = [(PRQuickActionEditingViewController *)self trailingControl];
  }

  else
  {
    if (position != 1)
    {
      v7 = 0;
      goto LABEL_10;
    }

    trailingControl = [(PRQuickActionEditingViewController *)self leadingControl];
  }

  v7 = trailingControl;
LABEL_10:
  delegate = [(PRQuickActionEditingViewController *)self delegate];
  [delegate quickActionEditingViewController:self didRequestIntentConfigurationForControl:v7 withPosition:position];
}

- (void)_handleRemoveButtonActionForQuickActionPosition:(int64_t)position
{
  if (position == 2)
  {
    [(PRQuickActionEditingViewController *)self setTrailingControl:0];
  }

  else if (position == 1)
  {
    [(PRQuickActionEditingViewController *)self setLeadingControl:0];
  }
}

- (id)_configureEditingReticleViewWithTapGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = objc_alloc_init(PRQuickActionsEditingReticleView);
  layer = [(PRQuickActionsEditingReticleView *)v4 layer];
  [layer setHitTestsAsOpaque:1];

  [(PRQuickActionsEditingReticleView *)v4 addGestureRecognizer:gestureCopy];

  return v4;
}

- (id)_configureRemoveButtonWithAction:(id)action
{
  actionCopy = action;
  v4 = [PREditingMinusCloseBoxButton alloc];
  v5 = [(PREditingButton *)v4 initWithStyle:7 frame:actionCopy primaryAction:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  configuration = [(PREditingMinusCloseBoxButton *)v5 configuration];
  [configuration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  [(PREditingMinusCloseBoxButton *)v5 setConfiguration:configuration];

  return v5;
}

- (void)_updateActiveReticleForPosition:(int64_t)position
{
  prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  leadingReticle = [prominentButtonsView leadingReticle];
  [leadingReticle setActive:position == 1];

  trailingReticle = [prominentButtonsView trailingReticle];
  [trailingReticle setActive:position == 2];
}

- (void)_updateButtonsVisibility
{
  prominentButtonsView = [(PRQuickActionEditingViewController *)self prominentButtonsView];
  v3 = self->_leadingControl == 0;
  v4 = self->_trailingControl == 0;
  leadingButton = [prominentButtonsView leadingButton];
  [leadingButton setHidden:v3];

  trailingButton = [prominentButtonsView trailingButton];
  [trailingButton setHidden:v4];

  leadingRemoveButton = [prominentButtonsView leadingRemoveButton];
  [leadingRemoveButton setHidden:v3];

  leadingReticle = [prominentButtonsView leadingReticle];
  [leadingReticle setShowsEmptyView:v3];

  trailingRemoveButton = [prominentButtonsView trailingRemoveButton];
  [trailingRemoveButton setHidden:v4];

  trailingReticle = [prominentButtonsView trailingReticle];
  [trailingReticle setShowsEmptyView:v4];
}

- (PRQuickActionEditingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
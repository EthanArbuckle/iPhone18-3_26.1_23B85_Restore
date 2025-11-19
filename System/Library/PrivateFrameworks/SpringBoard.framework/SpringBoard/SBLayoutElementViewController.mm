@interface SBLayoutElementViewController
- (CGRect)referenceFrame;
- (SBLayoutElementViewController)initWithCoder:(id)a3;
- (SBLayoutElementViewController)initWithDisplayIdentity:(id)a3;
- (SBLayoutElementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)_sbWindowScene;
- (id)initialCornerRadiusConfiguration;
- (void)_updateDisplayLayoutElementVisibility;
- (void)_updateDisplayLayoutElementWithBuilder:(id)a3;
- (void)configureWithWorkspaceEntity:(id)a3 forLayoutElement:(id)a4 layoutState:(id)a5 referenceFrame:(CGRect)a6;
- (void)dealloc;
- (void)didEndTransitionToVisible:(BOOL)a3;
- (void)invalidate;
- (void)loadView;
- (void)prepareForReuse;
- (void)setContentWrapperInterfaceOrientation:(int64_t)a3;
- (void)willBeginTransitionToVisible:(BOOL)a3;
@end

@implementation SBLayoutElementViewController

- (SBLayoutElementViewController)initWithDisplayIdentity:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SBLayoutElementViewController;
  v6 = [(SBLayoutElementViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayIdentity, a3);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v7->_referenceFrame.origin = *MEMORY[0x277CBF3A0];
    v7->_referenceFrame.size = v8;
    v7->_supportedContentInterfaceOrientations = 2;
    v7->_contentWrapperInterfaceOrientation = 1;
    v7->_isViewVisible = 0;
    v7->_isTransitioningVisibility = 0;
  }

  return v7;
}

- (SBLayoutElementViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE648];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 raise:v6 format:{@"%s is not a valid initializer. You must call -[%@ initWithDisplayIdentity:].", "-[SBLayoutElementViewController initWithNibName:bundle:]", v8}];

  return [(SBLayoutElementViewController *)self initWithDisplayIdentity:0];
}

- (void)dealloc
{
  [(SBLayoutElementViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBLayoutElementViewController;
  [(SBLayoutElementViewController *)&v3 dealloc];
}

- (SBLayoutElementViewController)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBLayoutElementViewController;
  v9 = [(SBLayoutElementViewController *)&v11 initWithCoder:v6];

  return v9;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v24 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [(SBLayoutElementViewController *)self setView:v24];
  v8 = [objc_alloc(MEMORY[0x277CF0D78]) initWithFrame:{v4, v5, v6, v7}];
  contentWrapperView = self->_contentWrapperView;
  self->_contentWrapperView = v8;

  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setContainerOrientation:1];
  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setContentOrientation:[(SBLayoutElementViewController *)self contentWrapperInterfaceOrientation]];
  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v24 addSubview:self->_contentWrapperView];
  v10 = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView leftAnchor];
  v11 = [v24 leftAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView rightAnchor];
  v14 = [v24 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView topAnchor];
  v17 = [v24 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView bottomAnchor];
  v20 = [v24 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v22;

  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView addContentView:self->_contentContainerView];
}

- (id)_sbWindowScene
{
  v3 = [SBApp windowSceneManager];
  v4 = [v3 windowSceneForDisplayIdentity:self->_displayIdentity];

  return v4;
}

- (void)setContentWrapperInterfaceOrientation:(int64_t)a3
{
  if (self->_contentWrapperInterfaceOrientation != a3)
  {
    self->_contentWrapperInterfaceOrientation = a3;
    if ([(SBLayoutElementViewController *)self isViewLoaded])
    {
      [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setContentOrientation:a3];
      v5 = [(SBLayoutElementViewController *)self view];
      [v5 setNeedsLayout];
    }
  }
}

- (void)invalidate
{
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (displayLayoutElementAssertion)
  {
    [(BSInvalidatable *)displayLayoutElementAssertion invalidate];
    displayLayoutElement = self->_displayLayoutElement;
    self->_displayLayoutElement = 0;
  }

  v5 = self->_displayLayoutElement;
  self->_displayLayoutElement = 0;

  layoutElement = self->_layoutElement;
  self->_layoutElement = 0;

  layoutState = self->_layoutState;
  self->_layoutState = 0;
}

- (void)configureWithWorkspaceEntity:(id)a3 forLayoutElement:(id)a4 layoutState:(id)a5 referenceFrame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (self->_layoutElement != v14)
  {
    objc_storeStrong(&self->_layoutElement, a4);
  }

  if (self->_layoutState != v15)
  {
    objc_storeStrong(&self->_layoutState, a5);
  }

  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  if (!CGRectEqualToRect(self->_referenceFrame, v25))
  {
    self->_referenceFrame.origin.x = x;
    self->_referenceFrame.origin.y = y;
    self->_referenceFrame.size.width = width;
    self->_referenceFrame.size.height = height;
  }

  if (!self->_displayLayoutElement)
  {
    v16 = [(SBLayoutElementViewController *)self _newDisplayLayoutElementForEntity:v13];
    displayLayoutElement = self->_displayLayoutElement;
    self->_displayLayoutElement = v16;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__SBLayoutElementViewController_configureWithWorkspaceEntity_forLayoutElement_layoutState_referenceFrame___block_invoke;
  v19[3] = &unk_2783B7FD0;
  v20 = v14;
  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  v18 = v14;
  [(SBLayoutElementViewController *)self _updateDisplayLayoutElementWithBuilder:v19];
}

void __106__SBLayoutElementViewController_configureWithWorkspaceEntity_forLayoutElement_layoutState_referenceFrame___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLayoutRole:{SBSDisplayLayoutRoleForLayoutRole(objc_msgSend(v3, "layoutRole"))}];
  [v4 setLevel:1];
  [v4 setReferenceFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)prepareForReuse
{
  self->_isViewVisible = 0;
  self->_isTransitioningVisibility = 0;
  displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
  if (displayLayoutElementAssertion)
  {
    [(BSInvalidatable *)displayLayoutElementAssertion invalidate];
    displayLayoutElement = self->_displayLayoutElement;
    self->_displayLayoutElement = 0;
  }

  v5 = self->_displayLayoutElement;
  self->_displayLayoutElement = 0;

  layoutElement = self->_layoutElement;
  self->_layoutElement = 0;

  layoutState = self->_layoutState;
  self->_layoutState = 0;

  [(SBLayoutElementViewController *)self setContentWrapperInterfaceOrientation:1];
}

- (void)willBeginTransitionToVisible:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = SBLogAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(SBLayoutElementViewController *)self layoutElement];
    v9 = [v8 uniqueIdentifier];
    v10 = NSStringFromBOOL();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@-%{public}@ will begin transition to visible %{public}@", &v11, 0x20u);
  }

  self->_isViewVisible = a3;
  self->_isTransitioningVisibility = 1;
  [(SBLayoutElementViewController *)self _updateDisplayLayoutElementVisibility];
}

- (void)didEndTransitionToVisible:(BOOL)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = SBLogAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(SBLayoutElementViewController *)self layoutElement];
    v9 = [v8 uniqueIdentifier];
    v10 = NSStringFromBOOL();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@-%{public}@ did end transition to visible %{public}@", &v11, 0x20u);
  }

  self->_isViewVisible = a3;
  self->_isTransitioningVisibility = 0;
  [(SBLayoutElementViewController *)self _updateDisplayLayoutElementVisibility];
}

- (void)_updateDisplayLayoutElementVisibility
{
  if (self->_isTransitioningVisibility)
  {
    if (!self->_isViewVisible)
    {
LABEL_9:
      [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
      displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
      self->_displayLayoutElementAssertion = 0;
      goto LABEL_10;
    }
  }

  else if (!self->_isViewVisible || ![(SBLayoutElementViewController *)self _shouldDisplayLayoutElementBecomeActive])
  {
    goto LABEL_9;
  }

  if (!self->_displayLayoutElement || self->_displayLayoutElementAssertion)
  {
    return;
  }

  v7 = [(SBLayoutElementViewController *)self _sbWindowScene];
  v4 = [v7 displayLayoutPublisher];
  v5 = [v4 addElement:self->_displayLayoutElement];
  v6 = self->_displayLayoutElementAssertion;
  self->_displayLayoutElementAssertion = v5;

  displayLayoutElementAssertion = v7;
LABEL_10:
}

- (void)_updateDisplayLayoutElementWithBuilder:(id)a3
{
  if (self->_displayLayoutElementAssertion)
  {
    v4 = a3;
    v5 = [(SBLayoutElementViewController *)self _sbWindowScene];
    v13 = [v5 displayLayoutPublisher];

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v13 transitionAssertionWithReason:v7];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    v4[2](v4, self->_displayLayoutElement);
    v10 = [v13 addElement:self->_displayLayoutElement];
    v11 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v10;

    [v8 invalidate];
  }

  else
  {
    v12 = *(a3 + 2);
    v13 = a3;
    v12();
  }
}

- (id)initialCornerRadiusConfiguration
{
  v2 = [objc_alloc(MEMORY[0x277CF0BE8]) initWithCornerRadius:0.0];

  return v2;
}

- (CGRect)referenceFrame
{
  x = self->_referenceFrame.origin.x;
  y = self->_referenceFrame.origin.y;
  width = self->_referenceFrame.size.width;
  height = self->_referenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
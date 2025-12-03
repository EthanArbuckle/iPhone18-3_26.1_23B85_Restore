@interface SBLayoutElementViewController
- (CGRect)referenceFrame;
- (SBLayoutElementViewController)initWithCoder:(id)coder;
- (SBLayoutElementViewController)initWithDisplayIdentity:(id)identity;
- (SBLayoutElementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_sbWindowScene;
- (id)initialCornerRadiusConfiguration;
- (void)_updateDisplayLayoutElementVisibility;
- (void)_updateDisplayLayoutElementWithBuilder:(id)builder;
- (void)configureWithWorkspaceEntity:(id)entity forLayoutElement:(id)element layoutState:(id)state referenceFrame:(CGRect)frame;
- (void)dealloc;
- (void)didEndTransitionToVisible:(BOOL)visible;
- (void)invalidate;
- (void)loadView;
- (void)prepareForReuse;
- (void)setContentWrapperInterfaceOrientation:(int64_t)orientation;
- (void)willBeginTransitionToVisible:(BOOL)visible;
@end

@implementation SBLayoutElementViewController

- (SBLayoutElementViewController)initWithDisplayIdentity:(id)identity
{
  identityCopy = identity;
  v10.receiver = self;
  v10.super_class = SBLayoutElementViewController;
  v6 = [(SBLayoutElementViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayIdentity, identity);
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

- (SBLayoutElementViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (SBLayoutElementViewController)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  coderCopy = coder;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBLayoutElementViewController;
  v9 = [(SBLayoutElementViewController *)&v11 initWithCoder:coderCopy];

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
  leftAnchor = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView leftAnchor];
  leftAnchor2 = [v24 leftAnchor];
  v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v12 setActive:1];

  rightAnchor = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView rightAnchor];
  rightAnchor2 = [v24 rightAnchor];
  v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v15 setActive:1];

  topAnchor = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView topAnchor];
  topAnchor2 = [v24 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  bottomAnchor = [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView bottomAnchor];
  bottomAnchor2 = [v24 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v21 setActive:1];

  v22 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v22;

  [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView addContentView:self->_contentContainerView];
}

- (id)_sbWindowScene
{
  windowSceneManager = [SBApp windowSceneManager];
  v4 = [windowSceneManager windowSceneForDisplayIdentity:self->_displayIdentity];

  return v4;
}

- (void)setContentWrapperInterfaceOrientation:(int64_t)orientation
{
  if (self->_contentWrapperInterfaceOrientation != orientation)
  {
    self->_contentWrapperInterfaceOrientation = orientation;
    if ([(SBLayoutElementViewController *)self isViewLoaded])
    {
      [(BSUIOrientationTransformWrapperView *)self->_contentWrapperView setContentOrientation:orientation];
      view = [(SBLayoutElementViewController *)self view];
      [view setNeedsLayout];
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

- (void)configureWithWorkspaceEntity:(id)entity forLayoutElement:(id)element layoutState:(id)state referenceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  entityCopy = entity;
  elementCopy = element;
  stateCopy = state;
  if (self->_layoutElement != elementCopy)
  {
    objc_storeStrong(&self->_layoutElement, element);
  }

  if (self->_layoutState != stateCopy)
  {
    objc_storeStrong(&self->_layoutState, state);
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
    v16 = [(SBLayoutElementViewController *)self _newDisplayLayoutElementForEntity:entityCopy];
    displayLayoutElement = self->_displayLayoutElement;
    self->_displayLayoutElement = v16;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __106__SBLayoutElementViewController_configureWithWorkspaceEntity_forLayoutElement_layoutState_referenceFrame___block_invoke;
  v19[3] = &unk_2783B7FD0;
  v20 = elementCopy;
  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  v18 = elementCopy;
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

- (void)willBeginTransitionToVisible:(BOOL)visible
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = SBLogAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    layoutElement = [(SBLayoutElementViewController *)self layoutElement];
    uniqueIdentifier = [layoutElement uniqueIdentifier];
    v10 = NSStringFromBOOL();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = uniqueIdentifier;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@-%{public}@ will begin transition to visible %{public}@", &v11, 0x20u);
  }

  self->_isViewVisible = visible;
  self->_isTransitioningVisibility = 1;
  [(SBLayoutElementViewController *)self _updateDisplayLayoutElementVisibility];
}

- (void)didEndTransitionToVisible:(BOOL)visible
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = SBLogAppSwitcher();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    layoutElement = [(SBLayoutElementViewController *)self layoutElement];
    uniqueIdentifier = [layoutElement uniqueIdentifier];
    v10 = NSStringFromBOOL();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = uniqueIdentifier;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@-%{public}@ did end transition to visible %{public}@", &v11, 0x20u);
  }

  self->_isViewVisible = visible;
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

  _sbWindowScene = [(SBLayoutElementViewController *)self _sbWindowScene];
  displayLayoutPublisher = [_sbWindowScene displayLayoutPublisher];
  v5 = [displayLayoutPublisher addElement:self->_displayLayoutElement];
  v6 = self->_displayLayoutElementAssertion;
  self->_displayLayoutElementAssertion = v5;

  displayLayoutElementAssertion = _sbWindowScene;
LABEL_10:
}

- (void)_updateDisplayLayoutElementWithBuilder:(id)builder
{
  if (self->_displayLayoutElementAssertion)
  {
    builderCopy = builder;
    _sbWindowScene = [(SBLayoutElementViewController *)self _sbWindowScene];
    builderCopy2 = [_sbWindowScene displayLayoutPublisher];

    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [builderCopy2 transitionAssertionWithReason:v7];

    [(BSInvalidatable *)self->_displayLayoutElementAssertion invalidate];
    displayLayoutElementAssertion = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = 0;

    builderCopy[2](builderCopy, self->_displayLayoutElement);
    v10 = [builderCopy2 addElement:self->_displayLayoutElement];
    v11 = self->_displayLayoutElementAssertion;
    self->_displayLayoutElementAssertion = v10;

    [v8 invalidate];
  }

  else
  {
    v12 = *(builder + 2);
    builderCopy2 = builder;
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
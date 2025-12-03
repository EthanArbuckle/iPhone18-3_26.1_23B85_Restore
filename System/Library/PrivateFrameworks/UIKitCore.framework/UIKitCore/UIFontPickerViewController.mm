@interface UIFontPickerViewController
- (BOOL)_isContainedInRemoteSheet;
- (BOOL)_parentIsInPopoverPresentation;
- (BOOL)_shouldShowNavigationBarForCurrentParentVC;
- (UIFontDescriptor)selectedFontDescriptor;
- (UIFontPickerViewController)init;
- (UIFontPickerViewController)initWithCoder:(id)coder;
- (UIFontPickerViewController)initWithConfiguration:(UIFontPickerViewControllerConfiguration *)configuration;
- (id)_initWithConfiguration:(id)configuration;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_commonFontPickerViewControllerInit;
- (void)_pickerDidCancel;
- (void)_pickerDidSelectFont:(id)font;
- (void)_setSelectedFontDescriptors:(id)descriptors;
- (void)_viewControllerPresentationDidInitiate;
- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)setSelectedFontDescriptor:(UIFontDescriptor *)selectedFontDescriptor;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation UIFontPickerViewController

- (UIFontPickerViewController)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"UIFontPickerViewControllerConfiguration"];
  v5 = [(UIFontPickerViewController *)self initWithConfiguration:v4];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIFontPickerViewController;
  coderCopy = coder;
  [(UIViewController *)&v6 encodeWithCoder:coderCopy];
  v5 = [(UIFontPickerViewController *)self configuration:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"UIFontPickerViewControllerConfiguration"];
}

- (UIFontPickerViewController)initWithConfiguration:(UIFontPickerViewControllerConfiguration *)configuration
{
  v4 = configuration;
  v9.receiver = self;
  v9.super_class = UIFontPickerViewController;
  v5 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [(UIFontPickerViewControllerConfiguration *)v4 copy];
    v7 = v5->_configuration;
    v5->_configuration = v6;

    [(UIFontPickerViewController *)v5 _commonFontPickerViewControllerInit];
  }

  return v5;
}

- (id)_initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = UIFontPickerViewController;
  v5 = [(UIViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    [(UIFontPickerViewController *)v5 _commonFontPickerViewControllerInit];
  }

  return v5;
}

- (void)_commonFontPickerViewControllerInit
{
  [(UIViewController *)self setPreferredContentSize:480.0, 640.0];
  [(UIViewController *)self setModalPresentationStyle:2];
  v3 = objc_alloc_init(_UIFontPickerSceneHostingImpl);
  hostingImpl = self->_hostingImpl;
  self->_hostingImpl = v3;

  [(_UIFontPickerViewHostingImpl *)self->_hostingImpl setDelegateFontPickerViewController:self];
  v5 = self->_hostingImpl;

  [(_UIFontPickerViewHostingImpl *)v5 setupRemoteHosting];
}

- (UIFontPickerViewController)init
{
  v3 = objc_opt_new();
  v4 = [(UIFontPickerViewController *)self initWithConfiguration:v3];

  return v4;
}

- (void)setSelectedFontDescriptor:(UIFontDescriptor *)selectedFontDescriptor
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = selectedFontDescriptor;
  selectedFontDescriptor = [(UIFontPickerViewController *)self selectedFontDescriptor];

  if (selectedFontDescriptor != v4)
  {
    [(UIFontPickerViewController *)self willChangeValueForKey:@"selectedFontDescriptor"];
    if (v4)
    {
      v7[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      [(UIFontPickerViewController *)self _setSelectedFontDescriptors:v6];
    }

    else
    {
      [(UIFontPickerViewController *)self _setSelectedFontDescriptors:0];
    }

    [(UIFontPickerViewController *)self didChangeValueForKey:@"selectedFontDescriptor"];
  }
}

- (UIFontDescriptor)selectedFontDescriptor
{
  selectedFontDescriptors = self->__selectedFontDescriptors;
  if (selectedFontDescriptors)
  {
    selectedFontDescriptors = [selectedFontDescriptors count];
    if (selectedFontDescriptors)
    {
      selectedFontDescriptors = [(NSArray *)self->__selectedFontDescriptors firstObject];
    }
  }

  return selectedFontDescriptors;
}

- (void)_setSelectedFontDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  if (self->__selectedFontDescriptors != descriptorsCopy)
  {
    v6 = descriptorsCopy;
    [(UIFontPickerViewController *)self willChangeValueForKey:@"_selectedFontDescriptors"];
    [(_UIFontPickerViewHostingImpl *)self->_hostingImpl setRemoteSelectedFontDescriptors:v6 scrollToVisible:0];
    objc_storeStrong(&self->__selectedFontDescriptors, descriptors);
    [(UIFontPickerViewController *)self didChangeValueForKey:@"_selectedFontDescriptors"];
    descriptorsCopy = v6;
  }
}

- (BOOL)_isContainedInRemoteSheet
{
  parentViewController = [(UIViewController *)self parentViewController];

  if (!parentViewController)
  {
    return 0;
  }

  parentViewController2 = [(UIViewController *)self parentViewController];
  v5 = [parentViewController2 conformsToProtocol:&unk_1EFFF52B8];

  return v5;
}

- (BOOL)_parentIsInPopoverPresentation
{
  parentViewController = [(UIViewController *)self parentViewController];

  if (!parentViewController)
  {
    return 0;
  }

  parentViewController2 = [(UIViewController *)self parentViewController];
  _isInPopoverPresentation = [parentViewController2 _isInPopoverPresentation];

  return _isInPopoverPresentation;
}

- (BOOL)_shouldShowNavigationBarForCurrentParentVC
{
  _isContainedInRemoteSheet = [(UIFontPickerViewController *)self _isContainedInRemoteSheet];
  if (_isContainedInRemoteSheet)
  {
    LOBYTE(_isContainedInRemoteSheet) = ![(UIFontPickerViewController *)self _parentIsInPopoverPresentation];
  }

  return _isContainedInRemoteSheet;
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = UIFontPickerViewController;
  [(UIViewController *)&v8 viewWillAppear:appear];
  hostingImpl = self->_hostingImpl;
  if (self->_presentingViewController)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(UIFontPickerViewController *)self _shouldShowNavigationBarForCurrentParentVC]^ 1;
  }

  [(_UIFontPickerViewHostingImpl *)hostingImpl setHideNavigationBar:v5];
  v6 = self->_hostingImpl;
  sheetPresentationController = [(UIViewController *)self sheetPresentationController];
  -[_UIFontPickerViewHostingImpl setShowsGrabber:](v6, "setShowsGrabber:", [sheetPresentationController prefersGrabberVisible]);
}

- (void)_viewControllerPresentationDidInitiate
{
  self->_presentingViewController = 1;
  v2.receiver = self;
  v2.super_class = UIFontPickerViewController;
  [(UIViewController *)&v2 _viewControllerPresentationDidInitiate];
}

- (void)dismissViewControllerWithTransition:(int)transition completion:(id)completion
{
  self->_presentingViewController = 0;
  v4.receiver = self;
  v4.super_class = UIFontPickerViewController;
  [(UIViewController *)&v4 dismissViewControllerWithTransition:*&transition completion:completion];
}

- (void)_pickerDidSelectFont:(id)font
{
  fontCopy = font;
  v4 = [[_UIFontPickerFontInfo alloc] initWithFontDescriptor:fontCopy];
  _UIFontPickerPersistToRecentsForSuite(v4, 0);
  delegate = [(UIFontPickerViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (self->_presentingViewController && (v6 & 1) == 0)
  {
    [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(UIFontPickerViewController *)self setSelectedFontDescriptor:fontCopy];
  selectedFontDescriptor = [(UIFontPickerViewController *)self selectedFontDescriptor];
  postscriptName = [selectedFontDescriptor postscriptName];
  v9 = [selectedFontDescriptor objectForKey:*off_1E70ECC90];

  v14 = postscriptName;
  v15 = v9;
  v10 = v9;
  v11 = postscriptName;
  AnalyticsSendEventLazy();

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fontPickerViewControllerDidPickFont:self];
  }
}

- (void)_pickerDidCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  presentingViewController = self->_presentingViewController;
  if (presentingViewController && (v4 & 1) == 0)
  {
    [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
    presentingViewController = self->_presentingViewController;
  }

  if (((presentingViewController | v4) & 1) == 0 && [(UIFontPickerViewController *)self _shouldShowNavigationBarForCurrentParentVC])
  {
    [(UIViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  if (v4)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 fontPickerViewControllerDidCancel:self];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(UIFontPickerViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  succinctDescription = [(UIFontPickerViewControllerConfiguration *)self->_configuration succinctDescription];
  [v3 appendString:succinctDescription withName:@"configuration"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIFontPickerViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(UIFontPickerViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = MEMORY[0x1E698E680];
  prefixCopy = prefix;
  v6 = [v4 builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefixCopy];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__UIFontPickerViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v7 = v6;
  v12 = v7;
  selfCopy = self;
  v8 = [v7 modifyBody:v11];
  v9 = v7;

  return v7;
}

void __68__UIFontPickerViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__UIFontPickerViewController_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __68__UIFontPickerViewController_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 1000) withName:@"configuration"];
  v8 = [*(a1 + 40) selectedFontDescriptor];
  if (v8)
  {
    v3 = *(a1 + 32);
    v4 = [v8 postscriptName];
    [v3 appendString:v4 withName:@"selectedFont"];
  }

  v5 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1016));
  v7 = [v5 appendObject:WeakRetained withName:@"delegate"];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
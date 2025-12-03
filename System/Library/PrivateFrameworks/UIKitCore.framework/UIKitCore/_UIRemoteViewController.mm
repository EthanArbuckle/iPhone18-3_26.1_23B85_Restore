@interface _UIRemoteViewController
+ (id)_requestViewController:(void *)controller traitCollection:(void *)collection fromServiceWithBundleIdentifier:(void *)identifier service:(void *)service connectionHandler:;
+ (id)requestViewController:(id)controller fromServiceWithBundleIdentifier:(id)identifier connectionHandler:(id)handler;
+ (id)requestViewControllerWithService:(id)service connectionHandler:(id)handler;
- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken;
- (NSString)debugDescription;
- (_UIRemoteViewControllerAppProtectionMetrics)_appProtectionMetrics;
- (id)_initWithServiceBundleIdentifier:(id)identifier service:(id)service;
- (id)_legacyImpl;
- (id)_remoteKeyboardRemoteView;
- (id)_sizeTrackingView;
- (id)serviceViewControllerProxyWithErrorHandler:(id)handler;
- (id)succinctDescription;
- (unint64_t)supportedInterfaceOrientations;
- (unsigned)_serviceAccessibilityServerPort;
- (void)__willChangeToIdiom:(int64_t)idiom onScreen:(id)screen;
- (void)_didResignContentViewControllerOfPopover:(id)popover;
- (void)_didRotateFromInterfaceOrientation:(int64_t)orientation forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)_initializeAccessibilityPortInformation;
- (void)_setContentOverlayInsets:(UIEdgeInsets)insets andLeftMargin:(double)margin rightMargin:(double)rightMargin;
- (void)_setSecurityModeForViewsLayer;
- (void)_traitCollectionDidChange:(id)change;
- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)_willBecomeContentViewControllerOfPopover:(id)popover;
- (void)_willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self;
- (void)appendDescriptionToStream:(id)stream;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewServiceDidTerminateWithError:(id)error;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation _UIRemoteViewController

+ (id)requestViewController:(id)controller fromServiceWithBundleIdentifier:(id)identifier connectionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  controllerCopy = controller;
  mainScreen = [objc_opt_self() mainScreen];
  traitCollection = [mainScreen traitCollection];

  v13 = [(_UIRemoteViewController *)self _requestViewController:controllerCopy traitCollection:traitCollection fromServiceWithBundleIdentifier:identifierCopy service:0 connectionHandler:handlerCopy];

  return v13;
}

+ (id)_requestViewController:(void *)controller traitCollection:(void *)collection fromServiceWithBundleIdentifier:(void *)identifier service:(void *)service connectionHandler:
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a2;
  collectionCopy = collection;
  identifierCopy = identifier;
  serviceCopy = service;
  controllerCopy = controller;
  v15 = objc_opt_self();
  if (collectionCopy)
  {
    identifier = collectionCopy;
  }

  else
  {
    identifier = [identifierCopy identifier];
  }

  v17 = identifier;
  v18 = [[v15 alloc] _initWithServiceBundleIdentifier:identifier service:identifierCopy];
  v19 = v18;
  if (v18)
  {
    v18 = objc_opt_class();
  }

  v20 = [[v18 alloc] _initWithViewServiceBundleIdentifier:v17 owningRemoteViewController:v19];
  objc_storeStrong(v19 + 124, v20);
  v21 = *(__UILogGetCategoryCachedImpl("ViewServices", &_requestViewController_traitCollection_fromServiceWithBundleIdentifier_service_connectionHandler____s_category) + 8);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v39 = controllerCopy;
    v40 = serviceCopy;
    v22 = MEMORY[0x1E696AEC0];
    v23 = v19;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [v22 stringWithFormat:@"<%@: %p>", v25, v23];

    v27 = v26;
    v41 = v10;
    if (!v10)
    {
      v10 = @"(unspecified client class)";
    }

    v28 = v20;
    if (v28)
    {
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      NSStringFromClass(v30);
      v38 = v17;
      v31 = collectionCopy;
      v32 = identifierCopy;
      v34 = v33 = v10;
      v35 = [v29 stringWithFormat:@"<%@: %p>", v34, v28];

      v10 = v33;
      identifierCopy = v32;
      collectionCopy = v31;
      v17 = v38;
    }

    else
    {
      v35 = @"(nil)";
    }

    *buf = 138544130;
    v43 = v27;
    v44 = 2114;
    v45 = v10;
    v46 = 2114;
    v47 = v17;
    v48 = 2114;
    v49 = v35;
    _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting remote view controller %{public}@ from service %{public}@ using %{public}@", buf, 0x2Au);

    serviceCopy = v40;
    v10 = v41;
    controllerCopy = v39;
  }

  v36 = [objc_opt_class() _requestViewController:v10 traitCollection:controllerCopy fromServiceWithBundleIdentifier:collectionCopy service:identifierCopy connectionHandler:serviceCopy newRemoteViewController:v19 remoteViewControllerImpl:v20];

  return v36;
}

+ (id)requestViewControllerWithService:(id)service connectionHandler:(id)handler
{
  handlerCopy = handler;
  serviceCopy = service;
  mainScreen = [objc_opt_self() mainScreen];
  traitCollection = [mainScreen traitCollection];

  v10 = [(_UIRemoteViewController *)self _requestViewController:traitCollection traitCollection:0 fromServiceWithBundleIdentifier:serviceCopy service:handlerCopy connectionHandler:?];

  return v10;
}

- (id)_initWithServiceBundleIdentifier:(id)identifier service:(id)service
{
  identifierCopy = identifier;
  serviceCopy = service;
  v13.receiver = self;
  v13.super_class = _UIRemoteViewController;
  v9 = [(UIViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceBundleIdentifier, identifier);
    extensionPointIdentifier = [serviceCopy extensionPointIdentifier];
    *&v10->_flags = *&v10->_flags & 0xFE | _UIRemoteViewControllerSceneShimEnabledForBundleIdentifierAndExtensionPointIdentifier(identifierCopy, extensionPointIdentifier);
  }

  return v10;
}

- (id)serviceViewControllerProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  serviceViewControllerProxy = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v6 = [serviceViewControllerProxy remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v7 = errorCopy;
    v5 = [errorCopy code] == 1;
    errorCopy = v7;
    if (!v5)
    {
      v6 = NSStringFromSelector(a2);
      NSLog(&stru_1EFBA79B0.isa, v6, v7);

      errorCopy = v7;
    }
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  if (*&self->_flags)
  {
    v5 = @"scene hosting";
  }

  else
  {
    v5 = @"legacy";
  }

  v6 = v5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53___UIRemoteViewController_appendDescriptionToStream___block_invoke;
  v14[3] = &unk_1E70F6228;
  v7 = streamCopy;
  v15 = v7;
  selfCopy = self;
  v8 = v6;
  v17 = v8;
  [v7 appendProem:self block:v14];
  style = [v7 style];
  verbosity = [style verbosity];

  if (verbosity != 2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53___UIRemoteViewController_appendDescriptionToStream___block_invoke_2;
    v11[3] = &unk_1E70F35B8;
    v12 = v7;
    selfCopy2 = self;
    [v12 appendBodySectionWithName:0 block:v11];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken
{
  result = self->_impl;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result serviceAuditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (_UIRemoteViewControllerAppProtectionMetrics)_appProtectionMetrics
{
  if ([(_UIRemoteViewController *)self _allowsShielding])
  {
    _extensionBundleIdentifierForAppProtection = [(_UIRemoteViewController *)self _extensionBundleIdentifierForAppProtection];
    _remoteViewService = [(_UIRemoteViewControllerImpl *)self->_impl _remoteViewService];
    plugin = [_remoteViewService plugin];
    v6 = [_UIRemoteViewControllerAppProtectionMetrics metricsForExtensionBundleIdentifier:_extensionBundleIdentifierForAppProtection extensionPlugin:plugin];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)supportedInterfaceOrientations
{
  result = [(_UIRemoteViewControllerImpl *)self->_impl supportedInterfaceOrientations];
  if (!result)
  {
    v4.receiver = self;
    v4.super_class = _UIRemoteViewController;
    return [(UIViewController *)&v4 supportedInterfaceOrientations];
  }

  return result;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = _UIRemoteViewController;
  [(UIViewController *)&v3 loadView];
  [(_UIRemoteViewControllerImpl *)self->_impl loadView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewWillAppear:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewWillAppear:appearCopy];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewIsAppearing:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewIsAppearing:appearingCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewDidAppear:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewWillDisappear:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewDidDisappear:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewDidDisappear:disappearCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = _UIRemoteViewController;
  coordinatorCopy = coordinator;
  [(UIViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(_UIRemoteViewControllerImpl *)self->_impl viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height, v8.receiver, v8.super_class];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = _UIRemoteViewController;
  coordinatorCopy = coordinator;
  collectionCopy = collection;
  [(UIViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  [(_UIRemoteViewControllerImpl *)self->_impl willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy, v8.receiver, v8.super_class];
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  controllerCopy = controller;
  [(UIViewController *)&v5 didMoveToParentViewController:controllerCopy];
  [(_UIRemoteViewControllerImpl *)self->_impl didMoveToParentViewController:controllerCopy, v5.receiver, v5.super_class];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = _UIRemoteViewController;
  windowCopy = window;
  [(UIViewController *)&v7 viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy];
  [(_UIRemoteViewControllerImpl *)self->_impl viewDidMoveToWindow:windowCopy shouldAppearOrDisappear:disappearCopy, v7.receiver, v7.super_class];
}

- (void)_setSecurityModeForViewsLayer
{
  v3.receiver = self;
  v3.super_class = _UIRemoteViewController;
  [(UIViewController *)&v3 _setSecurityModeForViewsLayer];
  [(_UIRemoteViewControllerImpl *)self->_impl _setSecurityModeForViewsLayer];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)insets andLeftMargin:(double)margin rightMargin:(double)rightMargin
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v12.receiver = self;
  v12.super_class = _UIRemoteViewController;
  [UIViewController _setContentOverlayInsets:sel__setContentOverlayInsets_andLeftMargin_rightMargin_ andLeftMargin:? rightMargin:?];
  [(_UIRemoteViewControllerImpl *)self->_impl _setContentOverlayInsets:top andLeftMargin:left rightMargin:bottom, right, margin, rightMargin];
}

- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  selfCopy = self;
  controllersCopy = controllers;
  v11.receiver = self;
  v11.super_class = _UIRemoteViewController;
  [UIViewController _willAnimateRotationToInterfaceOrientation:sel__willAnimateRotationToInterfaceOrientation_duration_forwardToChildControllers_skipSelf_ duration:? forwardToChildControllers:? skipSelf:?];
  [(_UIRemoteViewControllerImpl *)self->_impl _willAnimateRotationToInterfaceOrientation:orientation duration:controllersCopy forwardToChildControllers:selfCopy skipSelf:duration];
}

- (void)_willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  selfCopy = self;
  controllersCopy = controllers;
  v11.receiver = self;
  v11.super_class = _UIRemoteViewController;
  [UIViewController _willRotateToInterfaceOrientation:sel__willRotateToInterfaceOrientation_duration_forwardToChildControllers_skipSelf_ duration:? forwardToChildControllers:? skipSelf:?];
  [(_UIRemoteViewControllerImpl *)self->_impl _willRotateToInterfaceOrientation:orientation duration:controllersCopy forwardToChildControllers:selfCopy skipSelf:duration];
}

- (void)_didRotateFromInterfaceOrientation:(int64_t)orientation forwardToChildControllers:(BOOL)controllers skipSelf:(BOOL)self
{
  selfCopy = self;
  controllersCopy = controllers;
  v9.receiver = self;
  v9.super_class = _UIRemoteViewController;
  [UIViewController _didRotateFromInterfaceOrientation:sel__didRotateFromInterfaceOrientation_forwardToChildControllers_skipSelf_ forwardToChildControllers:? skipSelf:?];
  [(_UIRemoteViewControllerImpl *)self->_impl _didRotateFromInterfaceOrientation:orientation forwardToChildControllers:controllersCopy skipSelf:selfCopy];
}

- (void)__willChangeToIdiom:(int64_t)idiom onScreen:(id)screen
{
  v7.receiver = self;
  v7.super_class = _UIRemoteViewController;
  screenCopy = screen;
  [(UIViewController *)&v7 __willChangeToIdiom:idiom onScreen:screenCopy];
  [(_UIRemoteViewControllerImpl *)self->_impl __willChangeToIdiom:idiom onScreen:screenCopy, v7.receiver, v7.super_class];
}

- (void)_traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  changeCopy = change;
  [(UIViewController *)&v5 _traitCollectionDidChange:changeCopy];
  [(_UIRemoteViewControllerImpl *)self->_impl _traitCollectionDidChange:changeCopy, v5.receiver, v5.super_class];
}

- (void)_willBecomeContentViewControllerOfPopover:(id)popover
{
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  popoverCopy = popover;
  [(UIViewController *)&v5 _willBecomeContentViewControllerOfPopover:popoverCopy];
  [(_UIRemoteViewControllerImpl *)self->_impl _willBecomeContentViewControllerOfPopover:popoverCopy, v5.receiver, v5.super_class];
}

- (void)_didResignContentViewControllerOfPopover:(id)popover
{
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  popoverCopy = popover;
  [(UIViewController *)&v5 _didResignContentViewControllerOfPopover:popoverCopy];
  [(_UIRemoteViewControllerImpl *)self->_impl _didResignContentViewControllerOfPopover:popoverCopy, v5.receiver, v5.super_class];
}

- (id)_legacyImpl
{
  if (!self)
  {
LABEL_4:

    return self;
  }

  if ((self[125] & 1) == 0)
  {
    self = self[124];
    v1 = vars8;
    goto LABEL_4;
  }

  self = 0;

  return self;
}

- (unsigned)_serviceAccessibilityServerPort
{
  _legacyImpl = [(_UIRemoteViewController *)&self->super.super.super.isa _legacyImpl];
  _serviceAccessibilityServerPort = [_legacyImpl _serviceAccessibilityServerPort];

  return _serviceAccessibilityServerPort;
}

- (void)_initializeAccessibilityPortInformation
{
  _legacyImpl = [(_UIRemoteViewController *)&self->super.super.super.isa _legacyImpl];
  [_legacyImpl _initializeAccessibilityPortInformation];
}

- (id)_sizeTrackingView
{
  _legacyImpl = [(_UIRemoteViewController *)&self->super.super.super.isa _legacyImpl];
  _sizeTrackingView = [_legacyImpl _sizeTrackingView];

  return _sizeTrackingView;
}

- (id)_remoteKeyboardRemoteView
{
  _legacyImpl = [(_UIRemoteViewController *)&self->super.super.super.isa _legacyImpl];
  _remoteKeyboardRemoteView = [_legacyImpl _remoteKeyboardRemoteView];

  return _remoteKeyboardRemoteView;
}

@end
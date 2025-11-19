@interface _UIRemoteViewController
+ (id)_requestViewController:(void *)a3 traitCollection:(void *)a4 fromServiceWithBundleIdentifier:(void *)a5 service:(void *)a6 connectionHandler:;
+ (id)requestViewController:(id)a3 fromServiceWithBundleIdentifier:(id)a4 connectionHandler:(id)a5;
+ (id)requestViewControllerWithService:(id)a3 connectionHandler:(id)a4;
- ($115C4C562B26FF47E01F9F4EA65B5887)serviceAuditToken;
- (NSString)debugDescription;
- (_UIRemoteViewControllerAppProtectionMetrics)_appProtectionMetrics;
- (id)_initWithServiceBundleIdentifier:(id)a3 service:(id)a4;
- (id)_legacyImpl;
- (id)_remoteKeyboardRemoteView;
- (id)_sizeTrackingView;
- (id)serviceViewControllerProxyWithErrorHandler:(id)a3;
- (id)succinctDescription;
- (unint64_t)supportedInterfaceOrientations;
- (unsigned)_serviceAccessibilityServerPort;
- (void)__willChangeToIdiom:(int64_t)a3 onScreen:(id)a4;
- (void)_didResignContentViewControllerOfPopover:(id)a3;
- (void)_didRotateFromInterfaceOrientation:(int64_t)a3 forwardToChildControllers:(BOOL)a4 skipSelf:(BOOL)a5;
- (void)_initializeAccessibilityPortInformation;
- (void)_setContentOverlayInsets:(UIEdgeInsets)a3 andLeftMargin:(double)a4 rightMargin:(double)a5;
- (void)_setSecurityModeForViewsLayer;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6;
- (void)_willBecomeContentViewControllerOfPopover:(id)a3;
- (void)_willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6;
- (void)appendDescriptionToStream:(id)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewServiceDidTerminateWithError:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation _UIRemoteViewController

+ (id)requestViewController:(id)a3 fromServiceWithBundleIdentifier:(id)a4 connectionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_self() mainScreen];
  v12 = [v11 traitCollection];

  v13 = [(_UIRemoteViewController *)a1 _requestViewController:v10 traitCollection:v12 fromServiceWithBundleIdentifier:v9 service:0 connectionHandler:v8];

  return v13;
}

+ (id)_requestViewController:(void *)a3 traitCollection:(void *)a4 fromServiceWithBundleIdentifier:(void *)a5 service:(void *)a6 connectionHandler:
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a3;
  v15 = objc_opt_self();
  if (v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = [v12 identifier];
  }

  v17 = v16;
  v18 = [[v15 alloc] _initWithServiceBundleIdentifier:v16 service:v12];
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
    v39 = v14;
    v40 = v13;
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
      v31 = v11;
      v32 = v12;
      v34 = v33 = v10;
      v35 = [v29 stringWithFormat:@"<%@: %p>", v34, v28];

      v10 = v33;
      v12 = v32;
      v11 = v31;
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

    v13 = v40;
    v10 = v41;
    v14 = v39;
  }

  v36 = [objc_opt_class() _requestViewController:v10 traitCollection:v14 fromServiceWithBundleIdentifier:v11 service:v12 connectionHandler:v13 newRemoteViewController:v19 remoteViewControllerImpl:v20];

  return v36;
}

+ (id)requestViewControllerWithService:(id)a3 connectionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_self() mainScreen];
  v9 = [v8 traitCollection];

  v10 = [(_UIRemoteViewController *)a1 _requestViewController:v9 traitCollection:0 fromServiceWithBundleIdentifier:v7 service:v6 connectionHandler:?];

  return v10;
}

- (id)_initWithServiceBundleIdentifier:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _UIRemoteViewController;
  v9 = [(UIViewController *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceBundleIdentifier, a3);
    v11 = [v8 extensionPointIdentifier];
    *&v10->_flags = *&v10->_flags & 0xFE | _UIRemoteViewControllerSceneShimEnabledForBundleIdentifierAndExtensionPointIdentifier(v7, v11);
  }

  return v10;
}

- (id)serviceViewControllerProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(_UIRemoteViewController *)self serviceViewControllerProxy];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [v4 code] == 1;
    v4 = v7;
    if (!v5)
    {
      v6 = NSStringFromSelector(a2);
      NSLog(&stru_1EFBA79B0.isa, v6, v7);

      v4 = v7;
    }
  }
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v15 = v7;
  v16 = self;
  v8 = v6;
  v17 = v8;
  [v7 appendProem:self block:v14];
  v9 = [v7 style];
  v10 = [v9 verbosity];

  if (v10 != 2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53___UIRemoteViewController_appendDescriptionToStream___block_invoke_2;
    v11[3] = &unk_1E70F35B8;
    v12 = v7;
    v13 = self;
    [v12 appendBodySectionWithName:0 block:v11];
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

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
    v3 = [(_UIRemoteViewController *)self _extensionBundleIdentifierForAppProtection];
    v4 = [(_UIRemoteViewControllerImpl *)self->_impl _remoteViewService];
    v5 = [v4 plugin];
    v6 = [_UIRemoteViewControllerAppProtectionMetrics metricsForExtensionBundleIdentifier:v3 extensionPlugin:v5];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewWillAppear:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewWillAppear:v3];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewIsAppearing:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewIsAppearing:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewDidAppear:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewWillDisappear:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewWillDisappear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  [(UIViewController *)&v5 viewDidDisappear:?];
  [(_UIRemoteViewControllerImpl *)self->_impl viewDidDisappear:v3];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = _UIRemoteViewController;
  v7 = a4;
  [(UIViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(_UIRemoteViewControllerImpl *)self->_impl viewWillTransitionToSize:v7 withTransitionCoordinator:width, height, v8.receiver, v8.super_class];
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIRemoteViewController;
  v6 = a4;
  v7 = a3;
  [(UIViewController *)&v8 willTransitionToTraitCollection:v7 withTransitionCoordinator:v6];
  [(_UIRemoteViewControllerImpl *)self->_impl willTransitionToTraitCollection:v7 withTransitionCoordinator:v6, v8.receiver, v8.super_class];
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  v4 = a3;
  [(UIViewController *)&v5 didMoveToParentViewController:v4];
  [(_UIRemoteViewControllerImpl *)self->_impl didMoveToParentViewController:v4, v5.receiver, v5.super_class];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = _UIRemoteViewController;
  v6 = a3;
  [(UIViewController *)&v7 viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4];
  [(_UIRemoteViewControllerImpl *)self->_impl viewDidMoveToWindow:v6 shouldAppearOrDisappear:v4, v7.receiver, v7.super_class];
}

- (void)_setSecurityModeForViewsLayer
{
  v3.receiver = self;
  v3.super_class = _UIRemoteViewController;
  [(UIViewController *)&v3 _setSecurityModeForViewsLayer];
  [(_UIRemoteViewControllerImpl *)self->_impl _setSecurityModeForViewsLayer];
}

- (void)_setContentOverlayInsets:(UIEdgeInsets)a3 andLeftMargin:(double)a4 rightMargin:(double)a5
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v12.receiver = self;
  v12.super_class = _UIRemoteViewController;
  [UIViewController _setContentOverlayInsets:sel__setContentOverlayInsets_andLeftMargin_rightMargin_ andLeftMargin:? rightMargin:?];
  [(_UIRemoteViewControllerImpl *)self->_impl _setContentOverlayInsets:top andLeftMargin:left rightMargin:bottom, right, a4, a5];
}

- (void)_willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11.receiver = self;
  v11.super_class = _UIRemoteViewController;
  [UIViewController _willAnimateRotationToInterfaceOrientation:sel__willAnimateRotationToInterfaceOrientation_duration_forwardToChildControllers_skipSelf_ duration:? forwardToChildControllers:? skipSelf:?];
  [(_UIRemoteViewControllerImpl *)self->_impl _willAnimateRotationToInterfaceOrientation:a3 duration:v7 forwardToChildControllers:v6 skipSelf:a4];
}

- (void)_willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4 forwardToChildControllers:(BOOL)a5 skipSelf:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11.receiver = self;
  v11.super_class = _UIRemoteViewController;
  [UIViewController _willRotateToInterfaceOrientation:sel__willRotateToInterfaceOrientation_duration_forwardToChildControllers_skipSelf_ duration:? forwardToChildControllers:? skipSelf:?];
  [(_UIRemoteViewControllerImpl *)self->_impl _willRotateToInterfaceOrientation:a3 duration:v7 forwardToChildControllers:v6 skipSelf:a4];
}

- (void)_didRotateFromInterfaceOrientation:(int64_t)a3 forwardToChildControllers:(BOOL)a4 skipSelf:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9.receiver = self;
  v9.super_class = _UIRemoteViewController;
  [UIViewController _didRotateFromInterfaceOrientation:sel__didRotateFromInterfaceOrientation_forwardToChildControllers_skipSelf_ forwardToChildControllers:? skipSelf:?];
  [(_UIRemoteViewControllerImpl *)self->_impl _didRotateFromInterfaceOrientation:a3 forwardToChildControllers:v6 skipSelf:v5];
}

- (void)__willChangeToIdiom:(int64_t)a3 onScreen:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIRemoteViewController;
  v6 = a4;
  [(UIViewController *)&v7 __willChangeToIdiom:a3 onScreen:v6];
  [(_UIRemoteViewControllerImpl *)self->_impl __willChangeToIdiom:a3 onScreen:v6, v7.receiver, v7.super_class];
}

- (void)_traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  v4 = a3;
  [(UIViewController *)&v5 _traitCollectionDidChange:v4];
  [(_UIRemoteViewControllerImpl *)self->_impl _traitCollectionDidChange:v4, v5.receiver, v5.super_class];
}

- (void)_willBecomeContentViewControllerOfPopover:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  v4 = a3;
  [(UIViewController *)&v5 _willBecomeContentViewControllerOfPopover:v4];
  [(_UIRemoteViewControllerImpl *)self->_impl _willBecomeContentViewControllerOfPopover:v4, v5.receiver, v5.super_class];
}

- (void)_didResignContentViewControllerOfPopover:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UIRemoteViewController;
  v4 = a3;
  [(UIViewController *)&v5 _didResignContentViewControllerOfPopover:v4];
  [(_UIRemoteViewControllerImpl *)self->_impl _didResignContentViewControllerOfPopover:v4, v5.receiver, v5.super_class];
}

- (id)_legacyImpl
{
  if (!a1)
  {
LABEL_4:

    return a1;
  }

  if ((a1[125] & 1) == 0)
  {
    a1 = a1[124];
    v1 = vars8;
    goto LABEL_4;
  }

  a1 = 0;

  return a1;
}

- (unsigned)_serviceAccessibilityServerPort
{
  v2 = [(_UIRemoteViewController *)&self->super.super.super.isa _legacyImpl];
  v3 = [v2 _serviceAccessibilityServerPort];

  return v3;
}

- (void)_initializeAccessibilityPortInformation
{
  v2 = [(_UIRemoteViewController *)&self->super.super.super.isa _legacyImpl];
  [v2 _initializeAccessibilityPortInformation];
}

- (id)_sizeTrackingView
{
  v2 = [(_UIRemoteViewController *)&self->super.super.super.isa _legacyImpl];
  v3 = [v2 _sizeTrackingView];

  return v3;
}

- (id)_remoteKeyboardRemoteView
{
  v2 = [(_UIRemoteViewController *)&self->super.super.super.isa _legacyImpl];
  v3 = [v2 _remoteKeyboardRemoteView];

  return v3;
}

@end
@interface UIDocumentMenuViewController
- (UIDocumentMenuViewController)initWithCoder:(NSCoder *)coder;
- (UIDocumentMenuViewController)initWithDocumentTypes:(NSArray *)allowedUTIs inMode:(UIDocumentPickerMode)mode;
- (UIDocumentMenuViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIDocumentMenuViewController)initWithURL:(NSURL *)url inMode:(UIDocumentPickerMode)mode;
- (id)delegate;
- (void)_commonInitWithCompletion:(id)completion;
- (void)_didSelectPicker;
- (void)_dismissViewController;
- (void)_dismissWithOption:(id)option;
- (void)_displayLocationsMenuFromRect:(CGRect)rect;
- (void)_setChildViewController:(id)controller;
- (void)_setIsContentManaged:(BOOL)managed;
- (void)addOptionWithTitle:(NSString *)title image:(UIImage *)image order:(UIDocumentMenuOrder)order handler:(void *)handler;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)setModalPresentationStyle:(int64_t)style;
@end

@implementation UIDocumentMenuViewController

- (UIDocumentMenuViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v7 = MEMORY[0x1E695DF30];
  v8 = *MEMORY[0x1E695D940];
  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_initWithDocumentTypes_inMode_);
  v12 = NSStringFromSelector(sel_initWithURL_inMode_);
  v13 = [v9 stringWithFormat:@"You cannot initialize a %@ except by the %@ and %@ initializers.", v10, v11, v12];
  v14 = [v7 exceptionWithName:v8 reason:v13 userInfo:0];
  v15 = v14;

  objc_exception_throw(v14);
}

- (UIDocumentMenuViewController)initWithDocumentTypes:(NSArray *)allowedUTIs inMode:(UIDocumentPickerMode)mode
{
  v7 = allowedUTIs;
  if (mode >= UIDocumentPickerModeExportToService)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:73 description:{@"%s can only be called with mode Import or Open", "-[UIDocumentMenuViewController initWithDocumentTypes:inMode:]"}];
  }

  v15.receiver = self;
  v15.super_class = UIDocumentMenuViewController;
  v8 = [(UIViewController *)&v15 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(UIDocumentMenuViewController *)v8 setDocumentPickerMode:mode];
    [(UIDocumentMenuViewController *)v9 setAllowedUTIs:v7];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__UIDocumentMenuViewController_initWithDocumentTypes_inMode___block_invoke;
    v12[3] = &unk_1E7105528;
    v13 = v7;
    v14 = mode;
    [(UIDocumentMenuViewController *)v9 _commonInitWithCompletion:v12];
  }

  return v9;
}

void __61__UIDocumentMenuViewController_initWithDocumentTypes_inMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 _setPickableTypes:v3];
  [v4 _setPickerMode:*(a1 + 40)];
}

- (UIDocumentMenuViewController)initWithURL:(NSURL *)url inMode:(UIDocumentPickerMode)mode
{
  v7 = url;
  v8 = v7;
  if ((mode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:96 description:{@"%s can only be called with mode Export or Move", "-[UIDocumentMenuViewController initWithURL:inMode:]"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:97 description:{@"%s must be called with a valid URL", "-[UIDocumentMenuViewController initWithURL:inMode:]"}];

LABEL_3:
  lastPathComponent = [(NSURL *)v8 lastPathComponent];

  if (!lastPathComponent)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:98 description:{@"%s must be called with a URL pointing to a file", "-[UIDocumentMenuViewController initWithURL:inMode:]"}];
  }

  v28 = 0;
  v10 = *MEMORY[0x1E695DC30];
  v27 = 0;
  v11 = [(NSURL *)v8 getPromisedItemResourceValue:&v28 forKey:v10 error:&v27];
  v12 = v28;
  v13 = v27;
  if (!v11)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:102 description:{@"%s must be called with a URL pointing to an existing file", "-[UIDocumentMenuViewController initWithURL:inMode:]"}];
  }

  v26.receiver = self;
  v26.super_class = UIDocumentMenuViewController;
  v14 = [(UIViewController *)&v26 initWithNibName:0 bundle:0];
  v15 = v14;
  if (v14)
  {
    [(UIDocumentMenuViewController *)v14 setDocumentPickerMode:mode];
    [(UIDocumentMenuViewController *)v15 setUploadURL:v8];
    uIDocumentPickerModeExportToService = [_UIDocumentPickerNSURLWrapper wrapperWithURL:v8 readonly:mode == UIDocumentPickerModeExportToService];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__UIDocumentMenuViewController_initWithURL_inMode___block_invoke;
    v23[3] = &unk_1E7105528;
    v24 = uIDocumentPickerModeExportToService;
    v25 = mode;
    v17 = uIDocumentPickerModeExportToService;
    [(UIDocumentMenuViewController *)v15 _commonInitWithCompletion:v23];
  }

  return v15;
}

void __51__UIDocumentMenuViewController_initWithURL_inMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 _setUploadURLWrapper:v3];
  [v4 _setPickerMode:*(a1 + 40)];
}

- (void)_commonInitWithCompletion:(id)completion
{
  completionCopy = completion;
  v26 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v7 = _MergedGlobals_1_4;
  v35 = _MergedGlobals_1_4;
  if (!_MergedGlobals_1_4)
  {
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __getBRGetCloudEnabledStatusSymbolLoc_block_invoke;
    v30 = &unk_1E70F2F20;
    v31 = &v32;
    v8 = CloudDocsLibrary_0();
    v33[3] = dlsym(v8, "BRGetCloudEnabledStatus");
    _MergedGlobals_1_4 = *(v31[1] + 24);
    v7 = v33[3];
  }

  _Block_object_dispose(&v32, 8);
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BRCloudEnabledStatus _BRGetCloudEnabledStatus(NSError *__autoreleasing *)"];
    [currentHandler handleFailureInFunction:v23 file:@"UIDocumentMenuViewController.m" lineNumber:44 description:{@"%s", dlerror()}];
    goto LABEL_13;
  }

  v9 = v7(&v26);
  v10 = v26;
  if (v9 == -3 && (!self->_ignoreApplicationEntitlementForImport || [(UIDocumentMenuViewController *)self documentPickerMode]))
  {
    v3 = 0x1E696A000uLL;
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v12 = qword_1ED499218;
    v35 = qword_1ED499218;
    if (!qword_1ED499218)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getBRICloudContainerIdentifiersEntitlementSymbolLoc_block_invoke;
      v30 = &unk_1E70F2F20;
      v31 = &v32;
      v13 = CloudDocsLibrary_0();
      v14 = dlsym(v13, "BRICloudContainerIdentifiersEntitlement");
      *(v31[1] + 24) = v14;
      qword_1ED499218 = *(v31[1] + 24);
      v12 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v12)
    {
      while (1)
      {
        currentHandler = [*(v3 + 2728) currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBRICloudContainerIdentifiersEntitlement(void)"];
        [currentHandler handleFailureInFunction:v23 file:@"UIDocumentMenuViewController.m" lineNumber:45 description:{@"%s", dlerror()}];
LABEL_13:

        __break(1u);
      }
    }

    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:125 description:{@"Application initializing document picker is missing the iCloud entitlement. Is %@ set?", *v12}];
  }

  [(UIViewController *)self _beginDelayingPresentation:0 cancellationHandler:3.0];
  [(UIDocumentMenuViewController *)self setModalPresentationStyle:100];
  [(UIViewController *)self setModalTransitionStyle:12];
  actionSheetPresentationController = [(UIViewController *)self actionSheetPresentationController];
  v16 = _UINSLocalizedStringWithDefaultValue(@"Cancel", @"Cancel");
  [actionSheetPresentationController setDismissActionTitle:v16];

  actionSheetPresentationController2 = [(UIViewController *)self actionSheetPresentationController];
  [actionSheetPresentationController2 setActionSheetDelegate:self];

  array = [MEMORY[0x1E695DF70] array];
  [(UIDocumentMenuViewController *)self setAuxiliaryOptions:array];

  v19 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:@"com.apple.CloudDocsUI.DocumentPicker" error:0];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __58__UIDocumentMenuViewController__commonInitWithCompletion___block_invoke;
  v24[3] = &unk_1E7105578;
  v24[4] = self;
  v25 = completionCopy;
  v20 = completionCopy;
  v21 = [_UIResilientRemoteViewContainerViewController instantiateWithExtension:v19 completion:v24];
  [(UIDocumentMenuViewController *)self _setChildViewController:v21];
  [v21 preferredContentSize];
  [(UIViewController *)self setPreferredContentSize:?];
}

void __58__UIDocumentMenuViewController__commonInitWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 serviceViewControllerProxy];
  (*(*(a1 + 40) + 16))();
  if (v7)
  {
    v9 = objc_opt_class();
    NSLog(&cfstr_RemoteViewCont.isa, v9, v7);
    [*(a1 + 32) _endDelayingPresentation];
  }

  else
  {
    v10 = [*(a1 + 32) auxiliaryOptions];
    [v8 _setAuxiliaryOptions:v10];

    _UIShimSetUnderbarIsContentManaged(v8, *(*(a1 + 32) + 1002));
    [v6 setPublicController:*(a1 + 32)];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__UIDocumentMenuViewController__commonInitWithCompletion___block_invoke_2;
    v11[3] = &unk_1E7105550;
    v11[4] = *(a1 + 32);
    v12 = v8;
    [v12 _prepareForDisplayWithCompletion:v11];
  }
}

uint64_t __58__UIDocumentMenuViewController__commonInitWithCompletion___block_invoke_2(uint64_t a1, double a2, double a3)
{
  v6 = [*(a1 + 32) modalPresentationStyle];
  v7 = 0.0;
  if (v6 == 7)
  {
    v7 = a2;
  }

  [*(a1 + 32) setPreferredContentSize:{v7, a3}];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) auxiliaryOptions];
  [v8 _setAuxiliaryOptions:v9];

  v10 = *(a1 + 32);

  return [v10 _endDelayingPresentation];
}

- (UIDocumentMenuViewController)initWithCoder:(NSCoder *)coder
{
  v4.receiver = self;
  v4.super_class = UIDocumentMenuViewController;
  return [(UIViewController *)&v4 initWithCoder:coder];
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = UIDocumentMenuViewController;
  [(UIViewController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(UIViewController *)self->_childViewController preferredContentSize];
  [(UIViewController *)self setPreferredContentSize:?];
}

- (void)addOptionWithTitle:(NSString *)title image:(UIImage *)image order:(UIDocumentMenuOrder)order handler:(void *)handler
{
  v10 = handler;
  v11 = image;
  v12 = title;
  v14 = objc_alloc_init(_UIDocumentPickerAuxiliaryOption);
  [(_UIDocumentPickerAuxiliaryOption *)v14 setTitle:v12];

  [(_UIDocumentPickerAuxiliaryOption *)v14 setImage:v11];
  [(_UIDocumentPickerAuxiliaryOption *)v14 setHandler:v10];

  [(_UIDocumentPickerAuxiliaryOption *)v14 setOrder:order];
  auxiliaryOptions = [(UIDocumentMenuViewController *)self auxiliaryOptions];
  [auxiliaryOptions addObject:v14];
}

- (void)_setChildViewController:(id)controller
{
  controllerCopy = controller;
  view = [(UIViewController *)self->_childViewController view];
  [view removeFromSuperview];

  [(UIViewController *)self->_childViewController removeFromParentViewController];
  objc_storeStrong(&self->_childViewController, controller);
  if (self->_childViewController)
  {
    [controllerCopy willMoveToParentViewController:self];
    [(UIViewController *)self addChildViewController:controllerCopy];
    view2 = [(UIViewController *)self view];
    view3 = [controllerCopy view];
    [view2 addSubview:view3];

    array = [MEMORY[0x1E695DF70] array];
    v9 = MEMORY[0x1E69977A0];
    view4 = [controllerCopy view];
    view5 = [(UIViewController *)self view];
    v12 = [v9 constraintWithItem:view4 attribute:7 relatedBy:0 toItem:view5 attribute:7 multiplier:1.0 constant:0.0];
    [array addObject:v12];

    v13 = MEMORY[0x1E69977A0];
    view6 = [controllerCopy view];
    view7 = [(UIViewController *)self view];
    v16 = [v13 constraintWithItem:view6 attribute:8 relatedBy:0 toItem:view7 attribute:8 multiplier:1.0 constant:0.0];
    [array addObject:v16];

    v17 = MEMORY[0x1E69977A0];
    view8 = [controllerCopy view];
    view9 = [(UIViewController *)self view];
    v20 = [v17 constraintWithItem:view8 attribute:1 relatedBy:0 toItem:view9 attribute:1 multiplier:1.0 constant:0.0];
    [array addObject:v20];

    v21 = MEMORY[0x1E69977A0];
    view10 = [controllerCopy view];
    view11 = [(UIViewController *)self view];
    v24 = [v21 constraintWithItem:view10 attribute:3 relatedBy:0 toItem:view11 attribute:3 multiplier:1.0 constant:0.0];
    [array addObject:v24];

    [MEMORY[0x1E69977A0] activateConstraints:array];
    [controllerCopy didMoveToParentViewController:self];
  }
}

- (void)_setIsContentManaged:(BOOL)managed
{
  self->_isContentManaged = managed;
  _remoteViewController = [(UIDocumentMenuViewController *)self _remoteViewController];
  serviceViewControllerProxy = [_remoteViewController serviceViewControllerProxy];
  [serviceViewControllerProxy _setIsContentManaged:self->_isContentManaged];
}

- (void)_didSelectPicker
{
  presentingViewController = [(UIViewController *)self presentingViewController];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__UIDocumentMenuViewController__didSelectPicker__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [presentingViewController dismissViewControllerAnimated:1 completion:v4];
}

void __48__UIDocumentMenuViewController__didSelectPicker__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) documentPickerMode];
  if (v2 - 2 < 2)
  {
    v6 = [UIDocumentPickerViewController alloc];
    v4 = [*(a1 + 32) uploadURL];
    v5 = -[UIDocumentPickerViewController initWithURL:inMode:](v6, "initWithURL:inMode:", v4, [*(a1 + 32) documentPickerMode]);
    goto LABEL_5;
  }

  if (v2 <= 1)
  {
    v3 = [UIDocumentPickerViewController alloc];
    v4 = [*(a1 + 32) allowedUTIs];
    v5 = -[UIDocumentPickerViewController initWithDocumentTypes:inMode:](v3, "initWithDocumentTypes:inMode:", v4, [*(a1 + 32) documentPickerMode]);
LABEL_5:
    v8 = v5;

    [v8 _setIsContentManaged:*(*(a1 + 32) + 1002)];
    goto LABEL_6;
  }

  v8 = 0;
  [0 _setIsContentManaged:*(*(a1 + 32) + 1002)];
LABEL_6:
  v7 = [*(a1 + 32) delegate];
  [v7 documentMenu:*(a1 + 32) didPickDocumentPicker:v8];

  [*(a1 + 32) setDismissDelegateCalled:1];
}

- (void)_displayLocationsMenuFromRect:(CGRect)rect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:274 description:@"1st party doc picker requested locations menu display"];
}

- (void)_dismissViewController
{
  array = [MEMORY[0x1E695DF70] array];
  [(UIDocumentMenuViewController *)self setAuxiliaryOptions:array];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  _remoteViewController = [(UIDocumentMenuViewController *)self _remoteViewController];
  [_remoteViewController invalidate];

  _childViewController = [(UIDocumentMenuViewController *)self _childViewController];
  [_childViewController invalidate];

  if (![(UIDocumentMenuViewController *)self dismissDelegateCalled])
  {
    delegate = [(UIDocumentMenuViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [(UIDocumentMenuViewController *)self setDismissDelegateCalled:1];
      [delegate documentMenuWasCancelled:self];
    }
  }
}

- (void)_dismissWithOption:(id)option
{
  optionCopy = option;
  auxiliaryOptions = self->_auxiliaryOptions;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__UIDocumentMenuViewController__dismissWithOption___block_invoke;
  v17[3] = &unk_1E71055A0;
  v7 = optionCopy;
  v18 = v7;
  v8 = [(NSMutableArray *)self->_auxiliaryOptions objectAtIndex:[(NSMutableArray *)auxiliaryOptions indexOfObjectPassingTest:v17]];
  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:304 description:@"Document picker menu dismissed with an option not previously specified?"];
  }

  array = [MEMORY[0x1E695DF70] array];
  [(UIDocumentMenuViewController *)self setAuxiliaryOptions:array];

  [(UIDocumentMenuViewController *)self setDismissDelegateCalled:1];
  presentingViewController = [(UIViewController *)self presentingViewController];

  if (!presentingViewController)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIDocumentMenuViewController.m" lineNumber:308 description:{@"%s: presenting view controller is nil", "-[UIDocumentMenuViewController _dismissWithOption:]"}];
  }

  presentingViewController2 = [(UIViewController *)self presentingViewController];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__UIDocumentMenuViewController__dismissWithOption___block_invoke_2;
  v15[3] = &unk_1E70F3590;
  v16 = v8;
  v12 = v8;
  [presentingViewController2 dismissViewControllerAnimated:1 completion:v15];
}

uint64_t __51__UIDocumentMenuViewController__dismissWithOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __51__UIDocumentMenuViewController__dismissWithOption___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];

  if (v2)
  {
    v3 = [*(a1 + 32) handler];
    v3[2]();
  }
}

- (void)setModalPresentationStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = UIDocumentMenuViewController;
  [(UIViewController *)&v3 setModalPresentationStyle:100];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
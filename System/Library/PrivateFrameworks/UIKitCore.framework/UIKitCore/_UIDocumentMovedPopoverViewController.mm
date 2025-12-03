@interface _UIDocumentMovedPopoverViewController
- (_UIDocumentMovedPopoverViewController)initWithFileURL:(id)l;
- (void)_updateContentSize;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation _UIDocumentMovedPopoverViewController

- (_UIDocumentMovedPopoverViewController)initWithFileURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = _UIDocumentMovedPopoverViewController;
  v5 = [(UIViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(_UIDocumentMovedPopoverViewController *)v5 setFileURL:lCopy];
    [(UIViewController *)v6 setPreferredContentSize:320.0, 44.0];
  }

  return v6;
}

- (void)viewDidLoad
{
  v70[6] = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = _UIDocumentMovedPopoverViewController;
  [(UIViewController *)&v64 viewDidLoad];
  v66 = 0;
  v67 = &v66;
  v68 = 0x2050000000;
  v2 = _MergedGlobals_3_1;
  v69 = _MergedGlobals_3_1;
  if (!_MergedGlobals_3_1)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __getLPLinkViewClass_block_invoke;
    location[3] = &unk_1E70F2F20;
    location[4] = &v66;
    __getLPLinkViewClass_block_invoke(location);
    v2 = v67[3];
  }

  v3 = v2;
  _Block_object_dispose(&v66, 8);
  v4 = [v2 alloc];
  fileURL = [(_UIDocumentMovedPopoverViewController *)self fileURL];
  v60 = [v4 initWithMetadataLoadedFromURL:fileURL];

  [v60 setDelegate:self];
  [v60 _setDisableTapGesture:1];
  [v60 _setDisableAnimations:1];
  [v60 _setPreferredSizeClass:2];
  [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_UIDocumentMovedPopoverViewController *)self setLinkView:v60];
  v6 = MEMORY[0x1E696AEC0];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v8 = [mainBundle localizedStringForKey:@"Saved to %@" value:&stru_1EFB14550 table:0];
  _localizedApplicationName = [UIApp _localizedApplicationName];
  v55 = [v6 stringWithFormat:v8, _localizedApplicationName];

  v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v55];
  [v60 _setOverrideSubtitle:v10];

  view = [(UIViewController *)self view];
  [view addSubview:v60];

  v12 = MEMORY[0x1E696AF20];
  fileURL2 = [(_UIDocumentMovedPopoverViewController *)self fileURL];
  v57 = [v12 componentsWithURL:fileURL2 resolvingAgainstBaseURL:0];

  [v57 setScheme:@"shareddocuments"];
  queryItems = [v57 queryItems];
  v15 = queryItems;
  if (queryItems)
  {
    v16 = queryItems;
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = [MEMORY[0x1E696AF60] queryItemWithName:@"reveal" value:@"YES"];
  v18 = [v16 arrayByAddingObject:v17];
  [v57 setQueryItems:v18];

  v19 = [v57 URL];
  v54 = [UIImageSymbolConfiguration configurationWithScale:2];
  v56 = +[UIButtonConfiguration grayButtonConfiguration];
  [v56 setCornerStyle:4];
  v20 = [UIImage systemImageNamed:@"magnifyingglass" withConfiguration:v54];
  [v56 setImage:v20];

  objc_initWeak(location, self);
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __52___UIDocumentMovedPopoverViewController_viewDidLoad__block_invoke;
  v61[3] = &unk_1E70F3690;
  v33 = v19;
  v62 = v33;
  objc_copyWeak(&v63, location);
  v21 = [UIAction actionWithHandler:v61];
  v58 = [UIButton buttonWithConfiguration:v56 primaryAction:v21];

  [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(UIViewController *)self view];
  [view2 addSubview:v58];

  v34 = MEMORY[0x1E69977A0];
  view3 = [(UIViewController *)self view];
  layoutMarginsGuide = [view3 layoutMarginsGuide];
  leadingAnchor = [layoutMarginsGuide leadingAnchor];
  leadingAnchor2 = [v60 leadingAnchor];
  v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v70[0] = v49;
  view4 = [(UIViewController *)self view];
  layoutMarginsGuide2 = [view4 layoutMarginsGuide];
  bottomAnchor = [layoutMarginsGuide2 bottomAnchor];
  bottomAnchor2 = [v60 bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v70[1] = v44;
  view5 = [(UIViewController *)self view];
  layoutMarginsGuide3 = [view5 layoutMarginsGuide];
  topAnchor = [layoutMarginsGuide3 topAnchor];
  topAnchor2 = [v60 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v70[2] = v39;
  view6 = [(UIViewController *)self view];
  layoutMarginsGuide4 = [view6 layoutMarginsGuide];
  centerYAnchor = [layoutMarginsGuide4 centerYAnchor];
  centerYAnchor2 = [v58 centerYAnchor];
  v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v70[3] = v23;
  view7 = [(UIViewController *)self view];
  layoutMarginsGuide5 = [view7 layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide5 trailingAnchor];
  trailingAnchor2 = [v58 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v70[4] = v28;
  leadingAnchor3 = [v58 leadingAnchor];
  trailingAnchor3 = [v60 trailingAnchor];
  v31 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
  v70[5] = v31;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:6];
  [v34 activateConstraints:v32];

  [(_UIDocumentMovedPopoverViewController *)self _updateContentSize];
  objc_destroyWeak(&v63);

  objc_destroyWeak(location);
}

- (void)didMoveToParentViewController:(id)controller
{
  v11.receiver = self;
  v11.super_class = _UIDocumentMovedPopoverViewController;
  [(UIViewController *)&v11 didMoveToParentViewController:?];
  if (controller)
  {
    popoverPresentationController = [(UIViewController *)self popoverPresentationController];
    delegate = [popoverPresentationController delegate];

    if (delegate != self)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDocumentMovedPopoverViewController.m" lineNumber:90 description:{@"%@ needs to be presented as a popover and the presentation controller's delegate needs to be the view controller itself.", v10}];
    }
  }
}

- (void)_updateContentSize
{
  view = [(UIViewController *)self view];
  LODWORD(v4) = 1144750080;
  LODWORD(v5) = 1112014848;
  [view systemLayoutSizeFittingSize:320.0 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v4, v5}];
  v7 = v6;
  v9 = v8;

  [(UIViewController *)self setPreferredContentSize:v7, v9];
}

@end
@interface PUWallpaperPosterEditDebugViewController
- (BOOL)pu_idleTimerDisabled;
- (PUPosterEditingLook)pu_currentLook;
- (PUWallpaperPosterEditDebugViewController)initWithAsset:(id)asset;
- (PUWallpaperPosterEditDebugViewController)initWithAsset:(id)asset posterType:(int64_t)type;
- (PUWallpaperPosterEditDebugViewController)initWithAssets:(id)assets posterType:(int64_t)type photoLibrary:(id)library;
- (PUWallpaperPosterEditDebugViewController)initWithExistingConfiguration:(id)configuration assetDirectory:(id)directory overrideConfiguration:(id)overrideConfiguration photoLibrary:(id)library;
- (PUWallpaperPosterEditDebugViewController)initWithMigratorOfLegacyConfigurationType:(unint64_t)type photoLibrary:(id)library;
- (UIAction)pu_placeholderAction;
- (UIEdgeInsets)pu_editingChromeDodgingInsets;
- (id)pu_disableIdleTimer;
- (id)pu_viewForMenuElementIdentifier:(id)identifier;
- (void)_dismissAndCancel:(id)cancel;
- (void)_dismissAndSave:(id)save;
- (void)_handlePageControlSelectedPage:(id)page;
- (void)_setupEditorViews;
- (void)_setupPosterEditorController;
- (void)_setupSimulatedControls;
- (void)_updateLookControls;
- (void)_updateLookProperties;
- (void)_updateLooks;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)presentColorPickerWithConfiguration:(id)configuration changeHandler:(id)handler;
- (void)pu_requestDismissalWithAction:(int64_t)action;
- (void)pu_updatePreferences:(id)preferences;
- (void)px_updatePreferences:(id)preferences;
- (void)scrollViewDidScroll:(id)scroll;
- (void)updateActions;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PUWallpaperPosterEditDebugViewController

- (UIEdgeInsets)pu_editingChromeDodgingInsets
{
  v2 = *MEMORY[0x1E69DDCE0];
  v3 = *(MEMORY[0x1E69DDCE0] + 8);
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  v5 = *(MEMORY[0x1E69DDCE0] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)pu_viewForMenuElementIdentifier:(id)identifier
{
  identifierCopy = identifier;
  editToolBar = [(PUWallpaperPosterEditDebugViewController *)self editToolBar];
  v6 = [editToolBar viewForMenuElementIdentifier:identifierCopy];

  return v6;
}

- (UIAction)pu_placeholderAction
{
  v2 = MEMORY[0x1E69DC628];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"slowmo"];
  v4 = [v2 actionWithTitle:@"Loading" image:v3 identifier:@"Loading" handler:&__block_literal_global_574];

  return v4;
}

- (id)pu_disableIdleTimer
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] setIdleTimerDisabled:1];

  v3 = objc_alloc_init(_PUWallpaperPosterDebugIdleTimerAssertion);

  return v3;
}

- (BOOL)pu_idleTimerDisabled
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isIdleTimerDisabled = [mEMORY[0x1E69DC668] isIdleTimerDisabled];

  return isIdleTimerDisabled;
}

- (void)pu_requestDismissalWithAction:(int64_t)action
{
  if (action)
  {
    if (action == 1)
    {
      [(PUWallpaperPosterEditDebugViewController *)self _dismissAndSave:self];
    }
  }

  else
  {
    [(PUWallpaperPosterEditDebugViewController *)self _dismissAndCancel:self];
  }
}

- (void)updateActions
{
  posterEditorController = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v3 = [posterEditorController leadingMenuElementsForEditor:self];
  v4 = [posterEditorController trailingMenuElementsForEditor:self];
  editToolBar = [(PUWallpaperPosterEditDebugViewController *)self editToolBar];
  [editToolBar setLeadingMenuElements:v3];
  [editToolBar setTrailingMenuElements:v4];
}

- (PUPosterEditingLook)pu_currentLook
{
  availableLooks = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  v4 = [availableLooks objectAtIndexedSubscript:{-[PUWallpaperPosterEditDebugViewController currentLookIndex](self, "currentLookIndex")}];

  return v4;
}

- (void)px_updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v6 = objc_alloc_init(_PUWallpaperDebugTransition);
  editPreferences = [(PUWallpaperPosterEditDebugViewController *)self editPreferences];
  preferencesCopy[2](preferencesCopy, editPreferences, v6);
}

- (void)pu_updatePreferences:(id)preferences
{
  preferencesCopy = preferences;
  v6 = objc_alloc_init(_PUWallpaperDebugTransition);
  editPreferences = [(PUWallpaperPosterEditDebugViewController *)self editPreferences];
  preferencesCopy[2](preferencesCopy, editPreferences, v6);
}

- (void)presentColorPickerWithConfiguration:(id)configuration changeHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DC8A0];
  handlerCopy = handler;
  configurationCopy = configuration;
  v9 = objc_alloc_init(v6);
  prompt = [configurationCopy prompt];

  [v9 setTitle:prompt];
  [v9 setDelegate:self];
  [v9 setModalPresentationStyle:1];
  sheetPresentationController = [v9 sheetPresentationController];
  mediumDetent = [MEMORY[0x1E69DCF58] mediumDetent];
  v14[0] = mediumDetent;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [sheetPresentationController setDetents:v13];

  [(PUWallpaperPosterEditDebugViewController *)self setColorPickerChangeHandler:handlerCopy];
  [(PUWallpaperPosterEditDebugViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  colorCopy = color;
  colorPickerChangeHandler = [(PUWallpaperPosterEditDebugViewController *)self colorPickerChangeHandler];

  if (colorPickerChangeHandler)
  {
    colorPickerChangeHandler2 = [(PUWallpaperPosterEditDebugViewController *)self colorPickerChangeHandler];
    (colorPickerChangeHandler2)[2](colorPickerChangeHandler2, colorCopy);
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v6 = v5;
  v8 = v7;
  [scrollCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v35.origin.x = v10;
  v35.origin.y = v12;
  v35.size.width = v14;
  v35.size.height = v16;
  __y = 0.0;
  v17 = v6 / CGRectGetWidth(v35);
  v18 = modf(v17, &__y);
  v19 = __y;
  v20 = __y;
  pageControl = [(PUWallpaperPosterEditDebugViewController *)self pageControl];
  [pageControl setCurrentPage:v20];

  pu_currentLook = [(PUWallpaperPosterEditDebugViewController *)self pu_currentLook];
  availableLooks = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  contentOverlayView = [(PUWallpaperPosterEditDebugViewController *)self contentOverlayView];
  [contentOverlayView frame];
  [contentOverlayView setFrame:{v6, v8}];
  if ([availableLooks count] > v19)
  {
    v24 = [availableLooks objectAtIndex:vcvtmd_u64_f64(v17)];
    v25 = [availableLooks count];
    v26 = vcvtpd_u64_f64(v17);
    if (v25 - 1 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25 - 1;
    }

    v28 = [availableLooks objectAtIndex:v27];
    if (v24 != v28)
    {
      if (v24 == pu_currentLook)
      {
        v29 = v28;
      }

      else
      {
        v29 = v24;
      }

      if (v24 != pu_currentLook)
      {
        v18 = 1.0 - v18;
      }

      v30 = v29;
      posterEditorController = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
      [posterEditorController editor:self didTransitionToLook:v30 progress:v18];
    }

    [(PUWallpaperPosterEditDebugViewController *)self setCurrentLookIndex:v20];
    [(PUWallpaperPosterEditDebugViewController *)self _updateLookControls];
  }
}

- (void)_handlePageControlSelectedPage:(id)page
{
  pageCopy = page;
  looksScrollView = [(PUWallpaperPosterEditDebugViewController *)self looksScrollView];
  v5 = [pageCopy interactionState] == 1;
  [looksScrollView frame];
  Width = CGRectGetWidth(v10);
  currentPage = [pageCopy currentPage];

  [looksScrollView setContentOffset:v5 animated:{Width * currentPage, 0.0}];
}

- (void)_dismissAndCancel:(id)cancel
{
  presentingViewController = [(PUWallpaperPosterEditDebugViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)_dismissAndSave:(id)save
{
  posterEditorController = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PUWallpaperPosterEditDebugViewController__dismissAndSave___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v5[4] = self;
  [posterEditorController editor:self finalizeWithCompletion:v5];
}

void __60__PUWallpaperPosterEditDebugViewController__dismissAndSave___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PUWallpaperPosterEditDebugViewController__dismissAndSave___block_invoke_2;
  block[3] = &unk_1E7B80DD0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __60__PUWallpaperPosterEditDebugViewController__dismissAndSave___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = PUWallpaperPosterEditDebugViewController;
  [(PUWallpaperPosterEditDebugViewController *)&v18 viewDidLayoutSubviews];
  posterEditorController = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  editViewModel = [posterEditorController editViewModel];

  currentLayerStackViewModel = [editViewModel currentLayerStackViewModel];
  currentLayerStack = [currentLayerStackViewModel currentLayerStack];

  layout = [currentLayerStack layout];
  currentLayerStackViewModel2 = [editViewModel currentLayerStackViewModel];
  [currentLayerStackViewModel2 containerFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (layout)
  {
    v19.origin.x = v10;
    v19.origin.y = v12;
    v19.size.width = v14;
    v19.size.height = v16;
    if (!CGRectIsEmpty(v19))
    {
      dateView = [(PUWallpaperPosterEditDebugViewController *)self dateView];
      [dateView layoutWithLayout:layout inContainerFrame:{v10, v12, v14, v16}];
    }
  }
}

- (void)_setupSimulatedControls
{
  v96[4] = *MEMORY[0x1E69E9840];
  [(PUWallpaperPosterEditDebugViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
  filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [filledButtonConfiguration setButtonSize:1];
  v89 = filledButtonConfiguration;
  [filledButtonConfiguration setCornerStyle:4];
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [filledButtonConfiguration setBaseBackgroundColor:systemBlueColor];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [filledButtonConfiguration setBaseForegroundColor:whiteColor];

  [filledButtonConfiguration setTitle:@"Done"];
  v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v6 setConfiguration:filledButtonConfiguration];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = v6;
  [v6 addTarget:self action:sel__dismissAndSave_ forControlEvents:0x2000];
  selfCopy = self;
  view = [(PUWallpaperPosterEditDebugViewController *)self view];
  [view addSubview:v7];

  grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [grayButtonConfiguration setButtonSize:1];
  [grayButtonConfiguration setCornerStyle:4];
  whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
  [grayButtonConfiguration setBaseForegroundColor:whiteColor2];

  v88 = grayButtonConfiguration;
  [grayButtonConfiguration setTitle:@"Cancel"];
  v12 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v12 setConfiguration:grayButtonConfiguration];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = v12;
  [v12 addTarget:selfCopy action:sel__dismissAndCancel_ forControlEvents:0x2000];
  view2 = [(PUWallpaperPosterEditDebugViewController *)selfCopy view];
  [view2 addSubview:v13];

  v68 = MEMORY[0x1E696ACD8];
  v87 = v7;
  topAnchor = [v7 topAnchor];
  view3 = [(PUWallpaperPosterEditDebugViewController *)selfCopy view];
  topAnchor2 = [view3 topAnchor];
  v75 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v96[0] = v75;
  trailingAnchor = [v7 trailingAnchor];
  v15 = selfCopy;
  view4 = [(PUWallpaperPosterEditDebugViewController *)selfCopy view];
  trailingAnchor2 = [view4 trailingAnchor];
  v64 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v96[1] = v64;
  v16 = v13;
  v86 = v13;
  topAnchor3 = [v13 topAnchor];
  view5 = [(PUWallpaperPosterEditDebugViewController *)selfCopy view];
  topAnchor4 = [view5 topAnchor];
  v20 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:20.0];
  v96[2] = v20;
  leadingAnchor = [v16 leadingAnchor];
  view6 = [(PUWallpaperPosterEditDebugViewController *)selfCopy view];
  leadingAnchor2 = [view6 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v96[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
  [v68 activateConstraints:v25];

  v26 = objc_alloc_init(PUWallpaperPosterEditToolBar);
  [(PUWallpaperPosterEditToolBar *)v26 setAutoresizingMask:18];
  view7 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  [view7 addSubview:v26];

  [(PUWallpaperPosterEditToolBar *)v26 setDelegate:v15];
  [(PUWallpaperPosterEditToolBar *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = MEMORY[0x1E696ACD8];
  bottomAnchor = [(PUWallpaperPosterEditToolBar *)v26 bottomAnchor];
  view8 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  layoutMarginsGuide = [view8 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v71 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v95[0] = v71;
  leadingAnchor3 = [(PUWallpaperPosterEditToolBar *)v26 leadingAnchor];
  view9 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  leadingAnchor4 = [view9 leadingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v95[1] = v29;
  v92 = v26;
  trailingAnchor3 = [(PUWallpaperPosterEditToolBar *)v26 trailingAnchor];
  view10 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  trailingAnchor4 = [view10 trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v95[2] = v33;
  heightAnchor = [(PUWallpaperPosterEditToolBar *)v26 heightAnchor];
  v35 = [heightAnchor constraintEqualToConstant:44.0];
  v95[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
  [v65 activateConstraints:v36];

  [(PUWallpaperPosterEditDebugViewController *)v15 setEditToolBar:v92];
  v37 = objc_alloc(MEMORY[0x1E69DCD10]);
  v38 = [v37 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v38 addTarget:v15 action:sel__handlePageControlSelectedPage_ forControlEvents:0x2000];
  view11 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  [view11 addSubview:v38];

  v74 = MEMORY[0x1E696ACD8];
  centerXAnchor = [v38 centerXAnchor];
  v90 = v15;
  view12 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  centerXAnchor2 = [view12 centerXAnchor];
  v41 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v94[0] = v41;
  bottomAnchor3 = [v38 bottomAnchor];
  editToolBar = [(PUWallpaperPosterEditDebugViewController *)v15 editToolBar];
  topAnchor5 = [editToolBar topAnchor];
  v45 = [bottomAnchor3 constraintEqualToAnchor:topAnchor5 constant:10.0];
  v94[1] = v45;
  v46 = v38;
  v85 = v38;
  heightAnchor2 = [v38 heightAnchor];
  v48 = [heightAnchor2 constraintEqualToConstant:50.0];
  v94[2] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];
  [v74 activateConstraints:v49];

  [(PUWallpaperPosterEditDebugViewController *)v90 setPageControl:v46];
  grayButtonConfiguration2 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [grayButtonConfiguration2 setButtonSize:1];
  [grayButtonConfiguration2 setCornerStyle:1];
  whiteColor3 = [MEMORY[0x1E69DC888] whiteColor];
  [grayButtonConfiguration2 setBaseForegroundColor:whiteColor3];

  darkGrayColor = [MEMORY[0x1E69DC888] darkGrayColor];
  v53 = [darkGrayColor colorWithAlphaComponent:0.7];
  [grayButtonConfiguration2 setBaseBackgroundColor:v53];

  [grayButtonConfiguration2 setTitle:&stru_1F2AC6818];
  v54 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v54 setConfiguration:grayButtonConfiguration2];
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v54 setUserInteractionEnabled:0];
  view13 = [(PUWallpaperPosterEditDebugViewController *)v90 view];
  [view13 addSubview:v54];

  v78 = MEMORY[0x1E696ACD8];
  centerXAnchor3 = [v54 centerXAnchor];
  view14 = [(PUWallpaperPosterEditDebugViewController *)v90 view];
  centerXAnchor4 = [view14 centerXAnchor];
  v58 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v93[0] = v58;
  bottomAnchor4 = [v54 bottomAnchor];
  pageControl = [(PUWallpaperPosterEditDebugViewController *)v90 pageControl];
  topAnchor6 = [pageControl topAnchor];
  v62 = [bottomAnchor4 constraintEqualToAnchor:topAnchor6 constant:10.0];
  v93[1] = v62;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  [v78 activateConstraints:v63];

  [(PUWallpaperPosterEditDebugViewController *)v90 setLookLabelButton:v54];
}

- (void)_setupEditorViews
{
  view = [(PUWallpaperPosterEditDebugViewController *)self view];
  [view bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v3, v5, v7, v9}];
  [(UIView *)v11 setAutoresizingMask:18];
  [view addSubview:v11];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v11;
  v13 = v11;

  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [(UIView *)v14 setAutoresizingMask:18];
  [view addSubview:v14];
  foregroundView = self->_foregroundView;
  self->_foregroundView = v14;
  v16 = v14;

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v29 = CGRectOffset(v28, 0.0, 100.0);
  v17 = [[PUWallpaperPosterDateView alloc] initWithFrame:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
  [view addSubview:v17];
  [(PUWallpaperPosterEditDebugViewController *)self setDateView:v17];
  v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [(UIView *)v18 setAutoresizingMask:18];
  [view addSubview:v18];
  floatingView = self->_floatingView;
  self->_floatingView = v18;
  v20 = v18;

  v21 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v4, v6, v8, v10}];
  [(UIScrollView *)v21 setAutoresizingMask:18];
  [(UIScrollView *)v21 setPagingEnabled:1];
  [(UIScrollView *)v21 setScrollsToTop:0];
  [(UIScrollView *)v21 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v21 setDelegate:self];
  [view addSubview:v21];
  looksScrollView = self->_looksScrollView;
  self->_looksScrollView = v21;
  v23 = v21;

  v24 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [(UIView *)v24 setAutoresizingMask:18];
  [(UIScrollView *)v23 addSubview:v24];
  contentOverlayView = self->_contentOverlayView;
  self->_contentOverlayView = v24;
}

- (void)_updateLookControls
{
  availableLooks = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  currentLookIndex = [(PUWallpaperPosterEditDebugViewController *)self currentLookIndex];
  v4 = [availableLooks objectAtIndexedSubscript:currentLookIndex];
  pageControl = [(PUWallpaperPosterEditDebugViewController *)self pageControl];
  [pageControl setNumberOfPages:{objc_msgSend(availableLooks, "count")}];
  [pageControl setCurrentPage:currentLookIndex];
  lookLabelButton = [(PUWallpaperPosterEditDebugViewController *)self lookLabelButton];
  displayName = [v4 displayName];
  [lookLabelButton setTitle:displayName forState:0];

  dateView = [(PUWallpaperPosterEditDebugViewController *)self dateView];
  pu_timeFontIdentifier = [v4 pu_timeFontIdentifier];
  v10 = PUPosterSimulatedTimeFontForIdentifier(pu_timeFontIdentifier);
  [dateView setTimeFont:v10];

  pu_timeFontColor = [v4 pu_timeFontColor];
  color = [pu_timeFontColor color];
  [dateView setTimeColor:color];

  [dateView setUseVibrantAppearance:{objc_msgSend(v4, "pu_timeAppearance") == 1}];
}

- (void)_updateLooks
{
  [(PUWallpaperPosterEditDebugViewController *)self _updateLookProperties];
  posterEditorController = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  availableLooks = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  firstObject = [availableLooks firstObject];
  [posterEditorController editor:self populateViews:self forLook:firstObject];

  availableLooks2 = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  v7 = [availableLooks2 count];

  looksScrollView = [(PUWallpaperPosterEditDebugViewController *)self looksScrollView];
  [looksScrollView bounds];
  PXRectWithOriginAndSize();
  v9 = v8;
  v11 = v10 * v7;
  looksScrollView2 = [(PUWallpaperPosterEditDebugViewController *)self looksScrollView];
  [looksScrollView2 setContentSize:{v11, v9}];
}

- (void)_updateLookProperties
{
  posterEditorController = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v5 = [posterEditorController looksForEditor:self];
  [(PUWallpaperPosterEditDebugViewController *)self setAvailableLooks:v5];
  if (objc_opt_respondsToSelector())
  {
    v6 = [posterEditorController initialLookIdentifierForEditor:self];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PUWallpaperPosterEditDebugViewController__updateLookProperties__block_invoke;
    v10[3] = &unk_1E7B80DF8;
    v7 = v6;
    v11 = v7;
    v8 = [v5 indexOfObjectPassingTest:v10];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditDebugViewController.m" lineNumber:338 description:@"Initial look is not found among available looks."];
    }

    [(PUWallpaperPosterEditDebugViewController *)self setCurrentLookIndex:v8];
  }

  [(PUWallpaperPosterEditDebugViewController *)self _updateLookControls];
}

uint64_t __65__PUWallpaperPosterEditDebugViewController__updateLookProperties__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)_setupPosterEditorController
{
  posterEditorController = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  editEnvironment = [(PUWallpaperPosterEditDebugViewController *)self editEnvironment];
  [posterEditorController editor:self didInitializeWithEnvironment:editEnvironment];

  [(PUWallpaperPosterEditDebugViewController *)self _updateLooks];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PUWallpaperPosterEditDebugViewController;
  [(PUWallpaperPosterEditDebugViewController *)&v5 viewDidDisappear:disappear];
  posterEditorController = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  [posterEditorController editorDidInvalidate:self];
  [(PUWallpaperPosterEditDebugViewController *)self setPosterEditorController:0];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterEditDebugViewController;
  [(PUWallpaperPosterEditDebugViewController *)&v6 viewDidLoad];
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  view = [(PUWallpaperPosterEditDebugViewController *)self view];
  [view setBackgroundColor:grayColor];

  [(PUWallpaperPosterEditDebugViewController *)self _setupEditorViews];
  [(PUWallpaperPosterEditDebugViewController *)self _setupSimulatedControls];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PUWallpaperPosterEditDebugViewController_viewDidLoad__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (PUWallpaperPosterEditDebugViewController)initWithAssets:(id)assets posterType:(int64_t)type photoLibrary:(id)library
{
  assetsCopy = assets;
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = PUWallpaperPosterEditDebugViewController;
  v10 = [(PUWallpaperPosterEditDebugViewController *)&v18 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = PXMap();
    v12 = [objc_alloc(MEMORY[0x1E69C07F0]) initWithDescriptorType:type media:v11];
    v13 = [[_PUWallpaperPosterEditorDebugEnvironment alloc] initWithPosterDescriptor:v12];
    editEnvironment = v10->_editEnvironment;
    v10->_editEnvironment = v13;

    v15 = [[PUWallpaperPosterEditorController alloc] initWithWallpaperEditor:v10 photoLibrary:libraryCopy];
    posterEditorController = v10->_posterEditorController;
    v10->_posterEditorController = v15;
  }

  return v10;
}

id __83__PUWallpaperPosterEditDebugViewController_initWithAssets_posterType_photoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69C0808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 uuid];

  v6 = [v4 initWithAssetUUID:v5];

  return v6;
}

- (PUWallpaperPosterEditDebugViewController)initWithExistingConfiguration:(id)configuration assetDirectory:(id)directory overrideConfiguration:(id)overrideConfiguration photoLibrary:(id)library
{
  configurationCopy = configuration;
  overrideConfigurationCopy = overrideConfiguration;
  libraryCopy = library;
  v18.receiver = self;
  v18.super_class = PUWallpaperPosterEditDebugViewController;
  v12 = [(PUWallpaperPosterEditDebugViewController *)&v18 initWithNibName:0 bundle:0];
  if (v12)
  {
    v13 = [[_PUWallpaperPosterEditorDebugEnvironment alloc] initWithSourcePosterConfiguration:configurationCopy];
    editEnvironment = v12->_editEnvironment;
    v12->_editEnvironment = v13;

    [(_PUWallpaperPosterEditorDebugEnvironment *)v12->_editEnvironment setOverrideConfiguration:overrideConfigurationCopy];
    v15 = [[PUWallpaperPosterEditorController alloc] initWithWallpaperEditor:v12 photoLibrary:libraryCopy];
    posterEditorController = v12->_posterEditorController;
    v12->_posterEditorController = v15;
  }

  return v12;
}

- (PUWallpaperPosterEditDebugViewController)initWithMigratorOfLegacyConfigurationType:(unint64_t)type photoLibrary:(id)library
{
  v18[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = PUWallpaperPosterEditDebugViewController;
  v7 = [(PUWallpaperPosterEditDebugViewController *)&v17 initWithNibName:0 bundle:0];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69C07E8]) initWithConfigurationType:0];
    [v8 setOptions:2];
    v9 = [objc_alloc(MEMORY[0x1E69C0808]) initWithAssetUUID:0];
    v18[0] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v8 setMedia:v10];

    v11 = [[_PUWallpaperPosterEditorDebugEnvironment alloc] initWithSourcePosterConfiguration:v8];
    editEnvironment = v7->_editEnvironment;
    v7->_editEnvironment = v11;

    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/tmp/PhotosPosterMigration/"];
    [(_PUWallpaperPosterEditorDebugEnvironment *)v7->_editEnvironment setSourceAssetDirectory:v13];

    [(_PUWallpaperPosterEditorDebugEnvironment *)v7->_editEnvironment setLegacyConfigurationType:type];
    v14 = [[PUWallpaperPosterEditorController alloc] initWithWallpaperEditor:v7 photoLibrary:libraryCopy];
    posterEditorController = v7->_posterEditorController;
    v7->_posterEditorController = v14;
  }

  return v7;
}

- (PUWallpaperPosterEditDebugViewController)initWithAsset:(id)asset posterType:(int64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = MEMORY[0x1E695DEC8];
  assetCopy2 = asset;
  v8 = [v6 arrayWithObjects:&assetCopy count:1];
  photoLibrary = [assetCopy2 photoLibrary];

  v10 = [(PUWallpaperPosterEditDebugViewController *)self initWithAssets:v8 posterType:type photoLibrary:photoLibrary];
  return v10;
}

- (PUWallpaperPosterEditDebugViewController)initWithAsset:(id)asset
{
  v11 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = MEMORY[0x1E695DEC8];
  assetCopy2 = asset;
  v6 = [v4 arrayWithObjects:&assetCopy count:1];
  photoLibrary = [assetCopy2 photoLibrary];

  v8 = [(PUWallpaperPosterEditDebugViewController *)self initWithAssets:v6 posterType:1 photoLibrary:photoLibrary];
  return v8;
}

@end
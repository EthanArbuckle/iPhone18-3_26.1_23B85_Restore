@interface PUWallpaperPosterEditDebugViewController
- (BOOL)pu_idleTimerDisabled;
- (PUPosterEditingLook)pu_currentLook;
- (PUWallpaperPosterEditDebugViewController)initWithAsset:(id)a3;
- (PUWallpaperPosterEditDebugViewController)initWithAsset:(id)a3 posterType:(int64_t)a4;
- (PUWallpaperPosterEditDebugViewController)initWithAssets:(id)a3 posterType:(int64_t)a4 photoLibrary:(id)a5;
- (PUWallpaperPosterEditDebugViewController)initWithExistingConfiguration:(id)a3 assetDirectory:(id)a4 overrideConfiguration:(id)a5 photoLibrary:(id)a6;
- (PUWallpaperPosterEditDebugViewController)initWithMigratorOfLegacyConfigurationType:(unint64_t)a3 photoLibrary:(id)a4;
- (UIAction)pu_placeholderAction;
- (UIEdgeInsets)pu_editingChromeDodgingInsets;
- (id)pu_disableIdleTimer;
- (id)pu_viewForMenuElementIdentifier:(id)a3;
- (void)_dismissAndCancel:(id)a3;
- (void)_dismissAndSave:(id)a3;
- (void)_handlePageControlSelectedPage:(id)a3;
- (void)_setupEditorViews;
- (void)_setupPosterEditorController;
- (void)_setupSimulatedControls;
- (void)_updateLookControls;
- (void)_updateLookProperties;
- (void)_updateLooks;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)presentColorPickerWithConfiguration:(id)a3 changeHandler:(id)a4;
- (void)pu_requestDismissalWithAction:(int64_t)a3;
- (void)pu_updatePreferences:(id)a3;
- (void)px_updatePreferences:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)updateActions;
- (void)viewDidDisappear:(BOOL)a3;
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

- (id)pu_viewForMenuElementIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PUWallpaperPosterEditDebugViewController *)self editToolBar];
  v6 = [v5 viewForMenuElementIdentifier:v4];

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
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 setIdleTimerDisabled:1];

  v3 = objc_alloc_init(_PUWallpaperPosterDebugIdleTimerAssertion);

  return v3;
}

- (BOOL)pu_idleTimerDisabled
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 isIdleTimerDisabled];

  return v3;
}

- (void)pu_requestDismissalWithAction:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
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
  v6 = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v3 = [v6 leadingMenuElementsForEditor:self];
  v4 = [v6 trailingMenuElementsForEditor:self];
  v5 = [(PUWallpaperPosterEditDebugViewController *)self editToolBar];
  [v5 setLeadingMenuElements:v3];
  [v5 setTrailingMenuElements:v4];
}

- (PUPosterEditingLook)pu_currentLook
{
  v3 = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  v4 = [v3 objectAtIndexedSubscript:{-[PUWallpaperPosterEditDebugViewController currentLookIndex](self, "currentLookIndex")}];

  return v4;
}

- (void)px_updatePreferences:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(_PUWallpaperDebugTransition);
  v5 = [(PUWallpaperPosterEditDebugViewController *)self editPreferences];
  v4[2](v4, v5, v6);
}

- (void)pu_updatePreferences:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(_PUWallpaperDebugTransition);
  v5 = [(PUWallpaperPosterEditDebugViewController *)self editPreferences];
  v4[2](v4, v5, v6);
}

- (void)presentColorPickerWithConfiguration:(id)a3 changeHandler:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DC8A0];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v10 = [v8 prompt];

  [v9 setTitle:v10];
  [v9 setDelegate:self];
  [v9 setModalPresentationStyle:1];
  v11 = [v9 sheetPresentationController];
  v12 = [MEMORY[0x1E69DCF58] mediumDetent];
  v14[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v11 setDetents:v13];

  [(PUWallpaperPosterEditDebugViewController *)self setColorPickerChangeHandler:v7];
  [(PUWallpaperPosterEditDebugViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v8 = a4;
  v6 = [(PUWallpaperPosterEditDebugViewController *)self colorPickerChangeHandler];

  if (v6)
  {
    v7 = [(PUWallpaperPosterEditDebugViewController *)self colorPickerChangeHandler];
    (v7)[2](v7, v8);
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  v8 = v7;
  [v4 frame];
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
  v21 = [(PUWallpaperPosterEditDebugViewController *)self pageControl];
  [v21 setCurrentPage:v20];

  v32 = [(PUWallpaperPosterEditDebugViewController *)self pu_currentLook];
  v22 = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  v23 = [(PUWallpaperPosterEditDebugViewController *)self contentOverlayView];
  [v23 frame];
  [v23 setFrame:{v6, v8}];
  if ([v22 count] > v19)
  {
    v24 = [v22 objectAtIndex:vcvtmd_u64_f64(v17)];
    v25 = [v22 count];
    v26 = vcvtpd_u64_f64(v17);
    if (v25 - 1 >= v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = v25 - 1;
    }

    v28 = [v22 objectAtIndex:v27];
    if (v24 != v28)
    {
      if (v24 == v32)
      {
        v29 = v28;
      }

      else
      {
        v29 = v24;
      }

      if (v24 != v32)
      {
        v18 = 1.0 - v18;
      }

      v30 = v29;
      v31 = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
      [v31 editor:self didTransitionToLook:v30 progress:v18];
    }

    [(PUWallpaperPosterEditDebugViewController *)self setCurrentLookIndex:v20];
    [(PUWallpaperPosterEditDebugViewController *)self _updateLookControls];
  }
}

- (void)_handlePageControlSelectedPage:(id)a3
{
  v4 = a3;
  v8 = [(PUWallpaperPosterEditDebugViewController *)self looksScrollView];
  v5 = [v4 interactionState] == 1;
  [v8 frame];
  Width = CGRectGetWidth(v10);
  v7 = [v4 currentPage];

  [v8 setContentOffset:v5 animated:{Width * v7, 0.0}];
}

- (void)_dismissAndCancel:(id)a3
{
  v3 = [(PUWallpaperPosterEditDebugViewController *)self presentingViewController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)_dismissAndSave:(id)a3
{
  v4 = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60__PUWallpaperPosterEditDebugViewController__dismissAndSave___block_invoke;
  v5[3] = &unk_1E7B80DD0;
  v5[4] = self;
  [v4 editor:self finalizeWithCompletion:v5];
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
  v3 = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v4 = [v3 editViewModel];

  v5 = [v4 currentLayerStackViewModel];
  v6 = [v5 currentLayerStack];

  v7 = [v6 layout];
  v8 = [v4 currentLayerStackViewModel];
  [v8 containerFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (v7)
  {
    v19.origin.x = v10;
    v19.origin.y = v12;
    v19.size.width = v14;
    v19.size.height = v16;
    if (!CGRectIsEmpty(v19))
    {
      v17 = [(PUWallpaperPosterEditDebugViewController *)self dateView];
      [v17 layoutWithLayout:v7 inContainerFrame:{v10, v12, v14, v16}];
    }
  }
}

- (void)_setupSimulatedControls
{
  v96[4] = *MEMORY[0x1E69E9840];
  [(PUWallpaperPosterEditDebugViewController *)self setModalPresentationCapturesStatusBarAppearance:1];
  v3 = [MEMORY[0x1E69DC740] filledButtonConfiguration];
  [v3 setButtonSize:1];
  v89 = v3;
  [v3 setCornerStyle:4];
  v4 = [MEMORY[0x1E69DC888] systemBlueColor];
  [v3 setBaseBackgroundColor:v4];

  v5 = [MEMORY[0x1E69DC888] whiteColor];
  [v3 setBaseForegroundColor:v5];

  [v3 setTitle:@"Done"];
  v6 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v6 setConfiguration:v3];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = v6;
  [v6 addTarget:self action:sel__dismissAndSave_ forControlEvents:0x2000];
  v8 = self;
  v9 = [(PUWallpaperPosterEditDebugViewController *)self view];
  [v9 addSubview:v7];

  v10 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [v10 setButtonSize:1];
  [v10 setCornerStyle:4];
  v11 = [MEMORY[0x1E69DC888] whiteColor];
  [v10 setBaseForegroundColor:v11];

  v88 = v10;
  [v10 setTitle:@"Cancel"];
  v12 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v12 setConfiguration:v10];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = v12;
  [v12 addTarget:v8 action:sel__dismissAndCancel_ forControlEvents:0x2000];
  v14 = [(PUWallpaperPosterEditDebugViewController *)v8 view];
  [v14 addSubview:v13];

  v68 = MEMORY[0x1E696ACD8];
  v87 = v7;
  v83 = [v7 topAnchor];
  v91 = [(PUWallpaperPosterEditDebugViewController *)v8 view];
  v79 = [v91 topAnchor];
  v75 = [v83 constraintEqualToAnchor:v79 constant:20.0];
  v96[0] = v75;
  v70 = [v7 trailingAnchor];
  v15 = v8;
  v72 = [(PUWallpaperPosterEditDebugViewController *)v8 view];
  v66 = [v72 trailingAnchor];
  v64 = [v70 constraintEqualToAnchor:v66 constant:-20.0];
  v96[1] = v64;
  v16 = v13;
  v86 = v13;
  v17 = [v13 topAnchor];
  v18 = [(PUWallpaperPosterEditDebugViewController *)v8 view];
  v19 = [v18 topAnchor];
  v20 = [v17 constraintEqualToAnchor:v19 constant:20.0];
  v96[2] = v20;
  v21 = [v16 leadingAnchor];
  v22 = [(PUWallpaperPosterEditDebugViewController *)v8 view];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:20.0];
  v96[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:4];
  [v68 activateConstraints:v25];

  v26 = objc_alloc_init(PUWallpaperPosterEditToolBar);
  [(PUWallpaperPosterEditToolBar *)v26 setAutoresizingMask:18];
  v27 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  [v27 addSubview:v26];

  [(PUWallpaperPosterEditToolBar *)v26 setDelegate:v15];
  [(PUWallpaperPosterEditToolBar *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v65 = MEMORY[0x1E696ACD8];
  v80 = [(PUWallpaperPosterEditToolBar *)v26 bottomAnchor];
  v84 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  v76 = [v84 layoutMarginsGuide];
  v73 = [v76 bottomAnchor];
  v71 = [v80 constraintEqualToAnchor:v73];
  v95[0] = v71;
  v67 = [(PUWallpaperPosterEditToolBar *)v26 leadingAnchor];
  v69 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  v28 = [v69 leadingAnchor];
  v29 = [v67 constraintEqualToAnchor:v28];
  v95[1] = v29;
  v92 = v26;
  v30 = [(PUWallpaperPosterEditToolBar *)v26 trailingAnchor];
  v31 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v95[2] = v33;
  v34 = [(PUWallpaperPosterEditToolBar *)v26 heightAnchor];
  v35 = [v34 constraintEqualToConstant:44.0];
  v95[3] = v35;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:4];
  [v65 activateConstraints:v36];

  [(PUWallpaperPosterEditDebugViewController *)v15 setEditToolBar:v92];
  v37 = objc_alloc(MEMORY[0x1E69DCD10]);
  v38 = [v37 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v38 addTarget:v15 action:sel__handlePageControlSelectedPage_ forControlEvents:0x2000];
  v39 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  [v39 addSubview:v38];

  v74 = MEMORY[0x1E696ACD8];
  v77 = [v38 centerXAnchor];
  v90 = v15;
  v81 = [(PUWallpaperPosterEditDebugViewController *)v15 view];
  v40 = [v81 centerXAnchor];
  v41 = [v77 constraintEqualToAnchor:v40];
  v94[0] = v41;
  v42 = [v38 bottomAnchor];
  v43 = [(PUWallpaperPosterEditDebugViewController *)v15 editToolBar];
  v44 = [v43 topAnchor];
  v45 = [v42 constraintEqualToAnchor:v44 constant:10.0];
  v94[1] = v45;
  v46 = v38;
  v85 = v38;
  v47 = [v38 heightAnchor];
  v48 = [v47 constraintEqualToConstant:50.0];
  v94[2] = v48;
  v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];
  [v74 activateConstraints:v49];

  [(PUWallpaperPosterEditDebugViewController *)v90 setPageControl:v46];
  v50 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
  [v50 setButtonSize:1];
  [v50 setCornerStyle:1];
  v51 = [MEMORY[0x1E69DC888] whiteColor];
  [v50 setBaseForegroundColor:v51];

  v52 = [MEMORY[0x1E69DC888] darkGrayColor];
  v53 = [v52 colorWithAlphaComponent:0.7];
  [v50 setBaseBackgroundColor:v53];

  [v50 setTitle:&stru_1F2AC6818];
  v54 = [MEMORY[0x1E69DC738] buttonWithType:1];
  [v54 setConfiguration:v50];
  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v54 setUserInteractionEnabled:0];
  v55 = [(PUWallpaperPosterEditDebugViewController *)v90 view];
  [v55 addSubview:v54];

  v78 = MEMORY[0x1E696ACD8];
  v82 = [v54 centerXAnchor];
  v56 = [(PUWallpaperPosterEditDebugViewController *)v90 view];
  v57 = [v56 centerXAnchor];
  v58 = [v82 constraintEqualToAnchor:v57];
  v93[0] = v58;
  v59 = [v54 bottomAnchor];
  v60 = [(PUWallpaperPosterEditDebugViewController *)v90 pageControl];
  v61 = [v60 topAnchor];
  v62 = [v59 constraintEqualToAnchor:v61 constant:10.0];
  v93[1] = v62;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  [v78 activateConstraints:v63];

  [(PUWallpaperPosterEditDebugViewController *)v90 setLookLabelButton:v54];
}

- (void)_setupEditorViews
{
  v26 = [(PUWallpaperPosterEditDebugViewController *)self view];
  [v26 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v3, v5, v7, v9}];
  [(UIView *)v11 setAutoresizingMask:18];
  [v26 addSubview:v11];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v11;
  v13 = v11;

  v14 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [(UIView *)v14 setAutoresizingMask:18];
  [v26 addSubview:v14];
  foregroundView = self->_foregroundView;
  self->_foregroundView = v14;
  v16 = v14;

  v28.origin.x = v4;
  v28.origin.y = v6;
  v28.size.width = v8;
  v28.size.height = v10;
  v29 = CGRectOffset(v28, 0.0, 100.0);
  v17 = [[PUWallpaperPosterDateView alloc] initWithFrame:v29.origin.x, v29.origin.y, v29.size.width, v29.size.height];
  [v26 addSubview:v17];
  [(PUWallpaperPosterEditDebugViewController *)self setDateView:v17];
  v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v6, v8, v10}];
  [(UIView *)v18 setAutoresizingMask:18];
  [v26 addSubview:v18];
  floatingView = self->_floatingView;
  self->_floatingView = v18;
  v20 = v18;

  v21 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v4, v6, v8, v10}];
  [(UIScrollView *)v21 setAutoresizingMask:18];
  [(UIScrollView *)v21 setPagingEnabled:1];
  [(UIScrollView *)v21 setScrollsToTop:0];
  [(UIScrollView *)v21 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v21 setDelegate:self];
  [v26 addSubview:v21];
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
  v13 = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  v3 = [(PUWallpaperPosterEditDebugViewController *)self currentLookIndex];
  v4 = [v13 objectAtIndexedSubscript:v3];
  v5 = [(PUWallpaperPosterEditDebugViewController *)self pageControl];
  [v5 setNumberOfPages:{objc_msgSend(v13, "count")}];
  [v5 setCurrentPage:v3];
  v6 = [(PUWallpaperPosterEditDebugViewController *)self lookLabelButton];
  v7 = [v4 displayName];
  [v6 setTitle:v7 forState:0];

  v8 = [(PUWallpaperPosterEditDebugViewController *)self dateView];
  v9 = [v4 pu_timeFontIdentifier];
  v10 = PUPosterSimulatedTimeFontForIdentifier(v9);
  [v8 setTimeFont:v10];

  v11 = [v4 pu_timeFontColor];
  v12 = [v11 color];
  [v8 setTimeColor:v12];

  [v8 setUseVibrantAppearance:{objc_msgSend(v4, "pu_timeAppearance") == 1}];
}

- (void)_updateLooks
{
  [(PUWallpaperPosterEditDebugViewController *)self _updateLookProperties];
  v3 = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v4 = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  v5 = [v4 firstObject];
  [v3 editor:self populateViews:self forLook:v5];

  v6 = [(PUWallpaperPosterEditDebugViewController *)self availableLooks];
  v7 = [v6 count];

  v13 = [(PUWallpaperPosterEditDebugViewController *)self looksScrollView];
  [v13 bounds];
  PXRectWithOriginAndSize();
  v9 = v8;
  v11 = v10 * v7;
  v12 = [(PUWallpaperPosterEditDebugViewController *)self looksScrollView];
  [v12 setContentSize:{v11, v9}];
}

- (void)_updateLookProperties
{
  v4 = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v5 = [v4 looksForEditor:self];
  [(PUWallpaperPosterEditDebugViewController *)self setAvailableLooks:v5];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 initialLookIdentifierForEditor:self];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__PUWallpaperPosterEditDebugViewController__updateLookProperties__block_invoke;
    v10[3] = &unk_1E7B80DF8;
    v7 = v6;
    v11 = v7;
    v8 = [v5 indexOfObjectPassingTest:v10];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterEditDebugViewController.m" lineNumber:338 description:@"Initial look is not found among available looks."];
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
  v4 = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  v3 = [(PUWallpaperPosterEditDebugViewController *)self editEnvironment];
  [v4 editor:self didInitializeWithEnvironment:v3];

  [(PUWallpaperPosterEditDebugViewController *)self _updateLooks];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PUWallpaperPosterEditDebugViewController;
  [(PUWallpaperPosterEditDebugViewController *)&v5 viewDidDisappear:a3];
  v4 = [(PUWallpaperPosterEditDebugViewController *)self posterEditorController];
  [v4 editorDidInvalidate:self];
  [(PUWallpaperPosterEditDebugViewController *)self setPosterEditorController:0];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUWallpaperPosterEditDebugViewController;
  [(PUWallpaperPosterEditDebugViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] grayColor];
  v4 = [(PUWallpaperPosterEditDebugViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(PUWallpaperPosterEditDebugViewController *)self _setupEditorViews];
  [(PUWallpaperPosterEditDebugViewController *)self _setupSimulatedControls];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PUWallpaperPosterEditDebugViewController_viewDidLoad__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (PUWallpaperPosterEditDebugViewController)initWithAssets:(id)a3 posterType:(int64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = PUWallpaperPosterEditDebugViewController;
  v10 = [(PUWallpaperPosterEditDebugViewController *)&v18 initWithNibName:0 bundle:0];
  if (v10)
  {
    v11 = PXMap();
    v12 = [objc_alloc(MEMORY[0x1E69C07F0]) initWithDescriptorType:a4 media:v11];
    v13 = [[_PUWallpaperPosterEditorDebugEnvironment alloc] initWithPosterDescriptor:v12];
    editEnvironment = v10->_editEnvironment;
    v10->_editEnvironment = v13;

    v15 = [[PUWallpaperPosterEditorController alloc] initWithWallpaperEditor:v10 photoLibrary:v9];
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

- (PUWallpaperPosterEditDebugViewController)initWithExistingConfiguration:(id)a3 assetDirectory:(id)a4 overrideConfiguration:(id)a5 photoLibrary:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = PUWallpaperPosterEditDebugViewController;
  v12 = [(PUWallpaperPosterEditDebugViewController *)&v18 initWithNibName:0 bundle:0];
  if (v12)
  {
    v13 = [[_PUWallpaperPosterEditorDebugEnvironment alloc] initWithSourcePosterConfiguration:v9];
    editEnvironment = v12->_editEnvironment;
    v12->_editEnvironment = v13;

    [(_PUWallpaperPosterEditorDebugEnvironment *)v12->_editEnvironment setOverrideConfiguration:v10];
    v15 = [[PUWallpaperPosterEditorController alloc] initWithWallpaperEditor:v12 photoLibrary:v11];
    posterEditorController = v12->_posterEditorController;
    v12->_posterEditorController = v15;
  }

  return v12;
}

- (PUWallpaperPosterEditDebugViewController)initWithMigratorOfLegacyConfigurationType:(unint64_t)a3 photoLibrary:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
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

    [(_PUWallpaperPosterEditorDebugEnvironment *)v7->_editEnvironment setLegacyConfigurationType:a3];
    v14 = [[PUWallpaperPosterEditorController alloc] initWithWallpaperEditor:v7 photoLibrary:v6];
    posterEditorController = v7->_posterEditorController;
    v7->_posterEditorController = v14;
  }

  return v7;
}

- (PUWallpaperPosterEditDebugViewController)initWithAsset:(id)a3 posterType:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a3;
  v8 = [v6 arrayWithObjects:&v12 count:1];
  v9 = [v7 photoLibrary];

  v10 = [(PUWallpaperPosterEditDebugViewController *)self initWithAssets:v8 posterType:a4 photoLibrary:v9];
  return v10;
}

- (PUWallpaperPosterEditDebugViewController)initWithAsset:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];
  v7 = [v5 photoLibrary];

  v8 = [(PUWallpaperPosterEditDebugViewController *)self initWithAssets:v6 posterType:1 photoLibrary:v7];
  return v8;
}

@end
@interface SBHIconShareSheetManager
- (BOOL)areAnyAppIconShareSheetsShowing;
- (CGRect)_iconViewFrameInScreenCoordinateSpace:(id)space;
- (SBHIconManager)iconManager;
- (SBHIconShareSheetManager)initWithIconManager:(id)manager;
- (SBIcon)iconWithShareSheetHidingForRotationAnimation;
- (SBIconView)iconView;
- (id)_shareSheetPresentationViewControllerForIconView:(id)view;
- (void)_appIconForceTouchControllerDidDismissNotification:(id)notification;
- (void)_createFakeSourceViewForIconView:(id)view;
- (void)_presentShareSheet:(id)sheet forIconView:(id)view;
- (void)_queueShareSheetPresentation:(id)presentation forIconView:(id)view;
- (void)dealloc;
- (void)dismissIconShareSheetsIfNecessaryAndCleanUp;
- (void)hideIconShareSheetsIfAnyForRotationAnimation;
- (void)presentShareSheetForIconView:(id)view;
- (void)showIconShareSheetsIfAnyWereHiddenForRotationAnimation;
@end

@implementation SBHIconShareSheetManager

- (BOOL)areAnyAppIconShareSheetsShowing
{
  shareSheetViewController = [(SBHIconShareSheetManager *)self shareSheetViewController];
  v3 = shareSheetViewController != 0;

  return v3;
}

- (SBHIconShareSheetManager)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SBHIconShareSheetManager;
  v5 = [(SBHIconShareSheetManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__appIconForceTouchControllerDidDismissNotification_ name:@"SBIconViewDidDismissContextMenuNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHIconShareSheetManager;
  [(SBHIconShareSheetManager *)&v4 dealloc];
}

- (void)dismissIconShareSheetsIfNecessaryAndCleanUp
{
  fakeSourceView = [(SBHIconShareSheetManager *)self fakeSourceView];
  [fakeSourceView removeFromSuperview];

  [(SBHIconShareSheetManager *)self setFakeSourceView:0];
  shareSheetViewController = [(SBHIconShareSheetManager *)self shareSheetViewController];
  presentingViewController = [shareSheetViewController presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
  [(SBHIconShareSheetManager *)self setShareSheetViewController:0];
  [(SBHIconShareSheetManager *)self setIconView:0];
}

- (void)presentShareSheetForIconView:(id)view
{
  v21[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  iconManager = [(SBHIconShareSheetManager *)self iconManager];
  icon = [viewCopy icon];
  v7 = [[SBHIconShareSheetActivityItemProvider alloc] initWithIconManager:iconManager icon:icon];
  v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v21[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

  if ([iconManager isFloatingDockSupported])
  {
    [(SBHIconShareSheetManager *)self _createFakeSourceViewForIconView:viewCopy];
    fakeSourceView = [(SBHIconShareSheetManager *)self fakeSourceView];
    popoverPresentationController = [v10 popoverPresentationController];
    [popoverPresentationController setSourceView:fakeSourceView];
    [fakeSourceView bounds];
    [popoverPresentationController setSourceRect:?];
    [popoverPresentationController setPermittedArrowDirections:15];
    [popoverPresentationController setCanOverlapSourceViewRect:1];
  }

  objc_initWeak(&location, self);
  objc_initWeak(&from, v10);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __57__SBHIconShareSheetManager_presentShareSheetForIconView___block_invoke;
  v16 = &unk_1E808D2E0;
  objc_copyWeak(&v17, &from);
  objc_copyWeak(&v18, &location);
  [v10 setCompletionWithItemsHandler:&v13];
  [(SBHIconShareSheetManager *)self _queueShareSheetPresentation:v10 forIconView:viewCopy, v13, v14, v15, v16];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __57__SBHIconShareSheetManager_presentShareSheetForIconView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained view];
  v3 = [v2 window];
  if (!v3)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 dismissIconShareSheetsIfNecessaryAndCleanUp];
  }
}

- (void)hideIconShareSheetsIfAnyForRotationAnimation
{
  areAnyAppIconShareSheetsShowing = [(SBHIconShareSheetManager *)self areAnyAppIconShareSheetsShowing];
  iconShareSheetsAreHiddenForRotation = [(SBHIconShareSheetManager *)self iconShareSheetsAreHiddenForRotation];
  if (areAnyAppIconShareSheetsShowing || !iconShareSheetsAreHiddenForRotation)
  {
    [(SBHIconShareSheetManager *)self setIconShareSheetsAreHiddenForRotation:1];
    iconView = [(SBHIconShareSheetManager *)self iconView];
    icon = [iconView icon];
    location = [iconView location];
    [(SBHIconShareSheetManager *)self setIconWithShareSheetHidingForRotationAnimation:icon];
    [(SBHIconShareSheetManager *)self setLocationOfIconWithShareSheetHiddenForRotationAnimation:location];
    fakeSourceView = [(SBHIconShareSheetManager *)self fakeSourceView];
    [fakeSourceView setFrame:{-10000.0, -10000.0, 100.0, 100.0}];
  }
}

- (void)showIconShareSheetsIfAnyWereHiddenForRotationAnimation
{
  areAnyAppIconShareSheetsShowing = [(SBHIconShareSheetManager *)self areAnyAppIconShareSheetsShowing];
  iconShareSheetsAreHiddenForRotation = [(SBHIconShareSheetManager *)self iconShareSheetsAreHiddenForRotation];
  if (areAnyAppIconShareSheetsShowing || iconShareSheetsAreHiddenForRotation)
  {
    [(SBHIconShareSheetManager *)self setIconShareSheetsAreHiddenForRotation:0];
    iconManager = [(SBHIconShareSheetManager *)self iconManager];
    iconWithShareSheetHidingForRotationAnimation = [(SBHIconShareSheetManager *)self iconWithShareSheetHidingForRotationAnimation];
    locationOfIconWithShareSheetHiddenForRotationAnimation = [(SBHIconShareSheetManager *)self locationOfIconWithShareSheetHiddenForRotationAnimation];
    v7 = [iconManager iconViewForIcon:iconWithShareSheetHidingForRotationAnimation location:locationOfIconWithShareSheetHiddenForRotationAnimation];
    if (v7)
    {
      [(SBHIconShareSheetManager *)self setIconView:v7];
      fakeSourceView = [(SBHIconShareSheetManager *)self fakeSourceView];
      [(SBHIconShareSheetManager *)self _iconViewFrameInScreenCoordinateSpace:v7];
      [fakeSourceView setFrame:?];

      [(SBHIconShareSheetManager *)self setIconWithShareSheetHidingForRotationAnimation:0];
      [(SBHIconShareSheetManager *)self setLocationOfIconWithShareSheetHiddenForRotationAnimation:0];
    }

    else
    {
      [(SBHIconShareSheetManager *)self dismissIconShareSheetsIfNecessaryAndCleanUp];
    }
  }
}

- (id)_shareSheetPresentationViewControllerForIconView:(id)view
{
  viewCopy = view;
  iconManager = [(SBHIconShareSheetManager *)self iconManager];
  if ([iconManager isFloatingDockSupported])
  {
    rootViewController = [iconManager floatingDockViewControllerForView:viewCopy];
  }

  else
  {
    window = [viewCopy window];

    rootViewController = [window rootViewController];
    viewCopy = window;
  }

  return rootViewController;
}

- (void)_queueShareSheetPresentation:(id)presentation forIconView:(id)view
{
  presentationCopy = presentation;
  viewCopy = view;
  [(SBHIconShareSheetManager *)self setShareSheetViewController:presentationCopy];
  [(SBHIconShareSheetManager *)self setIconView:viewCopy];
  iconManager = [(SBHIconShareSheetManager *)self iconManager];
  if ([iconManager isFloatingDockSupported] && objc_msgSend(iconManager, "isShowingIconContextMenu"))
  {
    [(SBHIconShareSheetManager *)self setQueuedToPresentShareSheet:1];
  }

  else
  {
    [(SBHIconShareSheetManager *)self _presentShareSheet:presentationCopy forIconView:viewCopy];
  }
}

- (void)_appIconForceTouchControllerDidDismissNotification:(id)notification
{
  if ([(SBHIconShareSheetManager *)self queuedToPresentShareSheet])
  {
    [(SBHIconShareSheetManager *)self setQueuedToPresentShareSheet:0];
    shareSheetViewController = [(SBHIconShareSheetManager *)self shareSheetViewController];
    iconView = [(SBHIconShareSheetManager *)self iconView];
    [(SBHIconShareSheetManager *)self _presentShareSheet:shareSheetViewController forIconView:iconView];
  }
}

- (void)_presentShareSheet:(id)sheet forIconView:(id)view
{
  sheetCopy = sheet;
  viewCopy = view;
  [(SBHIconShareSheetManager *)self _iconViewFrameInScreenCoordinateSpace:viewCopy];
  if (CGRectIsEmpty(v10))
  {
    [(SBHIconShareSheetManager *)self dismissIconShareSheetsIfNecessaryAndCleanUp];
  }

  else
  {
    v7 = [(SBHIconShareSheetManager *)self _shareSheetPresentationViewControllerForIconView:viewCopy];
    [v7 presentViewController:sheetCopy animated:1 completion:0];
  }
}

- (void)_createFakeSourceViewForIconView:(id)view
{
  viewCopy = view;
  [(SBHIconShareSheetManager *)self _iconViewFrameInScreenCoordinateSpace:viewCopy];
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
  v9 = [(SBHIconShareSheetManager *)self _shareSheetPresentationViewControllerForIconView:viewCopy];

  view = [v9 view];
  [view addSubview:v11];
  [(SBHIconShareSheetManager *)self setFakeSourceView:v11];
}

- (CGRect)_iconViewFrameInScreenCoordinateSpace:(id)space
{
  spaceCopy = space;
  window = [spaceCopy window];
  screen = [window screen];
  [spaceCopy frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [spaceCopy iconImageFrame];
  Height = CGRectGetHeight(v27);
  superview = [spaceCopy superview];

  coordinateSpace = [screen coordinateSpace];
  [superview convertRect:coordinateSpace toCoordinateSpace:{v7, v9, v11, Height}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

- (SBIconView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (SBIcon)iconWithShareSheetHidingForRotationAnimation
{
  WeakRetained = objc_loadWeakRetained(&self->_iconWithShareSheetHidingForRotationAnimation);

  return WeakRetained;
}

@end
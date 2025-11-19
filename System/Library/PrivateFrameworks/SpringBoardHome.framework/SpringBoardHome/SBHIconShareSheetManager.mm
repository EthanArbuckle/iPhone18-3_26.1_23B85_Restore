@interface SBHIconShareSheetManager
- (BOOL)areAnyAppIconShareSheetsShowing;
- (CGRect)_iconViewFrameInScreenCoordinateSpace:(id)a3;
- (SBHIconManager)iconManager;
- (SBHIconShareSheetManager)initWithIconManager:(id)a3;
- (SBIcon)iconWithShareSheetHidingForRotationAnimation;
- (SBIconView)iconView;
- (id)_shareSheetPresentationViewControllerForIconView:(id)a3;
- (void)_appIconForceTouchControllerDidDismissNotification:(id)a3;
- (void)_createFakeSourceViewForIconView:(id)a3;
- (void)_presentShareSheet:(id)a3 forIconView:(id)a4;
- (void)_queueShareSheetPresentation:(id)a3 forIconView:(id)a4;
- (void)dealloc;
- (void)dismissIconShareSheetsIfNecessaryAndCleanUp;
- (void)hideIconShareSheetsIfAnyForRotationAnimation;
- (void)presentShareSheetForIconView:(id)a3;
- (void)showIconShareSheetsIfAnyWereHiddenForRotationAnimation;
@end

@implementation SBHIconShareSheetManager

- (BOOL)areAnyAppIconShareSheetsShowing
{
  v2 = [(SBHIconShareSheetManager *)self shareSheetViewController];
  v3 = v2 != 0;

  return v3;
}

- (SBHIconShareSheetManager)initWithIconManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHIconShareSheetManager;
  v5 = [(SBHIconShareSheetManager *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, v4);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel__appIconForceTouchControllerDidDismissNotification_ name:@"SBIconViewDidDismissContextMenuNotification" object:0];
  }

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBHIconShareSheetManager;
  [(SBHIconShareSheetManager *)&v4 dealloc];
}

- (void)dismissIconShareSheetsIfNecessaryAndCleanUp
{
  v3 = [(SBHIconShareSheetManager *)self fakeSourceView];
  [v3 removeFromSuperview];

  [(SBHIconShareSheetManager *)self setFakeSourceView:0];
  v5 = [(SBHIconShareSheetManager *)self shareSheetViewController];
  v4 = [v5 presentingViewController];
  [v4 dismissViewControllerAnimated:1 completion:0];
  [(SBHIconShareSheetManager *)self setShareSheetViewController:0];
  [(SBHIconShareSheetManager *)self setIconView:0];
}

- (void)presentShareSheetForIconView:(id)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SBHIconShareSheetManager *)self iconManager];
  v6 = [v4 icon];
  v7 = [[SBHIconShareSheetActivityItemProvider alloc] initWithIconManager:v5 icon:v6];
  v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
  v21[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

  if ([v5 isFloatingDockSupported])
  {
    [(SBHIconShareSheetManager *)self _createFakeSourceViewForIconView:v4];
    v11 = [(SBHIconShareSheetManager *)self fakeSourceView];
    v12 = [v10 popoverPresentationController];
    [v12 setSourceView:v11];
    [v11 bounds];
    [v12 setSourceRect:?];
    [v12 setPermittedArrowDirections:15];
    [v12 setCanOverlapSourceViewRect:1];
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
  [(SBHIconShareSheetManager *)self _queueShareSheetPresentation:v10 forIconView:v4, v13, v14, v15, v16];
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
  v3 = [(SBHIconShareSheetManager *)self areAnyAppIconShareSheetsShowing];
  v4 = [(SBHIconShareSheetManager *)self iconShareSheetsAreHiddenForRotation];
  if (v3 || !v4)
  {
    [(SBHIconShareSheetManager *)self setIconShareSheetsAreHiddenForRotation:1];
    v8 = [(SBHIconShareSheetManager *)self iconView];
    v5 = [v8 icon];
    v6 = [v8 location];
    [(SBHIconShareSheetManager *)self setIconWithShareSheetHidingForRotationAnimation:v5];
    [(SBHIconShareSheetManager *)self setLocationOfIconWithShareSheetHiddenForRotationAnimation:v6];
    v7 = [(SBHIconShareSheetManager *)self fakeSourceView];
    [v7 setFrame:{-10000.0, -10000.0, 100.0, 100.0}];
  }
}

- (void)showIconShareSheetsIfAnyWereHiddenForRotationAnimation
{
  v3 = [(SBHIconShareSheetManager *)self areAnyAppIconShareSheetsShowing];
  v4 = [(SBHIconShareSheetManager *)self iconShareSheetsAreHiddenForRotation];
  if (v3 || v4)
  {
    [(SBHIconShareSheetManager *)self setIconShareSheetsAreHiddenForRotation:0];
    v9 = [(SBHIconShareSheetManager *)self iconManager];
    v5 = [(SBHIconShareSheetManager *)self iconWithShareSheetHidingForRotationAnimation];
    v6 = [(SBHIconShareSheetManager *)self locationOfIconWithShareSheetHiddenForRotationAnimation];
    v7 = [v9 iconViewForIcon:v5 location:v6];
    if (v7)
    {
      [(SBHIconShareSheetManager *)self setIconView:v7];
      v8 = [(SBHIconShareSheetManager *)self fakeSourceView];
      [(SBHIconShareSheetManager *)self _iconViewFrameInScreenCoordinateSpace:v7];
      [v8 setFrame:?];

      [(SBHIconShareSheetManager *)self setIconWithShareSheetHidingForRotationAnimation:0];
      [(SBHIconShareSheetManager *)self setLocationOfIconWithShareSheetHiddenForRotationAnimation:0];
    }

    else
    {
      [(SBHIconShareSheetManager *)self dismissIconShareSheetsIfNecessaryAndCleanUp];
    }
  }
}

- (id)_shareSheetPresentationViewControllerForIconView:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconShareSheetManager *)self iconManager];
  if ([v5 isFloatingDockSupported])
  {
    v6 = [v5 floatingDockViewControllerForView:v4];
  }

  else
  {
    v7 = [v4 window];

    v6 = [v7 rootViewController];
    v4 = v7;
  }

  return v6;
}

- (void)_queueShareSheetPresentation:(id)a3 forIconView:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(SBHIconShareSheetManager *)self setShareSheetViewController:v8];
  [(SBHIconShareSheetManager *)self setIconView:v6];
  v7 = [(SBHIconShareSheetManager *)self iconManager];
  if ([v7 isFloatingDockSupported] && objc_msgSend(v7, "isShowingIconContextMenu"))
  {
    [(SBHIconShareSheetManager *)self setQueuedToPresentShareSheet:1];
  }

  else
  {
    [(SBHIconShareSheetManager *)self _presentShareSheet:v8 forIconView:v6];
  }
}

- (void)_appIconForceTouchControllerDidDismissNotification:(id)a3
{
  if ([(SBHIconShareSheetManager *)self queuedToPresentShareSheet])
  {
    [(SBHIconShareSheetManager *)self setQueuedToPresentShareSheet:0];
    v5 = [(SBHIconShareSheetManager *)self shareSheetViewController];
    v4 = [(SBHIconShareSheetManager *)self iconView];
    [(SBHIconShareSheetManager *)self _presentShareSheet:v5 forIconView:v4];
  }
}

- (void)_presentShareSheet:(id)a3 forIconView:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(SBHIconShareSheetManager *)self _iconViewFrameInScreenCoordinateSpace:v6];
  if (CGRectIsEmpty(v10))
  {
    [(SBHIconShareSheetManager *)self dismissIconShareSheetsIfNecessaryAndCleanUp];
  }

  else
  {
    v7 = [(SBHIconShareSheetManager *)self _shareSheetPresentationViewControllerForIconView:v6];
    [v7 presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_createFakeSourceViewForIconView:(id)a3
{
  v4 = a3;
  [(SBHIconShareSheetManager *)self _iconViewFrameInScreenCoordinateSpace:v4];
  v11 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v5, v6, v7, v8}];
  v9 = [(SBHIconShareSheetManager *)self _shareSheetPresentationViewControllerForIconView:v4];

  v10 = [v9 view];
  [v10 addSubview:v11];
  [(SBHIconShareSheetManager *)self setFakeSourceView:v11];
}

- (CGRect)_iconViewFrameInScreenCoordinateSpace:(id)a3
{
  v3 = a3;
  v4 = [v3 window];
  v5 = [v4 screen];
  [v3 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 iconImageFrame];
  Height = CGRectGetHeight(v27);
  v13 = [v3 superview];

  v14 = [v5 coordinateSpace];
  [v13 convertRect:v14 toCoordinateSpace:{v7, v9, v11, Height}];
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
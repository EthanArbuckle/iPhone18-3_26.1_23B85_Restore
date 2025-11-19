@interface PXViewControllerEventTracker
- (PXAnonymousViewController)currentViewController;
- (PXViewControllerEventTracker)init;
- (PXViewControllerEventTracker)initWithViewName:(id)a3;
- (void)_invalidateIsViewVisible;
- (void)_updateIsViewVisible;
- (void)didPerformChanges;
- (void)logViewControllerDidAppear:(id)a3;
- (void)logViewControllerDidDisappear:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setCurrentViewController:(id)a3;
- (void)setIsViewVisible:(BOOL)a3;
@end

@implementation PXViewControllerEventTracker

- (PXViewControllerEventTracker)init
{
  v6.receiver = self;
  v6.super_class = PXViewControllerEventTracker;
  v2 = [(PXUserInterfaceElementEventTracker *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PXViewControllerEventTracker *)v2 registerChangeObserver:v2 context:EventTrackerObserverContext_238383];
    v4 = [(PXUserInterfaceElementEventTracker *)v3 updater];
    [v4 addUpdateSelector:sel__updateIsViewVisible];
  }

  return v3;
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXViewControllerEventTracker;
  [(PXUserInterfaceElementEventTracker *)&v4 didPerformChanges];
  v3 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v3 updateIfNeeded];
}

- (PXAnonymousViewController)currentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_currentViewController);

  return WeakRetained;
}

- (void)_invalidateIsViewVisible
{
  v2 = [(PXUserInterfaceElementEventTracker *)self updater];
  [v2 setNeedsUpdateOf:sel__updateIsViewVisible];
}

- (void)_updateIsViewVisible
{
  if ([(PXUserInterfaceElementEventTracker *)self isVisible])
  {
    v3 = [(PXViewControllerEventTracker *)self currentViewController];
    [(PXViewControllerEventTracker *)self setIsViewVisible:v3 != 0];
  }

  else
  {

    [(PXViewControllerEventTracker *)self setIsViewVisible:0];
  }
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (EventTrackerObserverContext_238383 != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXViewControllerEventTracker.m" lineNumber:134 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__PXViewControllerEventTracker_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E774C5F8;
    v12[4] = self;
    [(PXViewControllerEventTracker *)self performChanges:v12];
  }
}

- (void)logViewControllerDidDisappear:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXViewControllerEventTracker *)self currentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(PXViewControllerEventTracker *)self currentViewController];

    if (v7 != v4)
    {
      PXAssertGetLog();
    }
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62__PXViewControllerEventTracker_logViewControllerDidDisappear___block_invoke;
  v22[3] = &unk_1E774C5F8;
  v22[4] = self;
  [(PXViewControllerEventTracker *)self performChanges:v22];
  v8 = [(PXViewControllerEventTracker *)self viewName];
  if (v8)
  {
    v9 = [(PXViewControllerEventTracker *)self viewSignpost];
    if (v9)
    {
      v10 = v9;
      v11 = MEMORY[0x1E6991F28];
      v12 = *MEMORY[0x1E6991E90];
      v25 = *MEMORY[0x1E6991E20];
      v13 = v25;
      v26 = v8;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v15 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v14];
      [v11 endSignpost:v10 forEventName:v12 withPayload:v15];

      v16 = MEMORY[0x1E6991F28];
      v17 = *MEMORY[0x1E6991CE0];
      v18 = *MEMORY[0x1E6991E58];
      v23[0] = v13;
      v23[1] = v18;
      v24[0] = v8;
      v19 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
      v24[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
      v21 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v20];
      [v16 sendEvent:v17 withPayload:v21];

      [(PXViewControllerEventTracker *)self setViewSignpost:0];
    }
  }
}

uint64_t __62__PXViewControllerEventTracker_logViewControllerDidDisappear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didDisappear];
  v2 = *(a1 + 32);

  return [v2 setCurrentViewController:0];
}

- (void)logViewControllerDidAppear:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXViewControllerEventTracker *)self currentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [(PXViewControllerEventTracker *)self currentViewController];

    if (v7 != v4)
    {
      PXAssertGetLog();
    }
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __59__PXViewControllerEventTracker_logViewControllerDidAppear___block_invoke;
  v19 = &unk_1E77498F8;
  v20 = self;
  v8 = v4;
  v21 = v8;
  [(PXViewControllerEventTracker *)self performChanges:&v16];
  v9 = [(PXViewControllerEventTracker *)self viewName:v16];
  if (v9)
  {
    if ([(PXViewControllerEventTracker *)self viewSignpost])
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = v8;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_DEFAULT, "did appear callback called twice without did disappear for view controller %@", buf, 0xCu);
      }
    }

    else
    {
      -[PXViewControllerEventTracker setViewSignpost:](self, "setViewSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
      v11 = MEMORY[0x1E6991F28];
      v12 = *MEMORY[0x1E6991CD8];
      v13 = *MEMORY[0x1E6991E58];
      v22[0] = *MEMORY[0x1E6991E20];
      v22[1] = v13;
      v23[0] = v9;
      v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PXViewControllerEventTracker viewSignpost](self, "viewSignpost")}];
      v23[1] = v10;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
      v15 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v14];
      [v11 sendEvent:v12 withPayload:v15];
    }
  }
}

uint64_t __59__PXViewControllerEventTracker_logViewControllerDidAppear___block_invoke(uint64_t a1)
{
  [*(a1 + 32) didAppear];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 setCurrentViewController:v3];
}

- (void)setCurrentViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_currentViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_currentViewController, obj);
    [(PXViewControllerEventTracker *)self signalChange:16];
    [(PXViewControllerEventTracker *)self _invalidateIsViewVisible];
    v5 = obj;
  }
}

- (void)setIsViewVisible:(BOOL)a3
{
  if (self->_isViewVisible != a3)
  {
    self->_isViewVisible = a3;
    [(PXViewControllerEventTracker *)self signalChange:8];
  }
}

- (PXViewControllerEventTracker)initWithViewName:(id)a3
{
  v4 = a3;
  v5 = [(PXViewControllerEventTracker *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    viewName = v5->_viewName;
    v5->_viewName = v6;
  }

  return v5;
}

@end
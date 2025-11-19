@interface SXMapComponentView
- ($04509175BD9135993A1E69B8DF80FE31)region;
- ($5703109703F67BAFA4DD21228B123405)mapRect;
- (BOOL)areBarsHidden;
- (BOOL)hasSelectedAnnotations;
- (BOOL)isPresentingFullscreen;
- (BOOL)isUserInteractingWithMap;
- (MKMapView)mapView;
- (NSArray)annotations;
- (SXMapComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 documentTitleProvider:(id)a9;
- (id)mapTitle;
- (unint64_t)mapTypeForSegmentIndex:(unint64_t)a3;
- (unint64_t)segmentIndexForMapType:(unint64_t)a3;
- (void)cancelSnapShot;
- (void)configureMapView;
- (void)createMediaEngageEvent;
- (void)createSnapShot;
- (void)dealloc;
- (void)discardContents;
- (void)dismissFullScreen;
- (void)enableMapViewInteraction:(BOOL)a3;
- (void)finishMediaEngageEvent;
- (void)handleTap:(id)a3;
- (void)mapTypeChanged:(id)a3;
- (void)memoryWarning:(id)a3;
- (void)presentComponentWithChanges:(id)a3;
- (void)presentFullScreen;
- (void)renderContents;
- (void)setupNavigationBar;
- (void)setupToolbar;
- (void)submitEvents;
- (void)submitMediaEngageCompleteEvent;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SXMapComponentView

- (SXMapComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 analyticsReporting:(id)a7 appStateMonitor:(id)a8 documentTitleProvider:(id)a9
{
  v16 = a9;
  v30.receiver = self;
  v30.super_class = SXMapComponentView;
  v17 = [(SXMediaComponentView *)&v30 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6 analyticsReporting:a7 appStateMonitor:a8];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_documentTitleProvider, a9);
    v19 = objc_alloc_init(SXMapSnapShotter);
    snapShotter = v18->_snapShotter;
    v18->_snapShotter = v19;

    v21 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v18->_imageView;
    v18->_imageView = v21;

    [(UIImageView *)v18->_imageView setUserInteractionEnabled:1];
    v23 = [(SXComponentView *)v18 contentView];
    [v23 addSubview:v18->_imageView];

    v24 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cachedSnapshots = v18->_cachedSnapshots;
    v18->_cachedSnapshots = v24;

    v26 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v18 action:sel_handleTap_];
    tapGesture = v18->_tapGesture;
    v18->_tapGesture = v26;

    [(UIImageView *)v18->_imageView addGestureRecognizer:v18->_tapGesture];
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v18 selector:sel_memoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v18;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  v4.receiver = self;
  v4.super_class = SXMapComponentView;
  [(SXComponentView *)&v4 dealloc];
}

- (void)memoryWarning:(id)a3
{
  v3 = [(SXMapComponentView *)self cachedSnapshots];
  [v3 removeAllObjects];
}

- (void)renderContents
{
  v3.receiver = self;
  v3.super_class = SXMapComponentView;
  [(SXComponentView *)&v3 renderContents];
  [(SXMapComponentView *)self createSnapShot];
}

- (void)presentComponentWithChanges:(id)a3
{
  var0 = a3.var0;
  v6.receiver = self;
  v6.super_class = SXMapComponentView;
  [(SXComponentView *)&v6 presentComponentWithChanges:*&a3.var0 & 0xFFFFFFLL];
  v5 = [(SXMapComponentView *)self imageView];
  [(SXComponentView *)self contentFrame];
  [v5 setFrame:?];

  if ([(SXComponentView *)self hasRenderedContents])
  {
    if (var0)
    {
      [(SXMapComponentView *)self discardContents];
    }
  }
}

- (void)discardContents
{
  v4.receiver = self;
  v4.super_class = SXMapComponentView;
  [(SXComponentView *)&v4 discardContents];
  v3 = [(SXMapComponentView *)self imageView];
  [v3 setImage:0];

  [(SXMapComponentView *)self cancelSnapShot];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = SXMapComponentView;
  [(SXMapComponentView *)&v4 traitCollectionDidChange:a3];
  if ([(SXComponentView *)self hasRenderedContents])
  {
    [(SXMapComponentView *)self createSnapShot];
  }
}

- (void)createSnapShot
{
  [(SXComponentView *)self contentFrame];
  v4 = v3;
  v6 = v5;
  v7 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  v8 = [(SXComponentView *)self component];
  [v7 setMapType:{objc_msgSend(v8, "defaultMapType")}];

  [(SXMapComponentView *)self mapRect];
  [v7 setMapRect:?];
  [v7 setSize:{v4, v6}];
  v9 = [(SXMapComponentView *)self traitCollection];
  [v7 setTraitCollection:v9];

  v10 = [(SXMapComponentView *)self cachedSnapshots];
  v11 = [v10 objectForKey:v7];

  if (v11)
  {
    v12 = [(SXMapComponentView *)self imageView];
    [v12 setImage:v11];
  }

  else
  {
    [(SXMapComponentView *)self cancelSnapShot];
    objc_initWeak(&location, self);
    v13 = [(SXMapComponentView *)self snapShotter];
    v14 = [(SXMapComponentView *)self annotations];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__SXMapComponentView_createSnapShot__block_invoke;
    v16[3] = &unk_1E8501FF0;
    objc_copyWeak(&v18, &location);
    v17 = v7;
    v15 = [v13 snapShotWithOptions:v17 annotations:v14 completionBlock:v16];
    [(SXMapComponentView *)self setSnapShotCancelHandler:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __36__SXMapComponentView_createSnapShot__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([*(a1 + 32) isEqual:v6])
  {
    v8 = [WeakRetained imageView];
    [v8 setImage:v5];

    [WeakRetained setSnapShotCancelHandler:0];
    v9 = [WeakRetained imageView];
    [v9 setAlpha:0.0];

    [WeakRetained setIsDisplayingMedia:1];
    if (v5)
    {
      v10 = [WeakRetained cachedSnapshots];
      [v10 setObject:v5 forKey:v6];
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__SXMapComponentView_createSnapShot__block_invoke_2;
    v11[3] = &unk_1E84FED18;
    v11[4] = WeakRetained;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v11 options:0 animations:0.2 completion:0.0];
  }
}

void __36__SXMapComponentView_createSnapShot__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) imageView];
  [v1 setAlpha:1.0];
}

- (void)cancelSnapShot
{
  v3 = [(SXMapComponentView *)self snapShotCancelHandler];

  if (v3)
  {
    v4 = [(SXMapComponentView *)self snapShotCancelHandler];
    v4[2]();

    [(SXMapComponentView *)self setSnapShotCancelHandler:0];
  }
}

- (NSArray)annotations
{
  v20 = *MEMORY[0x1E69E9840];
  annotations = self->_annotations;
  if (!annotations)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = [(SXComponentView *)self component];
    v6 = [v5 items];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [[SXMapComponentAnnotation alloc] initWithMapItem:*(*(&v15 + 1) + 8 * v10)];
          [v4 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];
    v13 = self->_annotations;
    self->_annotations = v12;

    annotations = self->_annotations;
  }

  return annotations;
}

- ($5703109703F67BAFA4DD21228B123405)mapRect
{
  [(SXMapComponentView *)self region];

  [SXMapComponentSizer mapRectForRegion:?];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- ($04509175BD9135993A1E69B8DF80FE31)region
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(SXComponentView *)self component];
  v6 = [v5 items];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = MEMORY[0x1E696B098];
        [*(*(&v15 + 1) + 8 * v10) coordinate];
        v12 = [v11 valueWithMKCoordinate:?];
        [v4 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = [(SXComponentView *)self component];
  [v13 region];
  [SXMapComponentSizer regionFromRegion:v4 coordinates:?];

  return result;
}

- (void)presentFullScreen
{
  [(SXMapComponentView *)self configureMapView];
  v3 = [(SXComponentView *)self presentationDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SXMapComponentView_presentFullScreen__block_invoke;
  v7[3] = &unk_1E84FED18;
  v7[4] = self;
  v4 = [v3 requestFullScreenCanvasViewControllerForComponent:self withCompletionBlock:v7];
  [(SXMapComponentView *)self setFullScreenCanvasViewController:v4];

  v5 = [(SXMapComponentView *)self mapTitle];
  v6 = [(SXMapComponentView *)self fullScreenCanvasViewController];
  [v6 setTitle:v5];
}

uint64_t __39__SXMapComponentView_presentFullScreen__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fullScreenCanvasViewController];
  [v2 setDelegate:*(a1 + 32)];

  v3 = *(a1 + 32);
  v4 = [v3 mapView];
  [v4 center];
  v6 = v5;
  v8 = v7;
  v9 = [*(a1 + 32) fullScreenCanvasViewController];
  v10 = [v9 view];
  [v3 convertPoint:v10 toView:{v6, v8}];
  v12 = v11;
  v14 = v13;

  v15 = [*(a1 + 32) mapView];
  [v15 setCenter:{v12, v14}];

  v16 = [*(a1 + 32) imageView];
  [v16 setCenter:{v12, v14}];

  v17 = [*(a1 + 32) fullScreenCanvasViewController];
  v18 = [v17 view];
  v19 = [*(a1 + 32) mapView];
  [v18 addSubview:v19];

  v20 = [*(a1 + 32) fullScreenCanvasViewController];
  v21 = [v20 view];
  v22 = [*(a1 + 32) imageView];
  [v21 addSubview:v22];

  [*(a1 + 32) setupNavigationBar];
  [*(a1 + 32) setupToolbar];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __39__SXMapComponentView_presentFullScreen__block_invoke_2;
  v29[3] = &unk_1E84FED18;
  v30 = *(a1 + 32);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __39__SXMapComponentView_presentFullScreen__block_invoke_3;
  v28[3] = &unk_1E84FFD40;
  v28[4] = v30;
  [MEMORY[0x1E69DD250] animateWithDuration:v29 animations:v28 completion:0.3];
  v23 = [*(a1 + 32) fullScreenCanvasViewController];
  v24 = [v23 navigationController];
  [v24 setToolbarHidden:0 animated:1];

  v25 = [*(a1 + 32) fullScreenCanvasViewController];
  v26 = [v25 navigationController];
  [v26 setNavigationBarHidden:0 animated:1];

  return [*(a1 + 32) createMediaEngageEvent];
}

void __39__SXMapComponentView_presentFullScreen__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  v3 = [*(a1 + 32) fullScreenCanvasViewController];
  v4 = [v3 view];
  [v4 frame];
  Width = CGRectGetWidth(v15);
  v6 = [*(a1 + 32) fullScreenCanvasViewController];
  v7 = [v6 view];
  [v7 frame];
  [v2 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v16)}];

  v13 = [*(a1 + 32) imageView];
  v8 = [*(a1 + 32) fullScreenCanvasViewController];
  v9 = [v8 view];
  [v9 bounds];
  v10 = CGRectGetWidth(v17) * 0.5;
  v11 = [*(a1 + 32) fullScreenCanvasViewController];
  v12 = [v11 view];
  [v12 bounds];
  [v13 setCenter:{v10, CGRectGetHeight(v18) * 0.5}];
}

void __39__SXMapComponentView_presentFullScreen__block_invoke_3(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __39__SXMapComponentView_presentFullScreen__block_invoke_4;
  v4[3] = &unk_1E84FED18;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__SXMapComponentView_presentFullScreen__block_invoke_5;
  v3[3] = &unk_1E84FFD40;
  v3[4] = v5;
  [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:v3 completion:0.2];
  v2 = [*(a1 + 32) mapView];
  [v2 setAutoresizingMask:18];
}

void __39__SXMapComponentView_presentFullScreen__block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) imageView];
  [v1 setAlpha:0.0];
}

void __39__SXMapComponentView_presentFullScreen__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) enableMapViewInteraction:1];
  v2 = [*(a1 + 32) imageView];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) contentView];
  v4 = [*(a1 + 32) imageView];
  [v3 addSubview:v4];

  v5 = [*(a1 + 32) imageView];
  [*(a1 + 32) contentFrame];
  [v5 setFrame:?];
}

- (void)dismissFullScreen
{
  v3 = [(SXMapComponentView *)self imageView];
  [v3 setAlpha:1.0];

  v4 = [(SXMapComponentView *)self fullScreenCanvasViewController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SXMapComponentView_dismissFullScreen__block_invoke;
  v6[3] = &unk_1E84FED18;
  v6[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v6];

  [(SXMapComponentView *)self finishMediaEngageEvent];
  [(SXMapComponentView *)self submitMediaEngageCompleteEvent];
  v5 = [(SXMapComponentView *)self fullScreenCanvasViewController];
  [v5 setNeedsStatusBarAppearanceUpdate];
}

uint64_t __39__SXMapComponentView_dismissFullScreen__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapView];
  [v2 removeFromSuperview];

  [*(a1 + 32) setMapView:0];
  v3 = [*(a1 + 32) presentationDelegate];
  [v3 dismissFullscreenCanvasForComponent:*(a1 + 32)];

  v4 = *(a1 + 32);

  return [v4 setFullScreenCanvasViewController:0];
}

- (void)handleTap:(id)a3
{
  v4 = [(SXMapComponentView *)self imageView];
  v5 = [v4 image];
  if (v5)
  {
  }

  else
  {
    v6 = [(SXMapComponentView *)self isPresentingFullscreen];

    if (!v6)
    {
      return;
    }
  }

  if ([(SXMapComponentView *)self isPresentingFullscreen])
  {
    if (![(SXMapComponentView *)self hasSelectedAnnotations])
    {
      v7 = [(SXMapComponentView *)self areBarsHidden];
      v8 = [(SXMapComponentView *)self fullScreenCanvasViewController];
      v9 = [v8 navigationController];
      [v9 setNavigationBarHidden:!v7 animated:1];

      v11 = [(SXMapComponentView *)self fullScreenCanvasViewController];
      v10 = [v11 navigationController];
      [v10 setToolbarHidden:!v7 animated:1];
    }
  }

  else
  {

    [(SXMapComponentView *)self presentFullScreen];
  }
}

- (void)configureMapView
{
  v3 = [(SXMapComponentView *)self mapView];
  v4 = [(SXMapComponentView *)self mapView];
  v5 = [v4 annotations];
  [v3 removeAnnotations:v5];

  v6 = [(SXMapComponentView *)self mapView];
  v7 = [(SXMapComponentView *)self annotations];
  [v6 addAnnotations:v7];

  v8 = [(SXMapComponentView *)self mapView];
  [(SXMapComponentView *)self mapRect];
  [v8 setVisibleMapRect:?];

  v10 = [(SXMapComponentView *)self mapView];
  v9 = [(SXComponentView *)self component];
  [v10 setMapType:{objc_msgSend(v9, "defaultMapType")}];
}

- (void)setupNavigationBar
{
  v3 = [(SXMapComponentView *)self doneBarButtonItem];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_handleDoneTap_];
    [(SXMapComponentView *)self setDoneBarButtonItem:v4];
  }

  v7 = [(SXMapComponentView *)self fullScreenCanvasViewController];
  v5 = [v7 navigationItem];
  v6 = [(SXMapComponentView *)self doneBarButtonItem];
  [v5 setRightBarButtonItem:v6];
}

- (void)setupToolbar
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = [(SXMapComponentView *)self segmentedControl];

  if (!v3)
  {
    v4 = SXBundle();
    v5 = [v4 localizedStringForKey:@"Standard" value:&stru_1F532F6C0 table:0];
    v21[0] = v5;
    v6 = SXBundle();
    v7 = [v6 localizedStringForKey:@"Hybrid" value:&stru_1F532F6C0 table:0];
    v21[1] = v7;
    v8 = SXBundle();
    v9 = [v8 localizedStringForKey:@"Satellite" value:&stru_1F532F6C0 table:0];
    v21[2] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3];

    v11 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v10];
    [v11 addTarget:self action:sel_mapTypeChanged_ forControlEvents:4096];
    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v11];
    v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v20[0] = v13;
    v20[1] = v12;
    v20[2] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:3];
    [(SXMapComponentView *)self setToolbarItems:v15];

    [(SXMapComponentView *)self setSegmentedControl:v11];
  }

  v16 = [(SXMapComponentView *)self segmentedControl];
  v17 = [(SXMapComponentView *)self mapView];
  [v16 setSelectedSegmentIndex:{-[SXMapComponentView segmentIndexForMapType:](self, "segmentIndexForMapType:", objc_msgSend(v17, "mapType"))}];

  v18 = [(SXMapComponentView *)self fullScreenCanvasViewController];
  v19 = [(SXMapComponentView *)self toolbarItems];
  [v18 setToolbarItems:v19];
}

- (unint64_t)segmentIndexForMapType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return -1;
  }

  else
  {
    return qword_1D8392480[a3];
  }
}

- (unint64_t)mapTypeForSegmentIndex:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 1);
  }
}

- (void)mapTypeChanged:(id)a3
{
  v4 = -[SXMapComponentView mapTypeForSegmentIndex:](self, "mapTypeForSegmentIndex:", [a3 selectedSegmentIndex]);
  v5 = [(SXMapComponentView *)self mapView];
  [v5 setMapType:v4];
}

- (MKMapView)mapView
{
  mapView = self->_mapView;
  if (!mapView)
  {
    v4 = objc_alloc(MEMORY[0x1E696F2C0]);
    [(SXMapComponentView *)self bounds];
    v5 = [v4 initWithFrame:?];
    [v5 _setUseBalloonCalloutsForLabels:1];
    [v5 setDelegate:self];
    v6 = [(SXComponentView *)self contentView];
    v7 = [(SXMapComponentView *)self imageView];
    [v6 insertSubview:v5 belowSubview:v7];

    [(SXMapComponentView *)self setMapView:v5];
    [(SXMapComponentView *)self enableMapViewInteraction:0];
    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
    [v8 setDelegate:self];
    v9 = [(SXMapComponentView *)self mapView];
    v10 = [v9 _selectingTapGestureRecognizer];
    [v8 requireGestureRecognizerToFail:v10];

    [v5 addGestureRecognizer:v8];
    [(SXMapComponentView *)self setTapGesture:v8];

    mapView = self->_mapView;
  }

  return mapView;
}

- (void)enableMapViewInteraction:(BOOL)a3
{
  v3 = a3;
  [(MKMapView *)self->_mapView setZoomEnabled:?];
  mapView = self->_mapView;

  [(MKMapView *)mapView setScrollEnabled:v3];
}

- (BOOL)isUserInteractingWithMap
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = [(SXMapComponentView *)self mapView];
  v4 = [v3 gestureRecognizers];

  v5 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v28 + 1) + 8 * i) numberOfTouches])
        {
LABEL_26:
          LOBYTE(v10) = 1;
          goto LABEL_27;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [(SXMapComponentView *)self mapView];
  v4 = [v9 subviews];

  v10 = [v4 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v24 + 1) + 8 * j);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v14 = [v13 gestureRecognizers];
        v15 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v21;
          while (2)
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v21 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([*(*(&v20 + 1) + 8 * k) numberOfTouches])
              {

                goto LABEL_26;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v20 objects:v32 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }
      }

      v10 = [v4 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v10);
  }

LABEL_27:

  return v10;
}

- (BOOL)isPresentingFullscreen
{
  v2 = [(SXMapComponentView *)self fullScreenCanvasViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)areBarsHidden
{
  v2 = [(SXMapComponentView *)self fullScreenCanvasViewController];
  v3 = [v2 navigationController];
  v4 = [v3 isNavigationBarHidden];

  return v4;
}

- (BOOL)hasSelectedAnnotations
{
  v2 = [(SXMapComponentView *)self mapView];
  v3 = [v2 selectedAnnotations];
  v4 = [v3 count] != 0;

  return v4;
}

- (id)mapTitle
{
  v3 = [(SXComponentView *)self component];
  v4 = [v3 caption];

  v5 = [(SXMapComponentView *)self mapView];
  v6 = [v5 annotations];

  if (!v4)
  {
    if ([v6 count] != 1 || (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "title"), v4 = objc_claimAutoreleasedReturnValue(), v7, !v4))
    {
      v8 = [(SXMapComponentView *)self documentTitleProvider];
      v4 = [v8 title];
    }
  }

  return v4;
}

- (void)submitEvents
{
  v3.receiver = self;
  v3.super_class = SXMapComponentView;
  [(SXMediaComponentView *)&v3 submitEvents];
  [(SXMapComponentView *)self finishMediaEngageEvent];
}

- (void)createMediaEngageEvent
{
  v3 = [(SXMapComponentView *)self activeMediaEngageEvent];

  if (!v3)
  {
    v4 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
    [(SXMapComponentView *)self setActiveMediaEngageEvent:v4];
  }
}

- (void)finishMediaEngageEvent
{
  v3 = [(SXMapComponentView *)self activeMediaEngageEvent];

  if (v3)
  {
    v4 = [(SXMapComponentView *)self activeMediaEngageEvent];
    [v4 determineEndDate];

    v5 = [(SXMediaComponentView *)self analyticsReporting];
    v6 = [(SXMapComponentView *)self activeMediaEngageEvent];
    [v5 reportEvent:v6];

    [(SXMapComponentView *)self setActiveMediaEngageEvent:0];
  }
}

- (void)submitMediaEngageCompleteEvent
{
  v4 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
  [v4 determineEndDate];
  v3 = [(SXMediaComponentView *)self analyticsReporting];
  [v3 reportEvent:v4];
}

@end
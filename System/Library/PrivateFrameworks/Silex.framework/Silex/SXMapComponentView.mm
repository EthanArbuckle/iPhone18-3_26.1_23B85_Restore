@interface SXMapComponentView
- ($04509175BD9135993A1E69B8DF80FE31)region;
- ($5703109703F67BAFA4DD21228B123405)mapRect;
- (BOOL)areBarsHidden;
- (BOOL)hasSelectedAnnotations;
- (BOOL)isPresentingFullscreen;
- (BOOL)isUserInteractingWithMap;
- (MKMapView)mapView;
- (NSArray)annotations;
- (SXMapComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor documentTitleProvider:(id)titleProvider;
- (id)mapTitle;
- (unint64_t)mapTypeForSegmentIndex:(unint64_t)index;
- (unint64_t)segmentIndexForMapType:(unint64_t)type;
- (void)cancelSnapShot;
- (void)configureMapView;
- (void)createMediaEngageEvent;
- (void)createSnapShot;
- (void)dealloc;
- (void)discardContents;
- (void)dismissFullScreen;
- (void)enableMapViewInteraction:(BOOL)interaction;
- (void)finishMediaEngageEvent;
- (void)handleTap:(id)tap;
- (void)mapTypeChanged:(id)changed;
- (void)memoryWarning:(id)warning;
- (void)presentComponentWithChanges:(id)changes;
- (void)presentFullScreen;
- (void)renderContents;
- (void)setupNavigationBar;
- (void)setupToolbar;
- (void)submitEvents;
- (void)submitMediaEngageCompleteEvent;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SXMapComponentView

- (SXMapComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory analyticsReporting:(id)reporting appStateMonitor:(id)monitor documentTitleProvider:(id)titleProvider
{
  titleProviderCopy = titleProvider;
  v30.receiver = self;
  v30.super_class = SXMapComponentView;
  v17 = [(SXMediaComponentView *)&v30 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory analyticsReporting:reporting appStateMonitor:monitor];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_documentTitleProvider, titleProvider);
    v19 = objc_alloc_init(SXMapSnapShotter);
    snapShotter = v18->_snapShotter;
    v18->_snapShotter = v19;

    v21 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v18->_imageView;
    v18->_imageView = v21;

    [(UIImageView *)v18->_imageView setUserInteractionEnabled:1];
    contentView = [(SXComponentView *)v18 contentView];
    [contentView addSubview:v18->_imageView];

    v24 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cachedSnapshots = v18->_cachedSnapshots;
    v18->_cachedSnapshots = v24;

    v26 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v18 action:sel_handleTap_];
    tapGesture = v18->_tapGesture;
    v18->_tapGesture = v26;

    [(UIImageView *)v18->_imageView addGestureRecognizer:v18->_tapGesture];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel_memoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];
  }

  return v18;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  v4.receiver = self;
  v4.super_class = SXMapComponentView;
  [(SXComponentView *)&v4 dealloc];
}

- (void)memoryWarning:(id)warning
{
  cachedSnapshots = [(SXMapComponentView *)self cachedSnapshots];
  [cachedSnapshots removeAllObjects];
}

- (void)renderContents
{
  v3.receiver = self;
  v3.super_class = SXMapComponentView;
  [(SXComponentView *)&v3 renderContents];
  [(SXMapComponentView *)self createSnapShot];
}

- (void)presentComponentWithChanges:(id)changes
{
  var0 = changes.var0;
  v6.receiver = self;
  v6.super_class = SXMapComponentView;
  [(SXComponentView *)&v6 presentComponentWithChanges:*&changes.var0 & 0xFFFFFFLL];
  imageView = [(SXMapComponentView *)self imageView];
  [(SXComponentView *)self contentFrame];
  [imageView setFrame:?];

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
  imageView = [(SXMapComponentView *)self imageView];
  [imageView setImage:0];

  [(SXMapComponentView *)self cancelSnapShot];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = SXMapComponentView;
  [(SXMapComponentView *)&v4 traitCollectionDidChange:change];
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
  component = [(SXComponentView *)self component];
  [v7 setMapType:{objc_msgSend(component, "defaultMapType")}];

  [(SXMapComponentView *)self mapRect];
  [v7 setMapRect:?];
  [v7 setSize:{v4, v6}];
  traitCollection = [(SXMapComponentView *)self traitCollection];
  [v7 setTraitCollection:traitCollection];

  cachedSnapshots = [(SXMapComponentView *)self cachedSnapshots];
  v11 = [cachedSnapshots objectForKey:v7];

  if (v11)
  {
    imageView = [(SXMapComponentView *)self imageView];
    [imageView setImage:v11];
  }

  else
  {
    [(SXMapComponentView *)self cancelSnapShot];
    objc_initWeak(&location, self);
    snapShotter = [(SXMapComponentView *)self snapShotter];
    annotations = [(SXMapComponentView *)self annotations];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __36__SXMapComponentView_createSnapShot__block_invoke;
    v16[3] = &unk_1E8501FF0;
    objc_copyWeak(&v18, &location);
    v17 = v7;
    v15 = [snapShotter snapShotWithOptions:v17 annotations:annotations completionBlock:v16];
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
  snapShotCancelHandler = [(SXMapComponentView *)self snapShotCancelHandler];

  if (snapShotCancelHandler)
  {
    snapShotCancelHandler2 = [(SXMapComponentView *)self snapShotCancelHandler];
    snapShotCancelHandler2[2]();

    [(SXMapComponentView *)self setSnapShotCancelHandler:0];
  }
}

- (NSArray)annotations
{
  v20 = *MEMORY[0x1E69E9840];
  annotations = self->_annotations;
  if (!annotations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    component = [(SXComponentView *)self component];
    items = [component items];

    v7 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(items);
          }

          v11 = [[SXMapComponentAnnotation alloc] initWithMapItem:*(*(&v15 + 1) + 8 * v10)];
          [array addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
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
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  component = [(SXComponentView *)self component];
  items = [component items];

  v7 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(items);
        }

        v11 = MEMORY[0x1E696B098];
        [*(*(&v15 + 1) + 8 * v10) coordinate];
        v12 = [v11 valueWithMKCoordinate:?];
        [array addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [items countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  component2 = [(SXComponentView *)self component];
  [component2 region];
  [SXMapComponentSizer regionFromRegion:array coordinates:?];

  return result;
}

- (void)presentFullScreen
{
  [(SXMapComponentView *)self configureMapView];
  presentationDelegate = [(SXComponentView *)self presentationDelegate];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SXMapComponentView_presentFullScreen__block_invoke;
  v7[3] = &unk_1E84FED18;
  v7[4] = self;
  v4 = [presentationDelegate requestFullScreenCanvasViewControllerForComponent:self withCompletionBlock:v7];
  [(SXMapComponentView *)self setFullScreenCanvasViewController:v4];

  mapTitle = [(SXMapComponentView *)self mapTitle];
  fullScreenCanvasViewController = [(SXMapComponentView *)self fullScreenCanvasViewController];
  [fullScreenCanvasViewController setTitle:mapTitle];
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
  imageView = [(SXMapComponentView *)self imageView];
  [imageView setAlpha:1.0];

  fullScreenCanvasViewController = [(SXMapComponentView *)self fullScreenCanvasViewController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__SXMapComponentView_dismissFullScreen__block_invoke;
  v6[3] = &unk_1E84FED18;
  v6[4] = self;
  [fullScreenCanvasViewController dismissViewControllerAnimated:1 completion:v6];

  [(SXMapComponentView *)self finishMediaEngageEvent];
  [(SXMapComponentView *)self submitMediaEngageCompleteEvent];
  fullScreenCanvasViewController2 = [(SXMapComponentView *)self fullScreenCanvasViewController];
  [fullScreenCanvasViewController2 setNeedsStatusBarAppearanceUpdate];
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

- (void)handleTap:(id)tap
{
  imageView = [(SXMapComponentView *)self imageView];
  image = [imageView image];
  if (image)
  {
  }

  else
  {
    isPresentingFullscreen = [(SXMapComponentView *)self isPresentingFullscreen];

    if (!isPresentingFullscreen)
    {
      return;
    }
  }

  if ([(SXMapComponentView *)self isPresentingFullscreen])
  {
    if (![(SXMapComponentView *)self hasSelectedAnnotations])
    {
      areBarsHidden = [(SXMapComponentView *)self areBarsHidden];
      fullScreenCanvasViewController = [(SXMapComponentView *)self fullScreenCanvasViewController];
      navigationController = [fullScreenCanvasViewController navigationController];
      [navigationController setNavigationBarHidden:!areBarsHidden animated:1];

      fullScreenCanvasViewController2 = [(SXMapComponentView *)self fullScreenCanvasViewController];
      navigationController2 = [fullScreenCanvasViewController2 navigationController];
      [navigationController2 setToolbarHidden:!areBarsHidden animated:1];
    }
  }

  else
  {

    [(SXMapComponentView *)self presentFullScreen];
  }
}

- (void)configureMapView
{
  mapView = [(SXMapComponentView *)self mapView];
  mapView2 = [(SXMapComponentView *)self mapView];
  annotations = [mapView2 annotations];
  [mapView removeAnnotations:annotations];

  mapView3 = [(SXMapComponentView *)self mapView];
  annotations2 = [(SXMapComponentView *)self annotations];
  [mapView3 addAnnotations:annotations2];

  mapView4 = [(SXMapComponentView *)self mapView];
  [(SXMapComponentView *)self mapRect];
  [mapView4 setVisibleMapRect:?];

  mapView5 = [(SXMapComponentView *)self mapView];
  component = [(SXComponentView *)self component];
  [mapView5 setMapType:{objc_msgSend(component, "defaultMapType")}];
}

- (void)setupNavigationBar
{
  doneBarButtonItem = [(SXMapComponentView *)self doneBarButtonItem];

  if (!doneBarButtonItem)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_handleDoneTap_];
    [(SXMapComponentView *)self setDoneBarButtonItem:v4];
  }

  fullScreenCanvasViewController = [(SXMapComponentView *)self fullScreenCanvasViewController];
  navigationItem = [fullScreenCanvasViewController navigationItem];
  doneBarButtonItem2 = [(SXMapComponentView *)self doneBarButtonItem];
  [navigationItem setRightBarButtonItem:doneBarButtonItem2];
}

- (void)setupToolbar
{
  v21[3] = *MEMORY[0x1E69E9840];
  segmentedControl = [(SXMapComponentView *)self segmentedControl];

  if (!segmentedControl)
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

  segmentedControl2 = [(SXMapComponentView *)self segmentedControl];
  mapView = [(SXMapComponentView *)self mapView];
  [segmentedControl2 setSelectedSegmentIndex:{-[SXMapComponentView segmentIndexForMapType:](self, "segmentIndexForMapType:", objc_msgSend(mapView, "mapType"))}];

  fullScreenCanvasViewController = [(SXMapComponentView *)self fullScreenCanvasViewController];
  toolbarItems = [(SXMapComponentView *)self toolbarItems];
  [fullScreenCanvasViewController setToolbarItems:toolbarItems];
}

- (unint64_t)segmentIndexForMapType:(unint64_t)type
{
  if (type > 2)
  {
    return -1;
  }

  else
  {
    return qword_1D8392480[type];
  }
}

- (unint64_t)mapTypeForSegmentIndex:(unint64_t)index
{
  if (index == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (index == 1);
  }
}

- (void)mapTypeChanged:(id)changed
{
  v4 = -[SXMapComponentView mapTypeForSegmentIndex:](self, "mapTypeForSegmentIndex:", [changed selectedSegmentIndex]);
  mapView = [(SXMapComponentView *)self mapView];
  [mapView setMapType:v4];
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
    contentView = [(SXComponentView *)self contentView];
    imageView = [(SXMapComponentView *)self imageView];
    [contentView insertSubview:v5 belowSubview:imageView];

    [(SXMapComponentView *)self setMapView:v5];
    [(SXMapComponentView *)self enableMapViewInteraction:0];
    v8 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleTap_];
    [v8 setDelegate:self];
    mapView = [(SXMapComponentView *)self mapView];
    _selectingTapGestureRecognizer = [mapView _selectingTapGestureRecognizer];
    [v8 requireGestureRecognizerToFail:_selectingTapGestureRecognizer];

    [v5 addGestureRecognizer:v8];
    [(SXMapComponentView *)self setTapGesture:v8];

    mapView = self->_mapView;
  }

  return mapView;
}

- (void)enableMapViewInteraction:(BOOL)interaction
{
  interactionCopy = interaction;
  [(MKMapView *)self->_mapView setZoomEnabled:?];
  mapView = self->_mapView;

  [(MKMapView *)mapView setScrollEnabled:interactionCopy];
}

- (BOOL)isUserInteractingWithMap
{
  v35 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  mapView = [(SXMapComponentView *)self mapView];
  gestureRecognizers = [mapView gestureRecognizers];

  v5 = [gestureRecognizers countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(gestureRecognizers);
        }

        if ([*(*(&v28 + 1) + 8 * i) numberOfTouches])
        {
LABEL_26:
          LOBYTE(v10) = 1;
          goto LABEL_27;
        }
      }

      v6 = [gestureRecognizers countByEnumeratingWithState:&v28 objects:v34 count:16];
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
  mapView2 = [(SXMapComponentView *)self mapView];
  gestureRecognizers = [mapView2 subviews];

  v10 = [gestureRecognizers countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(gestureRecognizers);
        }

        v13 = *(*(&v24 + 1) + 8 * j);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        gestureRecognizers2 = [v13 gestureRecognizers];
        v15 = [gestureRecognizers2 countByEnumeratingWithState:&v20 objects:v32 count:16];
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
                objc_enumerationMutation(gestureRecognizers2);
              }

              if ([*(*(&v20 + 1) + 8 * k) numberOfTouches])
              {

                goto LABEL_26;
              }
            }

            v16 = [gestureRecognizers2 countByEnumeratingWithState:&v20 objects:v32 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }
      }

      v10 = [gestureRecognizers countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v10);
  }

LABEL_27:

  return v10;
}

- (BOOL)isPresentingFullscreen
{
  fullScreenCanvasViewController = [(SXMapComponentView *)self fullScreenCanvasViewController];
  v3 = fullScreenCanvasViewController != 0;

  return v3;
}

- (BOOL)areBarsHidden
{
  fullScreenCanvasViewController = [(SXMapComponentView *)self fullScreenCanvasViewController];
  navigationController = [fullScreenCanvasViewController navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];

  return isNavigationBarHidden;
}

- (BOOL)hasSelectedAnnotations
{
  mapView = [(SXMapComponentView *)self mapView];
  selectedAnnotations = [mapView selectedAnnotations];
  v4 = [selectedAnnotations count] != 0;

  return v4;
}

- (id)mapTitle
{
  component = [(SXComponentView *)self component];
  caption = [component caption];

  mapView = [(SXMapComponentView *)self mapView];
  annotations = [mapView annotations];

  if (!caption)
  {
    if ([annotations count] != 1 || (objc_msgSend(annotations, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "title"), caption = objc_claimAutoreleasedReturnValue(), v7, !caption))
    {
      documentTitleProvider = [(SXMapComponentView *)self documentTitleProvider];
      caption = [documentTitleProvider title];
    }
  }

  return caption;
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
  activeMediaEngageEvent = [(SXMapComponentView *)self activeMediaEngageEvent];

  if (!activeMediaEngageEvent)
  {
    v4 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
    [(SXMapComponentView *)self setActiveMediaEngageEvent:v4];
  }
}

- (void)finishMediaEngageEvent
{
  activeMediaEngageEvent = [(SXMapComponentView *)self activeMediaEngageEvent];

  if (activeMediaEngageEvent)
  {
    activeMediaEngageEvent2 = [(SXMapComponentView *)self activeMediaEngageEvent];
    [activeMediaEngageEvent2 determineEndDate];

    analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
    activeMediaEngageEvent3 = [(SXMapComponentView *)self activeMediaEngageEvent];
    [analyticsReporting reportEvent:activeMediaEngageEvent3];

    [(SXMapComponentView *)self setActiveMediaEngageEvent:0];
  }
}

- (void)submitMediaEngageCompleteEvent
{
  v4 = [(SXMediaComponentView *)self mediaEventForClass:objc_opt_class()];
  [v4 determineEndDate];
  analyticsReporting = [(SXMediaComponentView *)self analyticsReporting];
  [analyticsReporting reportEvent:v4];
}

@end
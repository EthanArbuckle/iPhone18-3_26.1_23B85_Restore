@interface PUIDPointerRenderingRootViewController
- (BOOL)_updatePointerWithOptions:(unint64_t)options updateHandlerCollection:(id)collection error:(id *)error;
- (BOOL)isValidPointerPortalSourceCollection:(id)collection forClient:(id)client;
- (BOOL)setPointerState:(id)state options:(unint64_t)options updateHandlerCollection:(id)collection error:(id *)error;
- (CATransform3D)transformToLocalWindowForCoordinateSpaceTransformToDisplay:(SEL)display;
- (CGPoint)_positionForTargetWithCenter:(CGPoint)center modelCursorPosition:(CGPoint)position slip:(CGPoint)slip;
- (CGRect)_samplingBoundsForPointerShape:(id)shape;
- (NSString)description;
- (PUIDPointerRenderingRootViewController)initWithCoder:(id)coder;
- (PUIDPointerRenderingRootViewController)initWithDisplay:(id)display hiddenForPerformanceReasons:(BOOL)reasons;
- (PUIDPointerRenderingRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PUIDPointerRenderingRootViewControllerDelegate)delegate;
- (id)_createMatchMoveSourceView;
- (id)_createPortalSourceViewWithFrame:(CGRect)frame;
- (id)_positionAnimationCountIncrementingCompletionWrapper:(id)wrapper;
- (id)createContentMatchMoveSourceForClient:(id)client;
- (id)createPointerPortalSourceCollectionForClient:(id)client;
- (void)_debugVisualizationForView:(id)view;
- (void)_debugVisualizationUpdate:(CATransform3D *)update;
- (void)_relativePositionAnimationParametersUsingSystemPointerPositionSettings:(id)settings forTextContent:(BOOL)content outXDamping:(double *)damping outXResponse:(double *)response outYDamping:(double *)yDamping outYResponse:(double *)yResponse;
- (void)_transitionFromPointerPortalSourceView:(id)view toPointerPortalSourceView:(id)sourceView animated:(BOOL)animated completion:(id)completion;
- (void)_updatePointerShapePosition:(double)position onAxis:(unint64_t)axis isModel:(BOOL)model;
- (void)_updateRampingPropertiesForPointerSlip:(CGPoint)slip animated:(BOOL)animated;
- (void)hidePointerAnimated:(BOOL)animated;
- (void)invalidateContentMatchMoveSource:(id)source forClient:(id)client;
- (void)invalidateContentMatchMoveSourcesPassingTest:(id)test additionalInvalidation:(id)invalidation;
- (void)invalidateEffectSourcesForPointerClient:(id)client;
- (void)invalidatePointerPortalSourceCollection:(id)collection forClient:(id)client;
- (void)invalidatePointerPortalSourceCollectionsPassingTest:(id)test additionalInvalidation:(id)invalidation;
- (void)pointerShapeViewInterfaceOrientationDidChange:(id)change duration:(double)duration;
- (void)pointerShapeViewVisibilityDidChange:(id)change;
- (void)removeClippingRegion;
- (void)setClippingRegion:(CGRect)region cornerRadius:(double)radius;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PUIDPointerRenderingRootViewController

- (PUIDPointerRenderingRootViewController)initWithDisplay:(id)display hiddenForPerformanceReasons:(BOOL)reasons
{
  displayCopy = display;
  v17.receiver = self;
  v17.super_class = PUIDPointerRenderingRootViewController;
  v8 = [(PUIDPointerRenderingRootViewController *)&v17 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_display, display);
    v9->_visibilityState = 1;
    v10 = +[PUIDPointerDomain rootSettings];
    settings = v9->_settings;
    v9->_settings = v10;

    v12 = *&CATransform3DIdentity.m23;
    *&v9->_previousContentTransform.m21 = *&CATransform3DIdentity.m21;
    *&v9->_previousContentTransform.m23 = v12;
    v13 = *&CATransform3DIdentity.m13;
    *&v9->_previousContentTransform.m11 = *&CATransform3DIdentity.m11;
    *&v9->_previousContentTransform.m13 = v13;
    v14 = *&CATransform3DIdentity.m43;
    *&v9->_previousContentTransform.m41 = *&CATransform3DIdentity.m41;
    *&v9->_previousContentTransform.m43 = v14;
    v15 = *&CATransform3DIdentity.m33;
    *&v9->_previousContentTransform.m31 = *&CATransform3DIdentity.m31;
    *&v9->_previousContentTransform.m33 = v15;
    v9->_hiddenForPerformanceReasons = reasons;
  }

  return v9;
}

- (PUIDPointerRenderingRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = [NSAssertionHandler currentHandler:name];
  [v6 handleFailureInMethod:a2 object:self file:@"PUIDPointerRenderingRootViewController.m" lineNumber:187 description:@"Call initWithDisplay: instead"];

  return [(PUIDPointerRenderingRootViewController *)self init];
}

- (PUIDPointerRenderingRootViewController)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUIDPointerRenderingRootViewController.m" lineNumber:193 description:@"Call initWithDisplay: instead"];

  return [(PUIDPointerRenderingRootViewController *)self init];
}

- (void)viewDidLoad
{
  v54.receiver = self;
  v54.super_class = PUIDPointerRenderingRootViewController;
  [(PUIDPointerRenderingRootViewController *)&v54 viewDidLoad];
  v3 = +[NSUserDefaults standardUserDefaults];
  self->_isDebugMode = [v3 BOOLForKey:@"DebugScene"];

  view = [(PUIDPointerRenderingRootViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [view setHidden:self->_hiddenForPerformanceReasons];
  v13 = [[UIView alloc] initWithFrame:{v6, v8, v10, v12}];
  pointerRootView = self->_pointerRootView;
  self->_pointerRootView = v13;

  [view addSubview:self->_pointerRootView];
  v15 = objc_alloc_init(PUIDPointerShapeView);
  pointerShapeView = self->_pointerShapeView;
  self->_pointerShapeView = v15;

  [(PUIDPointerShapeView *)self->_pointerShapeView setDelegate:self];
  y = CGPointZero.y;
  [(PUIDPointerShapeView *)self->_pointerShapeView setPosition:CGPointZero.x, y];
  [(UIView *)self->_pointerRootView addSubview:self->_pointerShapeView];
  v18 = objc_alloc_init(UIView);
  pointerBackgroundSamplingSourceView = self->_pointerBackgroundSamplingSourceView;
  self->_pointerBackgroundSamplingSourceView = v18;

  [(UIView *)self->_pointerBackgroundSamplingSourceView setPosition:CGPointZero.x, y];
  [view addSubview:self->_pointerBackgroundSamplingSourceView];
  v20 = objc_alloc_init(UIViewFloatAnimatableProperty);
  rampingXProperty = self->_rampingXProperty;
  self->_rampingXProperty = v20;

  [(UIViewFloatAnimatableProperty *)self->_rampingXProperty setValue:0.0];
  v22 = objc_alloc_init(UIViewFloatAnimatableProperty);
  rampingYProperty = self->_rampingYProperty;
  self->_rampingYProperty = v22;

  [(UIViewFloatAnimatableProperty *)self->_rampingYProperty setValue:0.0];
  v24 = objc_alloc_init(UIViewFloatAnimatableProperty);
  pointerShapePositionXProperty = self->_pointerShapePositionXProperty;
  self->_pointerShapePositionXProperty = v24;

  [(UIViewFloatAnimatableProperty *)self->_pointerShapePositionXProperty setValue:0.0];
  v26 = objc_alloc_init(UIViewFloatAnimatableProperty);
  pointerShapePositionYProperty = self->_pointerShapePositionYProperty;
  self->_pointerShapePositionYProperty = v26;

  [(UIViewFloatAnimatableProperty *)self->_pointerShapePositionYProperty setValue:0.0];
  objc_initWeak(&location, self);
  v56 = self->_pointerShapePositionXProperty;
  v28 = [NSArray arrayWithObjects:&v56 count:1];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10001F720;
  v51[3] = &unk_100048A00;
  objc_copyWeak(&v52, &location);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10001F7A4;
  v49[3] = &unk_100048A00;
  objc_copyWeak(&v50, &location);
  [UIView _createTransformerWithInputAnimatableProperties:v28 modelValueSetter:v51 presentationValueSetter:v49];

  v55 = self->_pointerShapePositionYProperty;
  v29 = [NSArray arrayWithObjects:&v55 count:1];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10001F828;
  v47[3] = &unk_100048A00;
  objc_copyWeak(&v48, &location);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10001F8AC;
  v45[3] = &unk_100048A00;
  objc_copyWeak(&v46, &location);
  [UIView _createTransformerWithInputAnimatableProperties:v29 modelValueSetter:v47 presentationValueSetter:v45];

  v30 = [[UIView alloc] initWithFrame:{v6, v8, v10, v12}];
  specularEffectRootView = self->_specularEffectRootView;
  self->_specularEffectRootView = v30;

  [view addSubview:self->_specularEffectRootView];
  v32 = +[NSBundle PUID_mainBundle];
  v33 = [UIImage imageNamed:@"Specular" inBundle:v32 withConfiguration:0];

  if (v33)
  {
    v34 = [UIView alloc];
    [(UIView *)self->_specularEffectRootView bounds];
    v35 = [v34 initWithFrame:?];
    v36 = objc_alloc_init(PUIDPointerShapeView);
    specularEffectMaskPointerShapeView = self->_specularEffectMaskPointerShapeView;
    self->_specularEffectMaskPointerShapeView = v36;

    [(PUIDPointerShapeView *)self->_specularEffectMaskPointerShapeView setPosition:0.0, 0.0];
    v38 = self->_specularEffectMaskPointerShapeView;
    v39 = +[UIColor blackColor];
    [(PUIDPointerShapeView *)v38 setShapeMaterialReplacementColor:v39];

    [(PUIDPointerShapeView *)self->_specularEffectMaskPointerShapeView setIntensity:1.0];
    [v35 addSubview:self->_specularEffectMaskPointerShapeView];
    v40 = [UIView alloc];
    [(UIView *)self->_specularEffectRootView bounds];
    v41 = [v40 initWithFrame:?];
    [v41 setMaskView:v35];
    [(UIView *)self->_specularEffectRootView addSubview:v41];
    v42 = [[UIImageView alloc] initWithImage:v33];
    specularImageView = self->_specularImageView;
    self->_specularImageView = v42;

    [(UIImageView *)self->_specularImageView setAlpha:0.0];
    [v41 addSubview:self->_specularImageView];
    [(UIView *)self->_specularEffectRootView setHidden:1];
  }

  view2 = [(PUIDPointerRenderingRootViewController *)self view];
  [(PUIDPointerRenderingRootViewController *)self _debugVisualizationForView:view2];

  objc_destroyWeak(&v46);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v52);
  objc_destroyWeak(&location);
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_display withName:@"display"];
  build = [v3 build];

  return build;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  view = [(PUIDPointerRenderingRootViewController *)self view];
  [view size];
  v10 = v9;
  v12 = v11;

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001FAC8;
  v13[3] = &unk_100049510;
  objc_copyWeak(v14, &location);
  v14[1] = *&width;
  v14[2] = *&height;
  v14[3] = v10;
  v14[4] = v12;
  [UIView _performWithoutRetargetingAnimations:v13];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

- (void)pointerShapeViewVisibilityDidChange:(id)change
{
  self->_pointerIsVisible = [change isVisible];
  delegate = [(PUIDPointerRenderingRootViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PUIDPointerRenderingRootViewController *)self delegate];
    [delegate2 pointerVisibilityDidChange:self];
  }
}

- (void)pointerShapeViewInterfaceOrientationDidChange:(id)change duration:(double)duration
{
  delegate = [(PUIDPointerRenderingRootViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PUIDPointerRenderingRootViewController *)self delegate];
    [delegate2 pointerOrientationDidChange:self duration:duration];
  }

  [(PUIDPointerRenderingRootViewController *)self _updatePointerWithOptions:3 updateHandlerCollection:0 error:0];
}

- (id)createPointerPortalSourceCollectionForClient:(id)client
{
  clientCopy = client;
  view = [(PUIDPointerRenderingRootViewController *)self view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PUIDPointerRenderingRootViewController *)self _createPortalSourceViewWithFrame:?];
  contentPortalView = [v13 contentPortalView];
  [contentPortalView setSourceView:self->_pointerRootView];

  [view addSubview:v13];
  layer = [v13 layer];
  v16 = [PSPortalSource alloc];
  context = [layer context];
  v39 = layer;
  v18 = [v16 initWithSourceContextID:objc_msgSend(context sourceLayerRenderID:{"contextId"), CALayerGetRenderId()}];

  v19 = [(PUIDPointerRenderingRootViewController *)self _createPortalSourceViewWithFrame:v6, v8, v10, v12];
  contentPortalView2 = [v19 contentPortalView];
  [contentPortalView2 setSourceView:self->_specularEffectRootView];

  v40 = view;
  [view addSubview:v19];
  layer2 = [v19 layer];
  v22 = [PSPortalSource alloc];
  context2 = [layer2 context];
  v24 = [v22 initWithSourceContextID:objc_msgSend(context2 sourceLayerRenderID:{"contextId"), CALayerGetRenderId()}];

  portalSourceToView = self->_portalSourceToView;
  if (!portalSourceToView)
  {
    v26 = objc_alloc_init(NSMutableDictionary);
    v27 = self->_portalSourceToView;
    self->_portalSourceToView = v26;

    portalSourceToView = self->_portalSourceToView;
  }

  [(NSMutableDictionary *)portalSourceToView setObject:v13 forKey:v18, layer2];
  [(NSMutableDictionary *)self->_portalSourceToView setObject:v19 forKey:v24];
  layer3 = [(UIView *)self->_pointerBackgroundSamplingSourceView layer];
  v29 = [PSMatchMoveSource alloc];
  context3 = [layer3 context];
  v31 = [v29 initWithSourceContextID:objc_msgSend(context3 sourceLayerRenderID:{"contextId"), CALayerGetRenderId()}];

  [v31 setShouldBeInvalidatedIfPointerLeavesDisplay:0];
  v32 = [[PSPointerPortalSourceCollection alloc] initWithPointerPortalSource:v18 overlayEffectPortalSource:v24 samplingMatchMoveSource:v31];
  v33 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:clientCopy];
  if (!v33)
  {
    v33 = objc_alloc_init(_PUIDPointerRenderingClientSourceContainer);
    pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
    if (!pointerClientToSourceContainerMap)
    {
      v35 = +[NSMapTable strongToStrongObjectsMapTable];
      v36 = self->_pointerClientToSourceContainerMap;
      self->_pointerClientToSourceContainerMap = v35;

      pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
    }

    [(NSMapTable *)pointerClientToSourceContainerMap setObject:v33 forKey:clientCopy];
  }

  [(_PUIDPointerRenderingClientSourceContainer *)v33 addPointerPortalSourceCollection:v32];

  return v32;
}

- (void)invalidatePointerPortalSourceCollection:(id)collection forClient:(id)client
{
  collectionCopy = collection;
  clientCopy = client;
  v7 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:clientCopy];
  pointerPortalSourceCollections = [v7 pointerPortalSourceCollections];
  v9 = [pointerPortalSourceCollections containsObject:collectionCopy];

  if (v9)
  {
    pointerPortalSource = [collectionCopy pointerPortalSource];
    if (pointerPortalSource)
    {
      v11 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:pointerPortalSource];
      if (v11)
      {
        v12 = v11;
        [v11 removeFromSuperview];
        [(NSMutableDictionary *)self->_portalSourceToView removeObjectForKey:pointerPortalSource];
      }
    }

    overlayEffectPortalSource = [collectionCopy overlayEffectPortalSource];
    if (overlayEffectPortalSource)
    {
      v14 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:overlayEffectPortalSource];
      if (v14)
      {
        v15 = v14;
        [v14 removeFromSuperview];
        [(NSMutableDictionary *)self->_portalSourceToView removeObjectForKey:overlayEffectPortalSource];
      }
    }

    if (![(NSMutableDictionary *)self->_portalSourceToView count])
    {
      portalSourceToView = self->_portalSourceToView;
      self->_portalSourceToView = 0;
    }

    [v7 removePointerPortalSourceCollection:collectionCopy];
    if ([v7 isEmpty])
    {
      [(NSMapTable *)self->_pointerClientToSourceContainerMap removeObjectForKey:clientCopy];
      if (![(NSMapTable *)self->_pointerClientToSourceContainerMap count])
      {
        pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
        self->_pointerClientToSourceContainerMap = 0;
      }
    }
  }
}

- (BOOL)isValidPointerPortalSourceCollection:(id)collection forClient:(id)client
{
  pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
  collectionCopy = collection;
  v7 = [(NSMapTable *)pointerClientToSourceContainerMap objectForKey:client];
  pointerPortalSourceCollections = [v7 pointerPortalSourceCollections];
  v9 = [pointerPortalSourceCollections containsObject:collectionCopy];

  return v9;
}

- (void)invalidatePointerPortalSourceCollectionsPassingTest:(id)test additionalInvalidation:(id)invalidation
{
  testCopy = test;
  invalidationCopy = invalidation;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  keyEnumerator = [(NSMapTable *)self->_pointerClientToSourceContainerMap keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  obj = allObjects;
  v20 = [allObjects countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v20)
  {
    v19 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v10;
        v11 = *(*(&v28 + 1) + 8 * v10);
        v21 = [(NSMapTable *)selfCopy->_pointerClientToSourceContainerMap objectForKey:v11];
        pointerPortalSourceCollections = [v21 pointerPortalSourceCollections];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = [pointerPortalSourceCollections countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(pointerPortalSourceCollections);
              }

              v17 = *(*(&v24 + 1) + 8 * i);
              if (!testCopy || testCopy[2](testCopy, v11, *(*(&v24 + 1) + 8 * i)))
              {
                [(PUIDPointerRenderingRootViewController *)selfCopy invalidatePointerPortalSourceCollection:v17 forClient:v11];
                invalidationCopy[2](invalidationCopy, v11, v17);
              }
            }

            v14 = [pointerPortalSourceCollections countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v10 = v22 + 1;
      }

      while ((v22 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v20);
  }
}

- (id)createContentMatchMoveSourceForClient:(id)client
{
  clientCopy = client;
  _createMatchMoveSourceView = [(PUIDPointerRenderingRootViewController *)self _createMatchMoveSourceView];
  layer = [_createMatchMoveSourceView layer];
  v7 = [PSMatchMoveSource alloc];
  view = [(PUIDPointerRenderingRootViewController *)self view];
  window = [view window];
  v10 = [v7 initWithSourceContextID:objc_msgSend(window sourceLayerRenderID:{"_contextId"), CALayerGetRenderId()}];

  matchMoveSourceToView = self->_matchMoveSourceToView;
  if (!matchMoveSourceToView)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = self->_matchMoveSourceToView;
    self->_matchMoveSourceToView = v12;

    matchMoveSourceToView = self->_matchMoveSourceToView;
  }

  [(NSMutableDictionary *)matchMoveSourceToView setObject:_createMatchMoveSourceView forKey:v10];
  v14 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:clientCopy];
  if (!v14)
  {
    v14 = objc_alloc_init(_PUIDPointerRenderingClientSourceContainer);
    pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
    if (!pointerClientToSourceContainerMap)
    {
      v16 = +[NSMapTable strongToStrongObjectsMapTable];
      v17 = self->_pointerClientToSourceContainerMap;
      self->_pointerClientToSourceContainerMap = v16;

      pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
    }

    [(NSMapTable *)pointerClientToSourceContainerMap setObject:v14 forKey:clientCopy];
  }

  [(_PUIDPointerRenderingClientSourceContainer *)v14 addContentMatchMoveSource:v10];

  return v10;
}

- (void)invalidateContentMatchMoveSource:(id)source forClient:(id)client
{
  sourceCopy = source;
  clientCopy = client;
  v7 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:clientCopy];
  contentMatchMoveSources = [v7 contentMatchMoveSources];
  v9 = [contentMatchMoveSources containsObject:sourceCopy];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_matchMoveSourceToView objectForKey:sourceCopy];
    v11 = v10;
    if (v10)
    {
      [v10 removeFromSuperview];
      [(NSMutableDictionary *)self->_matchMoveSourceToView removeObjectForKey:sourceCopy];
    }

    if (![(NSMutableDictionary *)self->_matchMoveSourceToView count])
    {
      matchMoveSourceToView = self->_matchMoveSourceToView;
      self->_matchMoveSourceToView = 0;
    }

    [v7 removeContentMatchMoveSource:sourceCopy];
    if ([v7 isEmpty])
    {
      [(NSMapTable *)self->_pointerClientToSourceContainerMap removeObjectForKey:clientCopy];
      if (![(NSMapTable *)self->_pointerClientToSourceContainerMap count])
      {
        pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
        self->_pointerClientToSourceContainerMap = 0;
      }
    }
  }
}

- (void)invalidateContentMatchMoveSourcesPassingTest:(id)test additionalInvalidation:(id)invalidation
{
  testCopy = test;
  invalidationCopy = invalidation;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  selfCopy = self;
  keyEnumerator = [(NSMapTable *)self->_pointerClientToSourceContainerMap keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  obj = allObjects;
  v20 = [allObjects countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v20)
  {
    v19 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v10;
        v11 = *(*(&v28 + 1) + 8 * v10);
        v21 = [(NSMapTable *)selfCopy->_pointerClientToSourceContainerMap objectForKey:v11];
        contentMatchMoveSources = [v21 contentMatchMoveSources];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = [contentMatchMoveSources countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(contentMatchMoveSources);
              }

              v17 = *(*(&v24 + 1) + 8 * i);
              if (!testCopy || testCopy[2](testCopy, v11, *(*(&v24 + 1) + 8 * i)))
              {
                [(PUIDPointerRenderingRootViewController *)selfCopy invalidateContentMatchMoveSource:v17 forClient:v11];
                invalidationCopy[2](invalidationCopy, v11, v17);
              }
            }

            v14 = [contentMatchMoveSources countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v10 = v22 + 1;
      }

      while ((v22 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v20);
  }
}

- (void)invalidateEffectSourcesForPointerClient:(id)client
{
  clientCopy = client;
  v5 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:clientCopy];
  contentMatchMoveSources = [v5 contentMatchMoveSources];
  pointerPortalSourceCollections = [v5 pointerPortalSourceCollections];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = contentMatchMoveSources;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(PUIDPointerRenderingRootViewController *)self invalidateContentMatchMoveSource:*(*(&v22 + 1) + 8 * v12) forClient:clientCopy];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = pointerPortalSourceCollections;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(PUIDPointerRenderingRootViewController *)self invalidatePointerPortalSourceCollection:*(*(&v18 + 1) + 8 * v17) forClient:clientCopy, v18];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (BOOL)setPointerState:(id)state options:(unint64_t)options updateHandlerCollection:(id)collection error:(id *)error
{
  stateCopy = state;
  pointerState = self->_pointerState;
  collectionCopy = collection;
  v14 = collectionCopy;
  if (pointerState == stateCopy)
  {
    v19 = 1;
    [collectionCopy performAllHandlersWithFinished:1 retargeted:0];
  }

  else
  {
    pointerShape = [(PUIDPointerState *)stateCopy pointerShape];
    if ([pointerShape shapeType] == 5)
    {
      pointerShape2 = [(PUIDPointerState *)self->_pointerState pointerShape];
      shapeType = [pointerShape2 shapeType];

      v18 = options & 0xFFFFFFFFFFFFFFFELL;
      if (shapeType == 5)
      {
        options &= ~1uLL;
      }
    }

    else
    {

      v18 = options & 0xFFFFFFFFFFFFFFFELL;
    }

    if (self->_visibilityState == 1)
    {
      [(PUIDPointerState *)self->_pointerState pointerVisualIntensity];
      if (v20 == 0.0)
      {
        options = v18;
      }
    }

    objc_storeStrong(&self->_pointerState, state);
    v24 = 0;
    v19 = [(PUIDPointerRenderingRootViewController *)self _updatePointerWithOptions:options updateHandlerCollection:v14 error:&v24];

    v21 = v24;
    v14 = v21;
    if (error && !v19)
    {
      v22 = v21;
      *error = v14;
    }
  }

  return v19;
}

- (BOOL)_updatePointerWithOptions:(unint64_t)options updateHandlerCollection:(id)collection error:(id *)error
{
  collectionCopy = collection;
  view = [(PUIDPointerRenderingRootViewController *)self view];
  memset(&v208[1], 0, sizeof(CATransform3D));
  pointerState = self->_pointerState;
  if (pointerState)
  {
    [(PUIDPointerState *)pointerState clientCoordinateSpaceTransformToDisplay];
  }

  memset(v208, 0, 128);
  *b = v208[1];
  [(PUIDPointerRenderingRootViewController *)self transformToLocalWindowForCoordinateSpaceTransformToDisplay:b];
  CATransform3DGetDecomposition_();
  memset(&v207, 0, sizeof(v207));
  CATransform3DMakeRotation(&v207, v211, 0.0, 0.0, 1.0);
  v146 = sub_100019EA0();
  pointerPortalSourceCollection = [(PUIDPointerState *)self->_pointerState pointerPortalSourceCollection];
  pointerPortalSource = [pointerPortalSourceCollection pointerPortalSource];
  pointerPortalSource2 = [(PSPointerPortalSourceCollection *)self->_previousPointerPortalSourceCollection pointerPortalSource];
  v161 = pointerPortalSource2;
  if (pointerPortalSource)
  {
    v11 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:pointerPortalSource];
    v12 = v161;
    v158 = v11;
    if (v161)
    {
LABEL_5:
      v157 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:v12];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = pointerPortalSource2;
    v158 = 0;
    if (pointerPortalSource2)
    {
      goto LABEL_5;
    }
  }

  v157 = 0;
LABEL_8:
  overlayEffectPortalSource = [pointerPortalSourceCollection overlayEffectPortalSource];
  overlayEffectPortalSource2 = [(PSPointerPortalSourceCollection *)self->_previousPointerPortalSourceCollection overlayEffectPortalSource];
  v151 = overlayEffectPortalSource;
  if (overlayEffectPortalSource)
  {
    v14 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:overlayEffectPortalSource];
  }

  else
  {
    v14 = 0;
  }

  v15 = overlayEffectPortalSource2;
  v160 = v14;
  if (overlayEffectPortalSource2)
  {
    v16 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:overlayEffectPortalSource2];
  }

  else
  {
    v16 = 0;
  }

  if (v14 != v16)
  {
    [v16 contentPortalView];
    v18 = v17 = pointerPortalSource;
    [v18 setAlpha:0.0];

    contentPortalView = [v14 contentPortalView];
    [contentPortalView setAlpha:1.0];

    pointerPortalSource = v17;
  }

  v150 = v16;
  objc_storeStrong(&self->_previousPointerPortalSourceCollection, pointerPortalSourceCollection);
  contentMatchMoveSource = [(PUIDPointerState *)self->_pointerState contentMatchMoveSource];
  if (contentMatchMoveSource)
  {
    v21 = [(NSMutableDictionary *)self->_matchMoveSourceToView objectForKey:contentMatchMoveSource];
  }

  else
  {
    v21 = 0;
  }

  if (self->_previousContentMatchMoveSource)
  {
    v22 = [(NSMutableDictionary *)self->_matchMoveSourceToView objectForKey:?];
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(&self->_previousContentMatchMoveSource, contentMatchMoveSource);
  [(PUIDPointerState *)self->_pointerState modelPointerReferencePosition];
  v24 = v23;
  v26 = v25;
  sub_100022070(@"pointerStateModelReferencePosition", self->_pointerState, v23, v25);
  [view convertPoint:0 fromView:{v24, v26}];
  v28 = v27;
  v30 = v29;
  sub_100022070(@"relativeModelPosition", self->_pointerState, v27, v29);
  [(PUIDPointerState *)self->_pointerState contentBounds];
  y = CGPointZero.y;
  pointerSlipValue = [(PUIDPointerState *)self->_pointerState pointerSlipValue];
  v153 = v28;
  path = *&y;
  if (pointerSlipValue)
  {
    UIRectGetCenter();
    *b = v208[0];
    CA_CGPointApplyTransform();
    x = v33;
    v36 = v35;
    sub_100022070(@"contentBoundsCenterInLocalWindowCoordinates", self->_pointerState, v33, v35);
    [pointerSlipValue CGPointValue];
    v38 = v37;
    v40 = v39;
    sub_100022070(@"pointerSlipValue", self->_pointerState, v37, v39);
    if (v146)
    {
      v41 = v38;
    }

    else
    {
      v41 = v40;
    }

    if (v146)
    {
      v38 = v40;
    }

    sub_100022070(@"pointerSlipValue post transform", self->_pointerState, v38, v41);
    v140 = v38;
    v141 = v41;
    [(PUIDPointerRenderingRootViewController *)self _positionForTargetWithCenter:x modelCursorPosition:v36 slip:v153, v30, v38, v41];
    v28 = v42;
    v44 = v43;
  }

  else
  {
    v140 = 1.0;
    v141 = 1.0;
    v44 = v30;
    v36 = y;
    x = CGPointZero.x;
  }

  v152 = pointerPortalSourceCollection;
  v148 = sub_100022070(@"relativeEffectedPosition", self->_pointerState, v28, v44);
  v149 = pointerSlipValue;
  if (v148)
  {
    v145 = view;
    window = [view window];
    screen = [window screen];
    v47 = screen;
    v135 = v30;
    if (screen)
    {
      v48 = screen;
    }

    else
    {
      v48 = +[UIScreen mainScreen];
    }

    v52 = v48;
    v143 = v21;

    [v52 scale];
    BSPointRoundForScale();
    v54 = v53;
    v130 = v55;
    contentSlipValue = [(PUIDPointerState *)self->_pointerState contentSlipValue];
    v57 = contentSlipValue;
    v58 = CGPointZero.x;
    v59 = path;
    if (contentSlipValue)
    {
      [contentSlipValue CGPointValue];
      if (v146)
      {
        v62 = v61;
      }

      else
      {
        v62 = v60;
      }

      if (v146)
      {
        v63 = v60;
      }

      else
      {
        v63 = v61;
      }

      [(PUIDPointerRenderingRootViewController *)self _positionForTargetWithCenter:x modelCursorPosition:v36 slip:v153, v30, v62, v63];
      v206 = v207;
      CATransform3DInvert(b, &v206);
      CA_CGPointApplyTransform();
    }

    v131 = v59;
    v147 = v58;
    pointerShape = [(PUIDPointerState *)self->_pointerState pointerShape];
    shapeType = [pointerShape shapeType];
    v66 = shapeType;
    v134 = contentMatchMoveSource;
    v142 = v22;
    v132 = v57;
    if (shapeType == 5)
    {
      [pointerShape pinnedPoint];
      *b = v208[0];
      CA_CGPointApplyTransform();
      BSPointRoundForScale();
      v68 = v67;
      v70 = v69;
      [(PUIDPointerSettings *)self->_settings systemPointerSize];
      v72 = v71;
      [(PUIDPointerSettings *)self->_settings systemPointerPressedScale];
      v74 = v72 * v73;
      v75 = v72 * v73 * 0.5;
      if (v68 >= v54)
      {
        v76 = v54;
      }

      else
      {
        v76 = v68;
      }

      v77 = v130;
      if (v70 >= v130)
      {
        v78 = v130;
      }

      else
      {
        v78 = v70;
      }

      v79 = vabdd_f64(v68, v54);
      v80 = vabdd_f64(v70, v130);
      v215 = CGRectInset(*&v76, -(v74 * 0.5), -(v74 * 0.5));
      v81 = v215.origin.x;
      v82 = v215.origin.y;
      width = v215.size.width;
      height = v215.size.height;
      v85 = v54;
      v86 = CGRectGetMinX(v215) - v54;
      v216.origin.x = v81;
      v216.origin.y = v82;
      v216.size.width = width;
      v216.size.height = height;
      v87 = CGRectGetMinY(v216) - v130;
      v88 = v86;
      v54 = v85;
      v89 = [PSPointerShape roundedRectWithBounds:v88 cornerRadius:v87, width, height, v75];

      pointerShape = v89;
      v90 = v135;
    }

    else
    {
      if ((shapeType - 2) <= 2)
      {
        *b = v208[0];
        CA_CGPointApplyTransform();
        v92 = v91;
        v94 = v93;
        v206 = v208[0];
        if (![(PUIDPointerState *)self->_pointerState isPointerUnderlayingContent])
        {
          *b = v208[0];
          CATransform3DScale(&v206, b, 1.0 / v212, 1.0 / v213, 1.0 / v214);
        }

        memset(&v205, 0, sizeof(v205));
        CATransform3DMakeTranslation(b, -v92, -v94, 0.0);
        a = v206;
        CATransform3DConcat(&v205, &a, b);
        if ([pointerShape shapeType] == 2)
        {
          [pointerShape bounds];
          *b = v205;
          CA_CGRectApplyTransform();
          v95 = [PSPointerShape circleWithBounds:?];

          pointerShape = v95;
        }

        else if ([pointerShape shapeType] == 3)
        {
          [pointerShape bounds];
          *b = v205;
          CA_CGRectApplyTransform();
          v97 = v96;
          v99 = v98;
          v101 = v100;
          v103 = v102;
          [pointerShape cornerRadius];
          v105 = v104;
          cornerCurve = [pointerShape cornerCurve];
          patha = [PSPointerShape roundedRectWithBounds:cornerCurve cornerRadius:v97 cornerCurve:v99, v101, v103, v105];

          pointerShape = patha;
        }

        else if ([pointerShape shapeType] == 4)
        {
          pathb = [pointerShape path];
          a = v205;
          Mutable = CGPathCreateMutable();
          *b = _NSConcreteStackBlock;
          *&b[8] = 3221225472;
          *&b[16] = sub_100025D58;
          *&b[24] = &unk_1000498B8;
          *&b[32] = a;
          v210 = Mutable;
          CGPathApplyWithBlock(pathb, b);
          pathc = CGPathCreateCopy(Mutable);
          CGPathRelease(Mutable);
          v129 = +[PSPointerShape customShapeWithPath:usesEvenOddFillRule:](PSPointerShape, "customShapeWithPath:usesEvenOddFillRule:", pathc, [pointerShape usesEvenOddFillRule]);

          CGPathRelease(pathc);
          pointerShape = v129;
        }
      }

      v90 = v135;
      v77 = v130;
    }

    suppressPointerMirroring = [(PUIDPointerState *)self->_pointerState suppressPointerMirroring];
    layer = [(UIView *)self->_pointerRootView layer];
    v110 = layer;
    if (suppressPointerMirroring)
    {
      v111 = 18;
    }

    else
    {
      v111 = 0;
    }

    [layer setDisableUpdateMask:v111];

    [(PUIDPointerRenderingRootViewController *)self _updateRampingPropertiesForPointerSlip:options & 1 animated:v140, v141];
    v196[0] = _NSConcreteStackBlock;
    v196[1] = 3221225472;
    v196[2] = sub_1000221D4;
    v196[3] = &unk_1000495B0;
    v196[4] = self;
    v112 = pointerShape;
    v197 = v112;
    v198 = v153;
    v199 = v90;
    v200 = v54;
    v201 = v77;
    v203 = options & 1;
    optionsCopy = options;
    [SBC2GroupCompletion perform:v196 finalCompletion:&stru_1000495F0];
    isPointerAutoHidden = [(PUIDPointerState *)self->_pointerState isPointerAutoHidden];
    if (isPointerAutoHidden)
    {
      v114 = 1;
    }

    else
    {
      v114 = 3;
    }

    v133 = v52;
    if (v66 != 5 && (isPointerAutoHidden & 1) == 0)
    {
      if ([(PUIDPointerState *)self->_pointerState isPressed])
      {
        v114 = 2;
      }

      else
      {
        v114 = 0;
      }
    }

    visibilityState = self->_visibilityState;
    self->_visibilityState = v114;
    v191[0] = _NSConcreteStackBlock;
    v191[1] = 3221225472;
    v191[2] = sub_1000228C8;
    v191[3] = &unk_100049618;
    v192 = v158;
    v193 = v157;
    selfCopy = self;
    v195 = options & 1;
    v189[0] = _NSConcreteStackBlock;
    v189[1] = 3221225472;
    v189[2] = sub_10002296C;
    v189[3] = &unk_100048EE0;
    v115 = collectionCopy;
    v190 = v115;
    [SBC2GroupCompletion perform:v191 finalCompletion:v189];
    pointerShapeView = self->_pointerShapeView;
    [(PUIDPointerState *)self->_pointerState shakeToFindPointerSizeMultiplier];
    [(PUIDPointerShapeView *)pointerShapeView setShakeToFindPointerSizeMultiplier:?];
    specularEffectMaskPointerShapeView = self->_specularEffectMaskPointerShapeView;
    [(PUIDPointerState *)self->_pointerState shakeToFindPointerSizeMultiplier];
    [(PUIDPointerShapeView *)specularEffectMaskPointerShapeView setShakeToFindPointerSizeMultiplier:?];
    v186[0] = _NSConcreteStackBlock;
    v186[1] = 3221225472;
    v186[2] = sub_1000229C4;
    v186[3] = &unk_100049640;
    v186[4] = self;
    v118 = v112;
    v187 = v118;
    v188 = options & 1;
    v184[0] = _NSConcreteStackBlock;
    v184[1] = 3221225472;
    v184[2] = sub_100022AB0;
    v184[3] = &unk_100048EE0;
    v119 = v115;
    v185 = v119;
    [SBC2GroupCompletion perform:v186 finalCompletion:v184];
    v178[0] = _NSConcreteStackBlock;
    v178[1] = 3221225472;
    v178[2] = sub_100022B08;
    v178[3] = &unk_1000496E0;
    v180 = v114;
    v178[4] = self;
    v120 = v118;
    v179 = v120;
    v181 = visibilityState;
    v183 = (options & 2) != 0;
    optionsCopy2 = options;
    v176[0] = _NSConcreteStackBlock;
    v176[1] = 3221225472;
    v176[2] = sub_100023484;
    v176[3] = &unk_100048EE0;
    v121 = v119;
    v177 = v121;
    [SBC2GroupCompletion perform:v178 finalCompletion:v176];
    v169[0] = _NSConcreteStackBlock;
    v169[1] = 3221225472;
    v169[2] = sub_1000234DC;
    v169[3] = &unk_100049758;
    v169[4] = self;
    v173 = v147;
    v174 = v131;
    v170 = v143;
    v171 = v142;
    v172 = v145;
    v175 = options & 1;
    v167[0] = _NSConcreteStackBlock;
    v167[1] = 3221225472;
    v167[2] = sub_100023940;
    v167[3] = &unk_100048EE0;
    v122 = v121;
    v168 = v122;
    [SBC2GroupCompletion perform:v169 finalCompletion:v167];
    v164[0] = _NSConcreteStackBlock;
    v164[1] = 3221225472;
    v164[2] = sub_100023998;
    v164[3] = &unk_100049640;
    v164[4] = self;
    v123 = v120;
    v165 = v123;
    v166 = options & 1;
    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_100023CBC;
    v162[3] = &unk_100048EE0;
    v163 = v122;
    [SBC2GroupCompletion perform:v164 finalCompletion:v162];
    accessories = [(PUIDPointerState *)self->_pointerState accessories];
    v50 = v152;
    v15 = overlayEffectPortalSource2;
    if ([accessories count])
    {
      accessoryContainerView = self->_accessoryContainerView;
      if (!accessoryContainerView)
      {
        v126 = objc_opt_new();
        v127 = self->_accessoryContainerView;
        self->_accessoryContainerView = v126;

        [(UIView *)self->_pointerRootView insertSubview:self->_accessoryContainerView atIndex:0];
        accessoryContainerView = self->_accessoryContainerView;
      }

      *b = v207;
      [(PUIDPointerAccessoryContainerView *)accessoryContainerView setTransform3D:b];
    }

    [(PUIDPointerAccessoryContainerView *)self->_accessoryContainerView setAccessories:accessories animated:1];
    *b = v208[0];
    [(PUIDPointerRenderingRootViewController *)self _debugVisualizationUpdate:b];

    v51 = collectionCopy;
    v21 = v143;
    view = v145;
    contentMatchMoveSource = v134;
    v22 = v142;
  }

  else
  {
    v49 = PSLogCommon();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_10002843C(v49);
    }

    v50 = v152;
    v51 = collectionCopy;
    if (error)
    {
      *error = [NSError errorWithDomain:@"PUIDPointerRenderingRootViewControllerErrorDomain" code:-1002 userInfo:0];
    }
  }

  return v148;
}

- (CATransform3D)transformToLocalWindowForCoordinateSpaceTransformToDisplay:(SEL)display
{
  view = [(PUIDPointerRenderingRootViewController *)self view];
  window = [view window];
  screen = [window screen];
  v9 = screen;
  if (screen)
  {
    v10 = screen;
  }

  else
  {
    v10 = +[UIScreen mainScreen];
  }

  v11 = v10;

  [v11 scale];
  v13 = v12;
  [v11 _referenceBounds];
  _D9 = v14;
  v17 = v16;
  window2 = [view window];
  windowScene = [window2 windowScene];

  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  v55 = *&CGAffineTransformIdentity.tx;
  if (objc_opt_respondsToSelector())
  {
    if (settings)
    {
      [settings rootWindowTransform];
      v22 = *&m.m11;
      v23 = *&m.m13;
    }

    else
    {
      v22 = 0uLL;
      memset(&m, 0, 48);
      v23 = 0uLL;
    }

    v55 = *&m.m21;
  }

  else
  {
    v22 = *&CGAffineTransformIdentity.a;
    v23 = *&CGAffineTransformIdentity.c;
  }

  v24 = v17 * *&v23 + *&v22 * _D9;
  _Q3 = v22;
  v47 = v23;
  v48 = v22;
  __asm { FMLA            D1, D9, V3.D[1] }

  v31 = (_D9 - v24) * 0.5;
  v32 = (v17 - _D1) * 0.5;
  *&t1.m11 = _Q3;
  *&t1.m13 = v23;
  *&t1.m21 = v55;
  CGAffineTransformInvert(&m, &t1);
  v46 = v32 * m.m13;
  m11 = m.m11;
  m12 = m.m12;
  v35 = v32 * m.m14;
  [v11 _rotation];
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  CGAffineTransformMakeRotation(&m, -v36);
  UIIntegralTransform();
  *&t1.m11 = v52;
  *&t1.m13 = v53;
  *&t1.m21 = v54;
  CGAffineTransformScale(&m, &t1, v13, v13);
  v52 = *&m.m11;
  v53 = *&m.m13;
  v54 = *&m.m21;
  *&m.m11 = v48;
  *&m.m13 = v47;
  *&m.m21 = v55;
  if (!CGAffineTransformIsIdentity(&m))
  {
    *&t1.m11 = v52;
    *&t1.m13 = v53;
    *&t1.m21 = v54;
    *&t2.a = v48;
    *&t2.c = v47;
    *&t2.tx = v55;
    CGAffineTransformConcat(&m, &t1, &t2);
    v52 = *&m.m11;
    v53 = *&m.m13;
    v54 = *&m.m21;
  }

  x = v46 + m11 * v31;
  v38 = v35 + m12 * v31;
  if (BSFloatEqualToFloat())
  {
    v38 = -v17 - v38;
  }

  else if (BSFloatEqualToFloat())
  {
    x = -_D9 - x;
  }

  else
  {
    y = CGPointZero.y;
    v40 = BSFloatEqualToFloat();
    if (v40)
    {
      x = -_D9 - x;
    }

    else
    {
      x = CGPointZero.x;
    }

    if (v40)
    {
      v38 = -v17 - v38;
    }

    else
    {
      v38 = y;
    }
  }

  *&t1.m11 = v52;
  *&t1.m13 = v53;
  *&t1.m21 = v54;
  CGAffineTransformTranslate(&m, &t1, x, v38);
  v52 = *&m.m11;
  v53 = *&m.m13;
  v54 = *&m.m21;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&m.m11 = v52;
  *&m.m13 = v53;
  *&m.m21 = v54;
  CATransform3DMakeAffineTransform(&t1, &m);
  CATransform3DInvert(&m, &t1);
  v41 = *&a4->m33;
  *&t1.m31 = *&a4->m31;
  *&t1.m33 = v41;
  v42 = *&a4->m43;
  *&t1.m41 = *&a4->m41;
  *&t1.m43 = v42;
  v43 = *&a4->m13;
  *&t1.m11 = *&a4->m11;
  *&t1.m13 = v43;
  v44 = *&a4->m23;
  *&t1.m21 = *&a4->m21;
  *&t1.m23 = v44;
  CATransform3DConcat(retstr, &t1, &m);

  return result;
}

- (void)hidePointerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(PUIDPointerState *)self->_pointerState mutableCopy];
  [v6 setPointerAutoHidden:1];
  if (animatedCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [(PUIDPointerRenderingRootViewController *)self setPointerState:v6 options:v5 updateHandlerCollection:0 error:0];
}

- (void)setClippingRegion:(CGRect)region cornerRadius:(double)radius
{
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  pointerShapeView = self->_pointerShapeView;
  view = [(PUIDPointerRenderingRootViewController *)self view];
  window = [view window];
  [(PUIDPointerShapeView *)pointerShapeView convertRect:window fromCoordinateSpace:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  v21 = CGPathCreateWithRoundedRect(v23, radius, radius, 0);
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(PUIDPointerShapeView *)self->_pointerShapeView setMaskPath:v21];
  +[CATransaction commit];

  CGPathRelease(v21);
}

- (void)removeClippingRegion
{
  if ([(PUIDPointerShapeView *)self->_pointerShapeView maskPath])
  {
    pointerShapeView = self->_pointerShapeView;

    [(PUIDPointerShapeView *)pointerShapeView setMaskPath:0];
  }
}

- (id)_positionAnimationCountIncrementingCompletionWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  ++self->_positionAnimationCount;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002438C;
  v9[3] = &unk_100048AA0;
  v9[4] = self;
  v10 = wrapperCopy;
  v5 = wrapperCopy;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  return v7;
}

- (void)_updateRampingPropertiesForPointerSlip:(CGPoint)slip animated:(BOOL)animated
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000244EC;
  v14[3] = &unk_1000497D0;
  animatedCopy = animated;
  v14[4] = self;
  v5 = objc_retainBlock(v14);
  rampingXProperty = self->_rampingXProperty;
  if (BSFloatLessThanFloat())
  {
    v7.n128_f64[0] = 1.0;
  }

  else
  {
    v7.n128_f64[0] = 0.0;
  }

  v8 = (v5[2])(v5, rampingXProperty, v7);
  v9 = self->_rampingXProperty;
  self->_rampingXProperty = v8;

  rampingYProperty = self->_rampingYProperty;
  if (BSFloatLessThanFloat())
  {
    v11.n128_f64[0] = 1.0;
  }

  else
  {
    v11.n128_f64[0] = 0.0;
  }

  v12 = (v5[2])(v5, rampingYProperty, v11);
  v13 = self->_rampingYProperty;
  self->_rampingYProperty = v12;
}

- (void)_relativePositionAnimationParametersUsingSystemPointerPositionSettings:(id)settings forTextContent:(BOOL)content outXDamping:(double *)damping outXResponse:(double *)response outYDamping:(double *)yDamping outYResponse:(double *)yResponse
{
  contentCopy = content;
  settingsCopy = settings;
  if (damping)
  {
    if (response)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100028620();
    if (response)
    {
LABEL_3:
      if (yDamping)
      {
        goto LABEL_4;
      }

LABEL_22:
      sub_100028708();
      if (yResponse)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  sub_100028694();
  if (!yDamping)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (yResponse)
  {
    goto LABEL_5;
  }

LABEL_23:
  sub_10002877C();
LABEL_5:
  [(UIViewFloatAnimatableProperty *)self->_rampingXProperty presentationValue];
  v15 = v14;
  [(UIViewFloatAnimatableProperty *)self->_rampingYProperty presentationValue];
  if (contentCopy)
  {
    textContentPointerPositionAnimationSettings = [(PUIDPointerSettings *)self->_settings textContentPointerPositionAnimationSettings];
    [textContentPointerPositionAnimationSettings dampingRatio];
    v19 = v18;
    [textContentPointerPositionAnimationSettings response];
    v21 = v20;
    *damping = v19;
    *yDamping = v19;
    *response = v20;
  }

  else
  {
    v22 = v16;
    [settingsCopy dampingRatio];
    v24 = v23;
    [settingsCopy response];
    v21 = v25;
    textContentPointerPositionAnimationSettings = [(PUIDPointerSettings *)self->_settings focusedPointerPositionAnimationSettings];
    [textContentPointerPositionAnimationSettings dampingRatio];
    v27 = v26;
    [textContentPointerPositionAnimationSettings response];
    v29 = v28;
    if (BSFloatIsZero())
    {
      *damping = v24;
      v30 = v21;
    }

    else if (BSFloatIsOne())
    {
      *damping = v27;
      v30 = v29;
    }

    else
    {
      *damping = v15 * v27 + (1.0 - v15) * v24;
      v30 = v15 * v29 + (1.0 - v15) * v21;
    }

    *response = v30;
    if (BSFloatIsZero())
    {
      *yDamping = v24;
    }

    else if (BSFloatIsOne())
    {
      *yDamping = v27;
      v21 = v29;
    }

    else
    {
      *yDamping = v22 * v27 + (1.0 - v22) * v24;
      v21 = v22 * v29 + (1.0 - v22) * v21;
    }
  }

  *yResponse = v21;
}

- (id)_createMatchMoveSourceView
{
  v2 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];

  return v2;
}

- (CGRect)_samplingBoundsForPointerShape:(id)shape
{
  shapeCopy = shape;
  [(PUIDPointerShapeView *)self->_pointerShapeView expectedShapeBoundsForPointerShape:shapeCopy];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  [(PUIDPointerSettings *)self->_settings systemPointerSize];
  UIRectCenteredRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (!_UIPlasmaEnabled() || [shapeCopy shapeType] != 1)
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    v28.origin.x = v14;
    v28.origin.y = v16;
    v28.size.width = v18;
    v28.size.height = v20;
    v26 = CGRectUnion(v25, v28);
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)_createPortalSourceViewWithFrame:(CGRect)frame
{
  v3 = [[_PUIDPointerPortalSourceView alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return v3;
}

- (CGPoint)_positionForTargetWithCenter:(CGPoint)center modelCursorPosition:(CGPoint)position slip:(CGPoint)slip
{
  v5 = center.x - (center.x - position.x) * slip.x;
  v6 = center.y - (center.y - position.y) * slip.y;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)_transitionFromPointerPortalSourceView:(id)view toPointerPortalSourceView:(id)sourceView animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  sourceViewCopy = sourceView;
  contentPortalView = [view contentPortalView];
  contentPortalView2 = [sourceViewCopy contentPortalView];

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100024F2C;
  v64[3] = &unk_100048A28;
  v14 = contentPortalView;
  v65 = v14;
  v15 = contentPortalView2;
  v66 = v15;
  v16 = objc_retainBlock(v64);
  v17 = v16;
  if (animatedCopy)
  {
    selfCopy = self;
    v46 = v14;
    v47 = completionCopy;
    v18 = v14;
    layer = [v18 layer];
    v45 = v15;
    v20 = v15;
    layer2 = [v20 layer];
    v22 = [v20 _velocityForKey:@"opacity"];
    if (v18)
    {
      filters = [layer filters];
      if (([filters bs_containsObjectPassingTest:&stru_100049810] & 1) == 0)
      {
        v24 = layer;
        v25 = [filters mutableCopy];
        if (!v25)
        {
          v25 = [[NSMutableArray alloc] initWithCapacity:1];
        }

        v26 = [CAFilter filterWithType:kCAFilterOpacityPair];
        [v26 setName:@"opacityPair"];
        [v25 addObject:v26];
        [v24 setFilters:v25];

        layer = v24;
      }
    }

    if (v20)
    {
      filters2 = [layer2 filters];
      v28 = [filters2 indexOfObjectPassingTest:&stru_100049850];
      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = v28;
        v30 = layer;
        v31 = [filters2 mutableCopy];
        [v31 removeObjectAtIndex:v29];
        [layer2 setFilters:v31];

        layer = v30;
      }
    }

    v32 = +[NSUUID UUID];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100025078;
    v58[3] = &unk_100049878;
    v33 = layer;
    v59 = v33;
    v34 = v32;
    v60 = v34;
    v61 = layer2;
    v62 = v18;
    v63 = v22;
    v43 = v22;
    v35 = v18;
    v36 = layer2;
    [UIView _performWithoutRetargetingAnimations:v58];
    zTransitionOpacityAnimationSettings = [(PUIDPointerSettings *)selfCopy->_settings zTransitionOpacityAnimationSettings];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_10002512C;
    v54[3] = &unk_100049168;
    v57 = v17;
    v55 = v33;
    v56 = v20;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000251B4;
    v50[3] = &unk_100049730;
    v51 = v55;
    v52 = v34;
    v38 = v47;
    v53 = v47;
    v39 = v17;
    v40 = v34;
    v41 = v55;
    v42 = v20;
    [UIView _animateUsingSpringBehavior:zTransitionOpacityAnimationSettings tracking:0 animations:v54 completion:v50];

    v15 = v45;
    v14 = v46;
  }

  else
  {
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100025330;
    v48[3] = &unk_100049350;
    v49 = v16;
    v36 = v16;
    [UIView _performWithoutRetargetingAnimations:v48];
    (*(completionCopy + 2))(completionCopy, 1, 0);
    v35 = v49;
    v38 = completionCopy;
  }
}

- (void)_updatePointerShapePosition:(double)position onAxis:(unint64_t)axis isModel:(BOOL)model
{
  modelCopy = model;
  axisCopy = axis;
  sub_1000253EC(position, self, self->_pointerShapeView, axis, model);
  sub_1000253EC(position, v9, self->_accessoryContainerView, axisCopy, modelCopy);
  sub_1000253EC(position, v10, self->_pointerBackgroundSamplingSourceView, axisCopy, modelCopy);
  specularEffectMaskPointerShapeView = self->_specularEffectMaskPointerShapeView;

  sub_1000253EC(position, v11, specularEffectMaskPointerShapeView, axisCopy, modelCopy);
}

- (PUIDPointerRenderingRootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_debugVisualizationForView:(id)view
{
  if (self->_isDebugMode)
  {
    layer = [view layer];
    v5 = [UIColor colorWithRed:1.0 green:0.01 blue:0.5 alpha:0.200000003];
    [layer setBackgroundColor:{objc_msgSend(v5, "CGColor")}];

    v6 = +[UIColor blueColor];
    [layer setBorderColor:{objc_msgSend(v6, "CGColor")}];

    [layer setBorderWidth:1.0];
    v7 = +[CALayer layer];
    debugHoverRegion = self->_debugHoverRegion;
    self->_debugHoverRegion = v7;

    [(CALayer *)self->_debugHoverRegion setBackgroundColor:CGColorCreateSRGB(1.0, 1.0, 0.0, 0.1)];
    [layer addSublayer:self->_debugHoverRegion];
  }
}

- (void)_debugVisualizationUpdate:(CATransform3D *)update
{
  if (self->_isDebugMode)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(PUIDPointerState *)self->_pointerState contentBounds];
    v5 = *update;
    CA_CGRectApplyTransform();
    [(CALayer *)self->_debugHoverRegion setFrame:*&v5.m11, *&v5.m13, *&v5.m21, *&v5.m23, *&v5.m31, *&v5.m33, *&v5.m41, *&v5.m43];
    +[CATransaction commit];
  }
}

@end
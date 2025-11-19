@interface PUIDPointerRenderingRootViewController
- (BOOL)_updatePointerWithOptions:(unint64_t)a3 updateHandlerCollection:(id)a4 error:(id *)a5;
- (BOOL)isValidPointerPortalSourceCollection:(id)a3 forClient:(id)a4;
- (BOOL)setPointerState:(id)a3 options:(unint64_t)a4 updateHandlerCollection:(id)a5 error:(id *)a6;
- (CATransform3D)transformToLocalWindowForCoordinateSpaceTransformToDisplay:(SEL)a3;
- (CGPoint)_positionForTargetWithCenter:(CGPoint)a3 modelCursorPosition:(CGPoint)a4 slip:(CGPoint)a5;
- (CGRect)_samplingBoundsForPointerShape:(id)a3;
- (NSString)description;
- (PUIDPointerRenderingRootViewController)initWithCoder:(id)a3;
- (PUIDPointerRenderingRootViewController)initWithDisplay:(id)a3 hiddenForPerformanceReasons:(BOOL)a4;
- (PUIDPointerRenderingRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PUIDPointerRenderingRootViewControllerDelegate)delegate;
- (id)_createMatchMoveSourceView;
- (id)_createPortalSourceViewWithFrame:(CGRect)a3;
- (id)_positionAnimationCountIncrementingCompletionWrapper:(id)a3;
- (id)createContentMatchMoveSourceForClient:(id)a3;
- (id)createPointerPortalSourceCollectionForClient:(id)a3;
- (void)_debugVisualizationForView:(id)a3;
- (void)_debugVisualizationUpdate:(CATransform3D *)a3;
- (void)_relativePositionAnimationParametersUsingSystemPointerPositionSettings:(id)a3 forTextContent:(BOOL)a4 outXDamping:(double *)a5 outXResponse:(double *)a6 outYDamping:(double *)a7 outYResponse:(double *)a8;
- (void)_transitionFromPointerPortalSourceView:(id)a3 toPointerPortalSourceView:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_updatePointerShapePosition:(double)a3 onAxis:(unint64_t)a4 isModel:(BOOL)a5;
- (void)_updateRampingPropertiesForPointerSlip:(CGPoint)a3 animated:(BOOL)a4;
- (void)hidePointerAnimated:(BOOL)a3;
- (void)invalidateContentMatchMoveSource:(id)a3 forClient:(id)a4;
- (void)invalidateContentMatchMoveSourcesPassingTest:(id)a3 additionalInvalidation:(id)a4;
- (void)invalidateEffectSourcesForPointerClient:(id)a3;
- (void)invalidatePointerPortalSourceCollection:(id)a3 forClient:(id)a4;
- (void)invalidatePointerPortalSourceCollectionsPassingTest:(id)a3 additionalInvalidation:(id)a4;
- (void)pointerShapeViewInterfaceOrientationDidChange:(id)a3 duration:(double)a4;
- (void)pointerShapeViewVisibilityDidChange:(id)a3;
- (void)removeClippingRegion;
- (void)setClippingRegion:(CGRect)a3 cornerRadius:(double)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PUIDPointerRenderingRootViewController

- (PUIDPointerRenderingRootViewController)initWithDisplay:(id)a3 hiddenForPerformanceReasons:(BOOL)a4
{
  v7 = a3;
  v17.receiver = self;
  v17.super_class = PUIDPointerRenderingRootViewController;
  v8 = [(PUIDPointerRenderingRootViewController *)&v17 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_display, a3);
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
    v9->_hiddenForPerformanceReasons = a4;
  }

  return v9;
}

- (PUIDPointerRenderingRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  [v6 handleFailureInMethod:a2 object:self file:@"PUIDPointerRenderingRootViewController.m" lineNumber:187 description:@"Call initWithDisplay: instead"];

  return [(PUIDPointerRenderingRootViewController *)self init];
}

- (PUIDPointerRenderingRootViewController)initWithCoder:(id)a3
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

  v4 = [(PUIDPointerRenderingRootViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 setHidden:self->_hiddenForPerformanceReasons];
  v13 = [[UIView alloc] initWithFrame:{v6, v8, v10, v12}];
  pointerRootView = self->_pointerRootView;
  self->_pointerRootView = v13;

  [v4 addSubview:self->_pointerRootView];
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
  [v4 addSubview:self->_pointerBackgroundSamplingSourceView];
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

  [v4 addSubview:self->_specularEffectRootView];
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

  v44 = [(PUIDPointerRenderingRootViewController *)self view];
  [(PUIDPointerRenderingRootViewController *)self _debugVisualizationForView:v44];

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
  v5 = [v3 build];

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(PUIDPointerRenderingRootViewController *)self view];
  [v8 size];
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

- (void)pointerShapeViewVisibilityDidChange:(id)a3
{
  self->_pointerIsVisible = [a3 isVisible];
  v4 = [(PUIDPointerRenderingRootViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PUIDPointerRenderingRootViewController *)self delegate];
    [v6 pointerVisibilityDidChange:self];
  }
}

- (void)pointerShapeViewInterfaceOrientationDidChange:(id)a3 duration:(double)a4
{
  v6 = [(PUIDPointerRenderingRootViewController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(PUIDPointerRenderingRootViewController *)self delegate];
    [v8 pointerOrientationDidChange:self duration:a4];
  }

  [(PUIDPointerRenderingRootViewController *)self _updatePointerWithOptions:3 updateHandlerCollection:0 error:0];
}

- (id)createPointerPortalSourceCollectionForClient:(id)a3
{
  v41 = a3;
  v4 = [(PUIDPointerRenderingRootViewController *)self view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PUIDPointerRenderingRootViewController *)self _createPortalSourceViewWithFrame:?];
  v14 = [v13 contentPortalView];
  [v14 setSourceView:self->_pointerRootView];

  [v4 addSubview:v13];
  v15 = [v13 layer];
  v16 = [PSPortalSource alloc];
  v17 = [v15 context];
  v39 = v15;
  v18 = [v16 initWithSourceContextID:objc_msgSend(v17 sourceLayerRenderID:{"contextId"), CALayerGetRenderId()}];

  v19 = [(PUIDPointerRenderingRootViewController *)self _createPortalSourceViewWithFrame:v6, v8, v10, v12];
  v20 = [v19 contentPortalView];
  [v20 setSourceView:self->_specularEffectRootView];

  v40 = v4;
  [v4 addSubview:v19];
  v21 = [v19 layer];
  v22 = [PSPortalSource alloc];
  v23 = [v21 context];
  v24 = [v22 initWithSourceContextID:objc_msgSend(v23 sourceLayerRenderID:{"contextId"), CALayerGetRenderId()}];

  portalSourceToView = self->_portalSourceToView;
  if (!portalSourceToView)
  {
    v26 = objc_alloc_init(NSMutableDictionary);
    v27 = self->_portalSourceToView;
    self->_portalSourceToView = v26;

    portalSourceToView = self->_portalSourceToView;
  }

  [(NSMutableDictionary *)portalSourceToView setObject:v13 forKey:v18, v21];
  [(NSMutableDictionary *)self->_portalSourceToView setObject:v19 forKey:v24];
  v28 = [(UIView *)self->_pointerBackgroundSamplingSourceView layer];
  v29 = [PSMatchMoveSource alloc];
  v30 = [v28 context];
  v31 = [v29 initWithSourceContextID:objc_msgSend(v30 sourceLayerRenderID:{"contextId"), CALayerGetRenderId()}];

  [v31 setShouldBeInvalidatedIfPointerLeavesDisplay:0];
  v32 = [[PSPointerPortalSourceCollection alloc] initWithPointerPortalSource:v18 overlayEffectPortalSource:v24 samplingMatchMoveSource:v31];
  v33 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:v41];
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

    [(NSMapTable *)pointerClientToSourceContainerMap setObject:v33 forKey:v41];
  }

  [(_PUIDPointerRenderingClientSourceContainer *)v33 addPointerPortalSourceCollection:v32];

  return v32;
}

- (void)invalidatePointerPortalSourceCollection:(id)a3 forClient:(id)a4
{
  v18 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:v6];
  v8 = [v7 pointerPortalSourceCollections];
  v9 = [v8 containsObject:v18];

  if (v9)
  {
    v10 = [v18 pointerPortalSource];
    if (v10)
    {
      v11 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:v10];
      if (v11)
      {
        v12 = v11;
        [v11 removeFromSuperview];
        [(NSMutableDictionary *)self->_portalSourceToView removeObjectForKey:v10];
      }
    }

    v13 = [v18 overlayEffectPortalSource];
    if (v13)
    {
      v14 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:v13];
      if (v14)
      {
        v15 = v14;
        [v14 removeFromSuperview];
        [(NSMutableDictionary *)self->_portalSourceToView removeObjectForKey:v13];
      }
    }

    if (![(NSMutableDictionary *)self->_portalSourceToView count])
    {
      portalSourceToView = self->_portalSourceToView;
      self->_portalSourceToView = 0;
    }

    [v7 removePointerPortalSourceCollection:v18];
    if ([v7 isEmpty])
    {
      [(NSMapTable *)self->_pointerClientToSourceContainerMap removeObjectForKey:v6];
      if (![(NSMapTable *)self->_pointerClientToSourceContainerMap count])
      {
        pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
        self->_pointerClientToSourceContainerMap = 0;
      }
    }
  }
}

- (BOOL)isValidPointerPortalSourceCollection:(id)a3 forClient:(id)a4
{
  pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
  v6 = a3;
  v7 = [(NSMapTable *)pointerClientToSourceContainerMap objectForKey:a4];
  v8 = [v7 pointerPortalSourceCollections];
  v9 = [v8 containsObject:v6];

  return v9;
}

- (void)invalidatePointerPortalSourceCollectionsPassingTest:(id)a3 additionalInvalidation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self;
  v8 = [(NSMapTable *)self->_pointerClientToSourceContainerMap keyEnumerator];
  v9 = [v8 allObjects];

  obj = v9;
  v20 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
        v21 = [(NSMapTable *)v23->_pointerClientToSourceContainerMap objectForKey:v11];
        v12 = [v21 pointerPortalSourceCollections];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v24 + 1) + 8 * i);
              if (!v6 || v6[2](v6, v11, *(*(&v24 + 1) + 8 * i)))
              {
                [(PUIDPointerRenderingRootViewController *)v23 invalidatePointerPortalSourceCollection:v17 forClient:v11];
                v7[2](v7, v11, v17);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (id)createContentMatchMoveSourceForClient:(id)a3
{
  v4 = a3;
  v5 = [(PUIDPointerRenderingRootViewController *)self _createMatchMoveSourceView];
  v6 = [v5 layer];
  v7 = [PSMatchMoveSource alloc];
  v8 = [(PUIDPointerRenderingRootViewController *)self view];
  v9 = [v8 window];
  v10 = [v7 initWithSourceContextID:objc_msgSend(v9 sourceLayerRenderID:{"_contextId"), CALayerGetRenderId()}];

  matchMoveSourceToView = self->_matchMoveSourceToView;
  if (!matchMoveSourceToView)
  {
    v12 = objc_alloc_init(NSMutableDictionary);
    v13 = self->_matchMoveSourceToView;
    self->_matchMoveSourceToView = v12;

    matchMoveSourceToView = self->_matchMoveSourceToView;
  }

  [(NSMutableDictionary *)matchMoveSourceToView setObject:v5 forKey:v10];
  v14 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:v4];
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

    [(NSMapTable *)pointerClientToSourceContainerMap setObject:v14 forKey:v4];
  }

  [(_PUIDPointerRenderingClientSourceContainer *)v14 addContentMatchMoveSource:v10];

  return v10;
}

- (void)invalidateContentMatchMoveSource:(id)a3 forClient:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:v6];
  v8 = [v7 contentMatchMoveSources];
  v9 = [v8 containsObject:v14];

  if (v9)
  {
    v10 = [(NSMutableDictionary *)self->_matchMoveSourceToView objectForKey:v14];
    v11 = v10;
    if (v10)
    {
      [v10 removeFromSuperview];
      [(NSMutableDictionary *)self->_matchMoveSourceToView removeObjectForKey:v14];
    }

    if (![(NSMutableDictionary *)self->_matchMoveSourceToView count])
    {
      matchMoveSourceToView = self->_matchMoveSourceToView;
      self->_matchMoveSourceToView = 0;
    }

    [v7 removeContentMatchMoveSource:v14];
    if ([v7 isEmpty])
    {
      [(NSMapTable *)self->_pointerClientToSourceContainerMap removeObjectForKey:v6];
      if (![(NSMapTable *)self->_pointerClientToSourceContainerMap count])
      {
        pointerClientToSourceContainerMap = self->_pointerClientToSourceContainerMap;
        self->_pointerClientToSourceContainerMap = 0;
      }
    }
  }
}

- (void)invalidateContentMatchMoveSourcesPassingTest:(id)a3 additionalInvalidation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self;
  v8 = [(NSMapTable *)self->_pointerClientToSourceContainerMap keyEnumerator];
  v9 = [v8 allObjects];

  obj = v9;
  v20 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
        v21 = [(NSMapTable *)v23->_pointerClientToSourceContainerMap objectForKey:v11];
        v12 = [v21 contentMatchMoveSources];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v24 + 1) + 8 * i);
              if (!v6 || v6[2](v6, v11, *(*(&v24 + 1) + 8 * i)))
              {
                [(PUIDPointerRenderingRootViewController *)v23 invalidateContentMatchMoveSource:v17 forClient:v11];
                v7[2](v7, v11, v17);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (void)invalidateEffectSourcesForPointerClient:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_pointerClientToSourceContainerMap objectForKey:v4];
  v6 = [v5 contentMatchMoveSources];
  v7 = [v5 pointerPortalSourceCollections];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v6;
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

        [(PUIDPointerRenderingRootViewController *)self invalidateContentMatchMoveSource:*(*(&v22 + 1) + 8 * v12) forClient:v4];
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
  v13 = v7;
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

        [(PUIDPointerRenderingRootViewController *)self invalidatePointerPortalSourceCollection:*(*(&v18 + 1) + 8 * v17) forClient:v4, v18];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (BOOL)setPointerState:(id)a3 options:(unint64_t)a4 updateHandlerCollection:(id)a5 error:(id *)a6
{
  v11 = a3;
  pointerState = self->_pointerState;
  v13 = a5;
  v14 = v13;
  if (pointerState == v11)
  {
    v19 = 1;
    [v13 performAllHandlersWithFinished:1 retargeted:0];
  }

  else
  {
    v15 = [(PUIDPointerState *)v11 pointerShape];
    if ([v15 shapeType] == 5)
    {
      v16 = [(PUIDPointerState *)self->_pointerState pointerShape];
      v17 = [v16 shapeType];

      v18 = a4 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 == 5)
      {
        a4 &= ~1uLL;
      }
    }

    else
    {

      v18 = a4 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (self->_visibilityState == 1)
    {
      [(PUIDPointerState *)self->_pointerState pointerVisualIntensity];
      if (v20 == 0.0)
      {
        a4 = v18;
      }
    }

    objc_storeStrong(&self->_pointerState, a3);
    v24 = 0;
    v19 = [(PUIDPointerRenderingRootViewController *)self _updatePointerWithOptions:a4 updateHandlerCollection:v14 error:&v24];

    v21 = v24;
    v14 = v21;
    if (a6 && !v19)
    {
      v22 = v21;
      *a6 = v14;
    }
  }

  return v19;
}

- (BOOL)_updatePointerWithOptions:(unint64_t)a3 updateHandlerCollection:(id)a4 error:(id *)a5
{
  v159 = a4;
  v6 = [(PUIDPointerRenderingRootViewController *)self view];
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
  v8 = [(PUIDPointerState *)self->_pointerState pointerPortalSourceCollection];
  v9 = [v8 pointerPortalSource];
  v10 = [(PSPointerPortalSourceCollection *)self->_previousPointerPortalSourceCollection pointerPortalSource];
  v161 = v10;
  if (v9)
  {
    v11 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:v9];
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
    v12 = v10;
    v158 = 0;
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v157 = 0;
LABEL_8:
  v13 = [v8 overlayEffectPortalSource];
  v156 = [(PSPointerPortalSourceCollection *)self->_previousPointerPortalSourceCollection overlayEffectPortalSource];
  v151 = v13;
  if (v13)
  {
    v14 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = v156;
  v160 = v14;
  if (v156)
  {
    v16 = [(NSMutableDictionary *)self->_portalSourceToView objectForKey:v156];
  }

  else
  {
    v16 = 0;
  }

  if (v14 != v16)
  {
    [v16 contentPortalView];
    v18 = v17 = v9;
    [v18 setAlpha:0.0];

    v19 = [v14 contentPortalView];
    [v19 setAlpha:1.0];

    v9 = v17;
  }

  v150 = v16;
  objc_storeStrong(&self->_previousPointerPortalSourceCollection, v8);
  v20 = [(PUIDPointerState *)self->_pointerState contentMatchMoveSource];
  if (v20)
  {
    v21 = [(NSMutableDictionary *)self->_matchMoveSourceToView objectForKey:v20];
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

  objc_storeStrong(&self->_previousContentMatchMoveSource, v20);
  [(PUIDPointerState *)self->_pointerState modelPointerReferencePosition];
  v24 = v23;
  v26 = v25;
  sub_100022070(@"pointerStateModelReferencePosition", self->_pointerState, v23, v25);
  [v6 convertPoint:0 fromView:{v24, v26}];
  v28 = v27;
  v30 = v29;
  sub_100022070(@"relativeModelPosition", self->_pointerState, v27, v29);
  [(PUIDPointerState *)self->_pointerState contentBounds];
  y = CGPointZero.y;
  v32 = [(PUIDPointerState *)self->_pointerState pointerSlipValue];
  v153 = v28;
  path = *&y;
  if (v32)
  {
    UIRectGetCenter();
    *b = v208[0];
    CA_CGPointApplyTransform();
    x = v33;
    v36 = v35;
    sub_100022070(@"contentBoundsCenterInLocalWindowCoordinates", self->_pointerState, v33, v35);
    [v32 CGPointValue];
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

  v152 = v8;
  v148 = sub_100022070(@"relativeEffectedPosition", self->_pointerState, v28, v44);
  v149 = v32;
  if (v148)
  {
    v145 = v6;
    v45 = [v6 window];
    v46 = [v45 screen];
    v47 = v46;
    v135 = v30;
    if (v46)
    {
      v48 = v46;
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
    v56 = [(PUIDPointerState *)self->_pointerState contentSlipValue];
    v57 = v56;
    v58 = CGPointZero.x;
    v59 = path;
    if (v56)
    {
      [v56 CGPointValue];
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
    v64 = [(PUIDPointerState *)self->_pointerState pointerShape];
    v65 = [v64 shapeType];
    v66 = v65;
    v134 = v20;
    v142 = v22;
    v132 = v57;
    if (v65 == 5)
    {
      [v64 pinnedPoint];
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

      v64 = v89;
      v90 = v135;
    }

    else
    {
      if ((v65 - 2) <= 2)
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
        if ([v64 shapeType] == 2)
        {
          [v64 bounds];
          *b = v205;
          CA_CGRectApplyTransform();
          v95 = [PSPointerShape circleWithBounds:?];

          v64 = v95;
        }

        else if ([v64 shapeType] == 3)
        {
          [v64 bounds];
          *b = v205;
          CA_CGRectApplyTransform();
          v97 = v96;
          v99 = v98;
          v101 = v100;
          v103 = v102;
          [v64 cornerRadius];
          v105 = v104;
          v106 = [v64 cornerCurve];
          patha = [PSPointerShape roundedRectWithBounds:v106 cornerRadius:v97 cornerCurve:v99, v101, v103, v105];

          v64 = patha;
        }

        else if ([v64 shapeType] == 4)
        {
          pathb = [v64 path];
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
          v129 = +[PSPointerShape customShapeWithPath:usesEvenOddFillRule:](PSPointerShape, "customShapeWithPath:usesEvenOddFillRule:", pathc, [v64 usesEvenOddFillRule]);

          CGPathRelease(pathc);
          v64 = v129;
        }
      }

      v90 = v135;
      v77 = v130;
    }

    v108 = [(PUIDPointerState *)self->_pointerState suppressPointerMirroring];
    v109 = [(UIView *)self->_pointerRootView layer];
    v110 = v109;
    if (v108)
    {
      v111 = 18;
    }

    else
    {
      v111 = 0;
    }

    [v109 setDisableUpdateMask:v111];

    [(PUIDPointerRenderingRootViewController *)self _updateRampingPropertiesForPointerSlip:a3 & 1 animated:v140, v141];
    v196[0] = _NSConcreteStackBlock;
    v196[1] = 3221225472;
    v196[2] = sub_1000221D4;
    v196[3] = &unk_1000495B0;
    v196[4] = self;
    v112 = v64;
    v197 = v112;
    v198 = v153;
    v199 = v90;
    v200 = v54;
    v201 = v77;
    v203 = a3 & 1;
    v202 = a3;
    [SBC2GroupCompletion perform:v196 finalCompletion:&stru_1000495F0];
    v113 = [(PUIDPointerState *)self->_pointerState isPointerAutoHidden];
    if (v113)
    {
      v114 = 1;
    }

    else
    {
      v114 = 3;
    }

    v133 = v52;
    if (v66 != 5 && (v113 & 1) == 0)
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
    v194 = self;
    v195 = a3 & 1;
    v189[0] = _NSConcreteStackBlock;
    v189[1] = 3221225472;
    v189[2] = sub_10002296C;
    v189[3] = &unk_100048EE0;
    v115 = v159;
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
    v188 = a3 & 1;
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
    v183 = (a3 & 2) != 0;
    v182 = a3;
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
    v175 = a3 & 1;
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
    v166 = a3 & 1;
    v162[0] = _NSConcreteStackBlock;
    v162[1] = 3221225472;
    v162[2] = sub_100023CBC;
    v162[3] = &unk_100048EE0;
    v163 = v122;
    [SBC2GroupCompletion perform:v164 finalCompletion:v162];
    v124 = [(PUIDPointerState *)self->_pointerState accessories];
    v50 = v152;
    v15 = v156;
    if ([v124 count])
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

    [(PUIDPointerAccessoryContainerView *)self->_accessoryContainerView setAccessories:v124 animated:1];
    *b = v208[0];
    [(PUIDPointerRenderingRootViewController *)self _debugVisualizationUpdate:b];

    v51 = v159;
    v21 = v143;
    v6 = v145;
    v20 = v134;
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
    v51 = v159;
    if (a5)
    {
      *a5 = [NSError errorWithDomain:@"PUIDPointerRenderingRootViewControllerErrorDomain" code:-1002 userInfo:0];
    }
  }

  return v148;
}

- (CATransform3D)transformToLocalWindowForCoordinateSpaceTransformToDisplay:(SEL)a3
{
  v6 = [(PUIDPointerRenderingRootViewController *)self view];
  v7 = [v6 window];
  v8 = [v7 screen];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
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
  v18 = [v6 window];
  v19 = [v18 windowScene];

  v20 = [v19 _FBSScene];
  v21 = [v20 settings];
  v55 = *&CGAffineTransformIdentity.tx;
  if (objc_opt_respondsToSelector())
  {
    if (v21)
    {
      [v21 rootWindowTransform];
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

- (void)hidePointerAnimated:(BOOL)a3
{
  v3 = a3;
  v6 = [(PUIDPointerState *)self->_pointerState mutableCopy];
  [v6 setPointerAutoHidden:1];
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  [(PUIDPointerRenderingRootViewController *)self setPointerState:v6 options:v5 updateHandlerCollection:0 error:0];
}

- (void)setClippingRegion:(CGRect)a3 cornerRadius:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  pointerShapeView = self->_pointerShapeView;
  v11 = [(PUIDPointerRenderingRootViewController *)self view];
  v12 = [v11 window];
  [(PUIDPointerShapeView *)pointerShapeView convertRect:v12 fromCoordinateSpace:x, y, width, height];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  v21 = CGPathCreateWithRoundedRect(v23, a4, a4, 0);
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

- (id)_positionAnimationCountIncrementingCompletionWrapper:(id)a3
{
  v4 = a3;
  ++self->_positionAnimationCount;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002438C;
  v9[3] = &unk_100048AA0;
  v9[4] = self;
  v10 = v4;
  v5 = v4;
  v6 = objc_retainBlock(v9);
  v7 = objc_retainBlock(v6);

  return v7;
}

- (void)_updateRampingPropertiesForPointerSlip:(CGPoint)a3 animated:(BOOL)a4
{
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000244EC;
  v14[3] = &unk_1000497D0;
  v15 = a4;
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

- (void)_relativePositionAnimationParametersUsingSystemPointerPositionSettings:(id)a3 forTextContent:(BOOL)a4 outXDamping:(double *)a5 outXResponse:(double *)a6 outYDamping:(double *)a7 outYResponse:(double *)a8
{
  v12 = a4;
  v31 = a3;
  if (a5)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100028620();
    if (a6)
    {
LABEL_3:
      if (a7)
      {
        goto LABEL_4;
      }

LABEL_22:
      sub_100028708();
      if (a8)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  sub_100028694();
  if (!a7)
  {
    goto LABEL_22;
  }

LABEL_4:
  if (a8)
  {
    goto LABEL_5;
  }

LABEL_23:
  sub_10002877C();
LABEL_5:
  [(UIViewFloatAnimatableProperty *)self->_rampingXProperty presentationValue];
  v15 = v14;
  [(UIViewFloatAnimatableProperty *)self->_rampingYProperty presentationValue];
  if (v12)
  {
    v17 = [(PUIDPointerSettings *)self->_settings textContentPointerPositionAnimationSettings];
    [v17 dampingRatio];
    v19 = v18;
    [v17 response];
    v21 = v20;
    *a5 = v19;
    *a7 = v19;
    *a6 = v20;
  }

  else
  {
    v22 = v16;
    [v31 dampingRatio];
    v24 = v23;
    [v31 response];
    v21 = v25;
    v17 = [(PUIDPointerSettings *)self->_settings focusedPointerPositionAnimationSettings];
    [v17 dampingRatio];
    v27 = v26;
    [v17 response];
    v29 = v28;
    if (BSFloatIsZero())
    {
      *a5 = v24;
      v30 = v21;
    }

    else if (BSFloatIsOne())
    {
      *a5 = v27;
      v30 = v29;
    }

    else
    {
      *a5 = v15 * v27 + (1.0 - v15) * v24;
      v30 = v15 * v29 + (1.0 - v15) * v21;
    }

    *a6 = v30;
    if (BSFloatIsZero())
    {
      *a7 = v24;
    }

    else if (BSFloatIsOne())
    {
      *a7 = v27;
      v21 = v29;
    }

    else
    {
      *a7 = v22 * v27 + (1.0 - v22) * v24;
      v21 = v22 * v29 + (1.0 - v22) * v21;
    }
  }

  *a8 = v21;
}

- (id)_createMatchMoveSourceView
{
  v2 = [[UIView alloc] initWithFrame:{0.0, 0.0, 10.0, 10.0}];

  return v2;
}

- (CGRect)_samplingBoundsForPointerShape:(id)a3
{
  v4 = a3;
  [(PUIDPointerShapeView *)self->_pointerShapeView expectedShapeBoundsForPointerShape:v4];
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
  if (!_UIPlasmaEnabled() || [v4 shapeType] != 1)
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

- (id)_createPortalSourceViewWithFrame:(CGRect)a3
{
  v3 = [[_PUIDPointerPortalSourceView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return v3;
}

- (CGPoint)_positionForTargetWithCenter:(CGPoint)a3 modelCursorPosition:(CGPoint)a4 slip:(CGPoint)a5
{
  v5 = a3.x - (a3.x - a4.x) * a5.x;
  v6 = a3.y - (a3.y - a4.y) * a5.y;
  result.y = v6;
  result.x = v5;
  return result;
}

- (void)_transitionFromPointerPortalSourceView:(id)a3 toPointerPortalSourceView:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = [a3 contentPortalView];
  v13 = [v11 contentPortalView];

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = sub_100024F2C;
  v64[3] = &unk_100048A28;
  v14 = v12;
  v65 = v14;
  v15 = v13;
  v66 = v15;
  v16 = objc_retainBlock(v64);
  v17 = v16;
  if (v6)
  {
    v44 = self;
    v46 = v14;
    v47 = v10;
    v18 = v14;
    v19 = [v18 layer];
    v45 = v15;
    v20 = v15;
    v21 = [v20 layer];
    v22 = [v20 _velocityForKey:@"opacity"];
    if (v18)
    {
      v23 = [v19 filters];
      if (([v23 bs_containsObjectPassingTest:&stru_100049810] & 1) == 0)
      {
        v24 = v19;
        v25 = [v23 mutableCopy];
        if (!v25)
        {
          v25 = [[NSMutableArray alloc] initWithCapacity:1];
        }

        v26 = [CAFilter filterWithType:kCAFilterOpacityPair];
        [v26 setName:@"opacityPair"];
        [v25 addObject:v26];
        [v24 setFilters:v25];

        v19 = v24;
      }
    }

    if (v20)
    {
      v27 = [v21 filters];
      v28 = [v27 indexOfObjectPassingTest:&stru_100049850];
      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v29 = v28;
        v30 = v19;
        v31 = [v27 mutableCopy];
        [v31 removeObjectAtIndex:v29];
        [v21 setFilters:v31];

        v19 = v30;
      }
    }

    v32 = +[NSUUID UUID];
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_100025078;
    v58[3] = &unk_100049878;
    v33 = v19;
    v59 = v33;
    v34 = v32;
    v60 = v34;
    v61 = v21;
    v62 = v18;
    v63 = v22;
    v43 = v22;
    v35 = v18;
    v36 = v21;
    [UIView _performWithoutRetargetingAnimations:v58];
    v37 = [(PUIDPointerSettings *)v44->_settings zTransitionOpacityAnimationSettings];
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
    [UIView _animateUsingSpringBehavior:v37 tracking:0 animations:v54 completion:v50];

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
    (*(v10 + 2))(v10, 1, 0);
    v35 = v49;
    v38 = v10;
  }
}

- (void)_updatePointerShapePosition:(double)a3 onAxis:(unint64_t)a4 isModel:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  sub_1000253EC(a3, self, self->_pointerShapeView, a4, a5);
  sub_1000253EC(a3, v9, self->_accessoryContainerView, v6, v5);
  sub_1000253EC(a3, v10, self->_pointerBackgroundSamplingSourceView, v6, v5);
  specularEffectMaskPointerShapeView = self->_specularEffectMaskPointerShapeView;

  sub_1000253EC(a3, v11, specularEffectMaskPointerShapeView, v6, v5);
}

- (PUIDPointerRenderingRootViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_debugVisualizationForView:(id)a3
{
  if (self->_isDebugMode)
  {
    v9 = [a3 layer];
    v5 = [UIColor colorWithRed:1.0 green:0.01 blue:0.5 alpha:0.200000003];
    [v9 setBackgroundColor:{objc_msgSend(v5, "CGColor")}];

    v6 = +[UIColor blueColor];
    [v9 setBorderColor:{objc_msgSend(v6, "CGColor")}];

    [v9 setBorderWidth:1.0];
    v7 = +[CALayer layer];
    debugHoverRegion = self->_debugHoverRegion;
    self->_debugHoverRegion = v7;

    [(CALayer *)self->_debugHoverRegion setBackgroundColor:CGColorCreateSRGB(1.0, 1.0, 0.0, 0.1)];
    [v9 addSublayer:self->_debugHoverRegion];
  }
}

- (void)_debugVisualizationUpdate:(CATransform3D *)a3
{
  if (self->_isDebugMode)
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(PUIDPointerState *)self->_pointerState contentBounds];
    v5 = *a3;
    CA_CGRectApplyTransform();
    [(CALayer *)self->_debugHoverRegion setFrame:*&v5.m11, *&v5.m13, *&v5.m21, *&v5.m23, *&v5.m31, *&v5.m33, *&v5.m41, *&v5.m43];
    +[CATransaction commit];
  }
}

@end
@interface PUIDSystemPointerRootViewController
- (NSString)description;
- (PUIDSystemPointerRootViewController)initWithCoder:(id)coder;
- (PUIDSystemPointerRootViewController)initWithDisplay:(id)display;
- (PUIDSystemPointerRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_addMatchMoveAnimationFromSource:(id)source toView:(id)view;
- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level;
- (void)setLumaChangedHandlerBlock:(id)block;
- (void)setSamplingLuma:(BOOL)luma seedingWithLumaLevel:(unint64_t)level;
- (void)setSystemPointerPortalSourceCollection:(id)collection;
- (void)viewDidLoad;
@end

@implementation PUIDSystemPointerRootViewController

- (PUIDSystemPointerRootViewController)initWithDisplay:(id)display
{
  displayCopy = display;
  v9.receiver = self;
  v9.super_class = PUIDSystemPointerRootViewController;
  v6 = [(PUIDSystemPointerRootViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_display, display);
  }

  return v7;
}

- (PUIDSystemPointerRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6 = [NSAssertionHandler currentHandler:name];
  [v6 handleFailureInMethod:a2 object:self file:@"PUIDSystemPointerRootViewController.m" lineNumber:47 description:@"Call initWithDisplay: instead"];

  return [(PUIDSystemPointerRootViewController *)self init];
}

- (PUIDSystemPointerRootViewController)initWithCoder:(id)coder
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUIDSystemPointerRootViewController.m" lineNumber:53 description:@"Call initWithDisplay: instead"];

  return [(PUIDSystemPointerRootViewController *)self init];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = PUIDSystemPointerRootViewController;
  [(PUIDSystemPointerRootViewController *)&v20 viewDidLoad];
  view = [(PUIDSystemPointerRootViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[UIColor clearColor];
  [view setBackgroundColor:v12];

  v13 = [[_UILumaTrackingBackdropView alloc] initWithTransitionBoundaries:self delegate:0.45 frame:{0.55, 0.0, 0.0, 19.0, 19.0}];
  pointerLumaMeasurementView = self->_pointerLumaMeasurementView;
  self->_pointerLumaMeasurementView = v13;

  [(_UILumaTrackingBackdropView *)self->_pointerLumaMeasurementView setPaused:1];
  [(_UILumaTrackingBackdropView *)self->_pointerLumaMeasurementView setHidden:1];
  [view addSubview:self->_pointerLumaMeasurementView];
  samplingMatchMoveSource = [(PSPointerPortalSourceCollection *)self->_systemPointerPortalSourceCollection samplingMatchMoveSource];
  [(PUIDSystemPointerRootViewController *)self _addMatchMoveAnimationFromSource:samplingMatchMoveSource toView:self->_pointerLumaMeasurementView];
  v16 = [[_UIPortalView alloc] initWithFrame:{v5, v7, v9, v11}];
  systemPointerPortalView = self->_systemPointerPortalView;
  self->_systemPointerPortalView = v16;

  pointerPortalSource = [(PSPointerPortalSourceCollection *)self->_systemPointerPortalSourceCollection pointerPortalSource];
  if (pointerPortalSource)
  {
    portalLayer = [(_UIPortalView *)self->_systemPointerPortalView portalLayer];
    [portalLayer setSourceContextId:{objc_msgSend(pointerPortalSource, "sourceContextID")}];
    [portalLayer setSourceLayerRenderId:{objc_msgSend(pointerPortalSource, "sourceLayerRenderID")}];
  }

  [(_UIPortalView *)self->_systemPointerPortalView setMatchesAlpha:1];
  [(_UIPortalView *)self->_systemPointerPortalView setHidesSourceView:0];
  [(_UIPortalView *)self->_systemPointerPortalView setMatchesTransform:1];
  [(_UIPortalView *)self->_systemPointerPortalView setMatchesPosition:1];
  [view addSubview:self->_systemPointerPortalView];
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_display withName:@"display"];
  build = [v3 build];

  return build;
}

- (void)setSystemPointerPortalSourceCollection:(id)collection
{
  collectionCopy = collection;
  systemPointerPortalSourceCollection = self->_systemPointerPortalSourceCollection;
  if (systemPointerPortalSourceCollection != collectionCopy)
  {
    v12 = collectionCopy;
    if (([(PSPointerPortalSourceCollection *)systemPointerPortalSourceCollection isEqual:collectionCopy]& 1) == 0)
    {
      v6 = [(PSPointerPortalSourceCollection *)v12 copy];
      v7 = self->_systemPointerPortalSourceCollection;
      self->_systemPointerPortalSourceCollection = v6;

      systemPointerPortalView = self->_systemPointerPortalView;
      if (systemPointerPortalView)
      {
        portalLayer = [(_UIPortalView *)systemPointerPortalView portalLayer];
        pointerPortalSource = [(PSPointerPortalSourceCollection *)v12 pointerPortalSource];
        [portalLayer setSourceContextId:{objc_msgSend(pointerPortalSource, "sourceContextID")}];
        [portalLayer setSourceLayerRenderId:{objc_msgSend(pointerPortalSource, "sourceLayerRenderID")}];
      }

      if (self->_pointerLumaMeasurementView)
      {
        samplingMatchMoveSource = [(PSPointerPortalSourceCollection *)v12 samplingMatchMoveSource];
        [(PUIDSystemPointerRootViewController *)self _addMatchMoveAnimationFromSource:samplingMatchMoveSource toView:self->_pointerLumaMeasurementView];
      }
    }
  }

  _objc_release_x1();
}

- (void)setSamplingLuma:(BOOL)luma seedingWithLumaLevel:(unint64_t)level
{
  if (self->_sampling == luma)
  {
    return;
  }

  self->_sampling = luma;
  pointerLumaMeasurementView = self->_pointerLumaMeasurementView;
  if (luma)
  {
    [(_UILumaTrackingBackdropView *)pointerLumaMeasurementView setHidden:0];
    v7 = self->_pointerLumaMeasurementView;
    if (level)
    {

      [(_UILumaTrackingBackdropView *)v7 unpauseAfterSeedingWithLumaLevel:level];
      return;
    }

    v8 = 0;
  }

  else
  {
    [(_UILumaTrackingBackdropView *)pointerLumaMeasurementView setHidden:1, level];
    v7 = self->_pointerLumaMeasurementView;
    v8 = 1;
  }

  [(_UILumaTrackingBackdropView *)v7 setPaused:v8];
}

- (void)setLumaChangedHandlerBlock:(id)block
{
  self->_lumaChangedHandlerBlock = [block copy];

  _objc_release_x1();
}

- (void)backgroundLumaView:(id)view didTransitionToLevel:(unint64_t)level
{
  lumaChangedHandlerBlock = self->_lumaChangedHandlerBlock;
  if (lumaChangedHandlerBlock)
  {
    lumaChangedHandlerBlock[2](lumaChangedHandlerBlock, level);
  }
}

- (void)_addMatchMoveAnimationFromSource:(id)source toView:(id)view
{
  viewCopy = view;
  sourceCopy = source;
  layer = [viewCopy layer];
  [layer removeAnimationForKey:@"PUIDSamplingMatchMoveAnimationKey"];

  v8 = +[CAMatchMoveAnimation animation];
  [v8 setSourceContextId:{objc_msgSend(sourceCopy, "sourceContextID")}];
  sourceLayerRenderID = [sourceCopy sourceLayerRenderID];

  [v8 setSourceLayerRenderId:sourceLayerRenderID];
  [v8 setFillMode:kCAFillModeBoth];
  [v8 setRemovedOnCompletion:0];
  [v8 setDuration:INFINITY];
  [v8 setUsesNormalizedCoordinates:1];
  v10 = [NSValue valueWithCGPoint:-0.5, -0.5];
  v16[0] = v10;
  v11 = [NSValue valueWithCGPoint:0.5, -0.5];
  v16[1] = v11;
  v12 = [NSValue valueWithCGPoint:0.5, 0.5];
  v16[2] = v12;
  v13 = [NSValue valueWithCGPoint:-0.5, 0.5];
  v16[3] = v13;
  v14 = [NSArray arrayWithObjects:v16 count:4];
  [v8 setSourcePoints:v14];

  layer2 = [viewCopy layer];

  [layer2 addAnimation:v8 forKey:@"PUIDSamplingMatchMoveAnimationKey"];
}

@end
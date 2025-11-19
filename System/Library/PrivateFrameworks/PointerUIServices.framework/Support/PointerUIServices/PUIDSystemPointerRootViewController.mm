@interface PUIDSystemPointerRootViewController
- (NSString)description;
- (PUIDSystemPointerRootViewController)initWithCoder:(id)a3;
- (PUIDSystemPointerRootViewController)initWithDisplay:(id)a3;
- (PUIDSystemPointerRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_addMatchMoveAnimationFromSource:(id)a3 toView:(id)a4;
- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4;
- (void)setLumaChangedHandlerBlock:(id)a3;
- (void)setSamplingLuma:(BOOL)a3 seedingWithLumaLevel:(unint64_t)a4;
- (void)setSystemPointerPortalSourceCollection:(id)a3;
- (void)viewDidLoad;
@end

@implementation PUIDSystemPointerRootViewController

- (PUIDSystemPointerRootViewController)initWithDisplay:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUIDSystemPointerRootViewController;
  v6 = [(PUIDSystemPointerRootViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_display, a3);
  }

  return v7;
}

- (PUIDSystemPointerRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = [NSAssertionHandler currentHandler:a3];
  [v6 handleFailureInMethod:a2 object:self file:@"PUIDSystemPointerRootViewController.m" lineNumber:47 description:@"Call initWithDisplay: instead"];

  return [(PUIDSystemPointerRootViewController *)self init];
}

- (PUIDSystemPointerRootViewController)initWithCoder:(id)a3
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
  v3 = [(PUIDSystemPointerRootViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[UIColor clearColor];
  [v3 setBackgroundColor:v12];

  v13 = [[_UILumaTrackingBackdropView alloc] initWithTransitionBoundaries:self delegate:0.45 frame:{0.55, 0.0, 0.0, 19.0, 19.0}];
  pointerLumaMeasurementView = self->_pointerLumaMeasurementView;
  self->_pointerLumaMeasurementView = v13;

  [(_UILumaTrackingBackdropView *)self->_pointerLumaMeasurementView setPaused:1];
  [(_UILumaTrackingBackdropView *)self->_pointerLumaMeasurementView setHidden:1];
  [v3 addSubview:self->_pointerLumaMeasurementView];
  v15 = [(PSPointerPortalSourceCollection *)self->_systemPointerPortalSourceCollection samplingMatchMoveSource];
  [(PUIDSystemPointerRootViewController *)self _addMatchMoveAnimationFromSource:v15 toView:self->_pointerLumaMeasurementView];
  v16 = [[_UIPortalView alloc] initWithFrame:{v5, v7, v9, v11}];
  systemPointerPortalView = self->_systemPointerPortalView;
  self->_systemPointerPortalView = v16;

  v18 = [(PSPointerPortalSourceCollection *)self->_systemPointerPortalSourceCollection pointerPortalSource];
  if (v18)
  {
    v19 = [(_UIPortalView *)self->_systemPointerPortalView portalLayer];
    [v19 setSourceContextId:{objc_msgSend(v18, "sourceContextID")}];
    [v19 setSourceLayerRenderId:{objc_msgSend(v18, "sourceLayerRenderID")}];
  }

  [(_UIPortalView *)self->_systemPointerPortalView setMatchesAlpha:1];
  [(_UIPortalView *)self->_systemPointerPortalView setHidesSourceView:0];
  [(_UIPortalView *)self->_systemPointerPortalView setMatchesTransform:1];
  [(_UIPortalView *)self->_systemPointerPortalView setMatchesPosition:1];
  [v3 addSubview:self->_systemPointerPortalView];
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [v3 appendObject:self->_display withName:@"display"];
  v5 = [v3 build];

  return v5;
}

- (void)setSystemPointerPortalSourceCollection:(id)a3
{
  v4 = a3;
  systemPointerPortalSourceCollection = self->_systemPointerPortalSourceCollection;
  if (systemPointerPortalSourceCollection != v4)
  {
    v12 = v4;
    if (([(PSPointerPortalSourceCollection *)systemPointerPortalSourceCollection isEqual:v4]& 1) == 0)
    {
      v6 = [(PSPointerPortalSourceCollection *)v12 copy];
      v7 = self->_systemPointerPortalSourceCollection;
      self->_systemPointerPortalSourceCollection = v6;

      systemPointerPortalView = self->_systemPointerPortalView;
      if (systemPointerPortalView)
      {
        v9 = [(_UIPortalView *)systemPointerPortalView portalLayer];
        v10 = [(PSPointerPortalSourceCollection *)v12 pointerPortalSource];
        [v9 setSourceContextId:{objc_msgSend(v10, "sourceContextID")}];
        [v9 setSourceLayerRenderId:{objc_msgSend(v10, "sourceLayerRenderID")}];
      }

      if (self->_pointerLumaMeasurementView)
      {
        v11 = [(PSPointerPortalSourceCollection *)v12 samplingMatchMoveSource];
        [(PUIDSystemPointerRootViewController *)self _addMatchMoveAnimationFromSource:v11 toView:self->_pointerLumaMeasurementView];
      }
    }
  }

  _objc_release_x1();
}

- (void)setSamplingLuma:(BOOL)a3 seedingWithLumaLevel:(unint64_t)a4
{
  if (self->_sampling == a3)
  {
    return;
  }

  self->_sampling = a3;
  pointerLumaMeasurementView = self->_pointerLumaMeasurementView;
  if (a3)
  {
    [(_UILumaTrackingBackdropView *)pointerLumaMeasurementView setHidden:0];
    v7 = self->_pointerLumaMeasurementView;
    if (a4)
    {

      [(_UILumaTrackingBackdropView *)v7 unpauseAfterSeedingWithLumaLevel:a4];
      return;
    }

    v8 = 0;
  }

  else
  {
    [(_UILumaTrackingBackdropView *)pointerLumaMeasurementView setHidden:1, a4];
    v7 = self->_pointerLumaMeasurementView;
    v8 = 1;
  }

  [(_UILumaTrackingBackdropView *)v7 setPaused:v8];
}

- (void)setLumaChangedHandlerBlock:(id)a3
{
  self->_lumaChangedHandlerBlock = [a3 copy];

  _objc_release_x1();
}

- (void)backgroundLumaView:(id)a3 didTransitionToLevel:(unint64_t)a4
{
  lumaChangedHandlerBlock = self->_lumaChangedHandlerBlock;
  if (lumaChangedHandlerBlock)
  {
    lumaChangedHandlerBlock[2](lumaChangedHandlerBlock, a4);
  }
}

- (void)_addMatchMoveAnimationFromSource:(id)a3 toView:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 layer];
  [v7 removeAnimationForKey:@"PUIDSamplingMatchMoveAnimationKey"];

  v8 = +[CAMatchMoveAnimation animation];
  [v8 setSourceContextId:{objc_msgSend(v6, "sourceContextID")}];
  v9 = [v6 sourceLayerRenderID];

  [v8 setSourceLayerRenderId:v9];
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

  v15 = [v5 layer];

  [v15 addAnimation:v8 forKey:@"PUIDSamplingMatchMoveAnimationKey"];
}

@end
@interface _UIIntelligenceSystemView
- (_UIIntelligenceSystemView)initWithFrame:(CGRect)frame serviceIdentity:(id)identity sceneSpecification:(id)specification;
- (id)_sceneLayer;
- (id)transitionerForConnectingHostingController:(id)controller;
- (void)_addSceneViewIfNecessary;
- (void)_didMoveToWindowScene;
- (void)_layerCornerCurveDidChange:(id)change;
- (void)_layerCornerRadiusDidChange:(double)change;
- (void)_layerMaskedCornersDidChange:(unint64_t)change;
- (void)_removeSceneViewIfNecessary;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIIntelligenceSystemView

- (void)_addSceneViewIfNecessary
{
  v30[4] = *MEMORY[0x1E69E9840];
  _sceneHostingController = [(_UIIntelligenceSystemView *)self _sceneHostingController];
  sceneView = [_sceneHostingController sceneView];

  superview = [sceneView superview];

  if (!superview)
  {
    [sceneView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self addSubview:sceneView];
    v24 = MEMORY[0x1E69977A0];
    widthAnchor = [sceneView widthAnchor];
    widthAnchor2 = [(UIView *)self widthAnchor];
    v27 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v30[0] = v27;
    heightAnchor = [sceneView heightAnchor];
    heightAnchor2 = [(UIView *)self heightAnchor];
    v6 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v30[1] = v6;
    centerXAnchor = [sceneView centerXAnchor];
    centerXAnchor2 = [(UIView *)self centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v30[2] = v9;
    centerYAnchor = [sceneView centerYAnchor];
    centerYAnchor2 = [(UIView *)self centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v30[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v24 activateConstraints:v13];

    layer = [(UIView *)self layer];
    [layer cornerRadius];
    v16 = v15;
    layer2 = [sceneView layer];
    [layer2 setCornerRadius:v16];

    layer3 = [(UIView *)self layer];
    cornerCurve = [layer3 cornerCurve];
    layer4 = [sceneView layer];
    [layer4 setCornerCurve:cornerCurve];

    layer5 = [(UIView *)self layer];
    maskedCorners = [layer5 maskedCorners];
    layer6 = [sceneView layer];
    [layer6 setMaskedCorners:maskedCorners];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UIIntelligenceSystemView;
  [(UIView *)&v5 didMoveToWindow];
  window = [(UIView *)self window];
  if (window)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__didMoveToWindowScene name:@"_UIWindowDidMoveToSceneNotification" object:window];
  }

  [(_UIIntelligenceSystemView *)self _didMoveToWindowScene];
}

- (void)_didMoveToWindowScene
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UISceneWillEnterForegroundNotification" object:0];
  [defaultCenter removeObserver:self name:@"UISceneDidEnterBackgroundNotification" object:0];
  window = [(UIView *)self window];
  windowScene = [window windowScene];

  if (windowScene)
  {
    [defaultCenter addObserver:self selector:sel__removeSceneViewIfNecessary name:@"UISceneDidEnterBackgroundNotification" object:windowScene];
    [defaultCenter addObserver:self selector:sel__addSceneViewIfNecessary name:@"UISceneWillEnterForegroundNotification" object:windowScene];
    if ([windowScene activationState] < 2 || -[_UIIntelligenceSystemView _isVisibilityExternallyManaged](self, "_isVisibilityExternallyManaged"))
    {
      [(_UIIntelligenceSystemView *)self _addSceneViewIfNecessary];
    }

    else
    {
      [(_UIIntelligenceSystemView *)self _removeSceneViewIfNecessary];
    }
  }
}

- (_UIIntelligenceSystemView)initWithFrame:(CGRect)frame serviceIdentity:(id)identity sceneSpecification:(id)specification
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  identityCopy = identity;
  specificationCopy = specification;
  v23.receiver = self;
  v23.super_class = _UIIntelligenceSystemView;
  height = [(UIView *)&v23 initWithFrame:x, y, width, height];
  if (height)
  {
    v14 = [[_UISceneHostingControllerAdvancedConfiguration alloc] initWithProcessIdentity:identityCopy];
    [(_UISceneHostingControllerAdvancedConfiguration *)v14 setSceneSpecification:specificationCopy];
    v15 = [[_UISceneHostingController alloc] initWithAdvancedConfiguration:v14];
    sceneHostingController = height->_sceneHostingController;
    height->_sceneHostingController = v15;

    v17 = height->_sceneHostingController;
    if (v17)
    {
      v17->_fencesDisabled = 1;
      v18 = height->_sceneHostingController;
    }

    else
    {
      v18 = 0;
    }

    intelligenceComponent = [(_UISceneHostingController *)v18 intelligenceComponent];
    [intelligenceComponent setCollectAsRemoteElement:0];

    v20 = objc_alloc_init(_UISceneHostingReconnectingActivationController);
    [(_UISceneHostingReconnectingActivationController *)v20 setDelegate:height];
    [(_UISceneHostingController *)height->_sceneHostingController setActivationController:v20];
    [(_UIIntelligenceSystemView *)height _addSceneViewIfNecessary];
    layer = [(UIView *)height layer];
    [layer setAllowsHitTesting:0];

    [(UIView *)height setUserInteractionEnabled:0];
  }

  return height;
}

- (id)transitionerForConnectingHostingController:(id)controller
{
  _connectionActionProvider = [(_UIIntelligenceSystemView *)self _connectionActionProvider];
  v4 = _connectionActionProvider[2]();

  if ([v4 count])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___UIIntelligenceSystemView_transitionerForConnectingHostingController___block_invoke;
    aBlock[3] = &unk_1E711E9F8;
    v8 = v4;
    v5 = _Block_copy(aBlock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)willMoveToWindow:(id)window
{
  v10.receiver = self;
  v10.super_class = _UIIntelligenceSystemView;
  [(UIView *)&v10 willMoveToWindow:window];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  activationStateComponent = [(_UISceneHostingController *)self->_sceneHostingController activationStateComponent];
  v6 = [activationStateComponent foregroundAssertionForReason:@"Light effect flicker avoidance"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___UIIntelligenceSystemView_willMoveToWindow___block_invoke;
  block[3] = &unk_1E70F3590;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_removeSceneViewIfNecessary
{
  _sceneHostingController = [(_UIIntelligenceSystemView *)self _sceneHostingController];
  sceneView = [_sceneHostingController sceneView];

  superview = [sceneView superview];
  if (superview)
  {
    v5 = superview;
    _isVisibilityExternallyManaged = [(_UIIntelligenceSystemView *)self _isVisibilityExternallyManaged];

    if (!_isVisibilityExternallyManaged)
    {
      [sceneView removeFromSuperview];
    }
  }
}

- (id)_sceneLayer
{
  if (self)
  {
    sceneView = [*(self + 416) sceneView];
    layer = [sceneView layer];
  }

  else
  {
    layer = 0;
  }

  return layer;
}

- (void)_layerCornerRadiusDidChange:(double)change
{
  _sceneLayer = [(_UIIntelligenceSystemView *)self _sceneLayer];
  [_sceneLayer setCornerRadius:change];
}

- (void)_layerCornerCurveDidChange:(id)change
{
  changeCopy = change;
  _sceneLayer = [(_UIIntelligenceSystemView *)self _sceneLayer];
  [_sceneLayer setCornerCurve:changeCopy];
}

- (void)_layerMaskedCornersDidChange:(unint64_t)change
{
  _sceneLayer = [(_UIIntelligenceSystemView *)self _sceneLayer];
  [_sceneLayer setMaskedCorners:change];
}

@end
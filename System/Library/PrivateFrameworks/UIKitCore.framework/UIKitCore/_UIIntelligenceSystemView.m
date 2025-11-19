@interface _UIIntelligenceSystemView
- (_UIIntelligenceSystemView)initWithFrame:(CGRect)a3 serviceIdentity:(id)a4 sceneSpecification:(id)a5;
- (id)_sceneLayer;
- (id)transitionerForConnectingHostingController:(id)a3;
- (void)_addSceneViewIfNecessary;
- (void)_didMoveToWindowScene;
- (void)_layerCornerCurveDidChange:(id)a3;
- (void)_layerCornerRadiusDidChange:(double)a3;
- (void)_layerMaskedCornersDidChange:(unint64_t)a3;
- (void)_removeSceneViewIfNecessary;
- (void)didMoveToWindow;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIIntelligenceSystemView

- (void)_addSceneViewIfNecessary
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [(_UIIntelligenceSystemView *)self _sceneHostingController];
  v4 = [v3 sceneView];

  v5 = [v4 superview];

  if (!v5)
  {
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self addSubview:v4];
    v24 = MEMORY[0x1E69977A0];
    v29 = [v4 widthAnchor];
    v28 = [(UIView *)self widthAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v30[0] = v27;
    v26 = [v4 heightAnchor];
    v25 = [(UIView *)self heightAnchor];
    v6 = [v26 constraintEqualToAnchor:v25];
    v30[1] = v6;
    v7 = [v4 centerXAnchor];
    v8 = [(UIView *)self centerXAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v30[2] = v9;
    v10 = [v4 centerYAnchor];
    v11 = [(UIView *)self centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v30[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v24 activateConstraints:v13];

    v14 = [(UIView *)self layer];
    [v14 cornerRadius];
    v16 = v15;
    v17 = [v4 layer];
    [v17 setCornerRadius:v16];

    v18 = [(UIView *)self layer];
    v19 = [v18 cornerCurve];
    v20 = [v4 layer];
    [v20 setCornerCurve:v19];

    v21 = [(UIView *)self layer];
    v22 = [v21 maskedCorners];
    v23 = [v4 layer];
    [v23 setMaskedCorners:v22];
  }
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UIIntelligenceSystemView;
  [(UIView *)&v5 didMoveToWindow];
  v3 = [(UIView *)self window];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__didMoveToWindowScene name:@"_UIWindowDidMoveToSceneNotification" object:v3];
  }

  [(_UIIntelligenceSystemView *)self _didMoveToWindowScene];
}

- (void)_didMoveToWindowScene
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"UISceneWillEnterForegroundNotification" object:0];
  [v5 removeObserver:self name:@"UISceneDidEnterBackgroundNotification" object:0];
  v3 = [(UIView *)self window];
  v4 = [v3 windowScene];

  if (v4)
  {
    [v5 addObserver:self selector:sel__removeSceneViewIfNecessary name:@"UISceneDidEnterBackgroundNotification" object:v4];
    [v5 addObserver:self selector:sel__addSceneViewIfNecessary name:@"UISceneWillEnterForegroundNotification" object:v4];
    if ([v4 activationState] < 2 || -[_UIIntelligenceSystemView _isVisibilityExternallyManaged](self, "_isVisibilityExternallyManaged"))
    {
      [(_UIIntelligenceSystemView *)self _addSceneViewIfNecessary];
    }

    else
    {
      [(_UIIntelligenceSystemView *)self _removeSceneViewIfNecessary];
    }
  }
}

- (_UIIntelligenceSystemView)initWithFrame:(CGRect)a3 serviceIdentity:(id)a4 sceneSpecification:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v23.receiver = self;
  v23.super_class = _UIIntelligenceSystemView;
  v13 = [(UIView *)&v23 initWithFrame:x, y, width, height];
  if (v13)
  {
    v14 = [[_UISceneHostingControllerAdvancedConfiguration alloc] initWithProcessIdentity:v11];
    [(_UISceneHostingControllerAdvancedConfiguration *)v14 setSceneSpecification:v12];
    v15 = [[_UISceneHostingController alloc] initWithAdvancedConfiguration:v14];
    sceneHostingController = v13->_sceneHostingController;
    v13->_sceneHostingController = v15;

    v17 = v13->_sceneHostingController;
    if (v17)
    {
      v17->_fencesDisabled = 1;
      v18 = v13->_sceneHostingController;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(_UISceneHostingController *)v18 intelligenceComponent];
    [v19 setCollectAsRemoteElement:0];

    v20 = objc_alloc_init(_UISceneHostingReconnectingActivationController);
    [(_UISceneHostingReconnectingActivationController *)v20 setDelegate:v13];
    [(_UISceneHostingController *)v13->_sceneHostingController setActivationController:v20];
    [(_UIIntelligenceSystemView *)v13 _addSceneViewIfNecessary];
    v21 = [(UIView *)v13 layer];
    [v21 setAllowsHitTesting:0];

    [(UIView *)v13 setUserInteractionEnabled:0];
  }

  return v13;
}

- (id)transitionerForConnectingHostingController:(id)a3
{
  v3 = [(_UIIntelligenceSystemView *)self _connectionActionProvider];
  v4 = v3[2]();

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

- (void)willMoveToWindow:(id)a3
{
  v10.receiver = self;
  v10.super_class = _UIIntelligenceSystemView;
  [(UIView *)&v10 willMoveToWindow:a3];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  v5 = [(_UISceneHostingController *)self->_sceneHostingController activationStateComponent];
  v6 = [v5 foregroundAssertionForReason:@"Light effect flicker avoidance"];

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
  v3 = [(_UIIntelligenceSystemView *)self _sceneHostingController];
  v7 = [v3 sceneView];

  v4 = [v7 superview];
  if (v4)
  {
    v5 = v4;
    v6 = [(_UIIntelligenceSystemView *)self _isVisibilityExternallyManaged];

    if (!v6)
    {
      [v7 removeFromSuperview];
    }
  }
}

- (id)_sceneLayer
{
  if (a1)
  {
    v1 = [*(a1 + 416) sceneView];
    v2 = [v1 layer];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_layerCornerRadiusDidChange:(double)a3
{
  v4 = [(_UIIntelligenceSystemView *)self _sceneLayer];
  [v4 setCornerRadius:a3];
}

- (void)_layerCornerCurveDidChange:(id)a3
{
  v4 = a3;
  v5 = [(_UIIntelligenceSystemView *)self _sceneLayer];
  [v5 setCornerCurve:v4];
}

- (void)_layerMaskedCornersDidChange:(unint64_t)a3
{
  v4 = [(_UIIntelligenceSystemView *)self _sceneLayer];
  [v4 setMaskedCorners:a3];
}

@end
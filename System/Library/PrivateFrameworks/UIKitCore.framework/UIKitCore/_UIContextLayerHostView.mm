@interface _UIContextLayerHostView
- (UISceneAsynchronousRenderingOptions)asynchronousRenderingOptions;
- (_UIContextLayerHostView)initWithSceneLayer:(id)layer;
- (id)layer;
- (unint64_t)renderingMode;
- (void)_prepareForWindowDealloc;
- (void)setAsynchronousRenderingOptions:(id)options;
- (void)setInheritsSecurity:(BOOL)security;
- (void)setRenderingMode:(unint64_t)mode;
- (void)setResizesHostedContext:(BOOL)context;
- (void)setStopsHitTestTransformAccumulation:(BOOL)accumulation;
- (void)setStopsSecureSuperlayersValidation:(BOOL)validation;
- (void)setZombifiesHostedContext:(BOOL)context;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIContextLayerHostView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = _UIContextLayerHostView;
  layer = [(UIView *)&v4 layer];

  return layer;
}

- (unint64_t)renderingMode
{
  layer = [(_UIContextLayerHostView *)self layer];
  rendersAsynchronously = [layer rendersAsynchronously];

  return rendersAsynchronously;
}

- (_UIContextLayerHostView)initWithSceneLayer:(id)layer
{
  layerCopy = layer;
  v10.receiver = self;
  v10.super_class = _UIContextLayerHostView;
  v5 = [(_UISceneLayerHostView *)&v10 initWithSceneLayer:layerCopy];
  v6 = v5;
  if (v5)
  {
    layer = [(_UIContextLayerHostView *)v5 layer];
    [layer setContextId:{objc_msgSend(layerCopy, "contextID")}];

    layer2 = [(_UIContextLayerHostView *)v6 layer];
    [layer2 setInheritsTiming:0];
  }

  return v6;
}

- (void)setRenderingMode:(unint64_t)mode
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(_UIContextLayerHostView *)self renderingMode]!= mode)
  {
    v5 = UIScenePresentationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      layer = [(_UIContextLayerHostView *)self layer];
      contextId = [layer contextId];
      v9 = NSStringFromUISceneRenderingMode(mode);
      v10 = 134218498;
      selfCopy = self;
      v12 = 1024;
      v13 = contextId;
      v14 = 2114;
      v15 = v9;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "%p - rendering context %d %{public}@", &v10, 0x1Cu);
    }

    layer2 = [(_UIContextLayerHostView *)self layer];
    [layer2 setRendersAsynchronously:mode == 1];
  }
}

- (void)setAsynchronousRenderingOptions:(id)options
{
  optionsCopy = options;
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(UISceneAsynchronousRenderingOptions);
  }

  v10 = optionsCopy;
  layer = [(_UIContextLayerHostView *)self layer];
  renderTimes = [(UISceneAsynchronousRenderingOptions *)v10 renderTimes];
  [layer setAsynchronousRenderTimes:renderTimes];

  layer2 = [(_UIContextLayerHostView *)self layer];
  [(UISceneAsynchronousRenderingOptions *)v10 renderPeriod];
  [layer2 setAsynchronousRenderPeriod:?];

  layer3 = [(_UIContextLayerHostView *)self layer];
  [(UISceneAsynchronousRenderingOptions *)v10 renderMaxAPL];
  [layer3 setAsynchronousRenderMaxAPL:?];

  layer4 = [(_UIContextLayerHostView *)self layer];
  [layer4 setAsynchronousOpaque:{-[UISceneAsynchronousRenderingOptions opaque](v10, "opaque")}];
}

- (UISceneAsynchronousRenderingOptions)asynchronousRenderingOptions
{
  v3 = objc_alloc_init(UIMutableSceneAsynchronousRenderingOptions);
  layer = [(_UIContextLayerHostView *)self layer];
  asynchronousRenderTimes = [layer asynchronousRenderTimes];
  [(UIMutableSceneAsynchronousRenderingOptions *)v3 setRenderTimes:asynchronousRenderTimes];

  layer2 = [(_UIContextLayerHostView *)self layer];
  [layer2 asynchronousRenderPeriod];
  [(UIMutableSceneAsynchronousRenderingOptions *)v3 setRenderPeriod:?];

  layer3 = [(_UIContextLayerHostView *)self layer];
  [layer3 asynchronousRenderMaxAPL];
  [(UIMutableSceneAsynchronousRenderingOptions *)v3 setRenderMaxAPL:?];

  layer4 = [(_UIContextLayerHostView *)self layer];
  -[UIMutableSceneAsynchronousRenderingOptions setOpaque:](v3, "setOpaque:", [layer4 asynchronousOpaque]);

  return v3;
}

- (void)setInheritsSecurity:(BOOL)security
{
  securityCopy = security;
  v6.receiver = self;
  v6.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v6 setInheritsSecurity:?];
  layer = [(_UIContextLayerHostView *)self layer];
  [layer setInheritsSecurity:securityCopy];
}

- (void)setResizesHostedContext:(BOOL)context
{
  contextCopy = context;
  v6.receiver = self;
  v6.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v6 setResizesHostedContext:?];
  layer = [(_UIContextLayerHostView *)self layer];
  [layer setResizesHostedContext:contextCopy];
}

- (void)setZombifiesHostedContext:(BOOL)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v8 setZombifiesHostedContext:?];
  layer = [(_UIContextLayerHostView *)self layer];
  v6 = layer;
  v7 = MEMORY[0x1E6979E48];
  if (!contextCopy)
  {
    v7 = MEMORY[0x1E6979E50];
  }

  [layer setZombificationMode:*v7];
}

- (void)setStopsHitTestTransformAccumulation:(BOOL)accumulation
{
  accumulationCopy = accumulation;
  v6.receiver = self;
  v6.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v6 setStopsHitTestTransformAccumulation:?];
  layer = [(_UIContextLayerHostView *)self layer];
  [layer setStopsHitTestTransformAccumulation:accumulationCopy];
}

- (void)setStopsSecureSuperlayersValidation:(BOOL)validation
{
  validationCopy = validation;
  v6.receiver = self;
  v6.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v6 setStopsSecureSuperlayersValidation:?];
  layer = [(_UIContextLayerHostView *)self layer];
  [layer setStopsSecureSuperlayersValidation:validationCopy];
}

- (void)_prepareForWindowDealloc
{
  v5.receiver = self;
  v5.super_class = _UIContextLayerHostView;
  [(UIView *)&v5 _prepareForWindowDealloc];
  v3 = +[_UISceneHostingGraph sharedInstance];
  sceneLayer = [(_UISceneLayerHostView *)self sceneLayer];
  [v3 _noteContextID:objc_msgSend(sceneLayer hostedByWindow:{"contextID"), 0}];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v6 = +[_UISceneHostingGraph sharedInstance];
  sceneLayer = [(_UISceneLayerHostView *)self sceneLayer];
  [v6 _noteContextID:objc_msgSend(sceneLayer hostedByWindow:{"contextID"), windowCopy}];
}

@end
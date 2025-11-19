@interface _UIContextLayerHostView
- (UISceneAsynchronousRenderingOptions)asynchronousRenderingOptions;
- (_UIContextLayerHostView)initWithSceneLayer:(id)a3;
- (id)layer;
- (unint64_t)renderingMode;
- (void)_prepareForWindowDealloc;
- (void)setAsynchronousRenderingOptions:(id)a3;
- (void)setInheritsSecurity:(BOOL)a3;
- (void)setRenderingMode:(unint64_t)a3;
- (void)setResizesHostedContext:(BOOL)a3;
- (void)setStopsHitTestTransformAccumulation:(BOOL)a3;
- (void)setStopsSecureSuperlayersValidation:(BOOL)a3;
- (void)setZombifiesHostedContext:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIContextLayerHostView

- (id)layer
{
  v4.receiver = self;
  v4.super_class = _UIContextLayerHostView;
  v2 = [(UIView *)&v4 layer];

  return v2;
}

- (unint64_t)renderingMode
{
  v2 = [(_UIContextLayerHostView *)self layer];
  v3 = [v2 rendersAsynchronously];

  return v3;
}

- (_UIContextLayerHostView)initWithSceneLayer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIContextLayerHostView;
  v5 = [(_UISceneLayerHostView *)&v10 initWithSceneLayer:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(_UIContextLayerHostView *)v5 layer];
    [v7 setContextId:{objc_msgSend(v4, "contextID")}];

    v8 = [(_UIContextLayerHostView *)v6 layer];
    [v8 setInheritsTiming:0];
  }

  return v6;
}

- (void)setRenderingMode:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(_UIContextLayerHostView *)self renderingMode]!= a3)
  {
    v5 = UIScenePresentationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = [(_UIContextLayerHostView *)self layer];
      v8 = [v7 contextId];
      v9 = NSStringFromUISceneRenderingMode(a3);
      v10 = 134218498;
      v11 = self;
      v12 = 1024;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "%p - rendering context %d %{public}@", &v10, 0x1Cu);
    }

    v6 = [(_UIContextLayerHostView *)self layer];
    [v6 setRendersAsynchronously:a3 == 1];
  }
}

- (void)setAsynchronousRenderingOptions:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = objc_alloc_init(UISceneAsynchronousRenderingOptions);
  }

  v10 = v4;
  v5 = [(_UIContextLayerHostView *)self layer];
  v6 = [(UISceneAsynchronousRenderingOptions *)v10 renderTimes];
  [v5 setAsynchronousRenderTimes:v6];

  v7 = [(_UIContextLayerHostView *)self layer];
  [(UISceneAsynchronousRenderingOptions *)v10 renderPeriod];
  [v7 setAsynchronousRenderPeriod:?];

  v8 = [(_UIContextLayerHostView *)self layer];
  [(UISceneAsynchronousRenderingOptions *)v10 renderMaxAPL];
  [v8 setAsynchronousRenderMaxAPL:?];

  v9 = [(_UIContextLayerHostView *)self layer];
  [v9 setAsynchronousOpaque:{-[UISceneAsynchronousRenderingOptions opaque](v10, "opaque")}];
}

- (UISceneAsynchronousRenderingOptions)asynchronousRenderingOptions
{
  v3 = objc_alloc_init(UIMutableSceneAsynchronousRenderingOptions);
  v4 = [(_UIContextLayerHostView *)self layer];
  v5 = [v4 asynchronousRenderTimes];
  [(UIMutableSceneAsynchronousRenderingOptions *)v3 setRenderTimes:v5];

  v6 = [(_UIContextLayerHostView *)self layer];
  [v6 asynchronousRenderPeriod];
  [(UIMutableSceneAsynchronousRenderingOptions *)v3 setRenderPeriod:?];

  v7 = [(_UIContextLayerHostView *)self layer];
  [v7 asynchronousRenderMaxAPL];
  [(UIMutableSceneAsynchronousRenderingOptions *)v3 setRenderMaxAPL:?];

  v8 = [(_UIContextLayerHostView *)self layer];
  -[UIMutableSceneAsynchronousRenderingOptions setOpaque:](v3, "setOpaque:", [v8 asynchronousOpaque]);

  return v3;
}

- (void)setInheritsSecurity:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v6 setInheritsSecurity:?];
  v5 = [(_UIContextLayerHostView *)self layer];
  [v5 setInheritsSecurity:v3];
}

- (void)setResizesHostedContext:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v6 setResizesHostedContext:?];
  v5 = [(_UIContextLayerHostView *)self layer];
  [v5 setResizesHostedContext:v3];
}

- (void)setZombifiesHostedContext:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v8 setZombifiesHostedContext:?];
  v5 = [(_UIContextLayerHostView *)self layer];
  v6 = v5;
  v7 = MEMORY[0x1E6979E48];
  if (!v3)
  {
    v7 = MEMORY[0x1E6979E50];
  }

  [v5 setZombificationMode:*v7];
}

- (void)setStopsHitTestTransformAccumulation:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v6 setStopsHitTestTransformAccumulation:?];
  v5 = [(_UIContextLayerHostView *)self layer];
  [v5 setStopsHitTestTransformAccumulation:v3];
}

- (void)setStopsSecureSuperlayersValidation:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = _UIContextLayerHostView;
  [(_UISceneLayerHostView *)&v6 setStopsSecureSuperlayersValidation:?];
  v5 = [(_UIContextLayerHostView *)self layer];
  [v5 setStopsSecureSuperlayersValidation:v3];
}

- (void)_prepareForWindowDealloc
{
  v5.receiver = self;
  v5.super_class = _UIContextLayerHostView;
  [(UIView *)&v5 _prepareForWindowDealloc];
  v3 = +[_UISceneHostingGraph sharedInstance];
  v4 = [(_UISceneLayerHostView *)self sceneLayer];
  [v3 _noteContextID:objc_msgSend(v4 hostedByWindow:{"contextID"), 0}];
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v6 = +[_UISceneHostingGraph sharedInstance];
  v5 = [(_UISceneLayerHostView *)self sceneLayer];
  [v6 _noteContextID:objc_msgSend(v5 hostedByWindow:{"contextID"), v4}];
}

@end
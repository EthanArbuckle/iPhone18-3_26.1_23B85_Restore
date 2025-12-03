@interface UIRootSceneWindow
- (UIRootSceneWindow)initWithDisplay:(id)display;
- (UIRootSceneWindow)initWithDisplayConfiguration:(id)configuration;
- (UIRootSceneWindow)initWithScreen:(id)screen;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_configureContextOptions:(id)options;
- (void)_updateTransforms;
- (void)dealloc;
- (void)setFrame:(CGRect)frame;
@end

@implementation UIRootSceneWindow

- (UIRootSceneWindow)initWithDisplay:(id)display
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIRootSceneWindow.m" lineNumber:34 description:@"you can't call this"];

  return 0;
}

- (UIRootSceneWindow)initWithScreen:(id)screen
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIRootSceneWindow.m" lineNumber:39 description:@"you can't call this"];

  return 0;
}

- (UIRootSceneWindow)initWithDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v15.receiver = self;
  v15.super_class = UIRootSceneWindow;
  v6 = [(_UIRootWindow *)&v15 initWithDisplay:configurationCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayConfiguration, configuration);
    v8 = objc_alloc_init(UIMutableTransformer);
    sceneTransformer = v7->_sceneTransformer;
    v7->_sceneTransformer = v8;

    [(UIMutableTransformer *)v7->_sceneTransformer _setDelegate:v7];
    v10 = [UIView alloc];
    [(UIView *)v7 bounds];
    v11 = [(UIView *)v10 initWithFrame:?];
    sceneContainerView = v7->_sceneContainerView;
    v7->_sceneContainerView = v11;

    [(UIView *)v7->_sceneContainerView setAutoresizingMask:18];
    [(UIView *)v7 addSubview:v7->_sceneContainerView];
    v13 = +[UIColor blackColor];
    [(UIView *)v7 setBackgroundColor:v13];

    [(UIWindow *)v7 setLevel:0.0];
    [(UIView *)v7 setOpaque:1];
  }

  return v7;
}

- (void)dealloc
{
  [(UIMutableTransformer *)self->_sceneTransformer _setDelegate:0];
  v3.receiver = self;
  v3.super_class = UIRootSceneWindow;
  [(_UIRootWindow *)&v3 dealloc];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = UIRootSceneWindow;
  v5 = [(UIView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else if (v5 == self->_sceneContainerView)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  [(UIView *)self frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v30.receiver = self;
  v30.super_class = UIRootSceneWindow;
  [(UIWindow *)&v30 setFrame:x, y, width, height];
  [(UIView *)self frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v40.origin.x = v9;
  v40.origin.y = v11;
  v40.size.width = v13;
  v40.size.height = v15;
  v43.origin.x = v17;
  v43.origin.y = v19;
  v43.size.width = v21;
  v43.size.height = v23;
  if (!CGRectEqualToRect(v40, v43))
  {
    v24 = UIScenePresentationLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v41.origin.x = v9;
      v41.origin.y = v11;
      v41.size.width = v13;
      v41.size.height = v15;
      v27 = NSStringFromCGRect(v41);
      v42.origin.x = v17;
      v42.origin.y = v19;
      v42.size.width = v21;
      v42.size.height = v23;
      v28 = NSStringFromCGRect(v42);
      displayConfiguration = self->_displayConfiguration;
      *buf = 138544130;
      v32 = v26;
      v33 = 2114;
      v34 = v27;
      v35 = 2114;
      v36 = v28;
      v37 = 2114;
      v38 = displayConfiguration;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_INFO, "[%{public}@] modified frame from %{public}@ to %{public}@ on display: %{public}@", buf, 0x2Au);
    }
  }
}

- (void)_configureContextOptions:(id)options
{
  optionsCopy = options;
  if ([objc_opt_class() definesDisplayBounds])
  {
    [optionsCopy setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6979688]];
  }
}

- (void)_updateTransforms
{
  sceneContainerView = self->_sceneContainerView;
  sceneTransformer = self->_sceneTransformer;
  if (sceneTransformer)
  {
    [(UITransform *)sceneTransformer transform];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  [(UIView *)sceneContainerView setTransform:v4];
}

@end
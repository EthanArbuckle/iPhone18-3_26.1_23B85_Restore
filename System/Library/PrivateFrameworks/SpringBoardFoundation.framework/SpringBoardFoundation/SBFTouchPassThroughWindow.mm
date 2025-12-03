@interface SBFTouchPassThroughWindow
- (SBFTouchPassThroughWindow)initWithFrame:(CGRect)frame;
- (SBFTouchPassThroughWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name;
- (id)description;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBFTouchPassThroughWindow

- (SBFTouchPassThroughWindow)initWithWindowScene:(id)scene role:(id)role debugName:(id)name
{
  sceneCopy = scene;
  roleCopy = role;
  nameCopy = name;
  if (sceneCopy)
  {
    [sceneCopy screen];
  }

  else
  {
    [MEMORY[0x1E69DCEB0] mainScreen];
  }
  v12 = ;
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v25.receiver = self;
  v25.super_class = SBFTouchPassThroughWindow;
  v21 = [(SBFTouchPassThroughWindow *)&v25 _initWithFrame:nameCopy debugName:sceneCopy windowScene:v14, v16, v18, v20];
  if (v21)
  {
    touchPassThroughRootViewControllerClass = [objc_opt_class() touchPassThroughRootViewControllerClass];
    if (([(objc_class *)touchPassThroughRootViewControllerClass isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      if (!roleCopy)
      {
LABEL_8:
        v23 = objc_alloc_init(touchPassThroughRootViewControllerClass);
        [(SBFTouchPassThroughWindow *)v21 setRootViewController:v23];

        goto LABEL_9;
      }
    }

    else
    {
      [SBFTouchPassThroughWindow initWithWindowScene:a2 role:v21 debugName:?];
      if (!roleCopy)
      {
        goto LABEL_8;
      }
    }

    [(SBFTouchPassThroughWindow *)v21 _setRoleHint:roleCopy];
    goto LABEL_8;
  }

LABEL_9:

  return v21;
}

- (SBFTouchPassThroughWindow)initWithFrame:(CGRect)frame
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D920];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"%s is not a valid initializer. You must call -[%@ initWithWindowScene:role:debugName:].", "-[SBFTouchPassThroughWindow initWithFrame:]", v7}];

  return [(SBFTouchPassThroughWindow *)self initWithWindowScene:0 role:0 debugName:0];
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  _debugName = [(SBFTouchPassThroughWindow *)self _debugName];
  v5 = [v3 appendObject:_debugName withName:0];

  appendSuper = [v3 appendSuper];
  build = [v3 build];

  return build;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBFTouchPassThroughWindow;
  v5 = [(SBFTouchPassThroughWindow *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)initWithWindowScene:(uint64_t)a1 role:(uint64_t)a2 debugName:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFTouchPassThroughWindow.m" lineNumber:29 description:@"Requested rootVC class must be a subclass of SBFTouchPassThroughViewController"];
}

@end
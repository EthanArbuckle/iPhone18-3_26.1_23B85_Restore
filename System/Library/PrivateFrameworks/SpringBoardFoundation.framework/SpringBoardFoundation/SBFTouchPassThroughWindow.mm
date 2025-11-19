@interface SBFTouchPassThroughWindow
- (SBFTouchPassThroughWindow)initWithFrame:(CGRect)a3;
- (SBFTouchPassThroughWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5;
- (id)description;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBFTouchPassThroughWindow

- (SBFTouchPassThroughWindow)initWithWindowScene:(id)a3 role:(id)a4 debugName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    [v9 screen];
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
  v21 = [(SBFTouchPassThroughWindow *)&v25 _initWithFrame:v11 debugName:v9 windowScene:v14, v16, v18, v20];
  if (v21)
  {
    v22 = [objc_opt_class() touchPassThroughRootViewControllerClass];
    if (([(objc_class *)v22 isSubclassOfClass:objc_opt_class()]& 1) != 0)
    {
      if (!v10)
      {
LABEL_8:
        v23 = objc_alloc_init(v22);
        [(SBFTouchPassThroughWindow *)v21 setRootViewController:v23];

        goto LABEL_9;
      }
    }

    else
    {
      [SBFTouchPassThroughWindow initWithWindowScene:a2 role:v21 debugName:?];
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    [(SBFTouchPassThroughWindow *)v21 _setRoleHint:v10];
    goto LABEL_8;
  }

LABEL_9:

  return v21;
}

- (SBFTouchPassThroughWindow)initWithFrame:(CGRect)a3
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
  v4 = [(SBFTouchPassThroughWindow *)self _debugName];
  v5 = [v3 appendObject:v4 withName:0];

  v6 = [v3 appendSuper];
  v7 = [v3 build];

  return v7;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBFTouchPassThroughWindow;
  v5 = [(SBFTouchPassThroughWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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
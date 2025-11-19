@interface SXViewportDebugger
- (id)colorForAppearState:(unint64_t)a3;
- (id)initWithViewport:(id *)a1;
- (uint64_t)presentOnView:(uint64_t)result;
- (void)dealloc;
- (void)update;
@end

@implementation SXViewportDebugger

- (void)dealloc
{
  v3 = [(SXViewportDebugger *)self dynamicBoundsView];
  [v3 removeFromSuperview];

  v4 = [(SXViewportDebugger *)self appearStateIndicator];
  [v4 removeFromSuperview];

  v5.receiver = self;
  v5.super_class = SXViewportDebugger;
  [(SXViewportDebugger *)&v5 dealloc];
}

- (void)update
{
  v3 = [(SXViewportDebugger *)self viewport];
  v4 = [(SXViewportDebugger *)self viewport];
  [v4 dynamicBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SXViewportDebugger *)self dynamicBoundsView];
  v14 = [v13 superview];
  [v3 convertRect:v14 toView:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(SXViewportDebugger *)self dynamicBoundsView];
  [v23 setFrame:{v16, v18, v20, v22}];

  v24 = [(SXViewportDebugger *)self appearStateIndicator];
  v25 = [(SXViewportDebugger *)self viewport];
  v26 = -[SXViewportDebugger colorForAppearState:](self, "colorForAppearState:", [v25 appearState]);
  [v24 setBackgroundColor:v26];

  v30 = [(SXViewportDebugger *)self appearStateIndicator];
  v27 = [(SXViewportDebugger *)self viewport];
  [v27 bounds];
  v28 = CGRectGetHeight(v32) + -100.0;
  v29 = [(SXViewportDebugger *)self viewport];
  [v29 bounds];
  [v30 setFrame:{10.0, v28, CGRectGetWidth(v33) + -20.0, 10.0}];
}

- (id)colorForAppearState:(unint64_t)a3
{
  v3 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = [MEMORY[0x1E69DC888] greenColor];
    }

    else if (a3 == 3)
    {
      v3 = [MEMORY[0x1E69DC888] orangeColor];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v3 = [MEMORY[0x1E69DC888] yellowColor];
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] redColor];
  }

  return v3;
}

- (id)initWithViewport:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = SXViewportDebugger;
    v5 = objc_msgSendSuper2(&v19, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = [SXViewportDebuggerOverlayView alloc];
      v8 = OUTLINED_FUNCTION_0_1(v6, v7);
      v9 = a1[2];
      a1[2] = v8;

      v10 = a1[2];
      v11 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.5];
      [v10 setBackgroundColor:v11];

      v12 = a1[2];
      v13 = [MEMORY[0x1E69DC888] blueColor];
      [(SXViewportDebuggerOverlayView *)v12 setBorderColor:v13];

      v14 = [SXViewportDebuggerOverlayView alloc];
      v16 = OUTLINED_FUNCTION_0_1(v14, v15);
      v17 = a1[3];
      a1[3] = v16;

      [a1[1] addViewportChangeListener:a1 forOptions:14];
    }
  }

  return a1;
}

- (uint64_t)presentOnView:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    v4 = [v2 dynamicBoundsView];
    [v3 addSubview:v4];

    v5 = [v2 appearStateIndicator];
    [v3 addSubview:v5];

    return [v2 update];
  }

  return result;
}

@end
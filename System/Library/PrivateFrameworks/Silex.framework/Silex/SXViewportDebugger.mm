@interface SXViewportDebugger
- (id)colorForAppearState:(unint64_t)state;
- (id)initWithViewport:(id *)viewport;
- (uint64_t)presentOnView:(uint64_t)result;
- (void)dealloc;
- (void)update;
@end

@implementation SXViewportDebugger

- (void)dealloc
{
  dynamicBoundsView = [(SXViewportDebugger *)self dynamicBoundsView];
  [dynamicBoundsView removeFromSuperview];

  appearStateIndicator = [(SXViewportDebugger *)self appearStateIndicator];
  [appearStateIndicator removeFromSuperview];

  v5.receiver = self;
  v5.super_class = SXViewportDebugger;
  [(SXViewportDebugger *)&v5 dealloc];
}

- (void)update
{
  viewport = [(SXViewportDebugger *)self viewport];
  viewport2 = [(SXViewportDebugger *)self viewport];
  [viewport2 dynamicBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  dynamicBoundsView = [(SXViewportDebugger *)self dynamicBoundsView];
  superview = [dynamicBoundsView superview];
  [viewport convertRect:superview toView:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  dynamicBoundsView2 = [(SXViewportDebugger *)self dynamicBoundsView];
  [dynamicBoundsView2 setFrame:{v16, v18, v20, v22}];

  appearStateIndicator = [(SXViewportDebugger *)self appearStateIndicator];
  viewport3 = [(SXViewportDebugger *)self viewport];
  v26 = -[SXViewportDebugger colorForAppearState:](self, "colorForAppearState:", [viewport3 appearState]);
  [appearStateIndicator setBackgroundColor:v26];

  appearStateIndicator2 = [(SXViewportDebugger *)self appearStateIndicator];
  viewport4 = [(SXViewportDebugger *)self viewport];
  [viewport4 bounds];
  v28 = CGRectGetHeight(v32) + -100.0;
  viewport5 = [(SXViewportDebugger *)self viewport];
  [viewport5 bounds];
  [appearStateIndicator2 setFrame:{10.0, v28, CGRectGetWidth(v33) + -20.0, 10.0}];
}

- (id)colorForAppearState:(unint64_t)state
{
  greenColor = 0;
  if (state > 1)
  {
    if (state == 2)
    {
      greenColor = [MEMORY[0x1E69DC888] greenColor];
    }

    else if (state == 3)
    {
      greenColor = [MEMORY[0x1E69DC888] orangeColor];
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      greenColor = [MEMORY[0x1E69DC888] yellowColor];
    }
  }

  else
  {
    greenColor = [MEMORY[0x1E69DC888] redColor];
  }

  return greenColor;
}

- (id)initWithViewport:(id *)viewport
{
  v4 = a2;
  if (viewport)
  {
    v19.receiver = viewport;
    v19.super_class = SXViewportDebugger;
    v5 = objc_msgSendSuper2(&v19, sel_init);
    viewport = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = [SXViewportDebuggerOverlayView alloc];
      v8 = OUTLINED_FUNCTION_0_1(v6, v7);
      v9 = viewport[2];
      viewport[2] = v8;

      v10 = viewport[2];
      v11 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.5];
      [v10 setBackgroundColor:v11];

      v12 = viewport[2];
      blueColor = [MEMORY[0x1E69DC888] blueColor];
      [(SXViewportDebuggerOverlayView *)v12 setBorderColor:blueColor];

      v14 = [SXViewportDebuggerOverlayView alloc];
      v16 = OUTLINED_FUNCTION_0_1(v14, v15);
      v17 = viewport[3];
      viewport[3] = v16;

      [viewport[1] addViewportChangeListener:viewport forOptions:14];
    }
  }

  return viewport;
}

- (uint64_t)presentOnView:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    dynamicBoundsView = [v2 dynamicBoundsView];
    [v3 addSubview:dynamicBoundsView];

    appearStateIndicator = [v2 appearStateIndicator];
    [v3 addSubview:appearStateIndicator];

    return [v2 update];
  }

  return result;
}

@end
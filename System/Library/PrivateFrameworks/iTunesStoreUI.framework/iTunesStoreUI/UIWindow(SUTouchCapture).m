@interface UIWindow(SUTouchCapture)
- (SUTouchCaptureView)addTouchCaptureViewWithTag:()SUTouchCapture;
- (void)removeTouchCaptureViewWithTag:()SUTouchCapture;
@end

@implementation UIWindow(SUTouchCapture)

- (SUTouchCaptureView)addTouchCaptureViewWithTag:()SUTouchCapture
{
  v5 = [a1 viewWithTag:?];
  if (v5)
  {
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"View with tag exists"];
    }
  }

  else
  {
    [a1 bounds];
    v6 = [[SUTouchCaptureView alloc] initWithFrame:v7, v8, v9, v10];
    [(SUTouchCaptureView *)v6 setTag:a3];
    [a1 addSubview:v6];
  }

  return v6;
}

- (void)removeTouchCaptureViewWithTag:()SUTouchCapture
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [a1 viewWithTag:?];
  v2 = [v1 allTargets];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [v1 removeTarget:*(*(&v9 + 1) + 8 * v6++) action:0 forControlEvents:0xFFFFFFFFLL];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = v1;
  [v1 removeFromSuperview];
  return v1;
}

@end
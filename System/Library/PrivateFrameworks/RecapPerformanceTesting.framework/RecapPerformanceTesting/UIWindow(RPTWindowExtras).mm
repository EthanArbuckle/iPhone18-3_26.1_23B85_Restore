@interface UIWindow(RPTWindowExtras)
- (double)_draggableFrame;
- (double)_rpt_safeVisibleFrameOfScreen;
- (double)rpt_accessibilityActivationPointAttribute;
- (void)_rpt_moveToSafeTopLeftOfScreemVisibleFrameAndResize:()RPTWindowExtras;
@end

@implementation UIWindow(RPTWindowExtras)

- (double)_draggableFrame
{
  v1 = [a1 valueForKeyPath:@"nsWindowProxy.attachedWindow._draggableFrame"];
  [v1 CGRectValue];
  v3 = v2;

  return v3;
}

- (double)_rpt_safeVisibleFrameOfScreen
{
  v1 = [a1 nsScreen];
  [v1 visibleFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;

  *&result = CGRectInset(*&v10, 20.0, 20.0);
  return result;
}

- (double)rpt_accessibilityActivationPointAttribute
{
  v2 = [a1 valueForKeyPath:@"nsWindowProxy.attachedWindow.accessibilityActivationPoint"];
  [v2 CGPointValue];
  v4 = v3;

  v5 = [a1 nsScreen];
  [v5 frame];
  CGRectGetHeight(v7);

  return v4;
}

- (void)_rpt_moveToSafeTopLeftOfScreemVisibleFrameAndResize:()RPTWindowExtras
{
  [a1 _rpt_safeVisibleFrameOfScreen];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [a1 nsWindowFrame];
  v17 = v16;
  v19 = v18;
  if (a2 == *MEMORY[0x277CBF3A8] && a3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    a2 = v14;
    a3 = v15;
  }

  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  MinY = CGRectGetMinY(v29);
  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  Height = CGRectGetHeight(v30);
  v31.origin.x = v17;
  v31.origin.y = v19;
  v31.size.width = a2;
  v31.size.height = a3;
  v21 = MinY + Height - CGRectGetHeight(v31);
  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = a2;
  v32.size.height = a3;
  Width = CGRectGetWidth(v32);
  v33.origin.x = v17;
  v33.origin.y = v19;
  v33.size.width = a2;
  v33.size.height = a3;
  v23 = CGRectGetHeight(v33);
  v25 = [a1 valueForKeyPath:@"nsWindowProxy.attachedWindow"];
  [v25 setFrame:1 display:{MinX, v21, Width, v23}];
}

@end
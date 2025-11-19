@interface UIAccessibilityHUDPositionManager
+ (id)sharedInstance;
- (UIAccessibilityHUDPositionManager)init;
- (void)adjustViewPropertiesForHUD:(id)a3 withReferenceView:(id)a4 keyboardFrame:(CGRect)a5;
- (void)dealloc;
- (void)keyboardFrameDidChange:(id)a3;
- (void)updateFramesForManagedHUDsUsingKeyboardFrame:(CGRect)a3;
@end

@implementation UIAccessibilityHUDPositionManager

+ (id)sharedInstance
{
  if (_MergedGlobals_971 != -1)
  {
    dispatch_once(&_MergedGlobals_971, &__block_literal_global_4);
  }

  v3 = qword_1ED49C530;

  return v3;
}

void __51__UIAccessibilityHUDPositionManager_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED49C530;
  qword_1ED49C530 = v0;
}

- (UIAccessibilityHUDPositionManager)init
{
  v11.receiver = self;
  v11.super_class = UIAccessibilityHUDPositionManager;
  v2 = [(UIAccessibilityHUDPositionManager *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    managedHUDs = v2->_managedHUDs;
    v2->_managedHUDs = v3;

    v5 = +[UIPeripheralHost allVisiblePeripheralFrames];
    v2->_keyboardAvoidanceArea.origin.x = unionRectValues(v5);
    v2->_keyboardAvoidanceArea.origin.y = v6;
    v2->_keyboardAvoidanceArea.size.width = v7;
    v2->_keyboardAvoidanceArea.size.height = v8;

    if (dyld_program_sdk_at_least())
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:v2 selector:sel_keyboardFrameDidChange_ name:@"UIKeyboardDidChangeFrameNotification" object:0];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIKeyboardDidChangeFrameNotification" object:0];

  v4.receiver = self;
  v4.super_class = UIAccessibilityHUDPositionManager;
  [(UIAccessibilityHUDPositionManager *)&v4 dealloc];
}

- (void)updateFramesForManagedHUDsUsingKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_managedHUDs;
  v9 = [(NSMapTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_managedHUDs objectForKey:v13, v15];
        [(UIAccessibilityHUDPositionManager *)self adjustViewPropertiesForHUD:v13 withReferenceView:v14 keyboardFrame:x, y, width, height];
      }

      v10 = [(NSMapTable *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)keyboardFrameDidChange:(id)a3
{
  v4 = +[UIPeripheralHost allVisiblePeripheralFrames];
  self->_keyboardAvoidanceArea.origin.x = unionRectValues(v4);
  self->_keyboardAvoidanceArea.origin.y = v5;
  self->_keyboardAvoidanceArea.size.width = v6;
  self->_keyboardAvoidanceArea.size.height = v7;

  if ([(NSMapTable *)self->_managedHUDs count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__UIAccessibilityHUDPositionManager_keyboardFrameDidChange___block_invoke;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [UIView animateWithDuration:0 delay:v8 options:0 animations:0.25 completion:0.0];
  }
}

- (void)adjustViewPropertiesForHUD:(id)a3 withReferenceView:(id)a4 keyboardFrame:(CGRect)a5
{
  width = a5.size.width;
  height = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  v8 = a3;
  v9 = a4;
  v10 = [v8 window];
  [v10 bounds];
  v11 = v80.origin.x;
  v12 = v80.origin.y;
  v13 = v80.size.width;
  v14 = v80.size.height;
  if (CGRectGetWidth(v80) <= 320.0 || (v81.origin.x = v11, v81.origin.y = v12, v81.size.width = v13, v81.size.height = v14, CGRectGetHeight(v81) <= 320.0))
  {
    v15 = 24.0;
  }

  else
  {
    v15 = 48.0;
  }

  v16 = [v9 window];
  [v9 bounds];
  [v9 convertRect:0 toView:?];
  [v16 convertRect:v10 toWindow:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v10 bounds];
  v94.origin.x = v25;
  v94.origin.y = v26;
  v94.size.width = v27;
  v94.size.height = v28;
  v82.origin.x = v18;
  v82.origin.y = v20;
  v82.size.width = v22;
  v82.size.height = v24;
  v83 = CGRectIntersection(v82, v94);
  v84 = CGRectInset(v83, v15, v15);
  v29 = v84.origin.x;
  v70 = v84.size.width;
  v71 = v84.origin.y;
  v72 = v84.size.height;
  v30 = MEMORY[0x1E695F058];
  v32 = *MEMORY[0x1E695F058];
  v31 = *(MEMORY[0x1E695F058] + 8);
  v33 = [v9 window];

  objc_opt_class();
  v73 = v31;
  v74 = v32;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  v34 = [v8 traitCollection];
  if ([v34 userInterfaceIdiom] == 1)
  {

LABEL_8:
LABEL_9:
    [v10 convertRect:0 fromWindow:{x, y, width, height}];
    v32 = v35;
    v37 = v36;
    v67 = v39;
    v69 = v38;
    goto LABEL_10;
  }

  v63 = [v8 window];
  v64 = [v63 _isHostedInAnotherProcess];

  if (v64)
  {
    goto LABEL_9;
  }

  v67 = *(v30 + 24);
  v69 = *(v30 + 16);
  v37 = v31;
LABEL_10:
  rect = v37;
  v40 = *(v30 + 16);
  slice.origin = *v30;
  slice.size = v40;
  remainder.origin = slice.origin;
  remainder.size = v40;
  v77.origin = slice.origin;
  v77.size = v40;
  v41 = v29;
  v40.width = v71;
  v42 = v70;
  v43 = v72;
  MaxY = CGRectGetMaxY(*(&v40 - 8));
  v85.origin.x = v32;
  v85.origin.y = v37;
  v85.size.width = v69;
  v85.size.height = v67;
  v45 = fmax(MaxY - CGRectGetMinY(v85), 0.0);
  v86.origin.x = v29;
  v86.origin.y = v71;
  v86.size.width = v70;
  v86.size.height = v72;
  CGRectDivide(v86, &slice, &remainder, v45, CGRectMaxYEdge);
  v87.origin.x = v32;
  v87.origin.y = v37;
  v87.size.width = v69;
  v87.size.height = v67;
  v46 = CGRectGetMaxY(v87);
  v88.origin.x = v29;
  v88.origin.y = v71;
  v88.size.width = v70;
  v88.size.height = v72;
  v47 = fmax(v46 - CGRectGetMinY(v88), 0.0);
  v89.origin.x = v29;
  v89.origin.y = v71;
  v89.size.width = v70;
  v89.size.height = v72;
  CGRectDivide(v89, &slice, &v77, v47, CGRectMinYEdge);
  if (remainder.size.height <= v77.size.height)
  {
    v48 = v77.size.height;
  }

  else
  {
    v48 = remainder.size.height;
  }

  if (remainder.size.height <= v77.size.height)
  {
    p_remainder = &v77;
  }

  else
  {
    p_remainder = &remainder;
  }

  v51 = p_remainder->origin.y;
  v50 = p_remainder->size.width;
  v52 = p_remainder->origin.x;
  [v8 sizeThatFits:{v50, v48, *&rect}];
  v54 = v53;
  v56 = v55;
  v90.origin.x = v52;
  v90.origin.y = v51;
  v90.size.width = v50;
  v90.size.height = v48;
  v57 = CGRectGetWidth(v90) / v54;
  v91.origin.x = v52;
  v91.origin.y = v51;
  v91.size.width = v50;
  v91.size.height = v48;
  v58 = CGRectGetHeight(v91) / v56;
  if (v57 < v58)
  {
    v58 = v57;
  }

  if (v58 > 1.0)
  {
    v58 = 1.0;
  }

  v59 = fmax(v58, 0.5);
  v92.origin.x = v52;
  v92.origin.y = v51;
  v92.size.width = v50;
  v92.size.height = v48;
  CGRectGetMidX(v92);
  UIRoundToViewScale(v8);
  v61 = v54 * 0.5 + v60;
  v93.origin.x = v52;
  v93.origin.y = v51;
  v93.size.width = v50;
  v93.size.height = v48;
  CGRectGetMidY(v93);
  UIRoundToViewScale(v8);
  [v8 setCenter:{v61, v56 * 0.5 + v62}];
  [v8 setBounds:{v74, v73, v54, v56}];
  CGAffineTransformMakeScale(&v76, v59, v59);
  v75 = v76;
  [v8 setTransform:&v75];
}

@end
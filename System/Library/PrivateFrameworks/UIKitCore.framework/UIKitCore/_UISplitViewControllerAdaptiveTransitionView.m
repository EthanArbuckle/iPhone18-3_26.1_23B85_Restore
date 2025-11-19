@interface _UISplitViewControllerAdaptiveTransitionView
- (_UISplitViewControllerAdaptiveTransitionView)initWithFrame:(CGRect)a3;
- (void)animateTransition:(id *)a1;
- (void)completeTransition:(uint64_t)a1;
@end

@implementation _UISplitViewControllerAdaptiveTransitionView

- (_UISplitViewControllerAdaptiveTransitionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v10.receiver = self;
  v10.super_class = _UISplitViewControllerAdaptiveTransitionView;
  v5 = [(UIView *)&v10 initWithFrame:a3.origin.x, a3.origin.y];
  if (v5)
  {
    v6 = [_UITouchPassthroughView alloc];
    v7 = [(UIView *)v6 initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    [(UIView *)v7 setAutoresizingMask:18];
    [(UIView *)v5 addSubview:v7];
    barButtonItemContainerView = v5->_barButtonItemContainerView;
    v5->_barButtonItemContainerView = &v7->super;
  }

  return v5;
}

- (void)animateTransition:(id *)a1
{
  if (a1)
  {
    v4 = [a2 previousLayoutSnapshotView];
    if (v4)
    {
      v48 = v4;
      if (a1[53] != a2)
      {
        objc_storeStrong(a1 + 53, a2);
        v5 = a1[51];
        v6 = a1[52];
        v7 = v5;
        [v7 removeFromSuperview];
        [v6 removeFromSuperview];
        v8 = a1[51];
        a1[51] = 0;

        v9 = a1[52];
        a1[52] = 0;

        v10 = [a2 containerView];

        [v10 _removeAllAnimationsIncludingSubviewsTrackingForAnimationRestoration];
        v11 = [[_UISplitViewControllerAdaptiveTransitionAnimationView alloc] initWithContentView:v48];
        v12 = a1[51];
        a1[51] = v11;
        v13 = v11;

        v14 = [_UIPortalView alloc];
        v15 = [a2 containerView];

        v16 = [(_UIPortalView *)v14 initWithSourceView:v15];
        [(_UIPortalView *)v16 setAllowsHitTesting:1];
        [(_UIPortalView *)v16 setHidesSourceView:1];
        v17 = [[_UISplitViewControllerAdaptiveTransitionAnimationView alloc] initWithContentView:v16];
        v18 = a1[52];
        a1[52] = v17;
        v19 = v17;

        [a1 addSubview:v13];
        [a1 addSubview:v19];
      }

      v20 = *MEMORY[0x1E695EFF8];
      v21 = *(MEMORY[0x1E695EFF8] + 8);
      v22 = [a2 previousLayout];
      [v22 contentSize];
      v24 = v23;
      v26 = v25;

      v27 = [a2 newLayout];
      [v27 contentSize];
      v29 = v28;
      v31 = v30;

      v32 = [a1 traitCollection];
      [v32 displayScale];
      v47 = v33;

      v65.origin.x = v20;
      v65.origin.y = v21;
      v65.size.width = v24;
      v65.size.height = v26;
      v34 = 1.0;
      v35 = 1.0;
      if (CGRectGetWidth(v65) > 0.0)
      {
        v66.origin.x = v20;
        v66.origin.y = v21;
        v66.size.width = v29;
        v66.size.height = v31;
        Width = CGRectGetWidth(v66);
        v67.origin.x = v20;
        v67.origin.y = v21;
        v67.size.width = v24;
        v67.size.height = v26;
        v35 = Width / CGRectGetWidth(v67);
      }

      v68.origin.x = v20;
      v68.origin.y = v21;
      v68.size.width = v24;
      v68.size.height = v26;
      if (CGRectGetHeight(v68) > 0.0)
      {
        v69.origin.x = v20;
        v69.origin.y = v21;
        v69.size.width = v29;
        v69.size.height = v31;
        Height = CGRectGetHeight(v69);
        v70.origin.x = v20;
        v70.origin.y = v21;
        v70.size.width = v24;
        v70.size.height = v26;
        v34 = Height / CGRectGetHeight(v70);
      }

      memset(&v63, 0, sizeof(v63));
      CGAffineTransformMakeScale(&v63, v35, v34);
      v38 = a1[51];
      v39 = a1[52];
      if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __80___UISplitViewControllerAdaptiveTransitionView__animateTransformWithTransition___block_invoke;
        v50[3] = &unk_1E7119AA0;
        v51 = v38;
        v53 = v20;
        v54 = v21;
        v55 = v24;
        v56 = v26;
        v57 = v47;
        v52 = v39;
        v58 = v63;
        v59 = v20;
        v60 = v21;
        v61 = v29;
        v62 = v31;
        [UIView performWithoutAnimation:v50];
      }

      [v38 setCenter:{v20 + v29 * 0.5, v21 + v31 * 0.5}];
      v49 = v63;
      [v38 setTransform:&v49];
      v40 = _UISplitViewControllerResizeMeshTransform(v20, v21, v24, v26, 0.0, 0.0, 0.0, 0.0, v20, v21, v29, v31, 0.0, 0.0, 0.0, 0.0);
      v41 = [v38 layer];
      [v41 setMeshTransform:v40];

      v42 = [v38 layer];
      [v42 setRasterizationScale:v47];

      [v39 setAlpha:1.0];
      [v39 setCenter:{v20 + v29 * 0.5, v21 + v31 * 0.5}];
      v43 = *(MEMORY[0x1E695EFD0] + 16);
      *&v49.a = *MEMORY[0x1E695EFD0];
      *&v49.c = v43;
      *&v49.tx = *(MEMORY[0x1E695EFD0] + 32);
      [v39 setTransform:&v49];
      v44 = _UISplitViewControllerResizeMeshTransform(v20, v21, v29, v31, 0.0, 0.0, 0.0, 0.0, v20, v21, v29, v31, 0.0, 0.0, 0.0, 0.0);
      v45 = [v39 layer];
      [v45 setMeshTransform:v44];

      v46 = [v39 layer];
      [v46 setRasterizationScale:v47];

      v4 = v48;
    }
  }
}

- (void)completeTransition:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 424);
    if (v4 == a2)
    {
      *(a1 + 424) = 0;

      v5 = [a2 containerView];
      [v5 _finishTrackingForAnimationRestoration];

      [*(a1 + 408) removeFromSuperview];
      [*(a1 + 416) removeFromSuperview];
      v6 = *(a1 + 408);
      *(a1 + 408) = 0;

      v7 = *(a1 + 416);
      *(a1 + 416) = 0;
    }
  }
}

@end
@interface _UIContextMenuCommitAnimation
- (_UIContextMenuCommitAnimation)initWithSource:(id)a3 container:(id)a4;
- (void)_prepareAnimationViews;
- (void)_prepareSnapshots;
- (void)animateWithAlongsideActions:(id)a3 completion:(id)a4;
@end

@implementation _UIContextMenuCommitAnimation

- (_UIContextMenuCommitAnimation)initWithSource:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _UIContextMenuCommitAnimation;
  v8 = [(_UIContextMenuCommitAnimation *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(_UIContextMenuCommitAnimation *)v8 setSource:v6];
    [(_UIContextMenuCommitAnimation *)v9 setContainer:v7];
    v10 = [v7 traitCollection];
    v11 = _UIContextMenuGetPlatformMetrics([v10 userInterfaceIdiom]);
    [v11 menuCornerRadius];
    [(_UIContextMenuCommitAnimation *)v9 setSourceRadius:?];

    v12 = [v7 traitCollection];
    [v12 displayCornerRadius];
    [(_UIContextMenuCommitAnimation *)v9 setDestinationRadius:?];
  }

  return v9;
}

- (void)animateWithAlongsideActions:(id)a3 completion:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke;
  aBlock[3] = &unk_1E70FE248;
  aBlock[4] = self;
  v8 = v7;
  v43 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(_UIContextMenuCommitAnimation *)self container];
  v11 = [v10 traitCollection];
  v12 = _UIContextMenuGetPlatformMetrics([v11 userInterfaceIdiom]);

  v13 = [_UIClickPresentationFeedbackGenerator alloc];
  v14 = [v12 presentationFeedbackConfiguration];
  v15 = [(_UIContextMenuCommitAnimation *)self container];
  v16 = [(_UIClickPresentationFeedbackGenerator *)v13 initWithConfiguration:v14 view:v15];

  [(_UIClickPresentationFeedbackGenerator *)v16 userInteractionStarted];
  [(_UIClickPresentationFeedbackGenerator *)v16 poppedAtLocation:1.79769313e308, 1.79769313e308];
  [(_UIClickPresentationFeedbackGenerator *)v16 userInteractionEnded];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_9;
  v41[3] = &unk_1E70F3590;
  v41[4] = self;
  [UIView performWithoutAnimation:v41];
  if (v6)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_2;
    v39[3] = &unk_1E70F0F78;
    v40 = v6;
    [UIViewController _performWithoutDeferringTransitions:v39];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = [(_UIContextMenuCommitAnimation *)self container];
  v18 = [v17 _window];
  v19 = [v18 subviews];

  v20 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (!v20)
  {

LABEL_17:
    v28 = [(_UIContextMenuCommitAnimation *)self container:v29];
    [(_UIContextMenuCommitAnimation *)self setDestination:v28];

    v22 = 0;
    goto LABEL_18;
  }

  v21 = v20;
  v29 = v9;
  v30 = v8;
  v31 = v6;
  v22 = 0;
  v23 = *v36;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v36 != v23)
      {
        objc_enumerationMutation(v19);
      }

      v25 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v25 isHidden] & 1) == 0)
      {
        [v25 alpha];
        if (v26 >= 2.22044605e-16)
        {
          v27 = v25;

          v22 = v27;
        }
      }
    }

    v21 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
  }

  while (v21);

  v6 = v31;
  v9 = v29;
  if (!v22)
  {
    goto LABEL_17;
  }

  [(_UIContextMenuCommitAnimation *)self setDestination:v22];
LABEL_18:
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_3;
  v34[3] = &unk_1E70F3590;
  v34[4] = self;
  [UIView performWithoutAnimation:v34, v29, v30, v31];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_4;
  v33[3] = &unk_1E70F3590;
  v33[4] = self;
  [UIView animateWithDuration:2 delay:v33 usingSpringWithDamping:v9 initialSpringVelocity:0.5 options:0.0 animations:0.7 completion:15.0];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __72___UIContextMenuCommitAnimation_animateWithAlongsideActions_completion___block_invoke_5;
  v32[3] = &unk_1E70F32F0;
  v32[4] = self;
  v32[5] = 2;
  [UIView animateWithDuration:2 delay:v32 usingSpringWithDamping:v9 initialSpringVelocity:0.35 options:0.0 animations:1.0 completion:0.0];
}

- (void)_prepareSnapshots
{
  v3 = [(_UIContextMenuCommitAnimation *)self container];
  v4 = [(_UIContextMenuCommitAnimation *)self container];
  [v4 bounds];
  v9 = _UISnapshotScreenAtViewRectAfterCommit(v3, 0, v5, v6, v7, v8);

  v10 = [(_UIContextMenuCommitAnimation *)self container];
  [v10 bounds];
  [v9 setFrame:?];

  [(_UIContextMenuCommitAnimation *)self setOriginalContentSnapshotView:v9];
  v11 = [(_UIContextMenuCommitAnimation *)self source];
  v12 = [v11 layer];
  v13 = [v12 presentationLayer];
  [v13 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [(_UIContextMenuCommitAnimation *)self source];
  v23 = [v22 superview];
  v24 = [(_UIContextMenuCommitAnimation *)self container];
  [v23 convertRect:v24 toView:{v15, v17, v19, v21}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = [(_UIContextMenuCommitAnimation *)self container];
  v34 = _UISnapshotScreenAtViewRectAfterCommit(v33, 0, v26, v28, v30, v32);

  [v34 setFrame:{0.0, 0.0, v30, v32}];
  [(_UIContextMenuCommitAnimation *)self sourceRadius];
  [v34 _setContinuousCornerRadius:?];
  [v34 setClipsToBounds:1];
  [(_UIContextMenuCommitAnimation *)self setSourceSnapshotView:v34];
}

- (void)_prepareAnimationViews
{
  v3 = [_UIContextMenuCommitContainerView alloc];
  v4 = [(_UIContextMenuCommitAnimation *)self container];
  [v4 bounds];
  v5 = [(UIView *)v3 initWithFrame:?];

  v6 = [(_UIContextMenuCommitAnimation *)self originalContentSnapshotView];
  [(UIView *)v5 addSubview:v6];

  v7 = [(_UIContextMenuCommitAnimation *)self container];
  v8 = [v7 _window];
  [v8 addSubview:v5];

  [(_UIContextMenuCommitAnimation *)self setAnimationContainer:v5];
  v9 = [(_UIContextMenuCommitAnimation *)self source];
  v10 = [v9 layer];
  v11 = [v10 presentationLayer];
  [v11 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [[UIView alloc] initWithFrame:v13, v15, v17, v19];
  [(UIView *)v20 setClipsToBounds:1];
  [(_UIContextMenuCommitAnimation *)self sourceRadius];
  [(UIView *)v20 _setContinuousCornerRadius:?];
  v21 = [(_UIContextMenuCommitAnimation *)self animationContainer];
  [v21 addSubview:v20];

  [(_UIContextMenuCommitAnimation *)self setMorphContainer:v20];
  v22 = [_UIPortalView alloc];
  v23 = [(_UIContextMenuCommitAnimation *)self destination];
  [v23 bounds];
  v24 = [(_UIPortalView *)v22 initWithFrame:?];

  v25 = [(_UIContextMenuCommitAnimation *)self destination];
  [(_UIPortalView *)v24 setSourceView:v25];

  [(_UIPortalView *)v24 setAllowsBackdropGroups:1];
  [(_UIPortalView *)v24 setAllowsHitTesting:1];
  [(_UIContextMenuCommitAnimation *)self setDestinationContentPortalView:v24];
  v26 = [UIView alloc];
  [(UIView *)v24 bounds];
  v27 = [(UIView *)v26 initWithFrame:?];
  [(UIView *)v27 addSubview:v24];
  v28 = [(_UIContextMenuCommitAnimation *)self morphContainer];
  [v28 addSubview:v27];

  v29 = [(_UIContextMenuCommitAnimation *)self morphContainer];
  [v29 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  rect.origin.x = v34;
  v37 = v36;

  [(UIView *)v27 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v80.origin.x = v31;
  v80.origin.y = v33;
  v80.size.width = v35;
  v80.size.height = v37;
  Width = CGRectGetWidth(v80);
  v81.origin.x = v39;
  v81.origin.y = v41;
  v81.size.width = v43;
  v81.size.height = v45;
  v47 = Width / CGRectGetWidth(v81);
  v82.origin.x = v31;
  v82.origin.y = v33;
  v82.size.width = rect.origin.x;
  v82.size.height = v37;
  CGRectGetHeight(v82);
  v83.origin.x = v39;
  v83.origin.y = v41;
  v83.size.width = v43;
  v83.size.height = v45;
  CGRectGetHeight(v83);
  CGAffineTransformMakeScale(&v79, v47, v47);
  v78 = v79;
  [(UIView *)v27 setTransform:&v78];
  [(UIView *)v27 setCenter:v31 + rect.origin.x * 0.5, v33 + v37 * 0.5];

  [(_UIContextMenuCommitAnimation *)self setDestinationTransformView:v27];
  v48 = [UIView alloc];
  v49 = [(_UIContextMenuCommitAnimation *)self sourceSnapshotView];
  [v49 bounds];
  v50 = [(UIView *)v48 initWithFrame:?];

  v51 = [(_UIContextMenuCommitAnimation *)self sourceSnapshotView];
  [(UIView *)v50 addSubview:v51];

  v52 = [(_UIContextMenuCommitAnimation *)self morphContainer];
  [v52 addSubview:v50];

  v53 = [(_UIContextMenuCommitAnimation *)self morphContainer];
  [v53 bounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  [(UIView *)v50 bounds];
  v63 = v62;
  v74 = v64;
  rect.origin.x = v62;
  v66 = v65;
  v68 = v67;
  v84.origin.x = v55;
  v84.origin.y = v57;
  v69 = v57;
  rect.origin.y = v57;
  v84.size.width = v59;
  v84.size.height = v61;
  v70 = CGRectGetWidth(v84);
  v85.origin.x = v63;
  v85.origin.y = v66;
  v85.size.width = v68;
  v85.size.height = v74;
  v71 = v70 / CGRectGetWidth(v85);
  v86.origin.x = v55;
  v86.origin.y = v69;
  v86.size.width = v59;
  v86.size.height = v61;
  Height = CGRectGetHeight(v86);
  v87.origin.x = rect.origin.x;
  v87.origin.y = v66;
  v87.size.width = v68;
  v87.size.height = v74;
  v73 = CGRectGetHeight(v87);
  CGAffineTransformMakeScale(&rect.size, v71, Height / v73);
  *&v78.a = rect.size;
  *&v78.c = v76;
  *&v78.tx = v77;
  [(UIView *)v50 setTransform:&v78];
  [(UIView *)v50 setCenter:v55 + v59 * 0.5, rect.origin.y + v61 * 0.5];
  [(_UIContextMenuCommitAnimation *)self setSourceTransformView:v50];
}

@end
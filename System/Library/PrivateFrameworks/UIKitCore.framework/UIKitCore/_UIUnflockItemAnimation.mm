@interface _UIUnflockItemAnimation
+ (id)animationWithPlatterView:(id)a3 destination:(id)a4 positionReferenceView:(id)a5 type:(int64_t)a6;
- (void)complete;
- (void)play;
@end

@implementation _UIUnflockItemAnimation

+ (id)animationWithPlatterView:(id)a3 destination:(id)a4 positionReferenceView:(id)a5 type:(int64_t)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = objc_opt_new();
  [v12 setPlatterView:v11];

  [v12 setDestination:v9];
  if (v10)
  {
    [v12 setPositionReferenceView:v10];
  }

  else
  {
    v13 = [v9 view];
    v14 = [v9 target];
    v15 = [v14 container];
    v16 = [v15 superview];

    if (v13 == v16)
    {
      v17 = [v9 view];
      [v12 setPositionReferenceView:v17];
    }
  }

  [v12 setType:a6];

  return v12;
}

- (void)play
{
  v3 = [(_UIUnflockItemAnimation *)self platterView];
  v4 = [(_UIUnflockItemAnimation *)self destination];
  v5 = [(_UIUnflockItemAnimation *)self platterView];
  v6 = [v5 superview];

  v7 = [v4 target];
  v8 = [v7 container];

  v49 = 0;
  v50 = &v49;
  v51 = 0x3810000000;
  v52 = "";
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x4010000000;
  v46 = "";
  v47 = 0u;
  v48 = 0u;
  v36 = 0;
  v37 = &v36;
  v38 = 0x5010000000;
  v39 = "";
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  if ([(_UIUnflockItemAnimation *)self type]== 1 || [(_UIUnflockItemAnimation *)self type]== 2)
  {
    _UIContextMenuGetFromPreview_0(v4, v44 + 4, v50 + 4, v37 + 2, v6);
  }

  else
  {
    *&v33 = 0;
    *(&v33 + 1) = &v33;
    *&v34 = 0x3032000000;
    *(&v34 + 1) = __Block_byref_object_copy__207;
    *&v35 = __Block_byref_object_dispose__207;
    *(&v35 + 1) = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __31___UIUnflockItemAnimation_play__block_invoke;
    v19[3] = &unk_1E7124E58;
    v19[4] = self;
    v20 = v3;
    v21 = v6;
    v24 = &v33;
    v22 = v8;
    v23 = v4;
    v25 = &v43;
    v26 = &v49;
    v27 = &v36;
    v28 = &v29;
    [UIView performWithoutAnimation:v19];
    v9 = v30[3];
    v10 = [(_UIUnflockItemAnimation *)self positionTrackingProperty];
    [v10 setValue:v9];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }

  if ([(_UIUnflockItemAnimation *)self type]== 2)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __31___UIUnflockItemAnimation_play__block_invoke_3;
    v17[3] = &unk_1E70F3590;
    v18 = v3;
    [UIView performWithoutAnimation:v17];
  }

  else
  {
    [v3 setCenter:{v50[4], v50[5]}];
    v11 = v50[6];
    v12 = [v3 layer];
    [v12 setZPosition:v11];

    [v3 setBounds:{v44[4], v44[5], v44[6], v44[7]}];
    v13 = [(_UIUnflockItemAnimation *)self type];
    v14 = 1.0;
    if (v13 == 1)
    {
      v14 = 0.0;
    }

    [v3 setAlpha:v14];
    v15 = *(v37 + 3);
    v16 = *(v37 + 4);
    v33 = *(v37 + 2);
    v34 = v15;
    v35 = v16;
    [v3 setTransform:{&v33, v33, v15, v16}];
  }

  [v3 setExpanded:0];
  [v3 layoutIfNeeded];
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
}

- (void)complete
{
  v3 = [(_UIUnflockItemAnimation *)self reparentingPortalView];
  [v3 removeFromSuperview];

  v4 = [(_UIUnflockItemAnimation *)self reparentingContainerView];
  [v4 removeFromSuperview];
}

@end
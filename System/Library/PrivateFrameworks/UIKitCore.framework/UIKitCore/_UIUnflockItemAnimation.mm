@interface _UIUnflockItemAnimation
+ (id)animationWithPlatterView:(id)view destination:(id)destination positionReferenceView:(id)referenceView type:(int64_t)type;
- (void)complete;
- (void)play;
@end

@implementation _UIUnflockItemAnimation

+ (id)animationWithPlatterView:(id)view destination:(id)destination positionReferenceView:(id)referenceView type:(int64_t)type
{
  destinationCopy = destination;
  referenceViewCopy = referenceView;
  viewCopy = view;
  v12 = objc_opt_new();
  [v12 setPlatterView:viewCopy];

  [v12 setDestination:destinationCopy];
  if (referenceViewCopy)
  {
    [v12 setPositionReferenceView:referenceViewCopy];
  }

  else
  {
    view = [destinationCopy view];
    target = [destinationCopy target];
    container = [target container];
    superview = [container superview];

    if (view == superview)
    {
      view2 = [destinationCopy view];
      [v12 setPositionReferenceView:view2];
    }
  }

  [v12 setType:type];

  return v12;
}

- (void)play
{
  platterView = [(_UIUnflockItemAnimation *)self platterView];
  destination = [(_UIUnflockItemAnimation *)self destination];
  platterView2 = [(_UIUnflockItemAnimation *)self platterView];
  superview = [platterView2 superview];

  target = [destination target];
  container = [target container];

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
    _UIContextMenuGetFromPreview_0(destination, v44 + 4, v50 + 4, v37 + 2, superview);
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
    v20 = platterView;
    v21 = superview;
    v24 = &v33;
    v22 = container;
    v23 = destination;
    v25 = &v43;
    v26 = &v49;
    v27 = &v36;
    v28 = &v29;
    [UIView performWithoutAnimation:v19];
    v9 = v30[3];
    positionTrackingProperty = [(_UIUnflockItemAnimation *)self positionTrackingProperty];
    [positionTrackingProperty setValue:v9];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }

  if ([(_UIUnflockItemAnimation *)self type]== 2)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __31___UIUnflockItemAnimation_play__block_invoke_3;
    v17[3] = &unk_1E70F3590;
    v18 = platterView;
    [UIView performWithoutAnimation:v17];
  }

  else
  {
    [platterView setCenter:{v50[4], v50[5]}];
    v11 = v50[6];
    layer = [platterView layer];
    [layer setZPosition:v11];

    [platterView setBounds:{v44[4], v44[5], v44[6], v44[7]}];
    type = [(_UIUnflockItemAnimation *)self type];
    v14 = 1.0;
    if (type == 1)
    {
      v14 = 0.0;
    }

    [platterView setAlpha:v14];
    v15 = *(v37 + 3);
    v16 = *(v37 + 4);
    v33 = *(v37 + 2);
    v34 = v15;
    v35 = v16;
    [platterView setTransform:{&v33, v33, v15, v16}];
  }

  [platterView setExpanded:0];
  [platterView layoutIfNeeded];
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);
}

- (void)complete
{
  reparentingPortalView = [(_UIUnflockItemAnimation *)self reparentingPortalView];
  [reparentingPortalView removeFromSuperview];

  reparentingContainerView = [(_UIUnflockItemAnimation *)self reparentingContainerView];
  [reparentingContainerView removeFromSuperview];
}

@end
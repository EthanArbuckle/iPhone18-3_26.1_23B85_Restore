@interface _UIPreviewInteractionCrossBlurViewControllerTransition
- (void)performAppearanceTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)performDisappearanceTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)prepareAppearanceTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)prepareTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
@end

@implementation _UIPreviewInteractionCrossBlurViewControllerTransition

- (void)prepareTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  containerViewCopy = containerView;
  toViewCopy = toView;
  viewCopy = view;
  if ([(_UIPreviewInteractionCrossBlurViewControllerTransition *)self isDismissTransition])
  {
    [(_UIPreviewInteractionCrossBlurViewControllerTransition *)self prepareDisappearanceTransitionFromView:viewCopy toView:toViewCopy containerView:containerViewCopy];
  }

  else
  {
    [(_UIPreviewInteractionCrossBlurViewControllerTransition *)self prepareAppearanceTransitionFromView:viewCopy toView:toViewCopy containerView:containerViewCopy];
  }
}

- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  containerViewCopy = containerView;
  toViewCopy = toView;
  viewCopy = view;
  if ([(_UIPreviewInteractionCrossBlurViewControllerTransition *)self isDismissTransition])
  {
    [(_UIPreviewInteractionCrossBlurViewControllerTransition *)self performDisappearanceTransitionFromView:viewCopy toView:toViewCopy containerView:containerViewCopy];
  }

  else
  {
    [(_UIPreviewInteractionCrossBlurViewControllerTransition *)self performAppearanceTransitionFromView:viewCopy toView:toViewCopy containerView:containerViewCopy];
  }
}

- (void)prepareAppearanceTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  toViewCopy = toView;
  viewCopy = view;
  [toViewCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [viewCopy frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  rect_8 = v23;

  v39.origin.x = v18;
  v39.origin.y = v20;
  v39.size.width = v22;
  v39.size.height = v24;
  Height = CGRectGetHeight(v39);
  v40.origin.x = v10;
  v40.origin.y = v12;
  v31 = v14;
  v40.size.width = v14;
  v40.size.height = v16;
  sx = Height / CGRectGetHeight(v40);
  v33 = *(MEMORY[0x1E695EFD0] + 16);
  *&v37.a = *MEMORY[0x1E695EFD0];
  *&v37.c = v33;
  *&v37.tx = *(MEMORY[0x1E695EFD0] + 32);
  v41.origin.x = v18;
  v41.origin.y = v20;
  v41.size.width = v22;
  v41.size.height = rect_8;
  MidX = CGRectGetMidX(v41);
  v42.origin.x = v10;
  v42.origin.y = v12;
  v42.size.width = v14;
  v42.size.height = v16;
  v27 = MidX - CGRectGetMidX(v42);
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = v22;
  v43.size.height = rect_8;
  MidY = CGRectGetMidY(v43);
  v44.origin.x = v10;
  v44.origin.y = v12;
  v44.size.width = v31;
  v44.size.height = v16;
  v29 = CGRectGetMidY(v44);
  *&v36.a = *&v37.a;
  *&v36.c = v33;
  *&v36.tx = *&v37.tx;
  CGAffineTransformTranslate(&v37, &v36, v27, MidY - v29);
  v35 = v37;
  CGAffineTransformScale(&v36, &v35, sx, sx);
  v38 = v36;
  v37 = v36;
  v45.origin.x = v10;
  v45.origin.y = v12;
  v45.size.width = v31;
  v45.size.height = v16;
  self->_initialPlatterRect = CGRectApplyAffineTransform(v45, &v37);
  self->_finalPlatterRect.origin.x = v10;
  self->_finalPlatterRect.origin.y = v12;
  self->_finalPlatterRect.size.width = v31;
  self->_finalPlatterRect.size.height = v16;
  v37 = v38;
  [toViewCopy setTransform:&v37];
  v30 = toViewCopy;
  [v30 setBlurRadius:128.0];
  [v30 setDropShadowEnabled:0];
  [v30 setAlpha:0.0];
}

- (void)performAppearanceTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  v35[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  toViewCopy = toView;
  [viewCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v30 = *(MEMORY[0x1E695EFD0] + 16);
  *&v34.a = *MEMORY[0x1E695EFD0];
  v31 = *&v34.a;
  *&v34.c = v30;
  *&v34.tx = *(MEMORY[0x1E695EFD0] + 32);
  v29 = *&v34.tx;
  MidX = CGRectGetMidX(self->_finalPlatterRect);
  v36.origin.x = v10;
  v36.origin.y = v12;
  v36.size.width = v14;
  v36.size.height = v16;
  v18 = MidX - CGRectGetMidX(v36);
  MidY = CGRectGetMidY(self->_finalPlatterRect);
  v37.origin.x = v10;
  v37.origin.y = v12;
  v37.size.width = v14;
  v37.size.height = v16;
  v20 = CGRectGetMidY(v37);
  *&v33.a = *&v34.a;
  *&v33.c = v30;
  *&v33.tx = *&v34.tx;
  CGAffineTransformTranslate(&v34, &v33, v18, MidY - v20);
  Width = CGRectGetWidth(self->_finalPlatterRect);
  v38.origin.x = v10;
  v38.origin.y = v12;
  v38.size.width = v14;
  v38.size.height = v16;
  v22 = Width / CGRectGetWidth(v38);
  Height = CGRectGetHeight(self->_finalPlatterRect);
  v39.origin.x = v10;
  v39.origin.y = v12;
  v39.size.width = v14;
  v39.size.height = v16;
  v24 = CGRectGetHeight(v39);
  v32 = v34;
  CGAffineTransformScale(&v33, &v32, v22, Height / v24);
  v34 = v33;
  v32 = v33;
  CGAffineTransformScale(&v33, &v32, 1.2, 1.0);
  v34 = v33;
  [viewCopy setTransform:&v33];
  [viewCopy setAlpha:0.0];
  v25 = viewCopy;
  v26 = [UIBlurEffect effectWithBlurRadius:4.0];
  v35[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v25 setContentEffects:v27];

  *&v34.a = v31;
  *&v34.c = v30;
  *&v34.tx = v29;
  v28 = toViewCopy;
  [v28 setTransform:&v34];
  [v28 setAlpha:1.0];
  [v28 setBlurRadius:0.0];
  [v28 setDropShadowEnabled:1];
}

- (void)performDisappearanceTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  toViewCopy = toView;
  v28 = *(MEMORY[0x1E695EFD0] + 16);
  *&v32.a = *MEMORY[0x1E695EFD0];
  v29 = *&v32.a;
  *&v32.c = v28;
  *&v32.tx = *(MEMORY[0x1E695EFD0] + 32);
  v27 = *&v32.tx;
  viewCopy = view;
  [toViewCopy setTransform:&v32];
  [toViewCopy setAlpha:1.0];
  [toViewCopy setContentEffects:MEMORY[0x1E695E0F0]];
  [viewCopy frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [viewCopy frame];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  sx = CGRectGetHeight(v33);
  v34.origin.x = v9;
  v34.origin.y = v11;
  v34.size.width = v13;
  v34.size.height = v15;
  v20 = CGRectGetHeight(v34);
  *&v32.a = v29;
  *&v32.c = v28;
  *&v32.tx = v27;
  sxa = sx / v20;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  tx = CGRectGetMidX(v35);
  v36.origin.x = v9;
  v36.origin.y = v11;
  v36.size.width = v13;
  v36.size.height = v15;
  txa = tx - CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MidY = CGRectGetMidY(v37);
  v38.origin.x = v9;
  v38.origin.y = v11;
  v38.size.width = v13;
  v38.size.height = v15;
  v22 = CGRectGetMidY(v38);
  *&v31.a = v29;
  *&v31.c = v28;
  *&v31.tx = v27;
  CGAffineTransformTranslate(&v32, &v31, txa, MidY - v22);
  v30 = v32;
  CGAffineTransformScale(&v31, &v30, sxa, sxa);
  v32 = v31;
  [viewCopy setTransform:&v31];
  [viewCopy setAlpha:0.0];
}

@end
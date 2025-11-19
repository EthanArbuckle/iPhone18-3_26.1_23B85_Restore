@interface UITextFieldClearButton
@end

@implementation UITextFieldClearButton

id __56___UITextFieldClearButton_setPointerInteractionEnabled___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_new();
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v5 imageView];
  v16 = [v15 image];
  [v16 _contentInsets];
  v18 = v8 + v17;
  v20 = v10 + v19;
  v22 = v12 - (v17 + v21);
  v24 = v14 - (v19 + v23);

  v25 = [UIBezierPath bezierPathWithOvalInRect:v18, v20, v22, v24];
  [v6 setShadowPath:v25];

  v26 = [UITargetedPreview alloc];
  v27 = [v4 preview];
  v28 = [v27 view];
  v29 = [v4 preview];

  v30 = [v29 target];
  v31 = [(UITargetedPreview *)v26 initWithView:v28 parameters:v6 target:v30];

  v32 = [(UIPointerEffect *)UIPointerLiftEffect effectWithPreview:v31];
  v33 = [(UITargetedPreview *)v31 target];
  v34 = [v33 container];
  [v5 convertRect:v34 toView:{v18, v20, v22, v24}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v47.origin.x = v36;
  v47.origin.y = v38;
  v47.size.width = v40;
  v47.size.height = v42;
  v43 = [UIPointerShape shapeWithRoundedRect:v36 cornerRadius:v38, v40, v42, CGRectGetHeight(v47) * 0.5];
  v44 = [UIPointerStyle styleWithEffect:v32 shape:v43];

  return v44;
}

@end
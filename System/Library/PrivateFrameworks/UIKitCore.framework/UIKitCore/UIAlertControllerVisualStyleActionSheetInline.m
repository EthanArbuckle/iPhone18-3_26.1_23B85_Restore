@interface UIAlertControllerVisualStyleActionSheetInline
+ (void)positionContentsOfAlertController:(id)a3 alertContentView:(id)a4 availableSpaceView:(id)a5 visualStyle:(id)a6 updatableConstraints:(id)a7;
- (BOOL)isEqual:(id)a3;
- (CGRect)_sourceRectForAlertController:(id)a3 inContainerView:(id)a4;
- (double)_actionDescriptiveTextFontSize;
- (double)transitionDurationForPresentation:(BOOL)a3 ofAlertController:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dimmingViewForAlertController:(id)a3;
- (id)interactionProgressForTransitionOfType:(int64_t)a3 forAlertController:(id)a4;
- (void)animateAlertControllerView:(id)a3 ofAlertController:(id)a4 forPresentation:(BOOL)a5 inContainerView:(id)a6 descendantOfContainerView:(id)a7 duration:(double)a8 completionBlock:(id)a9;
- (void)animateRevealOfAlertControllerView:(id)a3 alertController:(id)a4 inContainerView:(id)a5 duration:(double)a6 completionBlock:(id)a7;
@end

@implementation UIAlertControllerVisualStyleActionSheetInline

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIAlertControllerVisualStyleActionSheetInline;
  if ([(UIAlertControllerVisualStyle *)&v8 isEqual:v4])
  {
    v5 = [(UIAlertControllerVisualStyleActionSheetInline *)self actionsReversed];
    v6 = v5 ^ [v4 actionsReversed] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UIAlertControllerVisualStyleActionSheetInline;
  v4 = [(UIAlertControllerVisualStyle *)&v6 copyWithZone:a3];
  [v4 setActionsReversed:{-[UIAlertControllerVisualStyleActionSheetInline actionsReversed](self, "actionsReversed")}];
  return v4;
}

- (double)_actionDescriptiveTextFontSize
{
  v2 = [(UIAlertControllerVisualStyle *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  v4 = 15.0;
  if (([v3 isEqualToString:@"UICTContentSizeCategoryXS"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"UICTContentSizeCategoryS") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"UICTContentSizeCategoryM") & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"UICTContentSizeCategoryL") & 1) == 0)
  {
    v4 = 16.0;
    if (([v3 isEqualToString:@"UICTContentSizeCategoryXL"] & 1) == 0)
    {
      if ([v3 isEqualToString:@"UICTContentSizeCategoryXXL"])
      {
        v4 = 17.0;
      }

      else
      {
        v4 = 18.0;
      }
    }
  }

  return v4;
}

- (CGRect)_sourceRectForAlertController:(id)a3 inContainerView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 presentationController];
  v8 = [v7 sourceView];

  if (v8)
  {
    v9 = [v5 presentationController];
    [v9 sourceRect];
    [UIForcePresentationHelper sourceRectForView:v8 proposedSourceRect:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [v6 convertRect:v8 fromView:{v11, v13, v15, v17}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    [v6 bounds];
    v19 = v27 + v26 * 0.5;
    v21 = v29 + v28 * 0.5;
    v23 = 0.0;
    v25 = 0.0;
  }

  v30 = v19;
  v31 = v21;
  v32 = v23;
  v33 = v25;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (void)animateRevealOfAlertControllerView:(id)a3 alertController:(id)a4 inContainerView:(id)a5 duration:(double)a6 completionBlock:(id)a7
{
  v11 = a4;
  v12 = a7;
  v13 = a5;
  v14 = [v11 presentationController];
  v15 = [v14 sourceView];
  [(UIAlertControllerVisualStyleActionSheetInline *)self _sourceRectForAlertController:v11 inContainerView:v13];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v14 sourceRect];
  v24 = [UIForcePresentationHelper snapshotViewForSourceView:v15 sourceRect:?];
  [v24 setFrame:{v17, v19, v21, v23}];
  v25 = [(UIAlertControllerVisualStyleActionSheetInline *)self headerView];
  [v13 insertSubview:v24 belowSubview:v25];

  [(UIAlertControllerVisualStyleActionSheetInline *)self setSourceViewSnapshot:v24];
  [v11 _setEffectAlpha:0.0];
  v26 = [(UIAlertControllerVisualStyleActionSheetInline *)self headerView];
  [v26 setAlpha:0.0];

  v27 = [(UIAlertControllerVisualStyleActionSheetInline *)self revealEffectView];
  [v27 _setEffect:0];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __141__UIAlertControllerVisualStyleActionSheetInline_animateRevealOfAlertControllerView_alertController_inContainerView_duration_completionBlock___block_invoke;
  v35[3] = &unk_1E70F6228;
  v36 = v24;
  v37 = self;
  v38 = v11;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __141__UIAlertControllerVisualStyleActionSheetInline_animateRevealOfAlertControllerView_alertController_inContainerView_duration_completionBlock___block_invoke_2;
  v31[3] = &unk_1E710B1B0;
  v32 = v38;
  v33 = self;
  v34 = v12;
  v28 = v12;
  v29 = v38;
  v30 = v24;
  [UIView animateWithDuration:0 delay:v35 options:v31 animations:a6 completion:0.0];
}

void __141__UIAlertControllerVisualStyleActionSheetInline_animateRevealOfAlertControllerView_alertController_inContainerView_duration_completionBlock___block_invoke(uint64_t a1)
{
  [UIForcePresentationHelper applyPhase:1 toSnapshotView:*(a1 + 32)];
  v4 = [*(a1 + 40) revealEffectView];
  v2 = [*(a1 + 48) traitCollection];
  v3 = [UIForcePresentationHelper visualEffectForPresentationPhase:1 traitCollection:v2 variant:1];
  [v4 _setEffect:v3];
}

uint64_t __141__UIAlertControllerVisualStyleActionSheetInline_animateRevealOfAlertControllerView_alertController_inContainerView_duration_completionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setEffectAlpha:1.0];
  v2 = [*(a1 + 40) headerView];
  [v2 setAlpha:1.0];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)animateAlertControllerView:(id)a3 ofAlertController:(id)a4 forPresentation:(BOOL)a5 inContainerView:(id)a6 descendantOfContainerView:(id)a7 duration:(double)a8 completionBlock:(id)a9
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a9;
  v94 = *(MEMORY[0x1E695EFD0] + 16);
  v95 = *MEMORY[0x1E695EFD0];
  *&v124.a = *MEMORY[0x1E695EFD0];
  *&v124.c = v94;
  v93 = *(MEMORY[0x1E695EFD0] + 32);
  *&v124.tx = v93;
  v18 = [v15 presentationController];
  v19 = [v15 _presentationSourceRepresentationView];
  v86 = [v18 sourceView];
  v84 = v18;
  [v18 sourceRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(UIAlertControllerVisualStyleActionSheetInline *)self _sourceRectForAlertController:v15 inContainerView:v16];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [(UIAlertControllerVisualStyleActionSheetInline *)self headerView];
  [v36 bounds];
  [v16 convertRect:v36 fromView:?];
  rect_24 = v38;
  v91 = v37;
  rect_8 = v40;
  rect_16 = v39;
  v92 = self;
  if (v11)
  {
    v41 = [(UIAlertControllerVisualStyleActionSheetInline *)self sourceViewSnapshot];
    if (!v41)
    {
      v41 = [UIForcePresentationHelper snapshotViewForSourceView:v86 sourceRect:v21, v23, v25, v27];
      [v41 setFrame:{v29, v31, v33, v35}];
      v42 = [(UIAlertControllerVisualStyleActionSheetInline *)v92 headerView];
      [v16 insertSubview:v41 belowSubview:v42];

      [(UIAlertControllerVisualStyleActionSheetInline *)v92 setSourceViewSnapshot:v41];
    }

    [v41 bounds];
    [v16 convertRect:v41 fromView:?];
    v29 = v43;
    v31 = v44;
    v33 = v45;
    v35 = v46;
  }

  else
  {
    v41 = 0;
  }

  rect = v29;
  [v14 center];
  CGAffineTransformMakeTranslation(&v124, v33 * 0.5 + v29 - v47, v35 * 0.5 + v31 - v48);
  v125.origin.x = v29;
  v125.origin.y = v31;
  v125.size.width = v33;
  v125.size.height = v35;
  Width = CGRectGetWidth(v125);
  v126.origin.x = v91;
  v126.origin.y = rect_24;
  v126.size.width = rect_16;
  v126.size.height = rect_8;
  v50 = Width / CGRectGetWidth(v126);
  v127.origin.x = rect;
  v80 = v31;
  v127.origin.y = v31;
  v127.size.width = v33;
  v81 = v35;
  v127.size.height = v35;
  Height = CGRectGetHeight(v127);
  v128.origin.x = v91;
  v128.origin.y = rect_24;
  v128.size.width = rect_16;
  v128.size.height = rect_8;
  v52 = Height / CGRectGetHeight(v128);
  if (v50 < v52)
  {
    v52 = v50;
  }

  sx = v52;
  if (!v19)
  {
    v52 = 0.5;
  }

  CGAffineTransformMakeScale(&t1, v52, v52);
  t2 = v124;
  CGAffineTransformConcat(&v123, &t1, &t2);
  v124 = v123;
  if (v11)
  {
    v123 = v124;
    v53 = 0.0;
    v54 = MEMORY[0x1E695EFD0];
  }

  else
  {
    *&v123.a = v95;
    *&v123.c = v94;
    v53 = 1.0;
    v54 = &v124;
    *&v123.tx = v93;
  }

  v83 = v19;
  v55 = *&v54->a;
  v56 = *&v54->tx;
  *&t1.c = *&v54->c;
  *&t1.tx = v56;
  t2 = v123;
  *&t1.a = v55;
  [v14 setTransform:&t2];
  [v15 _setEffectAlpha:v53];
  *&t2.c = v94;
  *&t2.tx = v93;
  *&v120.a = v95;
  *&v120.c = v94;
  *&v120.tx = v93;
  *&t2.a = v95;
  v129.origin.x = rect;
  v129.origin.y = v80;
  v129.size.width = v33;
  v129.size.height = v81;
  txa = CGRectGetMidX(v129);
  v130.origin.x = v91;
  v130.origin.y = rect_24;
  v130.size.width = rect_16;
  v130.size.height = rect_8;
  tx = txa - CGRectGetMidX(v130);
  v131.origin.x = rect;
  v131.origin.y = v80;
  v131.size.width = v33;
  v131.size.height = v81;
  MidY = CGRectGetMidY(v131);
  v132.origin.x = v91;
  v132.origin.y = rect_24;
  v132.size.width = rect_16;
  v132.size.height = rect_8;
  v58 = CGRectGetMidY(v132);
  *&v119.a = v95;
  *&v119.c = v94;
  *&v119.tx = v93;
  CGAffineTransformTranslate(&v120, &v119, tx, MidY - v58);
  v118 = v120;
  CGAffineTransformScale(&v119, &v118, sx, sx);
  v120 = v119;
  v85 = v16;
  if (v11)
  {
    v119 = v120;
    [v36 setTransform:&v119];
    [v36 setAlpha:0.0];
    v59 = [v15 traitCollection];
    v60 = [UIForcePresentationHelper visualEffectForPresentationPhase:2 traitCollection:v59 variant:1];

    v61 = 1.0;
  }

  else
  {
    v60 = 0;
    t2 = v120;
    v61 = 0.0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke;
  aBlock[3] = &unk_1E70F3DC8;
  v96 = v14;
  v116 = v96;
  v117 = t1;
  v62 = _Block_copy(aBlock);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2;
  v110[3] = &unk_1E712CFE8;
  v63 = v36;
  v111 = v63;
  v113 = t2;
  v114 = v11;
  v64 = v41;
  v112 = v64;
  v65 = _Block_copy(v110);
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3;
  v106[3] = &unk_1E712D010;
  v106[4] = v92;
  v109 = v11;
  v66 = v63;
  v107 = v66;
  v67 = v17;
  v108 = v67;
  v68 = _Block_copy(v106);
  if (v11)
  {
    [UIView _animateUsingSpringWithDuration:1030 delay:v62 options:v68 mass:a8 stiffness:0.0 damping:2.0 initialVelocity:1199.0 animations:98.0 completion:0.0];
    [UIView _animateUsingSpringWithDuration:1030 delay:v65 options:0 mass:a8 stiffness:0.0 damping:2.0 initialVelocity:1199.0 animations:98.0 completion:0.0];
    v69 = 1.0;
  }

  else
  {
    v69 = 0.0;
    [UIView animateWithDuration:1030 delay:v62 options:v68 animations:a8 completion:0.0];
    [UIView animateWithDuration:1030 delay:v65 options:0 animations:a8 completion:0.0];
  }

  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_4;
  v103[3] = &unk_1E70F32F0;
  v104 = v15;
  v105 = v69;
  v70 = v15;
  if (v11)
  {
    v71 = a8 * 0.3;
  }

  else
  {
    v71 = a8 * 0.4;
  }

  if (v11)
  {
    v72 = a8 * 0.4;
  }

  else
  {
    v72 = a8 * 0.6;
  }

  if (v11)
  {
    v73 = a8 * 0.5;
  }

  else
  {
    v73 = a8;
  }

  [UIView animateWithDuration:1030 delay:v103 options:0 animations:v71 completion:0.0, *&tx];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_5;
  v99[3] = &unk_1E70F36D0;
  v102 = v61;
  v100 = v66;
  v101 = v64;
  v74 = v64;
  v75 = v66;
  [UIView animateWithDuration:1030 delay:v99 options:0 animations:v72 completion:0.0];
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_6;
  v97[3] = &unk_1E70F35B8;
  v97[4] = v92;
  v98 = v60;
  v76 = v60;
  [UIView animateWithDuration:1030 delay:v97 options:0 animations:v73 completion:0.0];
}

uint64_t __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  v4[0] = *(a1 + 48);
  v4[1] = v2;
  v4[2] = *(a1 + 80);
  result = [*(a1 + 32) setTransform:v4];
  if (*(a1 + 96) == 1)
  {
    return [*(a1 + 40) setBlurRadius:20.0];
  }

  return result;
}

uint64_t __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) sourceViewSnapshot];
  [v2 removeFromSuperview];

  [*(a1 + 32) setSourceViewSnapshot:0];
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = [*(a1 + 32) revealEffectView];
    [v3 removeFromSuperview];

    [*(a1 + 32) setRevealEffectView:0];
    [*(a1 + 40) removeFromSuperview];
    v4 = *(a1 + 40);
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v7[0] = *MEMORY[0x1E695EFD0];
    v7[1] = v5;
    v7[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v4 setTransform:v7];
  }

  return (*(*(a1 + 48) + 16))();
}

uint64_t __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(a1 + 40);

  return [v2 setAlpha:0.0];
}

void __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) revealEffectView];
  [v2 _setEffect:*(a1 + 40)];
}

- (double)transitionDurationForPresentation:(BOOL)a3 ofAlertController:(id)a4
{
  if (!a3)
  {
    return 0.25;
  }

  objc_opt_self();

  _durationOfSpringAnimation(2.0, 1199.0, 98.0, 0.0);
  return result;
}

- (id)interactionProgressForTransitionOfType:(int64_t)a3 forAlertController:(id)a4
{
  v4 = [a4 transitioningDelegate];
  v5 = [v4 interactionProgressForPresentation];
  [v5 percentComplete];
  if (v6 >= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

+ (void)positionContentsOfAlertController:(id)a3 alertContentView:(id)a4 availableSpaceView:(id)a5 visualStyle:(id)a6 updatableConstraints:(id)a7
{
  v112 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [v10 layoutBelowIfNeeded];
  v13 = [MEMORY[0x1E695DF70] array];
  v14 = v12;
  v15 = [v10 superview];
  [v14 contentInsetsForContainerView:v15];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v14 _sourceRectForAlertController:v112 inContainerView:v11];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [v112 _presentationSourceRepresentationView];
  if (v32)
  {
    v33 = objc_alloc_init(UIView);
    [v32 bounds];
    Height = CGRectGetHeight(v114);
    v34 = [v14 interfaceActionVisualStyle];
    [v34 contentCornerRadius];
    v110 = v21;
    v35 = v23;
    v37 = v36;
    v38 = [(UIView *)v33 layer];
    [v38 setCornerRadius:v37];

    [(UIView *)v33 setClipsToBounds:1];
    v39 = +[UIColor systemBackgroundColor];
    [(UIView *)v33 setBackgroundColor:v39];

    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v33 addSubview:v32];
    v111 = v32;
    v40 = _NSDictionaryOfVariableBindings(&cfstr_Presentationso.isa, v32, 0);
    v41 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[presentationSourceRepresentationView]|" options:0 metrics:0 views:v40];
    [v13 addObjectsFromArray:v41];

    v42 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[presentationSourceRepresentationView]|" options:0 metrics:0 views:v40];
    [v13 addObjectsFromArray:v42];

    v43 = [(UIView *)v33 leadingAnchor];
    v44 = [v11 leadingAnchor];
    v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44 constant:v19];
    [v13 addObject:v45];

    v46 = [(UIView *)v33 trailingAnchor];
    v47 = [v11 trailingAnchor];
    v48 = [v46 constraintLessThanOrEqualToAnchor:v47 constant:-v35];
    [v13 addObject:v48];

    v49 = [(UIView *)v33 topAnchor];
    v50 = [v11 topAnchor];
    v51 = [v49 constraintGreaterThanOrEqualToAnchor:v50 constant:v17];
    [v13 addObject:v51];

    v52 = [(UIView *)v33 bottomAnchor];
    v53 = [v11 bottomAnchor];
    v54 = [v52 constraintLessThanOrEqualToAnchor:v53 constant:-v110];
    [v13 addObject:v54];

    if (Height > 0.0)
    {
      v55 = [(UIView *)v33 heightAnchor];
      v56 = [v55 constraintGreaterThanOrEqualToConstant:Height];
      [v13 addObject:v56];
    }

    v57 = [v10 leadingAnchor];
    v58 = [(UIView *)v33 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:0.0];
    [v13 addObject:v59];

    v60 = [v10 trailingAnchor];
    v61 = [(UIView *)v33 trailingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:0.0];
    [v13 addObject:v62];

    v63 = [(UIView *)v33 centerYAnchor];
    v64 = [v11 topAnchor];
    v115.origin.x = v25;
    v115.origin.y = v27;
    v115.size.width = v29;
    v115.size.height = v31;
    v65 = [v63 constraintEqualToAnchor:v64 constant:CGRectGetMidY(v115)];

    LODWORD(v66) = 1131937792;
    [v65 setPriority:v66];
    [v13 addObject:v65];
    v67 = [(UIView *)v33 centerXAnchor];
    v68 = [v11 leftAnchor];
    v116.origin.x = v25;
    v116.origin.y = v27;
    v116.size.width = v29;
    v116.size.height = v31;
    v69 = [v67 constraintEqualToAnchor:v68 constant:CGRectGetMidX(v116)];

    LODWORD(v70) = 1144750080;
    [v69 setPriority:v70];
    [v13 addObject:v69];

    v32 = v111;
  }

  else
  {
    v40 = [v112 presentationController];
    v71 = [v40 sourceView];
    [v40 sourceRect];
    v33 = [UIForcePresentationHelper snapshotViewForSourceView:v71 sourceRect:?];

    v72 = [(UIView *)v33 widthAnchor];
    v117.origin.x = v25;
    v117.origin.y = v27;
    v117.size.width = v29;
    v117.size.height = v31;
    v73 = [v72 constraintEqualToConstant:CGRectGetWidth(v117)];
    [v13 addObject:v73];

    v74 = [(UIView *)v33 heightAnchor];
    v118.origin.x = v25;
    v118.origin.y = v27;
    v118.size.width = v29;
    v118.size.height = v31;
    v75 = [v74 constraintEqualToConstant:CGRectGetHeight(v118)];
    [v13 addObject:v75];

    v76 = [(UIView *)v33 centerXAnchor];
    v77 = [v11 leftAnchor];
    v119.origin.x = v25;
    v119.origin.y = v27;
    v119.size.width = v29;
    v119.size.height = v31;
    v78 = [v76 constraintEqualToAnchor:v77 constant:CGRectGetMidX(v119)];
    [v13 addObject:v78];

    v79 = [(UIView *)v33 centerYAnchor];
    v80 = [v11 topAnchor];
    v120.origin.x = v25;
    v120.origin.y = v27;
    v120.size.width = v29;
    v120.size.height = v31;
    v81 = [v79 constraintEqualToAnchor:v80 constant:CGRectGetMidY(v120)];
    [v13 addObject:v81];

    v82 = [v10 leadingAnchor];
    v83 = [v11 leadingAnchor];
    v84 = [v82 constraintGreaterThanOrEqualToAnchor:v83 constant:v19];
    [v13 addObject:v84];

    v85 = [v10 trailingAnchor];
    v86 = [v11 trailingAnchor];
    v87 = [v85 constraintLessThanOrEqualToAnchor:v86 constant:-v23];
    [v13 addObject:v87];

    v88 = [v10 centerXAnchor];
    v89 = [v11 leftAnchor];
    v121.origin.x = v25;
    v121.origin.y = v27;
    v121.size.width = v29;
    v121.size.height = v31;
    v65 = [v88 constraintEqualToAnchor:v89 constant:CGRectGetMidX(v121)];

    LODWORD(v90) = 1144750080;
    [v65 setPriority:v90];
    [v13 addObject:v65];
  }

  [(UIView *)v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v11 addSubview:v33];
  [v14 setHeaderView:v33];
  v122.origin.x = v25;
  v122.origin.y = v27;
  v122.size.width = v29;
  v122.size.height = v31;
  MidY = CGRectGetMidY(v122);
  [v11 bounds];
  v92 = CGRectGetMidY(v123);
  if (MidY < v92)
  {
    v93 = [v10 topAnchor];
    v94 = [(UIView *)v33 bottomAnchor];
    v95 = 10.0;
  }

  else
  {
    v93 = [v10 bottomAnchor];
    v94 = [(UIView *)v33 topAnchor];
    v95 = -10.0;
  }

  v96 = [v93 constraintEqualToAnchor:v94 constant:v95];
  [v13 addObject:v96];

  [v14 setActionsReversed:MidY >= v92];
  v97 = [v14 revealEffectView];

  if (!v97)
  {
    v98 = [[UIVisualEffectView alloc] initWithEffect:0];
    [v14 setRevealEffectView:v98];
  }

  v99 = [v14 revealEffectView];
  [v11 insertSubview:v99 atIndex:0];

  [v11 bounds];
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = [v14 revealEffectView];
  [v108 setFrame:{v101, v103, v105, v107}];

  [MEMORY[0x1E69977A0] activateConstraints:v13];
}

- (id)dimmingViewForAlertController:(id)a3
{
  v3 = [UIView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

@end
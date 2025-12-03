@interface UIAlertControllerVisualStyleActionSheetInline
+ (void)positionContentsOfAlertController:(id)controller alertContentView:(id)view availableSpaceView:(id)spaceView visualStyle:(id)style updatableConstraints:(id)constraints;
- (BOOL)isEqual:(id)equal;
- (CGRect)_sourceRectForAlertController:(id)controller inContainerView:(id)view;
- (double)_actionDescriptiveTextFontSize;
- (double)transitionDurationForPresentation:(BOOL)presentation ofAlertController:(id)controller;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dimmingViewForAlertController:(id)controller;
- (id)interactionProgressForTransitionOfType:(int64_t)type forAlertController:(id)controller;
- (void)animateAlertControllerView:(id)view ofAlertController:(id)controller forPresentation:(BOOL)presentation inContainerView:(id)containerView descendantOfContainerView:(id)ofContainerView duration:(double)duration completionBlock:(id)block;
- (void)animateRevealOfAlertControllerView:(id)view alertController:(id)controller inContainerView:(id)containerView duration:(double)duration completionBlock:(id)block;
@end

@implementation UIAlertControllerVisualStyleActionSheetInline

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = UIAlertControllerVisualStyleActionSheetInline;
  if ([(UIAlertControllerVisualStyle *)&v8 isEqual:equalCopy])
  {
    actionsReversed = [(UIAlertControllerVisualStyleActionSheetInline *)self actionsReversed];
    v6 = actionsReversed ^ [equalCopy actionsReversed] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = UIAlertControllerVisualStyleActionSheetInline;
  v4 = [(UIAlertControllerVisualStyle *)&v6 copyWithZone:zone];
  [v4 setActionsReversed:{-[UIAlertControllerVisualStyleActionSheetInline actionsReversed](self, "actionsReversed")}];
  return v4;
}

- (double)_actionDescriptiveTextFontSize
{
  traitCollection = [(UIAlertControllerVisualStyle *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v4 = 15.0;
  if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXS"] & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", @"UICTContentSizeCategoryS") & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", @"UICTContentSizeCategoryM") & 1) == 0 && (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", @"UICTContentSizeCategoryL") & 1) == 0)
  {
    v4 = 16.0;
    if (([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXL"] & 1) == 0)
    {
      if ([preferredContentSizeCategory isEqualToString:@"UICTContentSizeCategoryXXL"])
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

- (CGRect)_sourceRectForAlertController:(id)controller inContainerView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  presentationController = [controllerCopy presentationController];
  sourceView = [presentationController sourceView];

  if (sourceView)
  {
    presentationController2 = [controllerCopy presentationController];
    [presentationController2 sourceRect];
    [UIForcePresentationHelper sourceRectForView:sourceView proposedSourceRect:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    [viewCopy convertRect:sourceView fromView:{v11, v13, v15, v17}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    [viewCopy bounds];
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

- (void)animateRevealOfAlertControllerView:(id)view alertController:(id)controller inContainerView:(id)containerView duration:(double)duration completionBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  containerViewCopy = containerView;
  presentationController = [controllerCopy presentationController];
  sourceView = [presentationController sourceView];
  [(UIAlertControllerVisualStyleActionSheetInline *)self _sourceRectForAlertController:controllerCopy inContainerView:containerViewCopy];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [presentationController sourceRect];
  v24 = [UIForcePresentationHelper snapshotViewForSourceView:sourceView sourceRect:?];
  [v24 setFrame:{v17, v19, v21, v23}];
  headerView = [(UIAlertControllerVisualStyleActionSheetInline *)self headerView];
  [containerViewCopy insertSubview:v24 belowSubview:headerView];

  [(UIAlertControllerVisualStyleActionSheetInline *)self setSourceViewSnapshot:v24];
  [controllerCopy _setEffectAlpha:0.0];
  headerView2 = [(UIAlertControllerVisualStyleActionSheetInline *)self headerView];
  [headerView2 setAlpha:0.0];

  revealEffectView = [(UIAlertControllerVisualStyleActionSheetInline *)self revealEffectView];
  [revealEffectView _setEffect:0];

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __141__UIAlertControllerVisualStyleActionSheetInline_animateRevealOfAlertControllerView_alertController_inContainerView_duration_completionBlock___block_invoke;
  v35[3] = &unk_1E70F6228;
  v36 = v24;
  selfCopy = self;
  v38 = controllerCopy;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __141__UIAlertControllerVisualStyleActionSheetInline_animateRevealOfAlertControllerView_alertController_inContainerView_duration_completionBlock___block_invoke_2;
  v31[3] = &unk_1E710B1B0;
  v32 = v38;
  selfCopy2 = self;
  v34 = blockCopy;
  v28 = blockCopy;
  v29 = v38;
  v30 = v24;
  [UIView animateWithDuration:0 delay:v35 options:v31 animations:duration completion:0.0];
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

- (void)animateAlertControllerView:(id)view ofAlertController:(id)controller forPresentation:(BOOL)presentation inContainerView:(id)containerView descendantOfContainerView:(id)ofContainerView duration:(double)duration completionBlock:(id)block
{
  presentationCopy = presentation;
  viewCopy = view;
  controllerCopy = controller;
  containerViewCopy = containerView;
  blockCopy = block;
  v94 = *(MEMORY[0x1E695EFD0] + 16);
  v95 = *MEMORY[0x1E695EFD0];
  *&v124.a = *MEMORY[0x1E695EFD0];
  *&v124.c = v94;
  v93 = *(MEMORY[0x1E695EFD0] + 32);
  *&v124.tx = v93;
  presentationController = [controllerCopy presentationController];
  _presentationSourceRepresentationView = [controllerCopy _presentationSourceRepresentationView];
  sourceView = [presentationController sourceView];
  v84 = presentationController;
  [presentationController sourceRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(UIAlertControllerVisualStyleActionSheetInline *)self _sourceRectForAlertController:controllerCopy inContainerView:containerViewCopy];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  headerView = [(UIAlertControllerVisualStyleActionSheetInline *)self headerView];
  [headerView bounds];
  [containerViewCopy convertRect:headerView fromView:?];
  rect_24 = v38;
  v91 = v37;
  rect_8 = v40;
  rect_16 = v39;
  selfCopy = self;
  if (presentationCopy)
  {
    sourceViewSnapshot = [(UIAlertControllerVisualStyleActionSheetInline *)self sourceViewSnapshot];
    if (!sourceViewSnapshot)
    {
      sourceViewSnapshot = [UIForcePresentationHelper snapshotViewForSourceView:sourceView sourceRect:v21, v23, v25, v27];
      [sourceViewSnapshot setFrame:{v29, v31, v33, v35}];
      headerView2 = [(UIAlertControllerVisualStyleActionSheetInline *)selfCopy headerView];
      [containerViewCopy insertSubview:sourceViewSnapshot belowSubview:headerView2];

      [(UIAlertControllerVisualStyleActionSheetInline *)selfCopy setSourceViewSnapshot:sourceViewSnapshot];
    }

    [sourceViewSnapshot bounds];
    [containerViewCopy convertRect:sourceViewSnapshot fromView:?];
    v29 = v43;
    v31 = v44;
    v33 = v45;
    v35 = v46;
  }

  else
  {
    sourceViewSnapshot = 0;
  }

  rect = v29;
  [viewCopy center];
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
  if (!_presentationSourceRepresentationView)
  {
    v52 = 0.5;
  }

  CGAffineTransformMakeScale(&t1, v52, v52);
  t2 = v124;
  CGAffineTransformConcat(&v123, &t1, &t2);
  v124 = v123;
  if (presentationCopy)
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

  v83 = _presentationSourceRepresentationView;
  v55 = *&v54->a;
  v56 = *&v54->tx;
  *&t1.c = *&v54->c;
  *&t1.tx = v56;
  t2 = v123;
  *&t1.a = v55;
  [viewCopy setTransform:&t2];
  [controllerCopy _setEffectAlpha:v53];
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
  v85 = containerViewCopy;
  if (presentationCopy)
  {
    v119 = v120;
    [headerView setTransform:&v119];
    [headerView setAlpha:0.0];
    traitCollection = [controllerCopy traitCollection];
    v60 = [UIForcePresentationHelper visualEffectForPresentationPhase:2 traitCollection:traitCollection variant:1];

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
  v96 = viewCopy;
  v116 = v96;
  v117 = t1;
  v62 = _Block_copy(aBlock);
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_2;
  v110[3] = &unk_1E712CFE8;
  v63 = headerView;
  v111 = v63;
  v113 = t2;
  v114 = presentationCopy;
  v64 = sourceViewSnapshot;
  v112 = v64;
  v65 = _Block_copy(v110);
  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_3;
  v106[3] = &unk_1E712D010;
  v106[4] = selfCopy;
  v109 = presentationCopy;
  v66 = v63;
  v107 = v66;
  v67 = blockCopy;
  v108 = v67;
  v68 = _Block_copy(v106);
  if (presentationCopy)
  {
    [UIView _animateUsingSpringWithDuration:1030 delay:v62 options:v68 mass:duration stiffness:0.0 damping:2.0 initialVelocity:1199.0 animations:98.0 completion:0.0];
    [UIView _animateUsingSpringWithDuration:1030 delay:v65 options:0 mass:duration stiffness:0.0 damping:2.0 initialVelocity:1199.0 animations:98.0 completion:0.0];
    v69 = 1.0;
  }

  else
  {
    v69 = 0.0;
    [UIView animateWithDuration:1030 delay:v62 options:v68 animations:duration completion:0.0];
    [UIView animateWithDuration:1030 delay:v65 options:0 animations:duration completion:0.0];
  }

  v103[0] = MEMORY[0x1E69E9820];
  v103[1] = 3221225472;
  v103[2] = __177__UIAlertControllerVisualStyleActionSheetInline_animateAlertControllerView_ofAlertController_forPresentation_inContainerView_descendantOfContainerView_duration_completionBlock___block_invoke_4;
  v103[3] = &unk_1E70F32F0;
  v104 = controllerCopy;
  v105 = v69;
  v70 = controllerCopy;
  if (presentationCopy)
  {
    v71 = duration * 0.3;
  }

  else
  {
    v71 = duration * 0.4;
  }

  if (presentationCopy)
  {
    v72 = duration * 0.4;
  }

  else
  {
    v72 = duration * 0.6;
  }

  if (presentationCopy)
  {
    durationCopy = duration * 0.5;
  }

  else
  {
    durationCopy = duration;
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
  v97[4] = selfCopy;
  v98 = v60;
  v76 = v60;
  [UIView animateWithDuration:1030 delay:v97 options:0 animations:durationCopy completion:0.0];
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

- (double)transitionDurationForPresentation:(BOOL)presentation ofAlertController:(id)controller
{
  if (!presentation)
  {
    return 0.25;
  }

  objc_opt_self();

  _durationOfSpringAnimation(2.0, 1199.0, 98.0, 0.0);
  return result;
}

- (id)interactionProgressForTransitionOfType:(int64_t)type forAlertController:(id)controller
{
  transitioningDelegate = [controller transitioningDelegate];
  interactionProgressForPresentation = [transitioningDelegate interactionProgressForPresentation];
  [interactionProgressForPresentation percentComplete];
  if (v6 >= 1.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = interactionProgressForPresentation;
  }

  return v7;
}

+ (void)positionContentsOfAlertController:(id)controller alertContentView:(id)view availableSpaceView:(id)spaceView visualStyle:(id)style updatableConstraints:(id)constraints
{
  controllerCopy = controller;
  viewCopy = view;
  spaceViewCopy = spaceView;
  styleCopy = style;
  [viewCopy layoutBelowIfNeeded];
  array = [MEMORY[0x1E695DF70] array];
  v14 = styleCopy;
  superview = [viewCopy superview];
  [v14 contentInsetsForContainerView:superview];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v14 _sourceRectForAlertController:controllerCopy inContainerView:spaceViewCopy];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  _presentationSourceRepresentationView = [controllerCopy _presentationSourceRepresentationView];
  if (_presentationSourceRepresentationView)
  {
    v33 = objc_alloc_init(UIView);
    [_presentationSourceRepresentationView bounds];
    Height = CGRectGetHeight(v114);
    interfaceActionVisualStyle = [v14 interfaceActionVisualStyle];
    [interfaceActionVisualStyle contentCornerRadius];
    v110 = v21;
    v35 = v23;
    v37 = v36;
    layer = [(UIView *)v33 layer];
    [layer setCornerRadius:v37];

    [(UIView *)v33 setClipsToBounds:1];
    v39 = +[UIColor systemBackgroundColor];
    [(UIView *)v33 setBackgroundColor:v39];

    [_presentationSourceRepresentationView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v33 addSubview:_presentationSourceRepresentationView];
    v111 = _presentationSourceRepresentationView;
    presentationController = _NSDictionaryOfVariableBindings(&cfstr_Presentationso.isa, _presentationSourceRepresentationView, 0);
    v41 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[presentationSourceRepresentationView]|" options:0 metrics:0 views:presentationController];
    [array addObjectsFromArray:v41];

    v42 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[presentationSourceRepresentationView]|" options:0 metrics:0 views:presentationController];
    [array addObjectsFromArray:v42];

    leadingAnchor = [(UIView *)v33 leadingAnchor];
    leadingAnchor2 = [spaceViewCopy leadingAnchor];
    v45 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:v19];
    [array addObject:v45];

    trailingAnchor = [(UIView *)v33 trailingAnchor];
    trailingAnchor2 = [spaceViewCopy trailingAnchor];
    v48 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:-v35];
    [array addObject:v48];

    topAnchor = [(UIView *)v33 topAnchor];
    topAnchor2 = [spaceViewCopy topAnchor];
    v51 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v17];
    [array addObject:v51];

    bottomAnchor = [(UIView *)v33 bottomAnchor];
    bottomAnchor2 = [spaceViewCopy bottomAnchor];
    v54 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-v110];
    [array addObject:v54];

    if (Height > 0.0)
    {
      heightAnchor = [(UIView *)v33 heightAnchor];
      v56 = [heightAnchor constraintGreaterThanOrEqualToConstant:Height];
      [array addObject:v56];
    }

    leadingAnchor3 = [viewCopy leadingAnchor];
    leadingAnchor4 = [(UIView *)v33 leadingAnchor];
    v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
    [array addObject:v59];

    trailingAnchor3 = [viewCopy trailingAnchor];
    trailingAnchor4 = [(UIView *)v33 trailingAnchor];
    v62 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
    [array addObject:v62];

    centerYAnchor = [(UIView *)v33 centerYAnchor];
    topAnchor3 = [spaceViewCopy topAnchor];
    v115.origin.x = v25;
    v115.origin.y = v27;
    v115.size.width = v29;
    v115.size.height = v31;
    v65 = [centerYAnchor constraintEqualToAnchor:topAnchor3 constant:CGRectGetMidY(v115)];

    LODWORD(v66) = 1131937792;
    [v65 setPriority:v66];
    [array addObject:v65];
    centerXAnchor = [(UIView *)v33 centerXAnchor];
    leftAnchor = [spaceViewCopy leftAnchor];
    v116.origin.x = v25;
    v116.origin.y = v27;
    v116.size.width = v29;
    v116.size.height = v31;
    v69 = [centerXAnchor constraintEqualToAnchor:leftAnchor constant:CGRectGetMidX(v116)];

    LODWORD(v70) = 1144750080;
    [v69 setPriority:v70];
    [array addObject:v69];

    _presentationSourceRepresentationView = v111;
  }

  else
  {
    presentationController = [controllerCopy presentationController];
    sourceView = [presentationController sourceView];
    [presentationController sourceRect];
    v33 = [UIForcePresentationHelper snapshotViewForSourceView:sourceView sourceRect:?];

    widthAnchor = [(UIView *)v33 widthAnchor];
    v117.origin.x = v25;
    v117.origin.y = v27;
    v117.size.width = v29;
    v117.size.height = v31;
    v73 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v117)];
    [array addObject:v73];

    heightAnchor2 = [(UIView *)v33 heightAnchor];
    v118.origin.x = v25;
    v118.origin.y = v27;
    v118.size.width = v29;
    v118.size.height = v31;
    v75 = [heightAnchor2 constraintEqualToConstant:CGRectGetHeight(v118)];
    [array addObject:v75];

    centerXAnchor2 = [(UIView *)v33 centerXAnchor];
    leftAnchor2 = [spaceViewCopy leftAnchor];
    v119.origin.x = v25;
    v119.origin.y = v27;
    v119.size.width = v29;
    v119.size.height = v31;
    v78 = [centerXAnchor2 constraintEqualToAnchor:leftAnchor2 constant:CGRectGetMidX(v119)];
    [array addObject:v78];

    centerYAnchor2 = [(UIView *)v33 centerYAnchor];
    topAnchor4 = [spaceViewCopy topAnchor];
    v120.origin.x = v25;
    v120.origin.y = v27;
    v120.size.width = v29;
    v120.size.height = v31;
    v81 = [centerYAnchor2 constraintEqualToAnchor:topAnchor4 constant:CGRectGetMidY(v120)];
    [array addObject:v81];

    leadingAnchor5 = [viewCopy leadingAnchor];
    leadingAnchor6 = [spaceViewCopy leadingAnchor];
    v84 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6 constant:v19];
    [array addObject:v84];

    trailingAnchor5 = [viewCopy trailingAnchor];
    trailingAnchor6 = [spaceViewCopy trailingAnchor];
    v87 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6 constant:-v23];
    [array addObject:v87];

    centerXAnchor3 = [viewCopy centerXAnchor];
    leftAnchor3 = [spaceViewCopy leftAnchor];
    v121.origin.x = v25;
    v121.origin.y = v27;
    v121.size.width = v29;
    v121.size.height = v31;
    v65 = [centerXAnchor3 constraintEqualToAnchor:leftAnchor3 constant:CGRectGetMidX(v121)];

    LODWORD(v90) = 1144750080;
    [v65 setPriority:v90];
    [array addObject:v65];
  }

  [(UIView *)v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [spaceViewCopy addSubview:v33];
  [v14 setHeaderView:v33];
  v122.origin.x = v25;
  v122.origin.y = v27;
  v122.size.width = v29;
  v122.size.height = v31;
  MidY = CGRectGetMidY(v122);
  [spaceViewCopy bounds];
  v92 = CGRectGetMidY(v123);
  if (MidY < v92)
  {
    topAnchor5 = [viewCopy topAnchor];
    bottomAnchor3 = [(UIView *)v33 bottomAnchor];
    v95 = 10.0;
  }

  else
  {
    topAnchor5 = [viewCopy bottomAnchor];
    bottomAnchor3 = [(UIView *)v33 topAnchor];
    v95 = -10.0;
  }

  v96 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:v95];
  [array addObject:v96];

  [v14 setActionsReversed:MidY >= v92];
  revealEffectView = [v14 revealEffectView];

  if (!revealEffectView)
  {
    v98 = [[UIVisualEffectView alloc] initWithEffect:0];
    [v14 setRevealEffectView:v98];
  }

  revealEffectView2 = [v14 revealEffectView];
  [spaceViewCopy insertSubview:revealEffectView2 atIndex:0];

  [spaceViewCopy bounds];
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  revealEffectView3 = [v14 revealEffectView];
  [revealEffectView3 setFrame:{v101, v103, v105, v107}];

  [MEMORY[0x1E69977A0] activateConstraints:array];
}

- (id)dimmingViewForAlertController:(id)controller
{
  v3 = [UIView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v4;
}

@end
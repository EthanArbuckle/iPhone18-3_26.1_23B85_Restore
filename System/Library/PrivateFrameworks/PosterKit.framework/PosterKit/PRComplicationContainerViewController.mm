@interface PRComplicationContainerViewController
- (CGRect)bottomFrame;
- (CGRect)topFrame;
- (PRComplicationContainerViewController)initWithInlineComplicationDescriptor:(id)a3 graphicComplicationDescriptors:(id)a4 graphicComplicationIconLayout:(id)a5 sidebarComplicationDescriptors:(id)a6 sidebarIconLayout:(id)a7 scene:(id)a8;
- (PRComplicationContainerViewControllerDelegate)delegate;
- (void)_updateEmptyRowVisibility:(BOOL)a3;
- (void)_updateFocusedWithAnimationSettings:(id)a3;
- (void)_updateReticleVisibility:(BOOL)a3;
- (void)dealloc;
- (void)handlePanGesture:(id)a3;
- (void)inlineComplicationContainerViewController:(id)a3 didEditComplication:(id)a4;
- (void)inlineComplicationContainerViewControllerDidTapAdd:(id)a3;
- (void)invalidate;
- (void)loadView;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)setFocusedElement:(int64_t)a3 animated:(BOOL)a4;
- (void)setFocusedElement:(int64_t)a3 animationSettings:(id)a4;
- (void)setUsesEditingLayout:(BOOL)a3 animated:(BOOL)a4;
- (void)setUsesEditingLayout:(BOOL)a3 animationSettings:(id)a4;
- (void)setVibrancyConfiguration:(id)a3;
- (void)setWidgetsUseBottomLayout:(BOOL)a3;
- (void)updateComplicationLayoutIfCovered:(BOOL)a3;
- (void)updateForComplicationGalleryHeight:(double)a3 completion:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)widgetGridModelDidUpdateContent:(id)a3;
- (void)widgetGridViewController:(id)a3 didRequestConfigurationForComplicationDescriptor:(id)a4;
- (void)widgetGridViewController:(id)a3 isAttemptingDragToAddComplication:(id)a4;
- (void)widgetGridViewControllerDidTapBackground:(id)a3;
@end

@implementation PRComplicationContainerViewController

- (PRComplicationContainerViewController)initWithInlineComplicationDescriptor:(id)a3 graphicComplicationDescriptors:(id)a4 graphicComplicationIconLayout:(id)a5 sidebarComplicationDescriptors:(id)a6 sidebarIconLayout:(id)a7 scene:(id)a8
{
  v42 = a6;
  v14 = a7;
  v41 = a8;
  v43.receiver = self;
  v43.super_class = PRComplicationContainerViewController;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [(PRComplicationContainerViewController *)&v43 init];
  objc_storeStrong(&v18->_scene, a8);
  v19 = objc_opt_new();
  models = v18->_models;
  v18->_models = v19;

  v21 = [[PRInlineComplicationContainerViewController alloc] initWithComplicationDescriptor:v17];
  inlineComplicationContainerViewController = v18->_inlineComplicationContainerViewController;
  v18->_inlineComplicationContainerViewController = v21;

  [(PRInlineComplicationContainerViewController *)v18->_inlineComplicationContainerViewController setDelegate:v18];
  v23 = [[PRWidgetGridModel alloc] initWithComplicationDescriptors:v16 iconLayout:v15 type:0];

  [(PRWidgetGridModel *)v23 addWidgetGridModelObserver:v18];
  [(NSMutableArray *)v18->_models bs_safeAddObject:v23];
  v24 = [[PRWidgetGridViewController alloc] initWithModel:v23 iconViewProvider:0];
  widgetGridViewController = v18->_widgetGridViewController;
  v18->_widgetGridViewController = v24;

  [(PRWidgetGridViewController *)v18->_widgetGridViewController setRequiresFocusForLaunchRequests:1];
  [(PRWidgetGridViewController *)v18->_widgetGridViewController setDelegate:v18];
  v26 = [MEMORY[0x1E69DC938] currentDevice];
  v27 = [v26 userInterfaceIdiom];

  if ((v27 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v28 = [[PRWidgetGridModel alloc] initWithComplicationDescriptors:v42 iconLayout:v14 type:1, v41];
    [(PRWidgetGridModel *)v28 addWidgetGridModelObserver:v18];
    [(NSMutableArray *)v18->_models bs_safeAddObject:v28];
    v29 = [[PRWidgetGridViewController alloc] initWithModel:v28 iconViewProvider:0];
    sidebarWidgetGridViewController = v18->_sidebarWidgetGridViewController;
    v18->_sidebarWidgetGridViewController = v29;

    [(PRWidgetGridViewController *)v18->_sidebarWidgetGridViewController setRequiresFocusForLaunchRequests:1];
    [(PRWidgetGridViewController *)v18->_sidebarWidgetGridViewController setDelegate:v18];
  }

  v31 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v18 action:sel_handlePanGesture_];
  dragGestureRecognizer = v18->_dragGestureRecognizer;
  v18->_dragGestureRecognizer = v31;

  v33 = [(PRWidgetGridViewController *)v18->_widgetGridViewController view];
  [v33 addGestureRecognizer:v18->_dragGestureRecognizer];

  v34 = objc_alloc_init(MEMORY[0x1E698E818]);
  reticleVibrancyView = v18->_reticleVibrancyView;
  v18->_reticleVibrancyView = v34;

  v36 = objc_alloc_init(PRComplicationEmptyStateView);
  complicationRowEmptyStateView = v18->_complicationRowEmptyStateView;
  v18->_complicationRowEmptyStateView = v36;

  v38 = objc_alloc_init(PREditingReticleView);
  complicationRowReticleView = v18->_complicationRowReticleView;
  v18->_complicationRowReticleView = v38;

  [(BSUIVibrancyEffectView *)v18->_reticleVibrancyView setUserInteractionEnabled:0];
  [(BSUIVibrancyEffectView *)v18->_reticleVibrancyView setBlurEnabled:PREditingSupportsLiveBlurs()];
  [(BSUIVibrancyEffectView *)v18->_reticleVibrancyView setAutoresizesSubviews:1];
  [(PREditingReticleView *)v18->_complicationRowReticleView setAutoresizingMask:18];
  [(PREditingReticleView *)v18->_complicationRowReticleView setAutoresizesSubviews:1];
  [(PRComplicationEmptyStateView *)v18->_complicationRowEmptyStateView setAutoresizingMask:18];
  [(FBScene *)v18->_scene addObserver:v18];

  return v18;
}

- (void)dealloc
{
  [(PRComplicationContainerViewController *)self invalidate];
  [(FBScene *)self->_scene removeObserver:self];
  v3.receiver = self;
  v3.super_class = PRComplicationContainerViewController;
  [(PRComplicationContainerViewController *)&v3 dealloc];
}

- (CGRect)topFrame
{
  [PREditorElementLayoutController frameForElements:8 variant:2];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bottomFrame
{
  [PREditorElementLayoutController frameForElements:32 variant:2];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  v5 = [(PRComplicationContainerViewController *)self delegate];
  v6 = [v5 complicationContainerViewControllerAllowsWidgetGridDragInteraction:self];

  if (v6)
  {
    v7 = [v4 view];
    v8 = [v7 superview];
    [v4 translationInView:v8];
    v10 = v9;

    [(PRComplicationContainerViewController *)self topFrame];
    MidY = CGRectGetMidY(v41);
    [(PRComplicationContainerViewController *)self bottomFrame];
    v12 = CGRectGetMidY(v42);
    [v7 center];
    v14 = v10 + v13;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __58__PRComplicationContainerViewController_handlePanGesture___block_invoke;
    v36[3] = &unk_1E7845338;
    v38 = v10 + v13;
    v39 = MidY;
    v15 = v7;
    v37 = v15;
    v40 = v12;
    v16 = MEMORY[0x1AC574C60](v36);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __58__PRComplicationContainerViewController_handlePanGesture___block_invoke_2;
    v30[3] = &unk_1E7845360;
    v33 = v14;
    v34 = MidY;
    v35 = v12 - MidY;
    v17 = v15;
    v31 = v17;
    v32 = self;
    v18 = MEMORY[0x1AC574C60](v30);
    v19 = [v4 state];
    if ((v19 - 3) >= 3)
    {
      if (v19 == 2)
      {
        v21 = MEMORY[0x1E69DD250];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __58__PRComplicationContainerViewController_handlePanGesture___block_invoke_3;
        v27[3] = &unk_1E7845388;
        v28 = v4;
        v22 = v17;
        v29 = v22;
        [v21 _animateUsingSpringWithDampingRatio:0 response:v16 tracking:v27 dampingRatioSmoothing:0.9 responseSmoothing:0.9 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
        [v22 center];
        v24 = (v23 - MidY) / (v12 - MidY);
        v25 = [(PRComplicationContainerViewController *)self delegate];
        [v25 complicationContainerViewController:self isDraggingWidgetGridWithProgress:v24];
      }

      else if (v19 == 1)
      {
        v20 = [(PRComplicationContainerViewController *)self delegate];
        [v20 complicationContainerViewControllerDidBeginWidgetGridDrag:self];
      }
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __58__PRComplicationContainerViewController_handlePanGesture___block_invoke_4;
      v26[3] = &unk_1E78453B0;
      v26[4] = self;
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v18 tracking:v26 dampingRatioSmoothing:0.9 responseSmoothing:0.9 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }
  }
}

uint64_t __58__PRComplicationContainerViewController_handlePanGesture___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 < *(a1 + 48) || v2 > *(a1 + 56))
  {
    BSUIConstrainValueWithRubberBand();
    v3 = *(a1 + 32);
    [v3 center];
  }

  else
  {
    v3 = *(a1 + 32);
    [v3 center];
  }

  return [v3 setCenter:?];
}

uint64_t __58__PRComplicationContainerViewController_handlePanGesture___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56) + *(a1 + 64) * 0.5;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 <= v3)
  {
    [v4 topFrame];
    v6 = 0;
  }

  else
  {
    [v4 bottomFrame];
    v6 = 1;
  }

  result = [v5 setFrame:?];
  *(*(a1 + 40) + 1042) = v6;
  return result;
}

void __58__PRComplicationContainerViewController_handlePanGesture___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) superview];
  [v1 setTranslation:v2 inView:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

void __58__PRComplicationContainerViewController_handlePanGesture___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 complicationContainerViewController:*(a1 + 32) didUpdateWidgetGridPositionToBottom:{objc_msgSend(*(a1 + 32), "widgetsUseBottomLayout")}];
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v9 = a4;
  v5 = [v9 settingsDiff];
  v6 = [v5 pr_editingModalVariantDidChange];

  if (v6)
  {
    v7 = [v9 settings];
    v8 = [v7 pr_editingModalVariant] == 1;

    [(PRComplicationContainerViewController *)self updateComplicationLayoutIfCovered:v8];
  }
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v8 = a4;
  v9 = [a3 clientSettings];
  LODWORD(a3) = [v8 pr_shouldShowEditingReticlesDidChange];

  if (a3)
  {
    -[PRComplicationContainerViewController setShowsEditingReticles:](self, "setShowsEditingReticles:", [v9 pr_shouldShowEditingReticles]);
  }
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  [(PRComplicationContainerViewController *)self bs_removeChildViewController:self->_inlineComplicationContainerViewController];
  [(PRComplicationContainerViewController *)self bs_removeChildViewController:self->_widgetGridViewController];
  [(PRComplicationContainerViewController *)self bs_removeChildViewController:self->_sidebarWidgetGridViewController];
  [(PRInlineComplicationContainerViewController *)self->_inlineComplicationContainerViewController invalidate];
  [(PRWidgetGridViewController *)self->_widgetGridViewController invalidate];
  [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController invalidate];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_models;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_models removeAllObjects];
}

- (void)loadView
{
  v3 = objc_alloc_init(PRSubviewHitTestingView);
  [(PRComplicationContainerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PRComplicationContainerViewController;
  [(PRComplicationContainerViewController *)&v6 viewDidLoad];
  [(PRComplicationContainerViewController *)self bs_addChildViewController:self->_inlineComplicationContainerViewController];
  [(PRComplicationContainerViewController *)self bs_addChildViewController:self->_widgetGridViewController];
  [(PRComplicationContainerViewController *)self bs_addChildViewController:self->_sidebarWidgetGridViewController];
  v3 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  [v3 addSubview:self->_reticleVibrancyView];

  v4 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  [v4 sendSubviewToBack:self->_reticleVibrancyView];

  v5 = [(BSUIVibrancyEffectView *)self->_reticleVibrancyView contentView];
  [v5 addSubview:self->_complicationRowReticleView];

  [(PREditingReticleView *)self->_complicationRowReticleView addSubview:self->_complicationRowEmptyStateView];
}

- (void)viewDidLayoutSubviews
{
  v77.receiver = self;
  v77.super_class = PRComplicationContainerViewController;
  [(PRComplicationContainerViewController *)&v77 viewDidLayoutSubviews];
  v3 = [(PRComplicationContainerViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
  v13 = v12;
  if (self->_widgetsUseBottomLayout)
  {
    v14 = 32;
  }

  else
  {
    v14 = 8;
  }

  if (self->_usesEditingLayout)
  {
    [(PREditorElementLayoutController *)v12 frameForElements:4 variant:2 withBoundingRect:v5, v7, v9, v11];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(PREditorElementLayoutController *)v13 frameForElements:16 variant:2 withBoundingRect:v5, v7, v9, v11];
    v75 = v24;
    v76 = v23;
    v73 = v26;
    v74 = v25;
    [(PREditorElementLayoutController *)v13 frameForElements:v14 variant:2 withBoundingRect:v5, v7, v9, v11];
  }

  else
  {
    [(PREditorElementLayoutController *)v12 frameForElements:4 withBoundingRect:v5, v7, v9, v11];
    v16 = v31;
    v18 = v32;
    v20 = v33;
    v22 = v34;
    [(PREditorElementLayoutController *)v13 frameForElements:16 withBoundingRect:v5, v7, v9, v11];
    v75 = v36;
    v76 = v35;
    v73 = v38;
    v74 = v37;
    [(PREditorElementLayoutController *)v13 frameForElements:v14 withBoundingRect:v5, v7, v9, v11];
  }

  v71 = v28;
  v72 = v27;
  v69 = v30;
  v70 = v29;
  v39 = [(PRInlineComplicationContainerViewController *)self->_inlineComplicationContainerViewController view];
  [v39 setFrame:{v16, v18, v20, v22}];

  v40 = MEMORY[0x1E696AEC0];
  v41 = [(PRComplicationContainerViewController *)self inlineComplicationDescriptor];
  v42 = [v41 widget];
  v43 = [v42 extensionBundleIdentifier];
  v44 = [(PRComplicationContainerViewController *)self inlineComplicationDescriptor];
  v45 = [v44 widget];
  v46 = [v45 kind];
  v47 = [v40 stringWithFormat:@"%@:%@", v43, v46];

  v48 = [(PRInlineComplicationContainerViewController *)self->_inlineComplicationContainerViewController view];
  [v48 setAccessibilityIdentifier:v47];

  v49 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  [v49 setFrame:{v72, v71, v70, v69}];

  v50 = [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController view];
  [v50 setFrame:{v76, v75, v74, v73}];

  [(PREditorElementLayoutController *)v13 frameForElements:v14 variant:3 withBoundingRect:v5, v7, v9, v11];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = [(PRComplicationContainerViewController *)self view];
  v60 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
  [v59 convertRect:v60 toView:{v52, v54, v56, v58}];
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;

  [(BSUIVibrancyEffectView *)self->_reticleVibrancyView setFrame:v62, v64, v66, v68];
  [(PRComplicationContainerViewController *)self _updateEmptyRowVisibility:0];
}

- (void)setWidgetsUseBottomLayout:(BOOL)a3
{
  if (self->_widgetsUseBottomLayout != a3)
  {
    self->_widgetsUseBottomLayout = a3;
    if (a3)
    {
      v5 = 32;
    }

    else
    {
      v5 = 8;
    }

    if (self->_usesEditingLayout)
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [PREditorElementLayoutController frameForElements:v5 variant:v6];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(PRWidgetGridViewController *)self->_widgetGridViewController view];
    [v15 setFrame:{v8, v10, v12, v14}];
  }
}

- (void)updateForComplicationGalleryHeight:(double)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_widgetsCoveredByModal && self->_widgetsUseBottomLayout)
  {
    v8 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
    v9 = [(PRComplicationContainerViewController *)self view];
    [v9 bounds];
    [(PREditorElementLayoutController *)v8 frameForElements:8 variant:2 withBoundingRect:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(PRComplicationContainerViewController *)self view];
    [v16 frame];
    v18 = v17 - a3 + -40.0 - v15;

    v19 = MEMORY[0x1E69DD250];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __87__PRComplicationContainerViewController_updateForComplicationGalleryHeight_completion___block_invoke;
    v22[3] = &unk_1E78453D8;
    v22[4] = self;
    v22[5] = v11;
    *&v22[6] = v18;
    v22[7] = v13;
    *&v22[8] = v15;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __87__PRComplicationContainerViewController_updateForComplicationGalleryHeight_completion___block_invoke_2;
    v20[3] = &unk_1E7844D78;
    v21 = v7;
    [v19 animateWithDuration:v22 animations:v20 completion:0.2];
  }

  else if (v6)
  {
    (*(v6 + 2))(v6);
  }
}

void __87__PRComplicationContainerViewController_updateForComplicationGalleryHeight_completion___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1064) view];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

uint64_t __87__PRComplicationContainerViewController_updateForComplicationGalleryHeight_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateComplicationLayoutIfCovered:(BOOL)a3
{
  if ([(PRComplicationContainerViewController *)self _appearState]== 2 && self->_widgetsUseBottomLayout)
  {
    self->_widgetsCoveredByModal = a3;
    if (!a3)
    {
      v5 = [(PRComplicationContainerViewController *)self view];
      [v5 bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
      [(PREditorElementLayoutController *)v14 frameForElements:32 variant:2 withBoundingRect:v7, v9, v11, v13];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __75__PRComplicationContainerViewController_updateComplicationLayoutIfCovered___block_invoke;
      v19[3] = &unk_1E78453D8;
      v19[4] = self;
      v19[5] = v15;
      v19[6] = v16;
      v19[7] = v17;
      v19[8] = v18;
      [MEMORY[0x1E69DD250] animateWithDuration:v19 animations:0.2];
    }
  }
}

void __75__PRComplicationContainerViewController_updateComplicationLayoutIfCovered___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1064) view];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)setUsesEditingLayout:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.25];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PRComplicationContainerViewController *)self setUsesEditingLayout:v4 animationSettings:v6];
}

- (void)setUsesEditingLayout:(BOOL)a3 animationSettings:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_usesEditingLayout != v4)
  {
    self->_usesEditingLayout = v4;
    v7 = [(PRComplicationContainerViewController *)self viewIfLoaded];
    v8 = v7;
    if (v7)
    {
      v9 = MEMORY[0x1E698E7D0];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__PRComplicationContainerViewController_setUsesEditingLayout_animationSettings___block_invoke;
      v10[3] = &unk_1E7843688;
      v11 = v7;
      [v9 animateWithSettings:v6 actions:v10];
    }
  }
}

uint64_t __80__PRComplicationContainerViewController_setUsesEditingLayout_animationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setFocusedElement:(int64_t)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v6 = [MEMORY[0x1E698E608] settingsWithDuration:0.3];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(PRComplicationContainerViewController *)self setFocusedElement:a3 animationSettings:v6];
}

- (void)setFocusedElement:(int64_t)a3 animationSettings:(id)a4
{
  if (self->_focusedElement != a3)
  {
    self->_focusedElement = a3;
    [(PRComplicationContainerViewController *)self _updateFocusedWithAnimationSettings:a4];
  }
}

- (void)setVibrancyConfiguration:(id)a3
{
  objc_storeStrong(&self->_vibrancyConfiguration, a3);
  v5 = a3;
  [(PRWidgetGridViewController *)self->_widgetGridViewController setVibrancyConfiguration:v5];
  [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController setVibrancyConfiguration:v5];
  [(PRInlineComplicationContainerViewController *)self->_inlineComplicationContainerViewController setVibrancyConfiguration:v5];
  v6 = [PREditingReticleView reticleVibrancyForVibrancyConfiguration:v5];
  [(BSUIVibrancyEffectView *)self->_reticleVibrancyView setConfiguration:v6];
}

- (void)_updateFocusedWithAnimationSettings:(id)a3
{
  inlineComplicationContainerViewController = self->_inlineComplicationContainerViewController;
  v5 = self->_focusedElement == 1;
  v6 = a3;
  [(PRInlineComplicationContainerViewController *)inlineComplicationContainerViewController setFocused:v5 animationSettings:v6];
  [(PRWidgetGridViewController *)self->_sidebarWidgetGridViewController setFocused:self->_focusedElement == 3 animationSettings:v6];
  [(PRWidgetGridViewController *)self->_widgetGridViewController setFocused:self->_focusedElement == 2 animationSettings:v6];

  [(PREditingReticleView *)self->_complicationRowReticleView setActive:self->_focusedElement == 2];

  [(PRComplicationContainerViewController *)self _updateReticleVisibility:1];
}

- (void)_updateReticleVisibility:(BOOL)a3
{
  v3 = a3;
  [(PREditingReticleView *)self->_complicationRowReticleView alpha];
  if ((self->_focusedElement & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v6 = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
    v7 = [v6 complicationDescriptors];
    v8 = [v7 count];

    if (v3)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __66__PRComplicationContainerViewController__updateReticleVisibility___block_invoke;
      v11[3] = &unk_1E7845400;
      v11[4] = self;
      *&v11[5] = v5;
      v12 = v8 != 0;
      [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:0.3];
    }

    else
    {
      [(PREditingReticleView *)self->_complicationRowReticleView setAlpha:v5];
      complicationRowEmptyStateView = self->_complicationRowEmptyStateView;
      if (v8)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v5;
      }

      [(PRComplicationEmptyStateView *)complicationRowEmptyStateView setAlpha:v10];
    }
  }
}

uint64_t __66__PRComplicationContainerViewController__updateReticleVisibility___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1008) setAlpha:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1016);
  v3 = 0.0;
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = *(a1 + 40);
  }

  return [v2 setAlpha:v3];
}

- (void)_updateEmptyRowVisibility:(BOOL)a3
{
  v3 = a3;
  [(PREditingReticleView *)self->_complicationRowReticleView alpha];
  IsZero = BSFloatIsZero();
  v6 = [(PRWidgetGridViewController *)self->_widgetGridViewController model];
  v7 = [v6 complicationDescriptors];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = IsZero;
  }

  if (v9)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [(PRComplicationEmptyStateView *)self->_complicationRowEmptyStateView alpha];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    if (v3)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __67__PRComplicationContainerViewController__updateEmptyRowVisibility___block_invoke;
      v12[3] = &unk_1E78441A8;
      v12[4] = self;
      *&v12[5] = v10;
      [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.3];
    }

    else
    {
      complicationRowEmptyStateView = self->_complicationRowEmptyStateView;

      [(PRComplicationEmptyStateView *)complicationRowEmptyStateView setAlpha:v10];
    }
  }
}

- (void)inlineComplicationContainerViewControllerDidTapAdd:(id)a3
{
  v4 = [(PRComplicationContainerViewController *)self delegate];
  [v4 complicationContainerViewControllerDidTapInlineGallery:self];
}

- (void)inlineComplicationContainerViewController:(id)a3 didEditComplication:(id)a4
{
  v5 = a4;
  v6 = [(PRComplicationContainerViewController *)self delegate];
  [v6 complicationContainerViewController:self didEditComplication:v5];
}

- (void)widgetGridModelDidUpdateContent:(id)a3
{
  sidebarWidgetGridViewController = self->_sidebarWidgetGridViewController;
  v5 = a3;
  v6 = [(PRWidgetGridViewController *)sidebarWidgetGridViewController model];
  v7 = v6 == v5;

  v8 = [(PRComplicationContainerViewController *)self delegate];
  [v8 complicationContainerViewController:self didUpdateModelContentForLocation:v7];

  [(PRComplicationContainerViewController *)self _updateEmptyRowVisibility:1];
}

- (void)widgetGridViewController:(id)a3 didRequestConfigurationForComplicationDescriptor:(id)a4
{
  v5 = a4;
  v6 = [(PRComplicationContainerViewController *)self delegate];
  [v6 complicationContainerViewController:self didEditComplication:v5];
}

- (void)widgetGridViewControllerDidTapBackground:(id)a3
{
  v4 = a3;
  v6 = [(PRComplicationContainerViewController *)self delegate];
  v5 = [(PRComplicationContainerViewController *)self _locationForViewController:v4];

  [v6 complicationContainerViewControllerDidTapAdd:self forLocation:v5];
}

- (void)widgetGridViewController:(id)a3 isAttemptingDragToAddComplication:(id)a4
{
  v5 = a4;
  v6 = [(PRComplicationContainerViewController *)self delegate];
  [v6 complicationContainerViewController:self isAttemptingDragToAddComplication:v5];
}

- (PRComplicationContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
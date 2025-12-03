@interface SBModalWidgetIntroductionViewController
- (CATransform3D)appliedSublayerTransform;
- (CATransform3D)homeScreenPreviewSublayerTransform;
- (CATransform3D)onboardingFallingWidgetPreviewSublayerTransformBottom;
- (CATransform3D)onboardingFallingWidgetPreviewSublayerTransformMiddle;
- (CATransform3D)onboardingFallingWidgetPreviewSublayerTransformTop;
- (CGPoint)onboardingFallingWidgetCenterPoint;
- (CGPoint)onboardingStaticWidgetCenterPoint;
- (CGRect)onboardingFallingWidgetBounds;
- (CGRect)onboardingStaticWidgetBounds;
- (void)addContinueButton;
- (void)appendDismissCompletion:(id)completion;
- (void)cleanUpForViewControllerDismissal;
- (void)dismissPreviewAndButton;
- (void)displayPreviewAndButton;
- (void)loadPreviewSnapshot;
- (void)loadView;
- (void)setAppliedSublayerTransform:(CATransform3D *)transform;
- (void)setHomeScreenPreview:(id)preview;
- (void)setHomeScreenPreviewSublayerTransform:(CATransform3D *)transform;
- (void)setOnboardingFallingWidgetPreviewSublayerTransformBottom:(CATransform3D *)bottom;
- (void)setOnboardingFallingWidgetPreviewSublayerTransformMiddle:(CATransform3D *)middle;
- (void)setOnboardingFallingWidgetPreviewSublayerTransformTop:(CATransform3D *)top;
- (void)setupSublayerDismissPreviewTransformForView:(id)view withTransform:(CATransform3D *)transform;
- (void)setupSublayerDisplayPreviewTransformForView:(id)view withTransform:(CATransform3D *)transform;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
@end

@implementation SBModalWidgetIntroductionViewController

- (void)appendDismissCompletion:(id)completion
{
  completionCopy = completion;
  v10 = completionCopy;
  if (!self->_dismissCompletions)
  {
    array = [MEMORY[0x1E695DF70] array];
    dismissCompletions = self->_dismissCompletions;
    self->_dismissCompletions = array;

    completionCopy = v10;
  }

  if (completionCopy)
  {
    dismissCompletions = [(SBModalWidgetIntroductionViewController *)self dismissCompletions];
    v8 = [v10 copy];
    v9 = _Block_copy(v8);
    [dismissCompletions addObject:v9];

    completionCopy = v10;
  }
}

- (void)setHomeScreenPreview:(id)preview
{
  objc_storeStrong(&self->_homescreenPreview, preview);

  [(SBModalWidgetIntroductionViewController *)self loadPreviewSnapshot];
}

- (void)addContinueButton
{
  v33[4] = *MEMORY[0x1E69E9840];
  if (!self->_continueButton)
  {
    v3 = [MEMORY[0x1E69DC738] buttonWithType:1];
    continueButton = self->_continueButton;
    self->_continueButton = v3;

    [(UIButton *)self->_continueButton _setContinuousCornerRadius:14.0];
    [(UIButton *)self->_continueButton setClipsToBounds:1];
    v5 = self->_continueButton;
    v6 = SBHBundle();
    v7 = [v6 localizedStringForKey:@"MODAL_WIDGET_DISCOVERABILITY_CONTINUE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(UIButton *)v5 setTitle:v7 forState:0];

    titleLabel = [(UIButton *)self->_continueButton titleLabel];
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:18.0 weight:*MEMORY[0x1E69DB980]];
    [titleLabel setFont:v9];

    titleLabel2 = [(UIButton *)self->_continueButton titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    v11 = self->_continueButton;
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    [(UIButton *)v11 setTitleColor:systemBlueColor forState:0];

    [(UIButton *)self->_continueButton setAccessibilityIdentifier:@"SBWidgetIntroductionButton-Continue"];
    view = [(SBModalWidgetIntroductionViewController *)self view];
    [view addSubview:self->_continueButton];

    [(UIButton *)self->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(UIButton *)self->_continueButton topAnchor];
    view2 = [(SBModalWidgetIntroductionViewController *)self view];
    bottomAnchor = [view2 bottomAnchor];
    v17 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:0.0];
    continueButtonTopAnchorConstraint = self->_continueButtonTopAnchorConstraint;
    self->_continueButtonTopAnchorConstraint = v17;

    v31 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIButton *)self->_continueButton centerXAnchor];
    view3 = [(SBModalWidgetIntroductionViewController *)self view];
    centerXAnchor2 = [view3 centerXAnchor];
    v21 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v22 = self->_continueButtonTopAnchorConstraint;
    v33[0] = v21;
    v33[1] = v22;
    widthAnchor = [(UIButton *)self->_continueButton widthAnchor];
    v24 = [widthAnchor constraintEqualToConstant:300.0];
    v33[2] = v24;
    heightAnchor = [(UIButton *)self->_continueButton heightAnchor];
    v26 = [heightAnchor constraintEqualToConstant:54.0];
    v33[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    [v31 activateConstraints:v27];

    [(UIButton *)self->_continueButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:64];
    v28 = [MEMORY[0x1E69DC730] effectWithStyle:7];
    v29 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v28];
    [v29 setUserInteractionEnabled:0];
    [(UIButton *)self->_continueButton insertSubview:v29 atIndex:0];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = SBHPinViewWithinView(self->_continueButton, v29);
  }
}

- (void)loadPreviewSnapshot
{
  if (!self->_homescreenPreviewContainer)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    homescreenPreviewContainer = self->_homescreenPreviewContainer;
    self->_homescreenPreviewContainer = v3;

    v5 = self->_homescreenPreviewContainer;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5 setBackgroundColor:clearColor];

    [(UIView *)self->_homescreenPreviewContainer _setContinuousCornerRadius:40.0];
    [(UIView *)self->_homescreenPreviewContainer setClipsToBounds:1];
    view = [(SBModalWidgetIntroductionViewController *)self view];
    [view addSubview:self->_homescreenPreviewContainer];

    [(UIView *)self->_homescreenPreviewContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_homescreenPreviewContainer;
    view2 = [(SBModalWidgetIntroductionViewController *)self view];
    v10 = SBHPinViewWithinView(v8, view2);
  }

  homescreenPreview = [(SBModalWidgetIntroductionViewController *)self homescreenPreview];

  if (homescreenPreview && !self->_homescreenPreviewSnapshot)
  {
    v12 = objc_alloc(MEMORY[0x1E69DCAE0]);
    homescreenPreview2 = [(SBModalWidgetIntroductionViewController *)self homescreenPreview];
    snapshot = [homescreenPreview2 snapshot];
    v15 = [v12 initWithImage:snapshot];
    homescreenPreviewSnapshot = self->_homescreenPreviewSnapshot;
    self->_homescreenPreviewSnapshot = v15;

    [(UIImageView *)self->_homescreenPreviewSnapshot _setContinuousCornerRadius:40.0];
    [(UIImageView *)self->_homescreenPreviewSnapshot setClipsToBounds:1];
    [(UIView *)self->_homescreenPreviewContainer addSubview:self->_homescreenPreviewSnapshot];
    [(UIImageView *)self->_homescreenPreviewSnapshot setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = SBHPinViewWithinView(self->_homescreenPreviewSnapshot, self->_homescreenPreviewContainer);
  }

  if (!self->_onboardingWidgetPreviewsContainer)
  {
    v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
    onboardingWidgetPreviewsContainer = self->_onboardingWidgetPreviewsContainer;
    self->_onboardingWidgetPreviewsContainer = v18;

    v20 = self->_onboardingWidgetPreviewsContainer;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v20 setBackgroundColor:clearColor2];

    [(UIView *)self->_onboardingWidgetPreviewsContainer _setContinuousCornerRadius:40.0];
    [(UIView *)self->_homescreenPreviewContainer addSubview:self->_onboardingWidgetPreviewsContainer];
    [(UIView *)self->_onboardingWidgetPreviewsContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = SBHPinViewWithinView(self->_onboardingWidgetPreviewsContainer, self->_homescreenPreviewContainer);
    onboardingStaticWidgetPreviews = [(SBModalWidgetIntroductionViewController *)self onboardingStaticWidgetPreviews];
    firstObject = [onboardingStaticWidgetPreviews firstObject];
    onboardingStaticWidgetPreview = self->_onboardingStaticWidgetPreview;
    self->_onboardingStaticWidgetPreview = firstObject;

    [(UIView *)self->_onboardingWidgetPreviewsContainer addSubview:self->_onboardingStaticWidgetPreview];
    onboardingFallingWidgetPreviews = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviews];
    v27 = [onboardingFallingWidgetPreviews count];

    if (v27)
    {
      if (v27 == 1)
      {
        onboardingFallingWidgetPreviews2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviews];
        v32 = onboardingFallingWidgetPreviews2;
        v33 = 0;
        goto LABEL_12;
      }

      if (v27 == 2)
      {
        onboardingFallingWidgetPreviews3 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviews];
        v29 = [onboardingFallingWidgetPreviews3 objectAtIndexedSubscript:0];
        onboardingFallingWidgetPreviewMiddle = self->_onboardingFallingWidgetPreviewMiddle;
        self->_onboardingFallingWidgetPreviewMiddle = v29;

        [(UIView *)self->_onboardingWidgetPreviewsContainer insertSubview:self->_onboardingFallingWidgetPreviewMiddle atIndex:0];
        onboardingFallingWidgetPreviews2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviews];
        v32 = onboardingFallingWidgetPreviews2;
        v33 = 1;
LABEL_12:
        v34 = [onboardingFallingWidgetPreviews2 objectAtIndexedSubscript:v33];
        onboardingFallingWidgetPreviewBottom = self->_onboardingFallingWidgetPreviewBottom;
        self->_onboardingFallingWidgetPreviewBottom = v34;

        [(UIView *)self->_onboardingWidgetPreviewsContainer insertSubview:self->_onboardingFallingWidgetPreviewBottom atIndex:0];
        goto LABEL_18;
      }

      v36 = 0;
      while (1)
      {
        onboardingFallingWidgetPreviews4 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviews];
        v38 = [onboardingFallingWidgetPreviews4 objectAtIndexedSubscript:v36];

        if (v36 > 2)
        {
          break;
        }

        v39 = *off_1E808F1F0[v36];
        objc_storeStrong((&self->super.super.super.isa + v39), v38);
        [(UIView *)self->_onboardingWidgetPreviewsContainer insertSubview:*(&self->super.super.super.isa + v39) atIndex:0];

        if (v27 == ++v36)
        {
          goto LABEL_18;
        }
      }
    }
  }

LABEL_18:
  backgroundDescriptionView = [(SBModalWidgetIntroductionViewController *)self backgroundDescriptionView];

  if (backgroundDescriptionView)
  {
    view3 = [(SBModalWidgetIntroductionViewController *)self view];
    backgroundDescriptionView2 = [(SBModalWidgetIntroductionViewController *)self backgroundDescriptionView];
    [view3 sendSubviewToBack:backgroundDescriptionView2];
  }

  continueButton = [(SBModalWidgetIntroductionViewController *)self continueButton];

  if (continueButton)
  {
    view4 = [(SBModalWidgetIntroductionViewController *)self view];
    continueButton2 = [(SBModalWidgetIntroductionViewController *)self continueButton];
    [view4 bringSubviewToFront:continueButton2];
  }

  view5 = [(SBModalWidgetIntroductionViewController *)self view];
  [view5 layoutIfNeeded];
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = SBModalWidgetIntroductionViewController;
  [(SBModalWidgetIntroductionViewController *)&v8 loadView];
  v3 = [SBModalWidgetIntroductionBackgroundDescriptionView alloc];
  view = [(SBModalWidgetIntroductionViewController *)self view];
  [view bounds];
  v5 = [(SBModalWidgetIntroductionBackgroundDescriptionView *)v3 initWithFrame:self withOwner:?];
  backgroundDescriptionView = self->_backgroundDescriptionView;
  self->_backgroundDescriptionView = v5;

  view2 = [(SBModalWidgetIntroductionViewController *)self view];
  [view2 addSubview:self->_backgroundDescriptionView];

  [(SBModalWidgetIntroductionViewController *)self loadPreviewSnapshot];
  [(SBModalWidgetIntroductionViewController *)self addContinueButton];
}

- (void)viewDidLayoutSubviews
{
  v39.receiver = self;
  v39.super_class = SBModalWidgetIntroductionViewController;
  [(SBModalWidgetIntroductionViewController *)&v39 viewDidLayoutSubviews];
  [(SBModalWidgetIntroductionViewController *)self onboardingStaticWidgetCenterPoint];
  v35 = v4;
  v36 = v3;
  [(SBModalWidgetIntroductionViewController *)self onboardingStaticWidgetBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetCenterPoint];
  v37 = v14;
  v38 = v13;
  [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  onboardingStaticWidgetPreview = [(SBModalWidgetIntroductionViewController *)self onboardingStaticWidgetPreview];

  if (onboardingStaticWidgetPreview)
  {
    onboardingStaticWidgetPreview2 = [(SBModalWidgetIntroductionViewController *)self onboardingStaticWidgetPreview];
    [onboardingStaticWidgetPreview2 setBounds:{v6, v8, v10, v12}];

    onboardingStaticWidgetPreview3 = [(SBModalWidgetIntroductionViewController *)self onboardingStaticWidgetPreview];
    [onboardingStaticWidgetPreview3 setCenter:{v36, v35}];
  }

  onboardingFallingWidgetPreviewTop = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewTop];

  if (onboardingFallingWidgetPreviewTop)
  {
    onboardingFallingWidgetPreviewTop2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewTop];
    [onboardingFallingWidgetPreviewTop2 setBounds:{v16, v18, v20, v22}];

    onboardingFallingWidgetPreviewTop3 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewTop];
    [onboardingFallingWidgetPreviewTop3 setCenter:{v38, v37}];
  }

  onboardingFallingWidgetPreviewMiddle = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewMiddle];

  if (onboardingFallingWidgetPreviewMiddle)
  {
    onboardingFallingWidgetPreviewMiddle2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewMiddle];
    [onboardingFallingWidgetPreviewMiddle2 setBounds:{v16, v18, v20, v22}];

    onboardingFallingWidgetPreviewMiddle3 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewMiddle];
    [onboardingFallingWidgetPreviewMiddle3 setCenter:{v38, v37}];
  }

  onboardingFallingWidgetPreviewBottom = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewBottom];

  if (onboardingFallingWidgetPreviewBottom)
  {
    onboardingFallingWidgetPreviewBottom2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewBottom];
    [onboardingFallingWidgetPreviewBottom2 setBounds:{v16, v18, v20, v22}];

    onboardingFallingWidgetPreviewBottom3 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewBottom];
    [onboardingFallingWidgetPreviewBottom3 setCenter:{v38, v37}];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SBModalWidgetIntroductionViewController;
  [(SBModalWidgetIntroductionViewController *)&v4 viewDidDisappear:disappear];
  [(SBModalWidgetIntroductionViewController *)self cleanUpForViewControllerDismissal];
}

- (void)setupSublayerDisplayPreviewTransformForView:(id)view withTransform:(CATransform3D *)transform
{
  v5 = MEMORY[0x1E6979318];
  viewCopy = view;
  v7 = [v5 animationWithKeyPath:@"sublayerTransform"];
  v8 = MEMORY[0x1E696B098];
  CATransform3DMakeTranslation(&v21, 0.0, 0.0, 0.0);
  v9 = [v8 valueWithCATransform3D:&v21];
  [v7 setFromValue:v9];

  v10 = *&transform->m33;
  *&v21.m31 = *&transform->m31;
  *&v21.m33 = v10;
  v11 = *&transform->m43;
  *&v21.m41 = *&transform->m41;
  *&v21.m43 = v11;
  v12 = *&transform->m13;
  *&v21.m11 = *&transform->m11;
  *&v21.m13 = v12;
  v13 = *&transform->m23;
  *&v21.m21 = *&transform->m21;
  *&v21.m23 = v13;
  v14 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v21];
  [v7 setToValue:v14];

  layer = [viewCopy layer];
  v16 = *&transform->m33;
  *&v21.m31 = *&transform->m31;
  *&v21.m33 = v16;
  v17 = *&transform->m43;
  *&v21.m41 = *&transform->m41;
  *&v21.m43 = v17;
  v18 = *&transform->m13;
  *&v21.m11 = *&transform->m11;
  *&v21.m13 = v18;
  v19 = *&transform->m23;
  *&v21.m21 = *&transform->m21;
  *&v21.m23 = v19;
  [layer setSublayerTransform:&v21];

  layer2 = [viewCopy layer];

  [layer2 addAnimation:v7 forKey:@"sublayerTransform"];
}

- (void)setupSublayerDismissPreviewTransformForView:(id)view withTransform:(CATransform3D *)transform
{
  v5 = MEMORY[0x1E6979318];
  viewCopy = view;
  v7 = [v5 animationWithKeyPath:@"sublayerTransform"];
  v8 = *&transform->m33;
  v28 = *&transform->m31;
  v29 = v8;
  v9 = *&transform->m43;
  v30 = *&transform->m41;
  v31 = v9;
  v10 = *&transform->m13;
  v24 = *&transform->m11;
  v25 = v10;
  v11 = *&transform->m23;
  v26 = *&transform->m21;
  v27 = v11;
  v12 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v24];
  [v7 setFromValue:v12];

  v22 = *(MEMORY[0x1E69792E8] + 80);
  v28 = *(MEMORY[0x1E69792E8] + 64);
  v23 = v28;
  v29 = v22;
  v20 = *(MEMORY[0x1E69792E8] + 112);
  v30 = *(MEMORY[0x1E69792E8] + 96);
  v21 = v30;
  v31 = v20;
  v18 = *(MEMORY[0x1E69792E8] + 16);
  v24 = *MEMORY[0x1E69792E8];
  v19 = v24;
  v25 = v18;
  v16 = *(MEMORY[0x1E69792E8] + 48);
  v26 = *(MEMORY[0x1E69792E8] + 32);
  v17 = v26;
  v27 = v16;
  v13 = [MEMORY[0x1E696B098] valueWithCATransform3D:&v24];
  [v7 setToValue:v13];

  layer = [viewCopy layer];
  v28 = v23;
  v29 = v22;
  v30 = v21;
  v31 = v20;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  [layer setSublayerTransform:&v24];

  layer2 = [viewCopy layer];

  [layer2 addAnimation:v7 forKey:@"sublayerTransform"];
}

- (void)cleanUpForViewControllerDismissal
{
  v18 = *MEMORY[0x1E69E9840];
  dismissCompletions = [(SBModalWidgetIntroductionViewController *)self dismissCompletions];
  if (dismissCompletions)
  {
    v4 = dismissCompletions;
    dismissCompletions2 = [(SBModalWidgetIntroductionViewController *)self dismissCompletions];
    v6 = [dismissCompletions2 count];

    if (v6)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      dismissCompletions3 = [(SBModalWidgetIntroductionViewController *)self dismissCompletions];
      v8 = [dismissCompletions3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(dismissCompletions3);
            }

            (*(*(*(&v13 + 1) + 8 * v11++) + 16))();
          }

          while (v9 != v11);
          v9 = [dismissCompletions3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }
  }

  dismissCompletions4 = [(SBModalWidgetIntroductionViewController *)self dismissCompletions];
  [dismissCompletions4 removeAllObjects];

  [(SBModalWidgetIntroductionViewController *)self setDismissCompletions:0];
}

- (void)displayPreviewAndButton
{
  view = [(SBModalWidgetIntroductionViewController *)self view];
  backgroundDescriptionView = [(SBModalWidgetIntroductionViewController *)self backgroundDescriptionView];
  [view sendSubviewToBack:backgroundDescriptionView];

  view2 = [(SBModalWidgetIntroductionViewController *)self view];
  continueButton = [(SBModalWidgetIntroductionViewController *)self continueButton];
  [view2 bringSubviewToFront:continueButton];

  v39 = *(MEMORY[0x1E69792E8] + 48);
  v41 = *(MEMORY[0x1E69792E8] + 32);
  *&v52.m21 = v41;
  *&v52.m23 = v39;
  v37 = *(MEMORY[0x1E69792E8] + 64);
  *&v52.m31 = v37;
  v7 = *(MEMORY[0x1E69792E8] + 80);
  v33 = *(MEMORY[0x1E69792E8] + 16);
  v35 = *MEMORY[0x1E69792E8];
  *&v52.m11 = *MEMORY[0x1E69792E8];
  *&v52.m13 = v33;
  v52.m33 = v7;
  v52.m34 = -0.00105263158;
  v29 = *(MEMORY[0x1E69792E8] + 112);
  v31 = *(MEMORY[0x1E69792E8] + 96);
  *&v52.m41 = v31;
  *&v52.m43 = v29;
  CATransform3DTranslate(&v53, &v52, 0.0, 300.0, 0.0);
  v58 = *&v53.m21;
  v59 = *&v53.m23;
  v60 = *&v53.m31;
  m33 = v53.m33;
  v56 = *&v53.m11;
  v57 = *&v53.m13;
  v54 = *&v53.m41;
  v55 = *&v53.m43;
  v52 = v53;
  CATransform3DRotate(&v53, &v52, 0.698131701, 1.0, 0.0, 0.0);
  v58 = *&v53.m21;
  v59 = *&v53.m23;
  v60 = *&v53.m31;
  m33 = v53.m33;
  v56 = *&v53.m11;
  v57 = *&v53.m13;
  m34 = v53.m34;
  v54 = *&v53.m41;
  v55 = *&v53.m43;
  v9 = *&v53.m23;
  *&self->_homeScreenPreviewSublayerTransform.m21 = *&v53.m21;
  *&self->_homeScreenPreviewSublayerTransform.m23 = v9;
  *&self->_homeScreenPreviewSublayerTransform.m31 = v60;
  self->_homeScreenPreviewSublayerTransform.m33 = m33;
  v10 = v57;
  *&self->_homeScreenPreviewSublayerTransform.m11 = v56;
  *&self->_homeScreenPreviewSublayerTransform.m13 = v10;
  self->_homeScreenPreviewSublayerTransform.m34 = m34;
  v11 = v55;
  *&self->_homeScreenPreviewSublayerTransform.m41 = v54;
  *&self->_homeScreenPreviewSublayerTransform.m43 = v11;
  onboardingFallingWidgetPreviewTop = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewTop];

  if (onboardingFallingWidgetPreviewTop)
  {
    *&v52.m21 = v41;
    *&v52.m23 = v39;
    *&v52.m31 = v37;
    *&v52.m11 = v35;
    *&v52.m13 = v33;
    v52.m33 = v7;
    v52.m34 = -0.00125;
    *&v52.m41 = v31;
    *&v52.m43 = v29;
    CATransform3DTranslate(&v53, &v52, 10.0, -200.0, 0.0);
    v52 = v53;
    CATransform3DRotate(&v53, &v52, 0.523598776, -0.800000012, -0.800000012, 0.800000012);
    v52 = v53;
    CATransform3DScale(&v53, &v52, 1.14999998, 1.14999998, 1.0);
    v48 = *&v53.m21;
    v49 = *&v53.m23;
    v50 = *&v53.m31;
    v51 = v53.m33;
    v46 = *&v53.m11;
    v47 = *&v53.m13;
    v13 = v53.m34;
    v44 = *&v53.m41;
    v45 = *&v53.m43;
    v14 = *&v53.m23;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m21 = *&v53.m21;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m23 = v14;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m31 = v50;
    self->_onboardingFallingWidgetPreviewSublayerTransformTop.m33 = v51;
    v15 = v47;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m11 = v46;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m13 = v15;
    self->_onboardingFallingWidgetPreviewSublayerTransformTop.m34 = v13;
    v16 = v45;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m41 = v44;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m43 = v16;
  }

  v17 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewMiddle:v29];

  if (v17)
  {
    *&v52.m21 = v42;
    *&v52.m23 = v40;
    *&v52.m31 = v38;
    *&v52.m11 = v36;
    *&v52.m13 = v34;
    v52.m33 = v7;
    v52.m34 = -0.00125;
    *&v52.m41 = v32;
    *&v52.m43 = v30;
    CATransform3DTranslate(&v53, &v52, -10.0, -80.0, 0.0);
    v52 = v53;
    CATransform3DRotate(&v53, &v52, 0.523598776, -1.0, -0.800000012, 0.0);
    v52 = v53;
    CATransform3DScale(&v53, &v52, 1.10000002, 1.10000002, 1.0);
    v48 = *&v53.m21;
    v49 = *&v53.m23;
    v50 = *&v53.m31;
    v51 = v53.m33;
    v46 = *&v53.m11;
    v47 = *&v53.m13;
    v18 = v53.m34;
    v44 = *&v53.m41;
    v45 = *&v53.m43;
    v19 = *&v53.m23;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m21 = *&v53.m21;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m23 = v19;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m31 = v50;
    self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m33 = v51;
    v20 = v47;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m11 = v46;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m13 = v20;
    self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m34 = v18;
    v21 = v45;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m41 = v44;
    *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m43 = v21;
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:1.0];
  v22 = MEMORY[0x1E6979518];
  v23 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v22 setAnimationTimingFunction:v23];

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __66__SBModalWidgetIntroductionViewController_displayPreviewAndButton__block_invoke;
  v43[3] = &unk_1E8088C90;
  v43[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:1 delay:v43 options:0 animations:1.0 completion:0.0];
  homescreenPreviewContainer = [(SBModalWidgetIntroductionViewController *)self homescreenPreviewContainer];
  [(SBModalWidgetIntroductionViewController *)self homeScreenPreviewSublayerTransform];
  [(SBModalWidgetIntroductionViewController *)self setupSublayerDisplayPreviewTransformForView:homescreenPreviewContainer withTransform:&v53];

  onboardingFallingWidgetPreviewTop2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewTop];

  if (onboardingFallingWidgetPreviewTop2)
  {
    onboardingFallingWidgetPreviewTop3 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewTop];
    [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewSublayerTransformTop];
    [(SBModalWidgetIntroductionViewController *)self setupSublayerDisplayPreviewTransformForView:onboardingFallingWidgetPreviewTop3 withTransform:&v53];
  }

  onboardingFallingWidgetPreviewMiddle = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewMiddle];

  if (onboardingFallingWidgetPreviewMiddle)
  {
    onboardingFallingWidgetPreviewMiddle2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewMiddle];
    [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewSublayerTransformMiddle];
    [(SBModalWidgetIntroductionViewController *)self setupSublayerDisplayPreviewTransformForView:onboardingFallingWidgetPreviewMiddle2 withTransform:&v53];
  }

  [MEMORY[0x1E6979518] commit];
}

void __66__SBModalWidgetIntroductionViewController_displayPreviewAndButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) continueButtonTopAnchorConstraint];
  [v2 setConstant:-150.0];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (void)dismissPreviewAndButton
{
  view = [(SBModalWidgetIntroductionViewController *)self view];
  backgroundDescriptionView = [(SBModalWidgetIntroductionViewController *)self backgroundDescriptionView];
  [view sendSubviewToBack:backgroundDescriptionView];

  view2 = [(SBModalWidgetIntroductionViewController *)self view];
  continueButton = [(SBModalWidgetIntroductionViewController *)self continueButton];
  [view2 bringSubviewToFront:continueButton];

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setAnimationDuration:1.0];
  v7 = MEMORY[0x1E6979518];
  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  [v7 setAnimationTimingFunction:v8];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__SBModalWidgetIntroductionViewController_dismissPreviewAndButton__block_invoke;
  v16[3] = &unk_1E8088C90;
  v16[4] = self;
  [MEMORY[0x1E6979518] setCompletionBlock:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__SBModalWidgetIntroductionViewController_dismissPreviewAndButton__block_invoke_2;
  v15[3] = &unk_1E8088C90;
  v15[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:1 delay:v15 options:0 animations:1.0 completion:0.0];
  onboardingFallingWidgetPreviewMiddle = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewMiddle];

  if (onboardingFallingWidgetPreviewMiddle)
  {
    onboardingFallingWidgetPreviewMiddle2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewMiddle];
    [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewSublayerTransformMiddle];
    [(SBModalWidgetIntroductionViewController *)self setupSublayerDismissPreviewTransformForView:onboardingFallingWidgetPreviewMiddle2 withTransform:v14];
  }

  onboardingFallingWidgetPreviewTop = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewTop];

  if (onboardingFallingWidgetPreviewTop)
  {
    onboardingFallingWidgetPreviewTop2 = [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewTop];
    [(SBModalWidgetIntroductionViewController *)self onboardingFallingWidgetPreviewSublayerTransformTop];
    [(SBModalWidgetIntroductionViewController *)self setupSublayerDismissPreviewTransformForView:onboardingFallingWidgetPreviewTop2 withTransform:v14];
  }

  homescreenPreviewContainer = [(SBModalWidgetIntroductionViewController *)self homescreenPreviewContainer];
  [(SBModalWidgetIntroductionViewController *)self homeScreenPreviewSublayerTransform];
  [(SBModalWidgetIntroductionViewController *)self setupSublayerDismissPreviewTransformForView:homescreenPreviewContainer withTransform:v14];

  [MEMORY[0x1E6979518] commit];
}

uint64_t __66__SBModalWidgetIntroductionViewController_dismissPreviewAndButton__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = *(a1 + 32);

  return [v3 cleanUpForViewControllerDismissal];
}

void __66__SBModalWidgetIntroductionViewController_dismissPreviewAndButton__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) continueButtonTopAnchorConstraint];
  [v2 setConstant:150.0];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

- (CGPoint)onboardingFallingWidgetCenterPoint
{
  x = self->_onboardingFallingWidgetCenterPoint.x;
  y = self->_onboardingFallingWidgetCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)onboardingFallingWidgetBounds
{
  x = self->_onboardingFallingWidgetBounds.origin.x;
  y = self->_onboardingFallingWidgetBounds.origin.y;
  width = self->_onboardingFallingWidgetBounds.size.width;
  height = self->_onboardingFallingWidgetBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)onboardingStaticWidgetCenterPoint
{
  x = self->_onboardingStaticWidgetCenterPoint.x;
  y = self->_onboardingStaticWidgetCenterPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)onboardingStaticWidgetBounds
{
  x = self->_onboardingStaticWidgetBounds.origin.x;
  y = self->_onboardingStaticWidgetBounds.origin.y;
  width = self->_onboardingStaticWidgetBounds.size.width;
  height = self->_onboardingStaticWidgetBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CATransform3D)homeScreenPreviewSublayerTransform
{
  v3 = *&self[10].m11;
  *&retstr->m31 = *&self[9].m43;
  *&retstr->m33 = v3;
  v4 = *&self[10].m21;
  *&retstr->m41 = *&self[10].m13;
  *&retstr->m43 = v4;
  v5 = *&self[9].m31;
  *&retstr->m11 = *&self[9].m23;
  *&retstr->m13 = v5;
  v6 = *&self[9].m41;
  *&retstr->m21 = *&self[9].m33;
  *&retstr->m23 = v6;
  return self;
}

- (void)setHomeScreenPreviewSublayerTransform:(CATransform3D *)transform
{
  v3 = *&transform->m23;
  v5 = *&transform->m11;
  v4 = *&transform->m13;
  *&self->_homeScreenPreviewSublayerTransform.m21 = *&transform->m21;
  *&self->_homeScreenPreviewSublayerTransform.m23 = v3;
  *&self->_homeScreenPreviewSublayerTransform.m11 = v5;
  *&self->_homeScreenPreviewSublayerTransform.m13 = v4;
  v6 = *&transform->m43;
  v8 = *&transform->m31;
  v7 = *&transform->m33;
  *&self->_homeScreenPreviewSublayerTransform.m41 = *&transform->m41;
  *&self->_homeScreenPreviewSublayerTransform.m43 = v6;
  *&self->_homeScreenPreviewSublayerTransform.m31 = v8;
  *&self->_homeScreenPreviewSublayerTransform.m33 = v7;
}

- (CATransform3D)onboardingFallingWidgetPreviewSublayerTransformTop
{
  v3 = *&self[11].m11;
  *&retstr->m31 = *&self[10].m43;
  *&retstr->m33 = v3;
  v4 = *&self[11].m21;
  *&retstr->m41 = *&self[11].m13;
  *&retstr->m43 = v4;
  v5 = *&self[10].m31;
  *&retstr->m11 = *&self[10].m23;
  *&retstr->m13 = v5;
  v6 = *&self[10].m41;
  *&retstr->m21 = *&self[10].m33;
  *&retstr->m23 = v6;
  return self;
}

- (void)setOnboardingFallingWidgetPreviewSublayerTransformTop:(CATransform3D *)top
{
  v3 = *&top->m23;
  v5 = *&top->m11;
  v4 = *&top->m13;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m21 = *&top->m21;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m23 = v3;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m11 = v5;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m13 = v4;
  v6 = *&top->m43;
  v8 = *&top->m31;
  v7 = *&top->m33;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m41 = *&top->m41;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m43 = v6;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m31 = v8;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformTop.m33 = v7;
}

- (CATransform3D)onboardingFallingWidgetPreviewSublayerTransformMiddle
{
  v3 = *&self[12].m11;
  *&retstr->m31 = *&self[11].m43;
  *&retstr->m33 = v3;
  v4 = *&self[12].m21;
  *&retstr->m41 = *&self[12].m13;
  *&retstr->m43 = v4;
  v5 = *&self[11].m31;
  *&retstr->m11 = *&self[11].m23;
  *&retstr->m13 = v5;
  v6 = *&self[11].m41;
  *&retstr->m21 = *&self[11].m33;
  *&retstr->m23 = v6;
  return self;
}

- (void)setOnboardingFallingWidgetPreviewSublayerTransformMiddle:(CATransform3D *)middle
{
  v3 = *&middle->m23;
  v5 = *&middle->m11;
  v4 = *&middle->m13;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m21 = *&middle->m21;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m23 = v3;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m11 = v5;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m13 = v4;
  v6 = *&middle->m43;
  v8 = *&middle->m31;
  v7 = *&middle->m33;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m41 = *&middle->m41;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m43 = v6;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m31 = v8;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformMiddle.m33 = v7;
}

- (CATransform3D)onboardingFallingWidgetPreviewSublayerTransformBottom
{
  v3 = *&self[13].m11;
  *&retstr->m31 = *&self[12].m43;
  *&retstr->m33 = v3;
  v4 = *&self[13].m21;
  *&retstr->m41 = *&self[13].m13;
  *&retstr->m43 = v4;
  v5 = *&self[12].m31;
  *&retstr->m11 = *&self[12].m23;
  *&retstr->m13 = v5;
  v6 = *&self[12].m41;
  *&retstr->m21 = *&self[12].m33;
  *&retstr->m23 = v6;
  return self;
}

- (void)setOnboardingFallingWidgetPreviewSublayerTransformBottom:(CATransform3D *)bottom
{
  v3 = *&bottom->m23;
  v5 = *&bottom->m11;
  v4 = *&bottom->m13;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformBottom.m21 = *&bottom->m21;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformBottom.m23 = v3;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformBottom.m11 = v5;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformBottom.m13 = v4;
  v6 = *&bottom->m43;
  v8 = *&bottom->m31;
  v7 = *&bottom->m33;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformBottom.m41 = *&bottom->m41;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformBottom.m43 = v6;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformBottom.m31 = v8;
  *&self->_onboardingFallingWidgetPreviewSublayerTransformBottom.m33 = v7;
}

- (CATransform3D)appliedSublayerTransform
{
  v3 = *&self[14].m11;
  *&retstr->m31 = *&self[13].m43;
  *&retstr->m33 = v3;
  v4 = *&self[14].m21;
  *&retstr->m41 = *&self[14].m13;
  *&retstr->m43 = v4;
  v5 = *&self[13].m31;
  *&retstr->m11 = *&self[13].m23;
  *&retstr->m13 = v5;
  v6 = *&self[13].m41;
  *&retstr->m21 = *&self[13].m33;
  *&retstr->m23 = v6;
  return self;
}

- (void)setAppliedSublayerTransform:(CATransform3D *)transform
{
  v3 = *&transform->m23;
  v5 = *&transform->m11;
  v4 = *&transform->m13;
  *&self->_appliedSublayerTransform.m21 = *&transform->m21;
  *&self->_appliedSublayerTransform.m23 = v3;
  *&self->_appliedSublayerTransform.m11 = v5;
  *&self->_appliedSublayerTransform.m13 = v4;
  v6 = *&transform->m43;
  v8 = *&transform->m31;
  v7 = *&transform->m33;
  *&self->_appliedSublayerTransform.m41 = *&transform->m41;
  *&self->_appliedSublayerTransform.m43 = v6;
  *&self->_appliedSublayerTransform.m31 = v8;
  *&self->_appliedSublayerTransform.m33 = v7;
}

@end
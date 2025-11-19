@interface PRNameLabelViewController
- (CGRect)titleRectForLayout:(unint64_t)a3;
- (PRIncomingCallTextViewAdapter)nameTextViewAdapter;
- (double)idealFontSize;
- (id)beginInteractiveTransitionToVibrancyConfiguration:(id)a3;
- (id)effectiveFont;
- (id)maximumTextWidth;
- (void)loadView;
- (void)pr_setBackgroundType:(int64_t)a3;
- (void)pr_setStylingFromTitleStyleConfiguration:(id)a3 withExtensionBundleURL:(id)a4 forRole:(id)a5;
- (void)pr_updateStyleBoundingRects;
- (void)removeIncomingCallTextViewAdapterFromParent:(id)a3;
- (void)setDisplayString:(id)a3;
- (void)transition:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)transition:(id)a3 didUpdate:(double)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation PRNameLabelViewController

- (PRIncomingCallTextViewAdapter)nameTextViewAdapter
{
  nameTextViewAdapter = self->_nameTextViewAdapter;
  if (!nameTextViewAdapter)
  {
    v4 = [PRIncomingCallTextViewAdapter alloc];
    v5 = [(PRNameLabelViewController *)self displayString];
    v6 = [(PRIncomingCallTextViewAdapter *)v4 initWithName:v5];
    v7 = self->_nameTextViewAdapter;
    self->_nameTextViewAdapter = v6;

    v8 = self->_nameTextViewAdapter;
    v9 = [(PRNameLabelViewController *)self baseFont];
    [(PRIncomingCallTextViewAdapter *)v8 setEmphasizedNameFont:v9];

    v10 = self->_nameTextViewAdapter;
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    [(PRIncomingCallTextViewAdapter *)v10 setTextColor:v11];

    [(PRIncomingCallTextViewAdapter *)self->_nameTextViewAdapter setMarqueeRunning:0];
    nameTextViewAdapter = self->_nameTextViewAdapter;
  }

  return nameTextViewAdapter;
}

- (double)idealFontSize
{
  v3 = [(PRNameLabelViewController *)self displayString];
  v4 = [(PRNameLabelViewController *)self nameTextViewAdapter];
  +[PRIncomingCallFontsProvider idealEmphasizedFontSizeForName:usingLayout:](PRIncomingCallFontsProvider, "idealEmphasizedFontSizeForName:usingLayout:", v3, [v4 layout]);
  v6 = v5;

  return v6;
}

- (id)effectiveFont
{
  v3 = [(PRNameLabelViewController *)self baseFont];
  [(PRNameLabelViewController *)self idealFontSize];
  CopyWithAttributes = CTFontCreateCopyWithAttributes(v3, v4, 0, 0);

  return CopyWithAttributes;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v19 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  [(PRNameLabelViewController *)self setView:?];
  v8 = [objc_alloc(MEMORY[0x1E698E818]) initWithFrame:{v4, v5, v6, v7}];
  vibrancyView = self->_vibrancyView;
  self->_vibrancyView = v8;

  v10 = [(PRNameLabelViewController *)self nameTextViewAdapter];
  v11 = [v10 viewController];
  v12 = [(BSUIVibrancyEffectView *)self->_vibrancyView contentView];
  [(PRNameLabelViewController *)self bs_addChildViewController:v11 withSuperview:v12];

  v13 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
  layoutController = self->_layoutController;
  self->_layoutController = v13;

  v15 = [(PRNameLabelViewController *)self view];
  [v15 addSubview:self->_vibrancyView];

  v16 = [v10 emojiViewController];

  if (v16)
  {
    v17 = [v10 emojiViewController];
    v18 = [(PRNameLabelViewController *)self view];
    [(PRNameLabelViewController *)self bs_addChildViewController:v17 withSuperview:v18];
  }
}

- (void)viewDidLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = PRNameLabelViewController;
  [(PRNameLabelViewController *)&v24 viewDidLayoutSubviews];
  vibrancyView = self->_vibrancyView;
  v4 = [(PRNameLabelViewController *)self view];
  [v4 bounds];
  [(BSUIVibrancyEffectView *)vibrancyView setFrame:?];

  v5 = [(PRNameLabelViewController *)self nameTextViewAdapter];
  -[PRNameLabelViewController titleRectForLayout:](self, "titleRectForLayout:", [v5 layout]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 frame];
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  if (!CGRectEqualToRect(v25, v26))
  {
    [v5 setFrame:{v7, v9, v11, v13}];
  }

  [v5 tightFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v5 frame];
  [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setContentBoundingRect:?];
  [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setStyleBoundingRect:v15, v17, v19, v21];
  nameTextViewAdapter = self->_nameTextViewAdapter;
  v23 = [(PRNameLabelViewController *)self maximumTextWidth];
  [(PRIncomingCallTextViewAdapter *)nameTextViewAdapter setMaximumTextWidth:v23];
}

- (id)maximumTextWidth
{
  v2 = [(PRNameLabelViewController *)self view];
  [v2 bounds];
  v4 = v3;

  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  +[PRIncomingCallMetricsProvider horizontalTextEdgePadding];
  v7 = v4 + v6 * -2.0;
  *&v7 = v7;
  v8 = [v5 initWithFloat:v7];

  return v8;
}

- (void)removeIncomingCallTextViewAdapterFromParent:(id)a3
{
  v3 = a3;
  v4 = [v3 viewController];
  [v4 willMoveToParentViewController:0];

  v5 = [v3 viewController];
  v6 = [v5 view];
  [v6 removeFromSuperview];

  v7 = [v3 viewController];

  [v7 removeFromParentViewController];
}

- (CGRect)titleRectForLayout:(unint64_t)a3
{
  v5 = [(PRNameLabelViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(PRNameLabelViewController *)self layoutController];
  v15 = [v14 frameAttributesForElements:1 variant:2 titleLayout:a3 withBoundingRect:{v7, v9, v11, v13}];

  [v15 rect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)setDisplayString:(id)a3
{
  v5 = a3;
  if (self->_displayString != v5)
  {
    v15 = v5;
    objc_storeStrong(&self->_displayString, a3);
    v6 = [(PRNameLabelViewController *)self nameTextViewAdapter];
    [v6 setDisplayNameText:v15];
    v7 = [(PRNameLabelViewController *)self effectiveFont];
    [v6 setTextFontUsingDefaultFontSizes:v7];

    v8 = [v6 emojiViewController];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 emojiViewController];
      v11 = [v10 view];
      v12 = [v11 superview];

      if (!v12)
      {
        v13 = [v6 emojiViewController];
        v14 = [(PRNameLabelViewController *)self view];
        [(PRNameLabelViewController *)self bs_addChildViewController:v13 withSuperview:v14];
      }
    }

    v5 = v15;
  }
}

- (void)pr_setBackgroundType:(int64_t)a3
{
  v6 = [(PRNameLabelViewController *)self vibrancyView];
  v4 = [v6 configuration];
  if ([v4 backgroundType] != a3)
  {
    v5 = [v4 copyWithWithBackgroundType:a3];
    [v6 setConfiguration:v5];
  }
}

- (void)pr_setStylingFromTitleStyleConfiguration:(id)a3 withExtensionBundleURL:(id)a4 forRole:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  [(PRNameLabelViewController *)self loadViewIfNeeded];
  v12 = [v9 effectiveTimeFontWithExtensionBundleURL:v11 forRole:v10];

  baseFont = self->_baseFont;
  self->_baseFont = v12;

  v14 = [(PRNameLabelViewController *)self nameTextViewAdapter];
  [v14 setPreferredAlignment:{objc_msgSend(v9, "preferredTitleAlignment")}];
  [v14 setPreferredLayout:{objc_msgSend(v9, "preferredTitleLayout")}];
  v15 = [(PRNameLabelViewController *)self effectiveFont];
  v46 = v10;
  if (v15)
  {
    [v14 setTextFontUsingDefaultFontSizes:v15];
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No effective font found for role %@, _baseFont %@, titleStyleConfiguration %@", v10, self->_baseFont, v9];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [PRNameLabelViewController pr_setStylingFromTitleStyleConfiguration:a2 withExtensionBundleURL:self forRole:v16];
    }
  }

  v17 = [(PRNameLabelViewController *)self view];
  [v17 setNeedsLayout];

  [v14 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [v14 tightFrame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [v14 textColor];
  v35 = [PRPosterAppearance alloc];
  v36 = [(PRNameLabelViewController *)self effectiveFont];
  v37 = [[PRPosterColor alloc] initWithColor:v34];
  v38 = -[PRPosterAppearance initWithFont:labelColor:preferredTitleAlignment:preferredTitleLayout:](v35, "initWithFont:labelColor:preferredTitleAlignment:preferredTitleLayout:", v36, v37, [v14 alignment], objc_msgSend(v14, "layout"));

  vibrantStyleRenderer = self->_vibrantStyleRenderer;
  if (vibrantStyleRenderer)
  {
    [(PRPosterContentStyleVibrantContentRenderer *)vibrantStyleRenderer setContentBoundingRect:v19, v21, v23, v25];
    [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setStyleBoundingRect:v27, v29, v31, v33];
    [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setCurrentAppearance:v38];
  }

  else
  {
    v40 = [(PRNameLabelViewController *)self vibrancyView];
    v41 = [PRPosterContentStyleVibrantContentRenderer alloc];
    v42 = [v40 contentView];
    v43 = [(PRPosterContentStyleVibrantContentRenderer *)v41 initWithVibrancyView:v40 contentView:v42 contentBoundingRect:v38 styleBoundingRect:v19 initialAppearance:v21, v23, v25, v27, v29, v31, v33];
    v44 = self->_vibrantStyleRenderer;
    self->_vibrantStyleRenderer = v43;
  }

  v45 = [v9 effectiveTitleContentStyleForRole:v46];
  [v45 applyStyleWithRenderer:self->_vibrantStyleRenderer];
}

- (void)pr_updateStyleBoundingRects
{
  v19 = [(PRNameLabelViewController *)self nameTextViewAdapter];
  [v19 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v19 tightFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setContentBoundingRect:v4, v6, v8, v10];
  [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setStyleBoundingRect:v12, v14, v16, v18];
}

- (id)beginInteractiveTransitionToVibrancyConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PRNameLabelViewController *)self vibrancyView];
  v6 = [v5 configuration];

  v7 = [[PRNameLabelViewControllerTransition alloc] initWithViewController:self fromVibrancyConfiguration:v6 toVibrancyConfiguration:v4];
  objc_storeStrong(&self->_currentTransition, v7);

  return v7;
}

- (void)transition:(id)a3 didUpdate:(double)a4
{
  v12 = a3;
  v6 = [(PRNameLabelViewController *)self currentTransition];

  v7 = v12;
  if (v6 == v12)
  {
    v8 = [v12 fromConfiguration];
    v9 = [v12 toConfiguration];
    v10 = [v8 copyWithBlendAmount:v9 blendConfiguration:a4];

    v11 = [(PRNameLabelViewController *)self vibrancyView];
    [v11 setConfiguration:v10];

    v7 = v12;
  }
}

- (void)transition:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v11 = a3;
  v6 = [(PRNameLabelViewController *)self currentTransition];

  v7 = v11;
  if (v6 == v11)
  {
    if (a4)
    {
      [v11 toConfiguration];
    }

    else
    {
      [v11 fromConfiguration];
    }
    v8 = ;
    v9 = [(PRNameLabelViewController *)self vibrancyView];
    [v9 setConfiguration:v8];

    currentTransition = self->_currentTransition;
    self->_currentTransition = 0;

    v7 = v11;
  }
}

- (void)pr_setStylingFromTitleStyleConfiguration:(const char *)a1 withExtensionBundleURL:(uint64_t)a2 forRole:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PRNameLabelViewController.m";
  v16 = 1024;
  v17 = 178;
  v18 = 2114;
  v19 = a3;
  _os_log_fault_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end
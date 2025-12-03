@interface PRNameLabelViewController
- (CGRect)titleRectForLayout:(unint64_t)layout;
- (PRIncomingCallTextViewAdapter)nameTextViewAdapter;
- (double)idealFontSize;
- (id)beginInteractiveTransitionToVibrancyConfiguration:(id)configuration;
- (id)effectiveFont;
- (id)maximumTextWidth;
- (void)loadView;
- (void)pr_setBackgroundType:(int64_t)type;
- (void)pr_setStylingFromTitleStyleConfiguration:(id)configuration withExtensionBundleURL:(id)l forRole:(id)role;
- (void)pr_updateStyleBoundingRects;
- (void)removeIncomingCallTextViewAdapterFromParent:(id)parent;
- (void)setDisplayString:(id)string;
- (void)transition:(id)transition didFinishSuccessfully:(BOOL)successfully;
- (void)transition:(id)transition didUpdate:(double)update;
- (void)viewDidLayoutSubviews;
@end

@implementation PRNameLabelViewController

- (PRIncomingCallTextViewAdapter)nameTextViewAdapter
{
  nameTextViewAdapter = self->_nameTextViewAdapter;
  if (!nameTextViewAdapter)
  {
    v4 = [PRIncomingCallTextViewAdapter alloc];
    displayString = [(PRNameLabelViewController *)self displayString];
    v6 = [(PRIncomingCallTextViewAdapter *)v4 initWithName:displayString];
    v7 = self->_nameTextViewAdapter;
    self->_nameTextViewAdapter = v6;

    v8 = self->_nameTextViewAdapter;
    baseFont = [(PRNameLabelViewController *)self baseFont];
    [(PRIncomingCallTextViewAdapter *)v8 setEmphasizedNameFont:baseFont];

    v10 = self->_nameTextViewAdapter;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(PRIncomingCallTextViewAdapter *)v10 setTextColor:whiteColor];

    [(PRIncomingCallTextViewAdapter *)self->_nameTextViewAdapter setMarqueeRunning:0];
    nameTextViewAdapter = self->_nameTextViewAdapter;
  }

  return nameTextViewAdapter;
}

- (double)idealFontSize
{
  displayString = [(PRNameLabelViewController *)self displayString];
  nameTextViewAdapter = [(PRNameLabelViewController *)self nameTextViewAdapter];
  +[PRIncomingCallFontsProvider idealEmphasizedFontSizeForName:usingLayout:](PRIncomingCallFontsProvider, "idealEmphasizedFontSizeForName:usingLayout:", displayString, [nameTextViewAdapter layout]);
  v6 = v5;

  return v6;
}

- (id)effectiveFont
{
  baseFont = [(PRNameLabelViewController *)self baseFont];
  [(PRNameLabelViewController *)self idealFontSize];
  CopyWithAttributes = CTFontCreateCopyWithAttributes(baseFont, v4, 0, 0);

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

  nameTextViewAdapter = [(PRNameLabelViewController *)self nameTextViewAdapter];
  viewController = [nameTextViewAdapter viewController];
  contentView = [(BSUIVibrancyEffectView *)self->_vibrancyView contentView];
  [(PRNameLabelViewController *)self bs_addChildViewController:viewController withSuperview:contentView];

  v13 = [[PREditorElementLayoutController alloc] initWithTraitEnvironment:self];
  layoutController = self->_layoutController;
  self->_layoutController = v13;

  view = [(PRNameLabelViewController *)self view];
  [view addSubview:self->_vibrancyView];

  emojiViewController = [nameTextViewAdapter emojiViewController];

  if (emojiViewController)
  {
    emojiViewController2 = [nameTextViewAdapter emojiViewController];
    view2 = [(PRNameLabelViewController *)self view];
    [(PRNameLabelViewController *)self bs_addChildViewController:emojiViewController2 withSuperview:view2];
  }
}

- (void)viewDidLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = PRNameLabelViewController;
  [(PRNameLabelViewController *)&v24 viewDidLayoutSubviews];
  vibrancyView = self->_vibrancyView;
  view = [(PRNameLabelViewController *)self view];
  [view bounds];
  [(BSUIVibrancyEffectView *)vibrancyView setFrame:?];

  nameTextViewAdapter = [(PRNameLabelViewController *)self nameTextViewAdapter];
  -[PRNameLabelViewController titleRectForLayout:](self, "titleRectForLayout:", [nameTextViewAdapter layout]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [nameTextViewAdapter frame];
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  if (!CGRectEqualToRect(v25, v26))
  {
    [nameTextViewAdapter setFrame:{v7, v9, v11, v13}];
  }

  [nameTextViewAdapter tightFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [nameTextViewAdapter frame];
  [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setContentBoundingRect:?];
  [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setStyleBoundingRect:v15, v17, v19, v21];
  nameTextViewAdapter = self->_nameTextViewAdapter;
  maximumTextWidth = [(PRNameLabelViewController *)self maximumTextWidth];
  [(PRIncomingCallTextViewAdapter *)nameTextViewAdapter setMaximumTextWidth:maximumTextWidth];
}

- (id)maximumTextWidth
{
  view = [(PRNameLabelViewController *)self view];
  [view bounds];
  v4 = v3;

  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  +[PRIncomingCallMetricsProvider horizontalTextEdgePadding];
  v7 = v4 + v6 * -2.0;
  *&v7 = v7;
  v8 = [v5 initWithFloat:v7];

  return v8;
}

- (void)removeIncomingCallTextViewAdapterFromParent:(id)parent
{
  parentCopy = parent;
  viewController = [parentCopy viewController];
  [viewController willMoveToParentViewController:0];

  viewController2 = [parentCopy viewController];
  view = [viewController2 view];
  [view removeFromSuperview];

  viewController3 = [parentCopy viewController];

  [viewController3 removeFromParentViewController];
}

- (CGRect)titleRectForLayout:(unint64_t)layout
{
  view = [(PRNameLabelViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  layoutController = [(PRNameLabelViewController *)self layoutController];
  v15 = [layoutController frameAttributesForElements:1 variant:2 titleLayout:layout withBoundingRect:{v7, v9, v11, v13}];

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

- (void)setDisplayString:(id)string
{
  stringCopy = string;
  if (self->_displayString != stringCopy)
  {
    v15 = stringCopy;
    objc_storeStrong(&self->_displayString, string);
    nameTextViewAdapter = [(PRNameLabelViewController *)self nameTextViewAdapter];
    [nameTextViewAdapter setDisplayNameText:v15];
    effectiveFont = [(PRNameLabelViewController *)self effectiveFont];
    [nameTextViewAdapter setTextFontUsingDefaultFontSizes:effectiveFont];

    emojiViewController = [nameTextViewAdapter emojiViewController];
    if (emojiViewController)
    {
      v9 = emojiViewController;
      emojiViewController2 = [nameTextViewAdapter emojiViewController];
      view = [emojiViewController2 view];
      superview = [view superview];

      if (!superview)
      {
        emojiViewController3 = [nameTextViewAdapter emojiViewController];
        view2 = [(PRNameLabelViewController *)self view];
        [(PRNameLabelViewController *)self bs_addChildViewController:emojiViewController3 withSuperview:view2];
      }
    }

    stringCopy = v15;
  }
}

- (void)pr_setBackgroundType:(int64_t)type
{
  vibrancyView = [(PRNameLabelViewController *)self vibrancyView];
  configuration = [vibrancyView configuration];
  if ([configuration backgroundType] != type)
  {
    v5 = [configuration copyWithWithBackgroundType:type];
    [vibrancyView setConfiguration:v5];
  }
}

- (void)pr_setStylingFromTitleStyleConfiguration:(id)configuration withExtensionBundleURL:(id)l forRole:(id)role
{
  configurationCopy = configuration;
  roleCopy = role;
  lCopy = l;
  [(PRNameLabelViewController *)self loadViewIfNeeded];
  v12 = [configurationCopy effectiveTimeFontWithExtensionBundleURL:lCopy forRole:roleCopy];

  baseFont = self->_baseFont;
  self->_baseFont = v12;

  nameTextViewAdapter = [(PRNameLabelViewController *)self nameTextViewAdapter];
  [nameTextViewAdapter setPreferredAlignment:{objc_msgSend(configurationCopy, "preferredTitleAlignment")}];
  [nameTextViewAdapter setPreferredLayout:{objc_msgSend(configurationCopy, "preferredTitleLayout")}];
  effectiveFont = [(PRNameLabelViewController *)self effectiveFont];
  v46 = roleCopy;
  if (effectiveFont)
  {
    [nameTextViewAdapter setTextFontUsingDefaultFontSizes:effectiveFont];
  }

  else
  {
    configurationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No effective font found for role %@, _baseFont %@, titleStyleConfiguration %@", roleCopy, self->_baseFont, configurationCopy];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [PRNameLabelViewController pr_setStylingFromTitleStyleConfiguration:a2 withExtensionBundleURL:self forRole:configurationCopy];
    }
  }

  view = [(PRNameLabelViewController *)self view];
  [view setNeedsLayout];

  [nameTextViewAdapter frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [nameTextViewAdapter tightFrame];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  textColor = [nameTextViewAdapter textColor];
  v35 = [PRPosterAppearance alloc];
  effectiveFont2 = [(PRNameLabelViewController *)self effectiveFont];
  v37 = [[PRPosterColor alloc] initWithColor:textColor];
  v38 = -[PRPosterAppearance initWithFont:labelColor:preferredTitleAlignment:preferredTitleLayout:](v35, "initWithFont:labelColor:preferredTitleAlignment:preferredTitleLayout:", effectiveFont2, v37, [nameTextViewAdapter alignment], objc_msgSend(nameTextViewAdapter, "layout"));

  vibrantStyleRenderer = self->_vibrantStyleRenderer;
  if (vibrantStyleRenderer)
  {
    [(PRPosterContentStyleVibrantContentRenderer *)vibrantStyleRenderer setContentBoundingRect:v19, v21, v23, v25];
    [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setStyleBoundingRect:v27, v29, v31, v33];
    [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setCurrentAppearance:v38];
  }

  else
  {
    vibrancyView = [(PRNameLabelViewController *)self vibrancyView];
    v41 = [PRPosterContentStyleVibrantContentRenderer alloc];
    contentView = [vibrancyView contentView];
    v43 = [(PRPosterContentStyleVibrantContentRenderer *)v41 initWithVibrancyView:vibrancyView contentView:contentView contentBoundingRect:v38 styleBoundingRect:v19 initialAppearance:v21, v23, v25, v27, v29, v31, v33];
    v44 = self->_vibrantStyleRenderer;
    self->_vibrantStyleRenderer = v43;
  }

  v45 = [configurationCopy effectiveTitleContentStyleForRole:v46];
  [v45 applyStyleWithRenderer:self->_vibrantStyleRenderer];
}

- (void)pr_updateStyleBoundingRects
{
  nameTextViewAdapter = [(PRNameLabelViewController *)self nameTextViewAdapter];
  [nameTextViewAdapter frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [nameTextViewAdapter tightFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setContentBoundingRect:v4, v6, v8, v10];
  [(PRPosterContentStyleVibrantContentRenderer *)self->_vibrantStyleRenderer setStyleBoundingRect:v12, v14, v16, v18];
}

- (id)beginInteractiveTransitionToVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  vibrancyView = [(PRNameLabelViewController *)self vibrancyView];
  configuration = [vibrancyView configuration];

  v7 = [[PRNameLabelViewControllerTransition alloc] initWithViewController:self fromVibrancyConfiguration:configuration toVibrancyConfiguration:configurationCopy];
  objc_storeStrong(&self->_currentTransition, v7);

  return v7;
}

- (void)transition:(id)transition didUpdate:(double)update
{
  transitionCopy = transition;
  currentTransition = [(PRNameLabelViewController *)self currentTransition];

  v7 = transitionCopy;
  if (currentTransition == transitionCopy)
  {
    fromConfiguration = [transitionCopy fromConfiguration];
    toConfiguration = [transitionCopy toConfiguration];
    v10 = [fromConfiguration copyWithBlendAmount:toConfiguration blendConfiguration:update];

    vibrancyView = [(PRNameLabelViewController *)self vibrancyView];
    [vibrancyView setConfiguration:v10];

    v7 = transitionCopy;
  }
}

- (void)transition:(id)transition didFinishSuccessfully:(BOOL)successfully
{
  transitionCopy = transition;
  currentTransition = [(PRNameLabelViewController *)self currentTransition];

  v7 = transitionCopy;
  if (currentTransition == transitionCopy)
  {
    if (successfully)
    {
      [transitionCopy toConfiguration];
    }

    else
    {
      [transitionCopy fromConfiguration];
    }
    v8 = ;
    vibrancyView = [(PRNameLabelViewController *)self vibrancyView];
    [vibrancyView setConfiguration:v8];

    currentTransition = self->_currentTransition;
    self->_currentTransition = 0;

    v7 = transitionCopy;
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
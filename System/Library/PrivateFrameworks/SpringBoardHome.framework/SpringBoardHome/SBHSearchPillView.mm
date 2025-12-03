@interface SBHSearchPillView
+ (id)searchPillViewWithSystemDefaultBackground;
- (CGRect)clientReferenceFrame;
- (CGRect)searchAffordanceReferenceFrame;
- (CGSize)intrinsicContentSize;
- (SBHSearchPillView)init;
- (SBHSearchPillView)initWithBackgroundViewProvider:(id)provider;
- (UIView)searchAffordanceReferenceContainerView;
- (id)makeSearchAffordanceBackgroundCapturingView;
- (void)_updateBackgroundViewUserInterfaceStyle;
- (void)layoutSubviews;
- (void)setAppliesSearchAffordanceCornerRadius:(BOOL)radius;
- (void)setBackgroundView:(id)view;
- (void)setLabelAlignment:(int64_t)alignment;
- (void)setLegibilitySettings:(id)settings;
- (void)setSearchAffordanceCornerRadius:(double)radius;
- (void)setSearchAffordanceReferenceBackgroundView:(id)view;
- (void)setSearchAffordanceReferenceFrame:(CGRect)frame;
@end

@implementation SBHSearchPillView

- (void)layoutSubviews
{
  v71.receiver = self;
  v71.super_class = SBHSearchPillView;
  [(SBHSearchPillView *)&v71 layoutSubviews];
  [(SBHSearchPillView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backgroundView = [(SBHSearchPillView *)self backgroundView];
  v64 = v8;
  [backgroundView setFrame:{v4, v6, v8, v10}];
  if ([(SBHSearchPillView *)self appliesSearchAffordanceCornerRadius])
  {
    [(SBHSearchPillView *)self searchAffordanceCornerRadius];
  }

  else
  {
    v12 = v10 * 0.5;
  }

  v63 = v10;
  if (backgroundView)
  {
    [(SBHSearchPillView *)self _setContinuousCornerRadius:v12];
  }

  contentContainerView = [(SBHSearchPillView *)self contentContainerView];
  [contentContainerView bounds];
  v65 = v14;
  v66 = v15;
  v17 = v16;
  v68 = v18;
  traitCollection = [(SBHSearchPillView *)self traitCollection];
  [traitCollection displayScale];
  v21 = v20;

  v22 = self->_searchLabel;
  [(UILabel *)v22 sizeToFit];
  v23 = self->_searchGlyphImageView;
  [(UIImageView *)v23 sizeToFit];
  [(UIImageView *)v23 bounds];
  v25 = v24;
  v27 = v26;
  rect = v28;
  BSFloatRoundForScale();
  v30 = v29;
  v31 = MEMORY[0x1E69DDA98];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    v30 = v17 - v30 - v27;
  }

  [(UILabel *)v22 bounds];
  userInterfaceLayoutDirection = [*v31 userInterfaceLayoutDirection];
  v62 = v30;
  v33 = v30;
  v34 = v25;
  v35 = v25;
  v36 = v27;
  v37 = rect;
  if (userInterfaceLayoutDirection == 1)
  {
    CGRectGetMinX(*&v33);
  }

  else
  {
    CGRectGetMaxX(*&v33);
  }

  UIRectCenteredYInRectScale();
  v39 = v38;
  v61 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  BSFloatRoundForScale();
  v47 = v46 + v41;
  image = [(UIImageView *)v23 image];
  [image baselineOffsetFromBottom];
  v50 = v49;
  v72.origin.x = v39;
  v72.origin.y = v47;
  v72.size.width = v43;
  v72.size.height = v45;
  MaxY = CGRectGetMaxY(v72);
  v73.origin.x = v62;
  v73.origin.y = v34;
  v73.size.width = v27;
  v73.size.height = rect;
  v52 = v50 + MaxY - CGRectGetHeight(v73);
  [(UILabel *)v22 _baselineOffsetFromBottom];
  [(UIImageView *)v23 setFrame:v62, v52 - v53, v27, rect];
  [(UILabel *)v22 setFrame:v61, v47, v43, v45];
  if (v64 / v17 >= v63 / v68)
  {
    v54 = v63 / v68;
  }

  else
  {
    v54 = v64 / v17;
  }

  if (BSFloatEqualToFloat())
  {
    v55 = *(MEMORY[0x1E695EFD0] + 16);
    *&v70.a = *MEMORY[0x1E695EFD0];
    *&v70.c = v55;
    *&v70.tx = *(MEMORY[0x1E695EFD0] + 32);
    [contentContainerView setTransform:&v70];
    [contentContainerView setFrame:{v65, v66, v17, v68}];
  }

  else
  {
    memset(&v70, 0, sizeof(v70));
    CGAffineTransformMakeScale(&v70, v54, v54);
    v69 = v70;
    [contentContainerView setTransform:&v69];
    UIRectGetCenter();
    v57 = v56;
    v59 = v58;
    if ([(SBHSearchPillView *)self labelAlignment]!= 1)
    {
      v69 = v70;
      v74.origin.x = v65;
      v74.origin.y = v66;
      v74.size.width = v17;
      v74.size.height = v68;
      v75 = CGRectApplyAffineTransform(v74, &v69);
      width = v75.size.width;
      if ([*v31 userInterfaceLayoutDirection] == 1)
      {
        v57 = v64 - width * 0.5;
      }

      else
      {
        v57 = width * 0.5;
      }
    }

    [contentContainerView setCenter:{v57, v59}];
  }
}

- (CGRect)searchAffordanceReferenceFrame
{
  searchAffordanceReferenceView = self->_searchAffordanceReferenceView;
  if (searchAffordanceReferenceView)
  {
    [(UIView *)self->_searchAffordanceReferenceView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    WeakRetained = objc_loadWeakRetained(&self->_searchAffordanceReferenceContainerView);
    [(UIView *)searchAffordanceReferenceView convertRect:WeakRetained toView:v5, v7, v9, v11];
    x = v13;
    y = v15;
    width = v17;
    height = v19;
  }

  else
  {
    x = self->_clientReferenceFrame.origin.x;
    y = self->_clientReferenceFrame.origin.y;
    width = self->_clientReferenceFrame.size.width;
    height = self->_clientReferenceFrame.size.height;
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGSize)intrinsicContentSize
{
  traitCollection = [(SBHSearchPillView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  searchLabel = [(SBHSearchPillView *)self searchLabel];
  v7 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  [searchLabel sizeThatFits:{*MEMORY[0x1E695F060], v8}];
  v10 = v9;

  searchGlyphImageView = [(SBHSearchPillView *)self searchGlyphImageView];
  [searchGlyphImageView sizeThatFits:{v7, v8}];
  v13 = v10 + v12 + 3.0 + 11.5 + 11.5;

  [(SBHSearchPillView *)self halfFloatRoundForScale:v13 scale:v5];
  v15 = 30.0;
  result.height = v15;
  result.width = v14;
  return result;
}

+ (id)searchPillViewWithSystemDefaultBackground
{
  v2 = [[SBHSearchPillView alloc] initWithBackgroundViewProvider:&__block_literal_global];

  return v2;
}

- (SBHSearchPillView)initWithBackgroundViewProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(SBHSearchPillView *)self init];
  if (v5)
  {
    v6 = [providerCopy copy];
    backgroundViewProvider = v5->_backgroundViewProvider;
    v5->_backgroundViewProvider = v6;

    v8 = providerCopy[2](providerCopy);
    _backdropGroupNameBase = [(SBHSearchPillView *)v5 _backdropGroupNameBase];
    [v8 setGroupNameBase:_backdropGroupNameBase];

    [(SBHSearchPillView *)v5 setBackgroundView:v8];
  }

  return v5;
}

- (SBHSearchPillView)init
{
  v32[2] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = SBHSearchPillView;
  v2 = [(SBHSearchPillView *)&v31 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    searchLabel = v2->_searchLabel;
    v2->_searchLabel = v3;

    v5 = SBHBundle();
    v6 = [v5 localizedStringForKey:@"SEARCH_LABEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

    [(UILabel *)v2->_searchLabel setText:v6];
    v7 = [MEMORY[0x1E69DB880] _preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD08] weight:*MEMORY[0x1E69DB970]];
    v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v7 size:12.0];
    [(UILabel *)v2->_searchLabel setFont:v8];
    [(UILabel *)v2->_searchLabel sizeToFit];
    v9 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    searchGlyphImageView = v2->_searchGlyphImageView;
    v2->_searchGlyphImageView = v9;

    v11 = MEMORY[0x1E69DCAD8];
    [v8 pointSize];
    v12 = [v11 configurationWithPointSize:6 weight:1 scale:?];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
    v14 = [v13 imageByApplyingSymbolConfiguration:v12];

    [(UIImageView *)v2->_searchGlyphImageView setImage:v14];
    [(UIImageView *)v2->_searchGlyphImageView sizeToFit];
    v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentContainerView = v2->_contentContainerView;
    v2->_contentContainerView = v15;

    layer = [(UIView *)v2->_contentContainerView layer];
    [layer setAllowsGroupBlending:0];

    [(SBHSearchPillView *)v2 addSubview:v2->_contentContainerView];
    [(UIView *)v2->_contentContainerView addSubview:v2->_searchGlyphImageView];
    [(UIView *)v2->_contentContainerView addSubview:v2->_searchLabel];
    [(SBHSearchPillView *)v2 intrinsicContentSize];
    BSRectWithSize();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [(SBHSearchPillView *)v2 setBounds:?];
    [(UIView *)v2->_contentContainerView setFrame:v19, v21, v23, v25];
    v26 = objc_opt_self();
    v32[0] = v26;
    v27 = objc_opt_self();
    v32[1] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v29 = [(SBHSearchPillView *)v2 registerForTraitChanges:v28 withTarget:v2 action:sel__updateBackgroundViewUserInterfaceStyle];

    [(SBHSearchPillView *)v2 _updateBackgroundViewUserInterfaceStyle];
  }

  return v2;
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    primaryColor = [settingsCopy primaryColor];
    v6 = [primaryColor colorWithAlphaComponent:0.7];

    [(UILabel *)self->_searchLabel setTextColor:v6];
    [(UIImageView *)self->_searchGlyphImageView setTintColor:v6];
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    if (v8)
    {
      traitCollection = [(SBHSearchPillView *)self traitCollection];
      -[UIView sbh_applySearchPillGlassWithUserInterfaceStyle:grouping:](self, "sbh_applySearchPillGlassWithUserInterfaceStyle:grouping:", [MEMORY[0x1E69DD1B8] sbh_dockGlassUserInterfaceStyleFromTraitCollection:traitCollection], 0);
      [(SBHSearchPillView *)self setNeedsLayout];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)setLabelAlignment:(int64_t)alignment
{
  if (self->_labelAlignment != alignment)
  {
    self->_labelAlignment = alignment;
    [(SBHSearchPillView *)self setNeedsLayout];
  }
}

- (id)makeSearchAffordanceBackgroundCapturingView
{
  backgroundViewProvider = self->_backgroundViewProvider;
  if (backgroundViewProvider)
  {
    v4 = backgroundViewProvider[2](backgroundViewProvider, a2);
    _backdropGroupNameBase = [(SBHSearchPillView *)self _backdropGroupNameBase];
    [v4 setGroupNameBase:_backdropGroupNameBase];

    [v4 setCaptureOnly:1];
    createdSearchAffordanceBackgroundCapturingViews = self->_createdSearchAffordanceBackgroundCapturingViews;
    if (!createdSearchAffordanceBackgroundCapturingViews)
    {
      weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v8 = self->_createdSearchAffordanceBackgroundCapturingViews;
      self->_createdSearchAffordanceBackgroundCapturingViews = weakObjectsHashTable;

      createdSearchAffordanceBackgroundCapturingViews = self->_createdSearchAffordanceBackgroundCapturingViews;
    }

    [(NSHashTable *)createdSearchAffordanceBackgroundCapturingViews addObject:v4];
    traitCollection = [(SBHSearchPillView *)self traitCollection];
    [v4 setOverrideUserInterfaceStyle:{objc_msgSend(MEMORY[0x1E69DD1B8], "sbh_materialUserInterfaceStyleFromTraitCollection:", traitCollection)}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSearchAffordanceReferenceFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_clientReferenceFrame = &self->_clientReferenceFrame;
  if (!CGRectEqualToRect(self->_clientReferenceFrame, frame))
  {
    p_clientReferenceFrame->origin.x = x;
    p_clientReferenceFrame->origin.y = y;
    p_clientReferenceFrame->size.width = width;
    p_clientReferenceFrame->size.height = height;
  }
}

- (void)setAppliesSearchAffordanceCornerRadius:(BOOL)radius
{
  if (self->_appliesSearchAffordanceCornerRadius != radius)
  {
    self->_appliesSearchAffordanceCornerRadius = radius;
    [(SBHSearchPillView *)self setNeedsLayout];
  }
}

- (void)setSearchAffordanceCornerRadius:(double)radius
{
  if (self->_searchAffordanceCornerRadius != radius)
  {
    self->_searchAffordanceCornerRadius = radius;
    [(SBHSearchPillView *)self setNeedsLayout];
  }
}

- (void)setSearchAffordanceReferenceBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_searchAffordanceReferenceBackgroundView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_searchAffordanceReferenceBackgroundView, view);
    [(SBHSearchPillView *)self _updateBackgroundViewUserInterfaceStyle];
    viewCopy = v6;
  }
}

- (void)_updateBackgroundViewUserInterfaceStyle
{
  v18 = *MEMORY[0x1E69E9840];
  traitCollection = [(SBHSearchPillView *)self traitCollection];
  v4 = [MEMORY[0x1E69DD1B8] sbh_materialUserInterfaceStyleFromTraitCollection:traitCollection];
  v5 = [MEMORY[0x1E69DD1B8] sbh_iconImageAppearanceFromTraitCollection:traitCollection];
  if ([v5 hasGlass])
  {
    v4 = 2;
  }

  [(SBHSearchPillView *)self setOverrideUserInterfaceStyle:v4];
  backgroundView = [(SBHSearchPillView *)self backgroundView];
  [backgroundView setOverrideUserInterfaceStyle:v4];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_createdSearchAffordanceBackgroundCapturingViews;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * i) setOverrideUserInterfaceStyle:{v4, v13}];
      }

      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  searchAffordanceReferenceBackgroundView = [(SBHSearchPillView *)self searchAffordanceReferenceBackgroundView];
  [searchAffordanceReferenceBackgroundView setOverrideUserInterfaceStyle:v4];
}

- (UIView)searchAffordanceReferenceContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_searchAffordanceReferenceContainerView);

  return WeakRetained;
}

- (CGRect)clientReferenceFrame
{
  x = self->_clientReferenceFrame.origin.x;
  y = self->_clientReferenceFrame.origin.y;
  width = self->_clientReferenceFrame.size.width;
  height = self->_clientReferenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
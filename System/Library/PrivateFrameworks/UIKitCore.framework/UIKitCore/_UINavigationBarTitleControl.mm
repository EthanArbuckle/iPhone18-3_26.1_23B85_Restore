@interface _UINavigationBarTitleControl
+ (id)titleMenuSuggestedActionsWithDocumentFileURL:(id)a3;
- (BOOL)hasBaseline;
- (BOOL)setTitleAttributes:(id)a3 titleMenuProvider:(id)a4 documentProperties:(id)a5 titleView:(id)a6 attributedTitle:(id)a7;
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (CGSize)availableSizeForAdaptor:(id)a3 proposedSize:(CGSize)result;
- (UIEdgeInsets)menuAlignmentInsets;
- (UILabel)titleLabel;
- (_UINavigationBarTitleControl)initWithFrame:(CGRect)a3;
- (double)trailingPadding;
- (id)_backgroundViewConstraintsForIdiom:(int64_t)a3;
- (id)_baselineView;
- (id)_contextMenuInteraction:(id)a3 overrideSuggestedActionsForConfiguration:(id)a4;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_debugInfo;
- (id)_preferredSender;
- (id)_preview;
- (id)_setAttributedTitle:(id *)a1;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)pointerShapeInContainer:(id)a3;
- (uint64_t)_setTitleView:(uint64_t)a1;
- (void)_cleanupWrapperView;
- (void)_ensureNecessaryViews;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_resetTitleViewConstraints;
- (void)_updateContentAlpha;
- (void)_updateInlineTitleView;
- (void)_updateInteractions;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)setDocumentProperties:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAttributes:(id)a3;
- (void)setTitleLayoutGuide:(id)a3;
- (void)setTitleMenuProvider:(id)a3;
- (void)setTitleViewCompressionResistancePriority:(float)a3;
- (void)updateConstraints;
@end

@implementation _UINavigationBarTitleControl

- (void)_updateContentAlpha
{
  v3 = [(_UINavigationBarTitleControl *)self isInteractive];
  contentAlpha = 1.0;
  if (v3)
  {
    contentAlpha = self->_contentAlpha;
  }

  [(UIView *)self->_titleView setAlpha:contentAlpha];
  v5 = self->_contentAlpha;
  backgroundView = self->_backgroundView;

  [(UIView *)backgroundView setAlpha:v5];
}

- (id)_baselineView
{
  v2 = self;
  if (!self->_titleView)
  {
    inlineTitleView = self->_inlineTitleView;
    if (!inlineTitleView)
    {
      [(_UINavigationBarTitleControl *)self _ensureNecessaryViews];
      inlineTitleView = v2->_inlineTitleView;
    }

    if (inlineTitleView)
    {
      v2 = inlineTitleView;
    }
  }

  v4 = v2;

  return v4;
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self window];

  if (v3)
  {

    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateInlineTitleView
{
  if (_UISMCBarsEnabled() & 1) != 0 || ([(UIView *)self window], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, v5 = _UIBarsUseDynamicType(), v4, (v5))
  {
    v6 = [(UIView *)self traitCollection];
  }

  else
  {
    v6 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
  }

  v16 = v6;
  v7 = *off_1E70EC918;
  v8 = [(NSDictionary *)self->_titleAttributes objectForKeyedSubscript:*off_1E70EC918];
  v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v16];
  titleAttributes = self->_titleAttributes;
  if (v8 == v9)
  {
    v14 = [(NSDictionary *)titleAttributes copy];
    resolvedAttributes = self->_resolvedAttributes;
    self->_resolvedAttributes = v14;
  }

  else
  {
    resolvedAttributes = [(NSDictionary *)titleAttributes mutableCopy];
    [(NSDictionary *)resolvedAttributes setObject:v9 forKeyedSubscript:v7];
    v12 = [(NSDictionary *)resolvedAttributes copy];
    v13 = self->_resolvedAttributes;
    self->_resolvedAttributes = v12;
  }

  v15 = [(NSAttributedString *)self->_attributedTitle _ui_synthesizeAttributedSubstringFromRange:[(NSAttributedString *)self->_attributedTitle length] usingDefaultAttributes:self->_resolvedAttributes];
  [(UILabel *)self->_inlineTitleView setAttributedText:v15];
}

- (void)_ensureNecessaryViews
{
  v62[2] = *MEMORY[0x1E69E9840];
  if (!self->_backgroundView)
  {
    visualProvider = self->_visualProvider;
    if (!visualProvider || ([(UIControl *)self contextMenuInteraction], v4 = objc_claimAutoreleasedReturnValue(), [(_UINavigationBarTitleControlVisualProvider *)visualProvider backgroundWithInteraction:v4], v5 = objc_claimAutoreleasedReturnValue(), v6 = self->_backgroundView, self->_backgroundView = v5, v6, v4, (v7 = self->_backgroundView) == 0))
    {
      v8 = [_UIIntrinsicContentSizeInvalidationForwardingWrapperView alloc];
      v9 = [(UIView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v9 setTranslatesAutoresizingMaskIntoConstraints:0];
      backgroundView = self->_backgroundView;
      self->_backgroundView = v9;

      v7 = self->_backgroundView;
    }

    [(UIView *)self addSubview:v7];
  }

  if ([(_UINavigationBarTitleControl *)self isInteractive])
  {
    chevron = self->_chevron;
    if (!chevron)
    {
      v12 = [UIImageView alloc];
      v13 = [(UIImageView *)v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v14 = self->_chevron;
      self->_chevron = v13;

      v15 = [UIImage systemImageNamed:@"chevron.down.circle.fill"];
      v16 = self->_visualProvider;
      if (v16)
      {
        v17 = [(_UINavigationBarTitleControlVisualProvider *)v16 chevronImage];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }

        [(UIImageView *)self->_chevron setImage:v19];

        v20 = [(_UINavigationBarTitleControlVisualProvider *)self->_visualProvider chevronSymbolConfiguration];
        [(UIImageView *)self->_chevron setPreferredSymbolConfiguration:v20];
      }

      else
      {
        [(UIImageView *)self->_chevron setImage:v15];
        v60 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleHeadline" scale:-1];
        v23 = +[UIColor secondaryLabelColor];
        v62[0] = v23;
        v24 = +[UIColor secondarySystemFillColor];
        v62[1] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
        v26 = [UIImageSymbolConfiguration configurationWithPaletteColors:v25];
        v27 = [v60 configurationByApplyingConfiguration:v26];
        [(UIImageView *)self->_chevron setPreferredSymbolConfiguration:v27];
      }

      [(UIImageView *)self->_chevron setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v28) = 1148829696;
      [(UIView *)self->_chevron setContentCompressionResistancePriority:0 forAxis:v28];

      chevron = self->_chevron;
    }

    [(UIView *)self->_backgroundView addSubview:chevron];
  }

  else
  {
    if (self->_chevronConstraints)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:?];
      chevronConstraints = self->_chevronConstraints;
      self->_chevronConstraints = 0;
    }

    [(UIView *)self->_chevron removeFromSuperview];
    v22 = self->_chevron;
    self->_chevron = 0;
  }

  if (!self->_chevronGuide)
  {
    v29 = objc_alloc_init(UILayoutGuide);
    chevronGuide = self->_chevronGuide;
    self->_chevronGuide = v29;

    [(UILayoutGuide *)self->_chevronGuide setIdentifier:@"TitleChevronGuide"];
    [(UIView *)self addLayoutGuide:self->_chevronGuide];
    v31 = [(UILayoutGuide *)self->_chevronGuide widthAnchor];
    v32 = [v31 constraintEqualToConstant:0.0];

    LODWORD(v33) = 1130430464;
    [v32 setPriority:v33];
    v56 = MEMORY[0x1E69977A0];
    v59 = [(UILayoutGuide *)self->_chevronGuide trailingAnchor];
    v58 = [(UIView *)self trailingAnchor];
    v57 = [v59 constraintEqualToAnchor:v58];
    v61[0] = v57;
    v34 = [(UILayoutGuide *)self->_chevronGuide topAnchor];
    v35 = [(UIView *)self topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    v61[1] = v36;
    v37 = [(UILayoutGuide *)self->_chevronGuide bottomAnchor];
    v38 = [(UIView *)self bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];
    v61[2] = v39;
    v61[3] = v32;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
    [v56 activateConstraints:v40];
  }

  if (self->_titleView)
  {
    v41 = [_UITAMICAdaptorView shouldWrapView:?];
    wrapperView = self->_wrapperView;
    if (v41)
    {
      if (!wrapperView || ([(_UITAMICAdaptorView *)wrapperView view], v43 = objc_claimAutoreleasedReturnValue(), titleView = self->_titleView, v43, v43 != titleView))
      {
        [(_UINavigationBarTitleControl *)self _resetTitleViewConstraints];
        [(_UINavigationBarTitleControl *)self _cleanupWrapperView];
        v45 = [[_UITAMICAdaptorView alloc] initWithView:self->_titleView];
        v46 = self->_wrapperView;
        self->_wrapperView = v45;

        LODWORD(v47) = 1134723072;
        [(_UITAMICAdaptorView *)v45 setSizingPriority:v47];
        [(_UITAMICAdaptorView *)v45 setDelegate:self];
        if (_UISMCBarsEnabled())
        {
          [(_UITAMICAdaptorView *)v45 setInvalidatesIntrinsicContentSizeOnSizeChange:1];
        }

        [(UIView *)self addSubview:v45];
        [(_UITAMICAdaptorView *)v45 updateForAvailableSize];
      }
    }

    else
    {
      if (wrapperView)
      {
        [(_UINavigationBarTitleControl *)self _resetTitleViewConstraints];
        [(_UINavigationBarTitleControl *)self _cleanupWrapperView];
      }

      [(UIView *)self->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self addSubview:self->_titleView];
    }

LABEL_38:
    if (self->_inlineTitleConstraints)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:?];
      inlineTitleConstraints = self->_inlineTitleConstraints;
      self->_inlineTitleConstraints = 0;
    }

    [(UIView *)self->_inlineTitleView removeFromSuperview];
    inlineTitleView = self->_inlineTitleView;
    self->_inlineTitleView = 0;

    goto LABEL_41;
  }

  if (!self->_attributedTitle)
  {
    if (self->_titleConstraints)
    {
      [MEMORY[0x1E69977A0] deactivateConstraints:?];
      titleConstraints = self->_titleConstraints;
      self->_titleConstraints = 0;
    }

    [(_UINavigationBarTitleControl *)self _cleanupWrapperView];
    [(UIView *)self->_titleView removeFromSuperview];
    v52 = self->_titleView;
    self->_titleView = 0;

    goto LABEL_38;
  }

  v48 = self->_inlineTitleView;
  if (!v48)
  {
    v49 = objc_alloc_init(UILabel);
    v50 = self->_inlineTitleView;
    self->_inlineTitleView = v49;

    [(UIView *)self->_inlineTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)self->_inlineTitleView setAdjustsFontForContentSizeCategory:_UIBarsUseDynamicType()];
    v48 = self->_inlineTitleView;
  }

  [(UIView *)self->_backgroundView addSubview:v48];
LABEL_41:
  v55 = self->_visualProvider;
  if (v55)
  {
    [(_UINavigationBarTitleControlVisualProvider *)v55 titleControlDidUpdateBackground:self->_backgroundView inlineTitle:self->_inlineTitleView chevron:self->_chevron interactive:[(_UINavigationBarTitleControl *)self isInteractive] highlighted:[(UIControl *)self isHighlighted]];
  }
}

- (void)updateConstraints
{
  v61[4] = *MEMORY[0x1E69E9840];
  if ((*&self->_titleControlFlags & 4) != 0)
  {
    v58.receiver = self;
    v58.super_class = _UINavigationBarTitleControl;
    [(UIView *)&v58 updateConstraints];
    return;
  }

  *&self->_titleControlFlags |= 4u;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __49___UINavigationBarTitleControl_updateConstraints__block_invoke;
  v57[3] = &unk_1E70F3590;
  v57[4] = self;
  [UIView performWithoutAnimation:v57];
  if (self->_inlineTitleView)
  {
    [(_UINavigationBarTitleControl *)self _updateInlineTitleView];
    *&v4 = self->_titleViewCompressionResistancePriority;
    [(UIView *)self->_inlineTitleView setContentCompressionResistancePriority:0 forAxis:v4];
  }

  else
  {
    *&v3 = self->_titleViewCompressionResistancePriority;
    [(UIView *)self->_titleView setContentCompressionResistancePriority:0 forAxis:v3];
    [(UIView *)self->_titleView updateConstraintsIfNeeded];
  }

  [(_UINavigationBarTitleControl *)self _updateContentAlpha];
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    *&v5 = self->_titleViewCompressionResistancePriority;
    [(UIView *)backgroundView setContentCompressionResistancePriority:0 forAxis:v5];
    backgroundViewConstraints = self->_backgroundViewConstraints;
    if (!backgroundViewConstraints)
    {
      v8 = [(UIView *)self traitCollection];
      v9 = -[_UINavigationBarTitleControl _backgroundViewConstraintsForIdiom:](self, "_backgroundViewConstraintsForIdiom:", [v8 userInterfaceIdiom]);
      v10 = self->_backgroundViewConstraints;
      self->_backgroundViewConstraints = v9;

      backgroundViewConstraints = self->_backgroundViewConstraints;
    }

    [MEMORY[0x1E69977A0] activateConstraints:backgroundViewConstraints];
  }

  else if (self->_backgroundViewConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
    v11 = self->_backgroundViewConstraints;
    self->_backgroundViewConstraints = 0;
  }

  titleView = self->_titleView;
  if (titleView)
  {
    p_titleConstraints = &self->_titleConstraints;
    titleConstraints = self->_titleConstraints;
    if (!titleConstraints)
    {
      if (self->_wrapperView)
      {
        titleView = self->_wrapperView;
      }

      v15 = titleView;
      v16 = [(UIView *)v15 leadingAnchor];
      v52 = [(UIView *)self leadingAnchor];
      v54 = v16;
      v51 = [v16 constraintEqualToAnchor:v52];
      v61[0] = v51;
      v17 = [(UIView *)v15 trailingAnchor];
      v49 = [(UILayoutGuide *)self->_chevronGuide leadingAnchor];
      v50 = v17;
      v48 = [v17 constraintEqualToAnchor:v49];
      v61[1] = v48;
      v18 = [(UIView *)v15 topAnchor];
      v19 = [(UIView *)self topAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];
      v61[2] = v20;
      v21 = [(UIView *)v15 bottomAnchor];
      v22 = [(UIView *)self bottomAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      v61[3] = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:4];
      v25 = *p_titleConstraints;
      *p_titleConstraints = v24;

      goto LABEL_20;
    }

    goto LABEL_21;
  }

  inlineTitleView = self->_inlineTitleView;
  if (inlineTitleView)
  {
    p_titleConstraints = &self->_inlineTitleConstraints;
    titleConstraints = self->_inlineTitleConstraints;
    if (!titleConstraints)
    {
      v27 = [(UIView *)inlineTitleView leadingAnchor];
      v52 = [(UIView *)self leadingAnchor];
      v54 = v27;
      v15 = [v27 constraintEqualToAnchor:v52];
      v60[0] = v15;
      v28 = [(UIView *)self->_inlineTitleView trailingAnchor];
      v50 = [(UILayoutGuide *)self->_chevronGuide leadingAnchor];
      v51 = v28;
      v49 = [v28 constraintEqualToAnchor:v50];
      v60[1] = v49;
      v29 = [(UIView *)self->_inlineTitleView topAnchor];
      v18 = [(UIView *)self topAnchor];
      v48 = v29;
      v19 = [v29 constraintEqualToAnchor:v18];
      v60[2] = v19;
      v20 = [(UIView *)self->_inlineTitleView bottomAnchor];
      v21 = [(UIView *)self bottomAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];
      v60[3] = v22;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
      v23 = *p_titleConstraints;
      *p_titleConstraints = v30;
LABEL_20:

      titleConstraints = *p_titleConstraints;
    }

LABEL_21:
    [MEMORY[0x1E69977A0] activateConstraints:titleConstraints];
  }

  chevron = self->_chevron;
  chevronConstraints = self->_chevronConstraints;
  if (chevron)
  {
    if (!chevronConstraints)
    {
      v33 = [(UIView *)chevron leadingAnchor];
      v34 = [(UILayoutGuide *)self->_chevronGuide leadingAnchor];
      visualProvider = self->_visualProvider;
      if (visualProvider)
      {
        [(_UINavigationBarTitleControlVisualProvider *)visualProvider chevronToTitlePadding];
      }

      else
      {
        v36 = 6.0;
      }

      v38 = [v33 constraintEqualToAnchor:v34 constant:v36];
      v59[0] = v38;
      [(UILayoutGuide *)self->_chevronGuide trailingAnchor];
      v39 = v55 = v33;
      [(UIView *)self->_chevron trailingAnchor];
      v40 = v53 = v34;
      v41 = [v39 constraintEqualToAnchor:v40];
      v59[1] = v41;
      v42 = [(UILayoutGuide *)self->_chevronGuide centerYAnchor];
      v43 = [(UIView *)self->_chevron centerYAnchor];
      v44 = [v42 constraintEqualToAnchor:v43];
      v59[2] = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:3];
      v46 = self->_chevronConstraints;
      self->_chevronConstraints = v45;

      chevronConstraints = self->_chevronConstraints;
    }

    [MEMORY[0x1E69977A0] activateConstraints:chevronConstraints];
  }

  else if (chevronConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
    v37 = self->_chevronConstraints;
    self->_chevronConstraints = 0;
  }

  v47 = [(UIView *)self superview];
  [(NSLayoutConstraint *)self->_sosConstraint setActive:v47 != 0];

  *&self->_titleControlFlags &= ~4u;
  v56.receiver = self;
  v56.super_class = _UINavigationBarTitleControl;
  [(UIView *)&v56 updateConstraints];
}

- (_UINavigationBarTitleControl)initWithFrame:(CGRect)a3
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UINavigationBarTitleControl;
  v3 = [(UIControl *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v8[0] = objc_opt_class();
    v8[1] = objc_opt_class();
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
    v5 = [(UIView *)v3 registerForTraitChanges:v4 withAction:sel_setNeedsUpdateConstraints];

    [(UIControl *)v3 setShowsMenuFromSource:1];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(NSAttributedString *)self->_attributedTitle string];
  v6 = v4;
  v11 = v6;
  if (v5 == v6)
  {

LABEL_10:
    v8 = v11;
    goto LABEL_11;
  }

  if (!v6 || !v5)
  {

    v9 = v11;
    if (!v11)
    {
LABEL_9:
      attributedTitle = self->_attributedTitle;
      self->_attributedTitle = v9;

      [(UIView *)self setNeedsUpdateConstraints];
      goto LABEL_10;
    }

LABEL_8:
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
    goto LABEL_9;
  }

  v7 = [(NSAttributedString *)v5 isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (void)setTitleAttributes:(id)a3
{
  v4 = a3;
  v5 = self->_titleAttributes;
  v6 = v4;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSDictionary *)v5 isEqual:v6];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v8 = [(NSDictionary *)v10 copy];
    titleAttributes = self->_titleAttributes;
    self->_titleAttributes = v8;

    [(UIView *)self setNeedsUpdateConstraints];
  }

LABEL_9:
}

- (id)_setAttributedTitle:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = a1[69];
    v6 = v4;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      if (!v6 || !v5)
      {

LABEL_10:
        objc_storeStrong(a1 + 69, a2);
        [a1 invalidateIntrinsicContentSize];
        [a1 setNeedsUpdateConstraints];
        a1 = 1;
        goto LABEL_11;
      }

      v8 = [v5 isEqual:v6];

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    a1 = 0;
  }

LABEL_11:

  return a1;
}

- (uint64_t)_setTitleView:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    v5 = *(a1 + 568);
    if (v5 == v4 && (!*(a1 + 472) || ([v5 isDescendantOfView:?] & 1) != 0))
    {
      a1 = 0;
    }

    else
    {
      [a1 _resetTitleViewConstraints];
      [a1 _cleanupWrapperView];
      [*(a1 + 568) removeFromSuperview];
      objc_storeStrong((a1 + 568), a2);
      [a1 setNeedsUpdateConstraints];
      [a1 invalidateIntrinsicContentSize];
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [a1 _ensureNecessaryViews];
      }

      a1 = 1;
    }
  }

  return a1;
}

- (void)setTitleViewCompressionResistancePriority:(float)a3
{
  if (self->_titleViewCompressionResistancePriority != a3)
  {
    self->_titleViewCompressionResistancePriority = a3;
    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (UILabel)titleLabel
{
  p_titleView = &self->_titleView;
  if (self->_titleView)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    p_titleView = &self->_inlineTitleView;
  }

  v3 = *p_titleView;
LABEL_6:

  return v3;
}

- (BOOL)setTitleAttributes:(id)a3 titleMenuProvider:(id)a4 documentProperties:(id)a5 titleView:(id)a6 attributedTitle:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  titleAttributes = self->_titleAttributes;
  v18 = v12;
  v19 = titleAttributes;
  v20 = v19;
  if (v19 == v18)
  {

    goto LABEL_7;
  }

  if (v18 && v19)
  {
    v21 = [(NSDictionary *)v18 isEqual:v19];

    if ((v21 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v22 = 0;
    goto LABEL_10;
  }

LABEL_9:
  [(_UINavigationBarTitleControl *)self setTitleAttributes:v18];
  v22 = 1;
LABEL_10:
  v23 = _Block_copy(v13);
  titleMenuProvider = self->_titleMenuProvider;
  self->_titleMenuProvider = v23;

  v25 = [(_UINavigationBarTitleControl *)self documentProperties];
  v26 = v14;
  v27 = v25;
  v28 = v27;
  if (v27 == v26)
  {
  }

  else
  {
    if (v26 && v27)
    {
      v29 = [v26 isEqual:v27];

      if (v29)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    [(_UINavigationBarTitleControl *)self setDocumentProperties:v26];
    v22 = 1;
  }

LABEL_18:
  v30 = v22 | [(_UINavigationBarTitleControl *)self _setTitleView:v15];
  v31 = [(_UINavigationBarTitleControl *)&self->super.super.super.super.isa _setAttributedTitle:v16];

  return v30 | v31;
}

- (BOOL)hasBaseline
{
  v2 = self;
  v3 = [(_UINavigationBarTitleControl *)self _baselineView];
  LOBYTE(v2) = v3 != v2;

  return v2;
}

- (double)trailingPadding
{
  v2 = [(_UINavigationBarTitleControl *)self isInteractive];
  result = 0.0;
  if (v2)
  {
    return 16.0;
  }

  return result;
}

- (void)_updateInteractions
{
  [(UIControl *)self setContextMenuInteractionEnabled:[(_UINavigationBarTitleControl *)self isInteractive]];
  [(UIControl *)self setShowsMenuAsPrimaryAction:1];

  [(_UINavigationBarTitleControl *)self _invalidateSceneDraggingBehavior];
}

- (void)setTitleMenuProvider:(id)a3
{
  if (self->_titleMenuProvider != a3)
  {
    v4 = [a3 copy];
    titleMenuProvider = self->_titleMenuProvider;
    self->_titleMenuProvider = v4;

    [(_UINavigationBarTitleControl *)self _updateInteractions];

    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)setDocumentProperties:(id)a3
{
  v5 = a3;
  if (self->_documentProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_documentProperties, a3);
    [(_UINavigationBarTitleControl *)self _updateInteractions];
    [(UIView *)self setNeedsUpdateConstraints];
    v5 = v6;
  }
}

- (void)setTitleLayoutGuide:(id)a3
{
  v11 = a3;
  if (self->_titleLayoutGuide != v11)
  {
    [(NSLayoutConstraint *)self->_sosConstraint setActive:0];
    sosConstraint = self->_sosConstraint;
    self->_sosConstraint = 0;

    objc_storeStrong(&self->_titleLayoutGuide, a3);
    if (self->_titleLayoutGuide)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        v6 = [(UIView *)self heightAnchor];
        v7 = [(UILayoutGuide *)self->_titleLayoutGuide heightAnchor];
        v8 = [v6 constraintEqualToAnchor:v7];
        v9 = self->_sosConstraint;
        self->_sosConstraint = v8;

        LODWORD(v10) = 25.0;
        [(NSLayoutConstraint *)self->_sosConstraint setPriority:v10];
        [(NSLayoutConstraint *)self->_sosConstraint setIdentifier:@"_UINavigationBarTitleControl-compatibility-height-ambiguity-suppression"];
        [(UIView *)self setNeedsUpdateConstraints];
      }
    }
  }
}

- (void)_resetTitleViewConstraints
{
  if (self->_titleConstraints)
  {
    [MEMORY[0x1E69977A0] deactivateConstraints:?];
    titleConstraints = self->_titleConstraints;
    self->_titleConstraints = 0;
  }
}

- (void)_cleanupWrapperView
{
  [(_UITAMICAdaptorView *)self->_wrapperView setDelegate:0];
  [(UIView *)self->_wrapperView removeFromSuperview];
  wrapperView = self->_wrapperView;
  self->_wrapperView = 0;
}

- (id)_backgroundViewConstraintsForIdiom:(int64_t)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (a3 == 6)
  {
    visualProvider = self->_visualProvider;
    if (visualProvider)
    {
      [(_UINavigationBarTitleControlVisualProvider *)visualProvider backgroundMargins];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v6 = 0.0;
      v8 = 0.0;
    }

    v19 = [(UIView *)self->_backgroundView leadingAnchor];
    v23 = [(UIView *)self leadingAnchor];
    v22 = [v19 constraintEqualToAnchor:v6 constant:?];
    v25[0] = v22;
    v9 = [(UIView *)self->_backgroundView trailingAnchor];
    v10 = [(UILayoutGuide *)self->_chevronGuide trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:v8];
    v25[1] = v11;
    v12 = [(UIView *)self->_backgroundView heightAnchor];
    v13 = [v12 constraintEqualToConstant:44.0];
    v25[2] = v13;
    v14 = [(UIView *)self->_backgroundView centerYAnchor];
    v15 = [(UIView *)self centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v25[3] = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  }

  else
  {
    v21 = [(UIView *)self->_backgroundView leadingAnchor];
    v23 = [(UIView *)self leadingAnchor];
    v22 = [v21 constraintEqualToAnchor:?];
    v24[0] = v22;
    v9 = [(UIView *)self->_backgroundView trailingAnchor];
    v10 = [(UIView *)self trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v24[1] = v11;
    v12 = [(UIView *)self->_backgroundView topAnchor];
    v13 = [(UIView *)self topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v24[2] = v14;
    v15 = [(UIView *)self->_backgroundView bottomAnchor];
    v16 = [(UIView *)self bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v24[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];

    v19 = v21;
  }

  return v18;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleControl;
  [(UIView *)&v4 _intrinsicContentSizeInvalidatedForChildView:a3];
  if (_UISMCBarsEnabled())
  {
    [(_UINavigationBarTitleControl *)self invalidateIntrinsicContentSize];
  }
}

- (void)invalidateIntrinsicContentSize
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarTitleControl;
  [(UIView *)&v5 invalidateIntrinsicContentSize];
  v3 = [(_UINavigationBarTitleControl *)self intrinsicContentSizeInvalidationHandler];
  v4 = [(_UINavigationBarTitleControl *)self intrinsicContentSizeInvalidationHandler];

  if (v4)
  {
    v3[2](v3);
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v19.receiver = self;
  v19.super_class = _UINavigationBarTitleControl;
  [(UIControl *)&v19 setHighlighted:a3];
  v4 = [(UIControl *)self _hasActiveMenuPresentation];
  visualProvider = self->_visualProvider;
  if (v4)
  {
    if (visualProvider)
    {
      backgroundView = self->_backgroundView;
      inlineTitleView = self->_inlineTitleView;
      chevron = self->_chevron;
      v9 = [(_UINavigationBarTitleControl *)self isInteractive];
      v10 = visualProvider;
      v11 = backgroundView;
      v12 = inlineTitleView;
      v13 = chevron;
      v14 = 1;
LABEL_6:
      [(_UINavigationBarTitleControlVisualProvider *)v10 titleControlDidUpdateBackground:v11 inlineTitle:v12 chevron:v13 interactive:v9 highlighted:v14];
      return;
    }

    controlAlpha = 0.5;
  }

  else
  {
    if (visualProvider)
    {
      v15 = self->_backgroundView;
      v16 = self->_inlineTitleView;
      v17 = self->_chevron;
      v9 = [(_UINavigationBarTitleControl *)self isInteractive];
      v10 = visualProvider;
      v11 = v15;
      v12 = v16;
      v13 = v17;
      v14 = 0;
      goto LABEL_6;
    }

    controlAlpha = self->_controlAlpha;
  }

  [(UIView *)self setAlpha:controlAlpha];
}

- (id)_debugInfo
{
  v3 = [MEMORY[0x1E696AD60] string];
  titleView = self->_titleView;
  if (!titleView)
  {
    if (!self->_inlineTitleView)
    {
      goto LABEL_9;
    }

    v6 = [(NSAttributedString *)self->_attributedTitle string];
    [v3 appendFormat:@"title='%@' (v=%p, c=%p) attributes=%p compressionResistance=%f", v6, self->_inlineTitleView, self->_inlineTitleConstraints, self->_titleAttributes, self->_titleViewCompressionResistancePriority];
    goto LABEL_8;
  }

  wrapperView = self->_wrapperView;
  if (wrapperView)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"w=%p c=", self->_wrapperView];
  }

  else
  {
    v6 = &stru_1EFB14550;
  }

  [v3 appendFormat:@"titleView=%p (%@%p) compressionResistance=%f", titleView, v6, self->_titleConstraints, self->_titleViewCompressionResistancePriority];
  if (wrapperView)
  {
LABEL_8:
  }

LABEL_9:
  if (self->_chevron)
  {
    [v3 appendFormat:@" chevron=%p (%p)", self->_chevron, self->_chevronConstraints];
  }

  titleMenuProvider = self->_titleMenuProvider;
  if (titleMenuProvider)
  {
    v8 = _Block_copy(titleMenuProvider);
    [v3 appendFormat:@" titleMenuProvider=%p", v8];
  }

  if (self->_documentProperties)
  {
    [v3 appendFormat:@" documentProperties=%p", self->_documentProperties];
  }

  return v3;
}

- (CGSize)availableSizeForAdaptor:(id)a3 proposedSize:(CGSize)result
{
  titleLayoutGuide = self->_titleLayoutGuide;
  if (titleLayoutGuide)
  {
    [(UILayoutGuide *)titleLayoutGuide layoutFrame:a3];
    v7 = v6;
    height = v8;
    [(UILayoutGuide *)self->_chevronGuide layoutFrame];
    result.width = v7 - CGRectGetWidth(v11);
  }

  else
  {
    height = result.height;
  }

  v10 = height;
  result.height = v10;
  return result;
}

+ (id)titleMenuSuggestedActionsWithDocumentFileURL:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v15 = [_UIReturnToDocumentAction actionWithFileURL:a3];
  v18[0] = v15;
  v3 = 0x1E70E9000;
  v14 = [UICommand _defaultCommandForAction:sel_duplicate_];
  v17[0] = v14;
  v4 = [UICommand _defaultCommandForAction:sel_move_];
  v17[1] = v4;
  v5 = [UICommand _defaultCommandForAction:sel_rename_];
  v17[2] = v5;
  v6 = [UICommand _defaultCommandForAction:sel_export_];
  v17[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v8 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.document" children:v7];
  v18[1] = v8;
  v9 = [UIApp _supportsPrintCommand];
  if (v9)
  {
    v3 = [UICommand _defaultCommandForAction:sel_print_];
    v16 = v3;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [UIMenu _defaultInlineMenuWithIdentifier:@"com.apple.menu.print" children:v10];
  v18[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

  if (v9)
  {
  }

  return v12;
}

- (id)_contextMenuInteraction:(id)a3 overrideSuggestedActionsForConfiguration:(id)a4
{
  v4 = [(UIDocumentProperties *)self->_documentProperties _representedURL:a3];
  v5 = [_UINavigationBarTitleControl titleMenuSuggestedActionsWithDocumentFileURL:v4];

  return v5;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = _Block_copy(self->_titleMenuProvider);
  v7 = self->_documentProperties;
  if (v6 | v7)
  {
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __86___UINavigationBarTitleControl_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v16 = &unk_1E71063C8;
    v20 = v6;
    v17 = v7;
    v18 = self;
    v19 = v5;
    v8 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:&v13];
    [v8 setPreferredMenuElementOrder:{2, v13, v14, v15, v16}];
    v9 = [(UIView *)self nextResponder];
    v10 = _UITreeFindFirstAncestorMatchingCondition(v9, sel_nextResponder, &__block_literal_global_185);

    v11 = [v10 topViewController];
    [v8 setFirstResponderTarget:v11];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v4 = a3;
  visualProvider = self->_visualProvider;
  if (visualProvider)
  {
    [(_UINavigationBarTitleControlVisualProvider *)visualProvider menuAttachmentPointForConfiguration:v4];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    titleView = self->_titleView;
    if (titleView)
    {
      [(UIView *)self->_titleView bounds];
      [(UIView *)titleView convertRect:self toView:?];
    }

    else
    {
      [(UIView *)self->_backgroundView bounds];
    }

    v15 = v11;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    [(_UINavigationBarTitleControl *)self menuAlignmentInsets];
    v20 = v19;
    v22 = v21;
    v23 = v15 + v21;
    v24 = v16 + v19;
    v26 = v17 - (v21 + v25);
    v28 = v18 - (v19 + v27);
    v29 = [(UIView *)self _window];
    [(UIView *)self convertRect:v29 toView:v23, v24, v26, v28];
    v7 = v22 + _UIControlMenuAttachmentPointForRectInContainer(v29, v30, v31, v32, v33);
    v9 = v20 + v34;
  }

  v35 = v7;
  v36 = v9;
  result.y = v36;
  result.x = v35;
  return result;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UINavigationBarTitleControl;
  v5 = [(UIControl *)&v8 _contextMenuInteraction:a3 styleForMenuWithConfiguration:a4];
  [v5 setInputViewVisibility:1];
  visualProvider = self->_visualProvider;
  if (visualProvider)
  {
    [(_UINavigationBarTitleControlVisualProvider *)visualProvider updateContextMenuStyle:v5];
  }

  return v5;
}

- (id)_preview
{
  titleView = self->_titleView;
  if (!titleView)
  {
    titleView = self->_backgroundView;
  }

  v4 = titleView;
  v5 = [(UIView *)self window];

  v6 = 0;
  if (v5 && v4)
  {
    v7 = objc_opt_new();
    v8 = +[UIColor clearColor];
    [v7 setBackgroundColor:v8];

    v6 = [[UITargetedPreview alloc] initWithView:v4 parameters:v7];
  }

  return v6;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a3;
  if ([(_UINavigationBarTitleControl *)self _inactiveForPointer])
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    [(UIView *)self bounds];
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    if (isKindOfClass)
    {
      [v6 createRegionFromRect:self targetView:@"com.apple.UIKit._UINavigationBarTitleControl" identifier:0 selected:{v9, v10, v11, v12}];
    }

    else
    {
      v17 = [v6 view];
      [(UIView *)self convertRect:v17 toView:v13, v14, v15, v16];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      [UIPointerRegion regionWithRect:0 identifier:v19, v21, v23, v25];
    }
    v7 = ;
  }

  return v7;
}

- (id)pointerShapeInContainer:(id)a3
{
  v4 = a3;
  if (self->_visualProvider && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(_UINavigationBarTitleControlVisualProvider *)self->_visualProvider pointerShapeInContainer:v4];
    goto LABEL_21;
  }

  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  if (self->_titleView)
  {
    if (self->_wrapperView)
    {
      wrapperView = self->_wrapperView;
    }

    else
    {
      wrapperView = self->_titleView;
    }
  }

  else
  {
    wrapperView = self->_inlineTitleView;
    if (!wrapperView)
    {
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      goto LABEL_10;
    }
  }

  [wrapperView frame];
  x = v11;
  y = v13;
  width = v15;
  height = v17;
LABEL_10:
  chevron = self->_chevron;
  if (chevron)
  {
    [(UIView *)chevron frame];
    v51.origin.x = v20;
    v51.origin.y = v21;
    v51.size.width = v22;
    v51.size.height = v23;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    v48 = CGRectUnion(v47, v51);
    x = v48.origin.x;
    y = v48.origin.y;
    width = v48.size.width;
    height = v48.size.height;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MinX = CGRectGetMinX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v25 = CGRectGetWidth(v50);
  v26 = +[_UIPointerSettingsDomain rootSettings];
  v27 = [v26 navigationAndToolbarSettings];

  [v27 titleControlPadding];
  v29 = MinX - v28;
  v30 = v25 + v28 + v28;
  [v27 buttonMinimumHeight];
  v32 = v7 - (v31 - v9) * 0.5;
  if (v9 < v31)
  {
    v9 = v31;
    v7 = v32;
  }

  [v27 buttonMinimumWidth];
  if (v30 >= v33)
  {
    v34 = v30;
  }

  else
  {
    v34 = v33;
  }

  if (v30 >= v33)
  {
    v35 = v29;
  }

  else
  {
    v35 = v29 - (v33 - v30) * 0.5;
  }

  [(UIView *)self convertRect:v4 toView:v35, v7, v34, v9];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [v27 buttonCornerRadius];
  v5 = [UIPointerShape shapeWithRoundedRect:v37 cornerRadius:v39, v41, v43, v44];

LABEL_21:

  return v5;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self center];
    v7 = [v5 createPreviewTargetForView:self center:?];
    v8 = [[UITargetedPreview alloc] initWithView:self parameters:v6 target:v7];
  }

  else
  {
    v8 = [[UITargetedPreview alloc] initWithView:self parameters:v6];
  }

  v9 = [(UITargetedPreview *)v8 target];
  v10 = [v9 container];
  v11 = [(_UINavigationBarTitleControl *)self pointerShapeInContainer:v10];

  v12 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v8];
  v13 = [UIPointerStyle styleWithEffect:v12 shape:v11];

  return v13;
}

- (id)_preferredSender
{
  v2 = [(UIView *)self superview];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 superview];

      v2 = v3;
    }

    while (v3);
  }

  return v2;
}

- (UIEdgeInsets)menuAlignmentInsets
{
  top = self->_menuAlignmentInsets.top;
  left = self->_menuAlignmentInsets.left;
  bottom = self->_menuAlignmentInsets.bottom;
  right = self->_menuAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
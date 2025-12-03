@interface _UINavigationBarTitleControl
+ (id)titleMenuSuggestedActionsWithDocumentFileURL:(id)l;
- (BOOL)hasBaseline;
- (BOOL)setTitleAttributes:(id)attributes titleMenuProvider:(id)provider documentProperties:(id)properties titleView:(id)view attributedTitle:(id)title;
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (CGSize)availableSizeForAdaptor:(id)adaptor proposedSize:(CGSize)result;
- (UIEdgeInsets)menuAlignmentInsets;
- (UILabel)titleLabel;
- (_UINavigationBarTitleControl)initWithFrame:(CGRect)frame;
- (double)trailingPadding;
- (id)_backgroundViewConstraintsForIdiom:(int64_t)idiom;
- (id)_baselineView;
- (id)_contextMenuInteraction:(id)interaction overrideSuggestedActionsForConfiguration:(id)configuration;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)_debugInfo;
- (id)_preferredSender;
- (id)_preview;
- (id)_setAttributedTitle:(id *)title;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)pointerShapeInContainer:(id)container;
- (uint64_t)_setTitleView:(uint64_t)view;
- (void)_cleanupWrapperView;
- (void)_ensureNecessaryViews;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_resetTitleViewConstraints;
- (void)_updateContentAlpha;
- (void)_updateInlineTitleView;
- (void)_updateInteractions;
- (void)didMoveToWindow;
- (void)invalidateIntrinsicContentSize;
- (void)setDocumentProperties:(id)properties;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitle:(id)title;
- (void)setTitleAttributes:(id)attributes;
- (void)setTitleLayoutGuide:(id)guide;
- (void)setTitleMenuProvider:(id)provider;
- (void)setTitleViewCompressionResistancePriority:(float)priority;
- (void)updateConstraints;
@end

@implementation _UINavigationBarTitleControl

- (void)_updateContentAlpha
{
  isInteractive = [(_UINavigationBarTitleControl *)self isInteractive];
  contentAlpha = 1.0;
  if (isInteractive)
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
  selfCopy = self;
  if (!self->_titleView)
  {
    inlineTitleView = self->_inlineTitleView;
    if (!inlineTitleView)
    {
      [(_UINavigationBarTitleControl *)self _ensureNecessaryViews];
      inlineTitleView = selfCopy->_inlineTitleView;
    }

    if (inlineTitleView)
    {
      selfCopy = inlineTitleView;
    }
  }

  v4 = selfCopy;

  return v4;
}

- (void)didMoveToWindow
{
  window = [(UIView *)self window];

  if (window)
  {

    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)_updateInlineTitleView
{
  if (_UISMCBarsEnabled() & 1) != 0 || ([(UIView *)self window], (v3 = objc_claimAutoreleasedReturnValue()) != 0) && (v4 = v3, v5 = _UIBarsUseDynamicType(), v4, (v5))
  {
    traitCollection = [(UIView *)self traitCollection];
  }

  else
  {
    traitCollection = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:@"UICTContentSizeCategoryL"];
  }

  v16 = traitCollection;
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
        chevronImage = [(_UINavigationBarTitleControlVisualProvider *)v16 chevronImage];
        v18 = chevronImage;
        if (chevronImage)
        {
          v19 = chevronImage;
        }

        else
        {
          v19 = v15;
        }

        [(UIImageView *)self->_chevron setImage:v19];

        chevronSymbolConfiguration = [(_UINavigationBarTitleControlVisualProvider *)self->_visualProvider chevronSymbolConfiguration];
        [(UIImageView *)self->_chevron setPreferredSymbolConfiguration:chevronSymbolConfiguration];
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
    widthAnchor = [(UILayoutGuide *)self->_chevronGuide widthAnchor];
    v32 = [widthAnchor constraintEqualToConstant:0.0];

    LODWORD(v33) = 1130430464;
    [v32 setPriority:v33];
    v56 = MEMORY[0x1E69977A0];
    trailingAnchor = [(UILayoutGuide *)self->_chevronGuide trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v57 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v61[0] = v57;
    topAnchor = [(UILayoutGuide *)self->_chevronGuide topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v61[1] = v36;
    bottomAnchor = [(UILayoutGuide *)self->_chevronGuide bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v39 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
      traitCollection = [(UIView *)self traitCollection];
      v9 = -[_UINavigationBarTitleControl _backgroundViewConstraintsForIdiom:](self, "_backgroundViewConstraintsForIdiom:", [traitCollection userInterfaceIdiom]);
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
      leadingAnchor = [(UIView *)v15 leadingAnchor];
      leadingAnchor2 = [(UIView *)self leadingAnchor];
      v54 = leadingAnchor;
      v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v61[0] = v51;
      trailingAnchor = [(UIView *)v15 trailingAnchor];
      leadingAnchor3 = [(UILayoutGuide *)self->_chevronGuide leadingAnchor];
      leadingAnchor5 = trailingAnchor;
      v48 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
      v61[1] = v48;
      topAnchor = [(UIView *)v15 topAnchor];
      topAnchor2 = [(UIView *)self topAnchor];
      bottomAnchor3 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v61[2] = bottomAnchor3;
      bottomAnchor = [(UIView *)v15 bottomAnchor];
      bottomAnchor2 = [(UIView *)self bottomAnchor];
      v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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
      leadingAnchor4 = [(UIView *)inlineTitleView leadingAnchor];
      leadingAnchor2 = [(UIView *)self leadingAnchor];
      v54 = leadingAnchor4;
      v15 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor2];
      v60[0] = v15;
      trailingAnchor2 = [(UIView *)self->_inlineTitleView trailingAnchor];
      leadingAnchor5 = [(UILayoutGuide *)self->_chevronGuide leadingAnchor];
      v51 = trailingAnchor2;
      leadingAnchor3 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor5];
      v60[1] = leadingAnchor3;
      topAnchor3 = [(UIView *)self->_inlineTitleView topAnchor];
      topAnchor = [(UIView *)self topAnchor];
      v48 = topAnchor3;
      topAnchor2 = [topAnchor3 constraintEqualToAnchor:topAnchor];
      v60[2] = topAnchor2;
      bottomAnchor3 = [(UIView *)self->_inlineTitleView bottomAnchor];
      bottomAnchor = [(UIView *)self bottomAnchor];
      bottomAnchor2 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor];
      v60[3] = bottomAnchor2;
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
      leadingAnchor6 = [(UIView *)chevron leadingAnchor];
      leadingAnchor7 = [(UILayoutGuide *)self->_chevronGuide leadingAnchor];
      visualProvider = self->_visualProvider;
      if (visualProvider)
      {
        [(_UINavigationBarTitleControlVisualProvider *)visualProvider chevronToTitlePadding];
      }

      else
      {
        v36 = 6.0;
      }

      v38 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7 constant:v36];
      v59[0] = v38;
      [(UILayoutGuide *)self->_chevronGuide trailingAnchor];
      v39 = v55 = leadingAnchor6;
      [(UIView *)self->_chevron trailingAnchor];
      v40 = v53 = leadingAnchor7;
      v41 = [v39 constraintEqualToAnchor:v40];
      v59[1] = v41;
      centerYAnchor = [(UILayoutGuide *)self->_chevronGuide centerYAnchor];
      centerYAnchor2 = [(UIView *)self->_chevron centerYAnchor];
      v44 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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

  superview = [(UIView *)self superview];
  [(NSLayoutConstraint *)self->_sosConstraint setActive:superview != 0];

  *&self->_titleControlFlags &= ~4u;
  v56.receiver = self;
  v56.super_class = _UINavigationBarTitleControl;
  [(UIView *)&v56 updateConstraints];
}

- (_UINavigationBarTitleControl)initWithFrame:(CGRect)frame
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = _UINavigationBarTitleControl;
  v3 = [(UIControl *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  string = [(NSAttributedString *)self->_attributedTitle string];
  v6 = titleCopy;
  v11 = v6;
  if (string == v6)
  {

LABEL_10:
    v8 = v11;
    goto LABEL_11;
  }

  if (!v6 || !string)
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

  v7 = [(NSAttributedString *)string isEqual:v6];

  v8 = v11;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
}

- (void)setTitleAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = self->_titleAttributes;
  v6 = attributesCopy;
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

- (id)_setAttributedTitle:(id *)title
{
  v4 = a2;
  if (title)
  {
    v5 = title[69];
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
        objc_storeStrong(title + 69, a2);
        [title invalidateIntrinsicContentSize];
        [title setNeedsUpdateConstraints];
        title = 1;
        goto LABEL_11;
      }

      v8 = [v5 isEqual:v6];

      if ((v8 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    title = 0;
  }

LABEL_11:

  return title;
}

- (uint64_t)_setTitleView:(uint64_t)view
{
  v4 = a2;
  if (view)
  {
    v5 = *(view + 568);
    if (v5 == v4 && (!*(view + 472) || ([v5 isDescendantOfView:?] & 1) != 0))
    {
      view = 0;
    }

    else
    {
      [view _resetTitleViewConstraints];
      [view _cleanupWrapperView];
      [*(view + 568) removeFromSuperview];
      objc_storeStrong((view + 568), a2);
      [view setNeedsUpdateConstraints];
      [view invalidateIntrinsicContentSize];
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        [view _ensureNecessaryViews];
      }

      view = 1;
    }
  }

  return view;
}

- (void)setTitleViewCompressionResistancePriority:(float)priority
{
  if (self->_titleViewCompressionResistancePriority != priority)
  {
    self->_titleViewCompressionResistancePriority = priority;
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

- (BOOL)setTitleAttributes:(id)attributes titleMenuProvider:(id)provider documentProperties:(id)properties titleView:(id)view attributedTitle:(id)title
{
  attributesCopy = attributes;
  providerCopy = provider;
  propertiesCopy = properties;
  viewCopy = view;
  titleCopy = title;
  titleAttributes = self->_titleAttributes;
  v18 = attributesCopy;
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
  v23 = _Block_copy(providerCopy);
  titleMenuProvider = self->_titleMenuProvider;
  self->_titleMenuProvider = v23;

  documentProperties = [(_UINavigationBarTitleControl *)self documentProperties];
  v26 = propertiesCopy;
  v27 = documentProperties;
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
  v30 = v22 | [(_UINavigationBarTitleControl *)self _setTitleView:viewCopy];
  v31 = [(_UINavigationBarTitleControl *)&self->super.super.super.super.isa _setAttributedTitle:titleCopy];

  return v30 | v31;
}

- (BOOL)hasBaseline
{
  selfCopy = self;
  _baselineView = [(_UINavigationBarTitleControl *)self _baselineView];
  LOBYTE(selfCopy) = _baselineView != selfCopy;

  return selfCopy;
}

- (double)trailingPadding
{
  isInteractive = [(_UINavigationBarTitleControl *)self isInteractive];
  result = 0.0;
  if (isInteractive)
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

- (void)setTitleMenuProvider:(id)provider
{
  if (self->_titleMenuProvider != provider)
  {
    v4 = [provider copy];
    titleMenuProvider = self->_titleMenuProvider;
    self->_titleMenuProvider = v4;

    [(_UINavigationBarTitleControl *)self _updateInteractions];

    [(UIView *)self setNeedsUpdateConstraints];
  }
}

- (void)setDocumentProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_documentProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->_documentProperties, properties);
    [(_UINavigationBarTitleControl *)self _updateInteractions];
    [(UIView *)self setNeedsUpdateConstraints];
    propertiesCopy = v6;
  }
}

- (void)setTitleLayoutGuide:(id)guide
{
  guideCopy = guide;
  if (self->_titleLayoutGuide != guideCopy)
  {
    [(NSLayoutConstraint *)self->_sosConstraint setActive:0];
    sosConstraint = self->_sosConstraint;
    self->_sosConstraint = 0;

    objc_storeStrong(&self->_titleLayoutGuide, guide);
    if (self->_titleLayoutGuide)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        heightAnchor = [(UIView *)self heightAnchor];
        heightAnchor2 = [(UILayoutGuide *)self->_titleLayoutGuide heightAnchor];
        v8 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
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

- (id)_backgroundViewConstraintsForIdiom:(int64_t)idiom
{
  v25[4] = *MEMORY[0x1E69E9840];
  if (idiom == 6)
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

    leadingAnchor = [(UIView *)self->_backgroundView leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v22 = [leadingAnchor constraintEqualToAnchor:v6 constant:?];
    v25[0] = v22;
    trailingAnchor = [(UIView *)self->_backgroundView trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self->_chevronGuide trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v8];
    v25[1] = v11;
    heightAnchor = [(UIView *)self->_backgroundView heightAnchor];
    topAnchor = [heightAnchor constraintEqualToConstant:44.0];
    v25[2] = topAnchor;
    centerYAnchor = [(UIView *)self->_backgroundView centerYAnchor];
    centerYAnchor2 = [(UIView *)self centerYAnchor];
    bottomAnchor = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v25[3] = bottomAnchor;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  }

  else
  {
    leadingAnchor3 = [(UIView *)self->_backgroundView leadingAnchor];
    leadingAnchor2 = [(UIView *)self leadingAnchor];
    v22 = [leadingAnchor3 constraintEqualToAnchor:?];
    v24[0] = v22;
    trailingAnchor = [(UIView *)self->_backgroundView trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v24[1] = v11;
    heightAnchor = [(UIView *)self->_backgroundView topAnchor];
    topAnchor = [(UIView *)self topAnchor];
    centerYAnchor = [heightAnchor constraintEqualToAnchor:topAnchor];
    v24[2] = centerYAnchor;
    centerYAnchor2 = [(UIView *)self->_backgroundView bottomAnchor];
    bottomAnchor = [(UIView *)self bottomAnchor];
    v17 = [centerYAnchor2 constraintEqualToAnchor:bottomAnchor];
    v24[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];

    leadingAnchor = leadingAnchor3;
  }

  return v18;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleControl;
  [(UIView *)&v4 _intrinsicContentSizeInvalidatedForChildView:view];
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
  intrinsicContentSizeInvalidationHandler = [(_UINavigationBarTitleControl *)self intrinsicContentSizeInvalidationHandler];
  intrinsicContentSizeInvalidationHandler2 = [(_UINavigationBarTitleControl *)self intrinsicContentSizeInvalidationHandler];

  if (intrinsicContentSizeInvalidationHandler2)
  {
    intrinsicContentSizeInvalidationHandler[2](intrinsicContentSizeInvalidationHandler);
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v19.receiver = self;
  v19.super_class = _UINavigationBarTitleControl;
  [(UIControl *)&v19 setHighlighted:highlighted];
  _hasActiveMenuPresentation = [(UIControl *)self _hasActiveMenuPresentation];
  visualProvider = self->_visualProvider;
  if (_hasActiveMenuPresentation)
  {
    if (visualProvider)
    {
      backgroundView = self->_backgroundView;
      inlineTitleView = self->_inlineTitleView;
      chevron = self->_chevron;
      isInteractive = [(_UINavigationBarTitleControl *)self isInteractive];
      v10 = visualProvider;
      v11 = backgroundView;
      v12 = inlineTitleView;
      v13 = chevron;
      v14 = 1;
LABEL_6:
      [(_UINavigationBarTitleControlVisualProvider *)v10 titleControlDidUpdateBackground:v11 inlineTitle:v12 chevron:v13 interactive:isInteractive highlighted:v14];
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
      isInteractive = [(_UINavigationBarTitleControl *)self isInteractive];
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
  string = [MEMORY[0x1E696AD60] string];
  titleView = self->_titleView;
  if (!titleView)
  {
    if (!self->_inlineTitleView)
    {
      goto LABEL_9;
    }

    string2 = [(NSAttributedString *)self->_attributedTitle string];
    [string appendFormat:@"title='%@' (v=%p, c=%p) attributes=%p compressionResistance=%f", string2, self->_inlineTitleView, self->_inlineTitleConstraints, self->_titleAttributes, self->_titleViewCompressionResistancePriority];
    goto LABEL_8;
  }

  wrapperView = self->_wrapperView;
  if (wrapperView)
  {
    string2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"w=%p c=", self->_wrapperView];
  }

  else
  {
    string2 = &stru_1EFB14550;
  }

  [string appendFormat:@"titleView=%p (%@%p) compressionResistance=%f", titleView, string2, self->_titleConstraints, self->_titleViewCompressionResistancePriority];
  if (wrapperView)
  {
LABEL_8:
  }

LABEL_9:
  if (self->_chevron)
  {
    [string appendFormat:@" chevron=%p (%p)", self->_chevron, self->_chevronConstraints];
  }

  titleMenuProvider = self->_titleMenuProvider;
  if (titleMenuProvider)
  {
    v8 = _Block_copy(titleMenuProvider);
    [string appendFormat:@" titleMenuProvider=%p", v8];
  }

  if (self->_documentProperties)
  {
    [string appendFormat:@" documentProperties=%p", self->_documentProperties];
  }

  return string;
}

- (CGSize)availableSizeForAdaptor:(id)adaptor proposedSize:(CGSize)result
{
  titleLayoutGuide = self->_titleLayoutGuide;
  if (titleLayoutGuide)
  {
    [(UILayoutGuide *)titleLayoutGuide layoutFrame:adaptor];
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

+ (id)titleMenuSuggestedActionsWithDocumentFileURL:(id)l
{
  v18[3] = *MEMORY[0x1E69E9840];
  v15 = [_UIReturnToDocumentAction actionWithFileURL:l];
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
  _supportsPrintCommand = [UIApp _supportsPrintCommand];
  if (_supportsPrintCommand)
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

  if (_supportsPrintCommand)
  {
  }

  return v12;
}

- (id)_contextMenuInteraction:(id)interaction overrideSuggestedActionsForConfiguration:(id)configuration
{
  v4 = [(UIDocumentProperties *)self->_documentProperties _representedURL:interaction];
  v5 = [_UINavigationBarTitleControl titleMenuSuggestedActionsWithDocumentFileURL:v4];

  return v5;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
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
    selfCopy = self;
    v19 = interactionCopy;
    v8 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:&v13];
    [v8 setPreferredMenuElementOrder:{2, v13, v14, v15, v16}];
    nextResponder = [(UIView *)self nextResponder];
    v10 = _UITreeFindFirstAncestorMatchingCondition(nextResponder, sel_nextResponder, &__block_literal_global_185);

    topViewController = [v10 topViewController];
    [v8 setFirstResponderTarget:topViewController];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  visualProvider = self->_visualProvider;
  if (visualProvider)
  {
    [(_UINavigationBarTitleControlVisualProvider *)visualProvider menuAttachmentPointForConfiguration:configurationCopy];
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
    _window = [(UIView *)self _window];
    [(UIView *)self convertRect:_window toView:v23, v24, v26, v28];
    v7 = v22 + _UIControlMenuAttachmentPointForRectInContainer(_window, v30, v31, v32, v33);
    v9 = v20 + v34;
  }

  v35 = v7;
  v36 = v9;
  result.y = v36;
  result.x = v35;
  return result;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = _UINavigationBarTitleControl;
  v5 = [(UIControl *)&v8 _contextMenuInteraction:interaction styleForMenuWithConfiguration:configuration];
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
  window = [(UIView *)self window];

  v6 = 0;
  if (window && v4)
  {
    v7 = objc_opt_new();
    v8 = +[UIColor clearColor];
    [v7 setBackgroundColor:v8];

    v6 = [[UITargetedPreview alloc] initWithView:v4 parameters:v7];
  }

  return v6;
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
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
      [interactionCopy createRegionFromRect:self targetView:@"com.apple.UIKit._UINavigationBarTitleControl" identifier:0 selected:{v9, v10, v11, v12}];
    }

    else
    {
      view = [interactionCopy view];
      [(UIView *)self convertRect:view toView:v13, v14, v15, v16];
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

- (id)pointerShapeInContainer:(id)container
{
  containerCopy = container;
  if (self->_visualProvider && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [(_UINavigationBarTitleControlVisualProvider *)self->_visualProvider pointerShapeInContainer:containerCopy];
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
  navigationAndToolbarSettings = [v26 navigationAndToolbarSettings];

  [navigationAndToolbarSettings titleControlPadding];
  v29 = MinX - v28;
  v30 = v25 + v28 + v28;
  [navigationAndToolbarSettings buttonMinimumHeight];
  v32 = v7 - (v31 - v9) * 0.5;
  if (v9 < v31)
  {
    v9 = v31;
    v7 = v32;
  }

  [navigationAndToolbarSettings buttonMinimumWidth];
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

  [(UIView *)self convertRect:containerCopy toView:v35, v7, v34, v9];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  [navigationAndToolbarSettings buttonCornerRadius];
  v5 = [UIPointerShape shapeWithRoundedRect:v37 cornerRadius:v39, v41, v43, v44];

LABEL_21:

  return v5;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  v6 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self center];
    v7 = [interactionCopy createPreviewTargetForView:self center:?];
    v8 = [[UITargetedPreview alloc] initWithView:self parameters:v6 target:v7];
  }

  else
  {
    v8 = [[UITargetedPreview alloc] initWithView:self parameters:v6];
  }

  target = [(UITargetedPreview *)v8 target];
  container = [target container];
  v11 = [(_UINavigationBarTitleControl *)self pointerShapeInContainer:container];

  v12 = [(UIPointerEffect *)UIPointerHighlightEffect effectWithPreview:v8];
  v13 = [UIPointerStyle styleWithEffect:v12 shape:v11];

  return v13;
}

- (id)_preferredSender
{
  superview = [(UIView *)self superview];
  if (superview)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2Superview = [superview superview];

      superview = v2Superview;
    }

    while (v2Superview);
  }

  return superview;
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
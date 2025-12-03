@interface _UIContextMenuHeaderView
- (BOOL)_isDisplayingTitleLabel;
- (NSDirectionalEdgeInsets)unscaledLayoutMargins;
- (_UIContextMenuHeaderView)initWithFrame:(CGRect)frame;
- (double)_separatorHeight;
- (id)_createAccessoryButton;
- (id)_createTitleWithAccessoryContainerConstraints;
- (id)_titleFont;
- (id)_titleLabelFilterForCurrentTraits;
- (int64_t)_labelRenderingMode;
- (unint64_t)_titleLabelNumberOfLines;
- (void)_clearTitleWithAccessoryContainerConstraints;
- (void)_createTitleLabelIfNecessary;
- (void)_updateBackgroundView;
- (void)_updateCompositingFilterForCurrentState;
- (void)_updateLayoutMargins;
- (void)setBackgroundMaterialGroupName:(id)name;
- (void)setContentView:(id)view;
- (void)setIsMenuTitle:(BOOL)title;
- (void)setSeparatorStyle:(unint64_t)style;
- (void)setTitle:(id)title accessoryAction:(id)action;
- (void)setUnscaledLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)updateConstraints;
@end

@implementation _UIContextMenuHeaderView

- (_UIContextMenuHeaderView)initWithFrame:(CGRect)frame
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UIContextMenuHeaderView;
  v3 = [(UICollectionReusableView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIView *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    [(_UIContextMenuHeaderView *)v4 _updateBackgroundView];
    [(_UIContextMenuHeaderView *)v4 setSeparatorStyle:1];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v6 = [(UIView *)v4 registerForTraitChanges:v5 withHandler:&__block_literal_global_373];

    v11 = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v8 = [(UIView *)v4 registerForTraitChanges:v7 withHandler:&__block_literal_global_9_4];
  }

  return v4;
}

- (void)_updateBackgroundView
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  gradientMaskingConfiguration = [v4 gradientMaskingConfiguration];
  backgroundMasksCorners = [gradientMaskingConfiguration backgroundMasksCorners];

  if (backgroundMasksCorners)
  {
    layer = [(UIView *)self layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(UIView *)self layer];
    [layer2 setAllowsGroupOpacity:0];
  }

  else
  {
    bgView = [(_UIContextMenuHeaderView *)self bgView];

    if (bgView)
    {
      bgView2 = [(_UIContextMenuHeaderView *)self bgView];
      [bgView2 removeFromSuperview];
    }

    isMenuTitle = [(_UIContextMenuHeaderView *)self isMenuTitle];
    traitCollection2 = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
    v13 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    v14 = v13;
    if (isMenuTitle)
    {
      menuTitleBackgroundProvider = [v13 menuTitleBackgroundProvider];

      if (menuTitleBackgroundProvider)
      {
        menuTitleBackgroundProvider2 = [v14 menuTitleBackgroundProvider];
        v17 = menuTitleBackgroundProvider2[2]();
      }

      else
      {
        menuTitleBackgroundProvider2 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
        v20 = [UIVisualEffectView alloc];
        menuBackgroundEffect = [menuTitleBackgroundProvider2 menuBackgroundEffect];
        v17 = [(UIVisualEffectView *)v20 initWithEffect:menuBackgroundEffect];

        menuBackgroundColor = [menuTitleBackgroundProvider2 menuBackgroundColor];
        [(UIView *)v17 setBackgroundColor:menuBackgroundColor];
      }
    }

    else
    {
      v18 = [UIVisualEffectView alloc];
      menuBackgroundEffect2 = [v14 menuBackgroundEffect];
      v17 = [(UIVisualEffectView *)v18 initWithEffect:menuBackgroundEffect2];

      menuTitleBackgroundProvider2 = [v14 menuBackgroundColor];
      [(UIView *)v17 setBackgroundColor:menuTitleBackgroundProvider2];
    }

    [(_UIContextMenuHeaderView *)self setBgView:v17];
    bgView3 = [(_UIContextMenuHeaderView *)self bgView];
    layer2 = bgView3;
    if (self)
    {
      [(UIView *)self insertSubview:bgView3 atIndex:0];
      [(UIView *)self _addBoundsMatchingConstraintsForView:layer2];
    }
  }
}

- (void)setIsMenuTitle:(BOOL)title
{
  if (self->_isMenuTitle != title)
  {
    self->_isMenuTitle = title;
    [(_UIContextMenuHeaderView *)self _updateBackgroundView];
  }
}

- (void)_createTitleLabelIfNecessary
{
  titleLabel = [(_UIContextMenuHeaderView *)self titleLabel];

  if (!titleLabel)
  {
    v16 = objc_opt_new();
    traitCollection = [(UIView *)self traitCollection];
    v5 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    headerPrimaryColor = [v5 headerPrimaryColor];

    [v16 setTextColor:headerPrimaryColor];
    _titleFont = [(_UIContextMenuHeaderView *)self _titleFont];
    [v16 setFont:_titleFont];

    traitCollection2 = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
    LODWORD(headerPrimaryColor) = [(_UIContextMenuHeaderView *)self isMenuTitle];
    v10 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    v11 = v10;
    if (headerPrimaryColor)
    {
      menuTitleTextAlignment = [v10 menuTitleTextAlignment];
    }

    else
    {
      menuTitleTextAlignment = [v10 headerTextAlignment];
    }

    v13 = menuTitleTextAlignment;

    [v16 setTextAlignment:v13];
    [v16 setNumberOfLines:{-[_UIContextMenuHeaderView _titleLabelNumberOfLines](self, "_titleLabelNumberOfLines")}];
    [v16 setAdjustsFontForContentSizeCategory:1];
    _titleLabelFilterForCurrentTraits = [(_UIContextMenuHeaderView *)self _titleLabelFilterForCurrentTraits];
    if (_titleLabelFilterForCurrentTraits)
    {
      layer = [v16 layer];
      [layer setCompositingFilter:_titleLabelFilterForCurrentTraits];
    }

    [v16 _setOverrideUserInterfaceRenderingMode:{-[_UIContextMenuHeaderView _labelRenderingMode](self, "_labelRenderingMode")}];
    [(_UIContextMenuHeaderView *)self setTitleLabel:v16];
  }
}

- (void)_clearTitleWithAccessoryContainerConstraints
{
  titleWithAccessoryContainerConstraints = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainerConstraints];
  if ([titleWithAccessoryContainerConstraints count])
  {
    v3 = MEMORY[0x1E69977A0];
    titleWithAccessoryContainerConstraints2 = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainerConstraints];
    [v3 deactivateConstraints:titleWithAccessoryContainerConstraints2];
  }

  [(_UIContextMenuHeaderView *)self setTitleWithAccessoryContainerConstraints:0];
}

- (id)_createAccessoryButton
{
  v3 = +[UIButtonConfiguration plainButtonConfiguration];
  [v3 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  _titleFont = [(_UIContextMenuHeaderView *)self _titleFont];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50___UIContextMenuHeaderView__createAccessoryButton__block_invoke;
  v11[3] = &unk_1E7115DE8;
  objc_copyWeak(&v13, &location);
  v5 = _titleFont;
  v12 = v5;
  [v3 setTitleTextAttributesTransformer:v11];
  accessoryAction = [(_UIContextMenuHeaderView *)self accessoryAction];
  v7 = [UIButton buttonWithConfiguration:v3 primaryAction:accessoryAction];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v8) = 1144913920;
  [v7 setContentCompressionResistancePriority:0 forAxis:v8];
  LODWORD(v9) = 1144750080;
  [v7 setContentHuggingPriority:0 forAxis:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

- (id)_createTitleWithAccessoryContainerConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  titleWithAccessoryContainer = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainer];
  titleLabel = [(_UIContextMenuHeaderView *)self titleLabel];
  accessoryButton = [(_UIContextMenuHeaderView *)self accessoryButton];
  v7 = accessoryButton;
  if (titleWithAccessoryContainer && titleLabel && accessoryButton)
  {
    v8 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelAcce.isa, titleLabel, accessoryButton, 0);
    v9 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[titleLabel]-(>=8)-[accessoryButton]|" options:2048 metrics:0 views:v8];
    [array addObjectsFromArray:v9];

    topAnchor = [titleLabel topAnchor];
    topAnchor2 = [titleWithAccessoryContainer topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v12];

    lastBaselineAnchor = [titleLabel lastBaselineAnchor];
    bottomAnchor = [titleWithAccessoryContainer bottomAnchor];
    v15 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor];
    [array addObject:v15];

    [MEMORY[0x1E69977A0] activateConstraints:array];
LABEL_5:

    goto LABEL_9;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v8 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v20 = 0;
      _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "Possible broken layout in context menu header due to missing view or views", v20, 2u);
    }

    goto LABEL_5;
  }

  v16 = *(__UILogGetCategoryCachedImpl("Assert", &_createTitleWithAccessoryContainerConstraints___s_category) + 8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Possible broken layout in context menu header due to missing view or views", buf, 2u);
  }

LABEL_9:
  v17 = [array copy];

  return v17;
}

- (void)setTitle:(id)title accessoryAction:(id)action
{
  titleCopy = title;
  actionCopy = action;
  title = self->_title;
  v28 = titleCopy;
  titleCopy2 = title;
  v10 = titleCopy2 == v28;
  if (titleCopy2 == v28)
  {

    titleLabel = v28;
    goto LABEL_13;
  }

  if (!v28 || !titleCopy2)
  {

    goto LABEL_9;
  }

  v11 = [(__CFString *)v28 isEqual:titleCopy2];

  if ((v11 & 1) == 0)
  {
LABEL_9:
    v15 = [(__CFString *)v28 copy];
    v16 = self->_title;
    self->_title = v15;

    [(_UIContextMenuHeaderView *)self _createTitleLabelIfNecessary];
    if (v28)
    {
      v17 = v28;
    }

    else
    {
      v17 = &stru_1EFB14550;
    }

    titleLabel = [(_UIContextMenuHeaderView *)self titleLabel];
    [titleLabel setText:v17];
LABEL_13:

    if (!actionCopy)
    {
      goto LABEL_6;
    }

LABEL_14:
    accessoryAction = self->_accessoryAction;
    v19 = actionCopy;
    v20 = accessoryAction;
    v21 = v20;
    if (v20 == v19)
    {
      v22 = 1;
    }

    else
    {
      if (!v20)
      {

        accessoryButton = [(_UIContextMenuHeaderView *)self accessoryButton];
LABEL_22:
        [(_UIContextMenuHeaderView *)self _clearTitleWithAccessoryContainerConstraints];
        [accessoryButton removeFromSuperview];
        objc_storeStrong(&self->_accessoryAction, action);
        _createAccessoryButton = [(_UIContextMenuHeaderView *)self _createAccessoryButton];

        [(_UIContextMenuHeaderView *)self setAccessoryButton:_createAccessoryButton];
        accessoryButton = _createAccessoryButton;
LABEL_23:
        titleLabel2 = [(_UIContextMenuHeaderView *)self titleLabel];
        [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];
        titleWithAccessoryContainer = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainer];
        if (!titleWithAccessoryContainer)
        {
          titleWithAccessoryContainer = objc_alloc_init(UIView);
          [(_UIContextMenuHeaderView *)self setTitleWithAccessoryContainer:titleWithAccessoryContainer];
        }

        [(UIView *)titleWithAccessoryContainer addSubview:titleLabel2];
        [(UIView *)titleWithAccessoryContainer addSubview:accessoryButton];
        titleWithAccessoryContainerConstraints = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainerConstraints];

        if (!titleWithAccessoryContainerConstraints)
        {
          _createTitleWithAccessoryContainerConstraints = [(_UIContextMenuHeaderView *)self _createTitleWithAccessoryContainerConstraints];
          [(_UIContextMenuHeaderView *)self setTitleWithAccessoryContainerConstraints:_createTitleWithAccessoryContainerConstraints];
        }

        [(_UIContextMenuHeaderView *)self setContentView:titleWithAccessoryContainer];
        self->_isDisplayingTitleAndAccessory = 1;

        goto LABEL_28;
      }

      v22 = [(UIAction *)v19 isEqual:v20];
    }

    if (v10 & v22)
    {
      goto LABEL_29;
    }

    accessoryButton = [(_UIContextMenuHeaderView *)self accessoryButton];
    if (v22)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v10 = 1;
  if (actionCopy)
  {
    goto LABEL_14;
  }

LABEL_6:
  [(_UIContextMenuHeaderView *)self _clearTitleWithAccessoryContainerConstraints];
  accessoryButton2 = [(_UIContextMenuHeaderView *)self accessoryButton];
  [accessoryButton2 removeFromSuperview];

  [(_UIContextMenuHeaderView *)self setAccessoryButton:0];
  accessoryButton = [(_UIContextMenuHeaderView *)self titleLabel];
  [(_UIContextMenuHeaderView *)self setContentView:accessoryButton];
LABEL_28:

LABEL_29:
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  if (self->_contentView != viewCopy)
  {
    v7 = viewCopy;
    self->_isDisplayingTitleAndAccessory = 0;
    [(UIView *)self->_contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    contentView = self->_contentView;
    if (contentView)
    {
      [(UIView *)contentView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self addSubview:self->_contentView];
    }

    [(_UIContextMenuHeaderView *)self _setNeedsConstraintRebuild];
    viewCopy = v7;
  }
}

- (BOOL)_isDisplayingTitleLabel
{
  if (self->_isDisplayingTitleAndAccessory)
  {
    return 1;
  }

  contentView = [(_UIContextMenuHeaderView *)self contentView];
  titleLabel = [(_UIContextMenuHeaderView *)self titleLabel];
  v2 = contentView == titleLabel;

  return v2;
}

- (void)setBackgroundMaterialGroupName:(id)name
{
  nameCopy = name;
  bgView = [(_UIContextMenuHeaderView *)self bgView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    bgView2 = [(_UIContextMenuHeaderView *)self bgView];
    [bgView2 _setGroupName:nameCopy];
  }
}

- (void)setSeparatorStyle:(unint64_t)style
{
  if (self->_separatorStyle == style)
  {
    return;
  }

  self->_separatorStyle = style;
  separator = [(_UIContextMenuHeaderView *)self separator];
  [separator removeFromSuperview];

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != 2)
  {
    if (separatorStyle == 1)
    {
      v6 = objc_opt_new();
      if (v6)
      {
        goto LABEL_5;
      }
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v12 = objc_opt_new();
  traitCollection = [(UIView *)self traitCollection];
  v9 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  sectionSeparatorColor = [v9 sectionSeparatorColor];

  [v12 setBackgroundColor:sectionSeparatorColor];
  v6 = v12;
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_5:
  v11 = v6;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self addSubview:v11];
  v7 = v11;
LABEL_8:
  v13 = v7;
  [(_UIContextMenuHeaderView *)self setSeparator:v7];
  [(_UIContextMenuHeaderView *)self _setNeedsConstraintRebuild];
}

- (id)_titleFont
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  isMenuTitle = [(_UIContextMenuHeaderView *)self isMenuTitle];
  v6 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  v7 = v6;
  if (isMenuTitle)
  {
    [v6 menuTitleFont];
  }

  else
  {
    [v6 headerFont];
  }
  v8 = ;
  _fontAdjustedForCurrentContentSizeCategory = [v8 _fontAdjustedForCurrentContentSizeCategory];

  return _fontAdjustedForCurrentContentSizeCategory;
}

- (unint64_t)_titleLabelNumberOfLines
{
  traitCollection = [(UIView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(preferredContentSizeCategory, v4);

  if (IsAccessibilityContentSizeCategory)
  {
    return 0;
  }

  else
  {
    return 20;
  }
}

- (void)_updateCompositingFilterForCurrentState
{
  _titleLabelFilterForCurrentTraits = [(_UIContextMenuHeaderView *)self _titleLabelFilterForCurrentTraits];
  if (_titleLabelFilterForCurrentTraits)
  {
    v7 = _titleLabelFilterForCurrentTraits;
    _titleLabelFilterForCurrentTraits2 = [(_UIContextMenuHeaderView *)self _titleLabelFilterForCurrentTraits];
    titleLabel = [(_UIContextMenuHeaderView *)self titleLabel];
    layer = [titleLabel layer];
    [layer setCompositingFilter:_titleLabelFilterForCurrentTraits2];

    _titleLabelFilterForCurrentTraits = v7;
  }
}

- (id)_titleLabelFilterForCurrentTraits
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  headerPrimaryCompositingFilterProvider = [v4 headerPrimaryCompositingFilterProvider];
  if (headerPrimaryCompositingFilterProvider)
  {
    headerPrimaryCompositingFilterProvider2 = [v4 headerPrimaryCompositingFilterProvider];
    traitCollection2 = [(UIView *)self traitCollection];
    v8 = (headerPrimaryCompositingFilterProvider2)[2](headerPrimaryCompositingFilterProvider2, traitCollection2);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateConstraints
{
  v53[4] = *MEMORY[0x1E69E9840];
  if (self->_needsConstraintRebuild)
  {
    self->_needsConstraintRebuild = 0;
    array = [MEMORY[0x1E695DF70] array];
    separator = [(_UIContextMenuHeaderView *)self separator];
    v49 = array;
    if (separator)
    {
      traitCollection = [(UIView *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      v7 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
      [v7 sectionSeparatorInsets];
      v9 = v8;
      v11 = v10;

      leadingAnchor = [separator leadingAnchor];
      leadingAnchor2 = [(UIView *)self leadingAnchor];
      v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v9];
      v53[0] = v42;
      trailingAnchor = [separator trailingAnchor];
      trailingAnchor2 = [(UIView *)self trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v11];
      v53[1] = v13;
      bottomAnchor = [separator bottomAnchor];
      bottomAnchor2 = [(UIView *)self bottomAnchor];
      v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v53[2] = v16;
      heightAnchor = [separator heightAnchor];
      [(_UIContextMenuHeaderView *)self _separatorHeight];
      v18 = [heightAnchor constraintEqualToConstant:?];
      v53[3] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
      [v49 addObjectsFromArray:v19];
    }

    contentView = [(_UIContextMenuHeaderView *)self contentView];
    if (contentView)
    {
      v48 = separator;
      if ([(_UIContextMenuHeaderView *)self _isDisplayingTitleLabel])
      {
        layoutMarginsGuide = [(UIView *)self layoutMarginsGuide];
        leadingAnchor3 = [contentView leadingAnchor];
        leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
        v45 = leadingAnchor3;
        v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v52[0] = v41;
        trailingAnchor3 = [contentView trailingAnchor];
        trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
        v39 = trailingAnchor3;
        v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v52[1] = v24;
        topAnchor = [contentView topAnchor];
        topAnchor2 = [layoutMarginsGuide topAnchor];
        v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v52[2] = v27;
        lastBaselineAnchor = [contentView lastBaselineAnchor];
        v47 = layoutMarginsGuide;
        bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
        v30 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor3];
        v52[3] = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
        [v49 addObjectsFromArray:v31];
      }

      else
      {
        topAnchor3 = [separator topAnchor];
        v33 = topAnchor3;
        if (topAnchor3)
        {
          bottomAnchor4 = topAnchor3;
        }

        else
        {
          bottomAnchor4 = [(UIView *)self bottomAnchor];
        }

        v35 = bottomAnchor4;

        leadingAnchor5 = [contentView leadingAnchor];
        leadingAnchor4 = [(UIView *)self leadingAnchor];
        v45 = leadingAnchor5;
        v41 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor4];
        v51[0] = v41;
        trailingAnchor5 = [contentView trailingAnchor];
        trailingAnchor4 = [(UIView *)self trailingAnchor];
        v39 = trailingAnchor5;
        v24 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor4];
        v51[1] = v24;
        topAnchor = [contentView topAnchor];
        topAnchor2 = [(UIView *)self topAnchor];
        v27 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v51[2] = v27;
        lastBaselineAnchor = [contentView bottomAnchor];
        v47 = v35;
        bottomAnchor3 = [lastBaselineAnchor constraintEqualToAnchor:v35];
        v51[3] = bottomAnchor3;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
        [v49 addObjectsFromArray:v30];
      }

      separator = v48;
    }

    [MEMORY[0x1E69977A0] activateConstraints:v49];
  }

  v50.receiver = self;
  v50.super_class = _UIContextMenuHeaderView;
  [(UIView *)&v50 updateConstraints];
}

- (void)setUnscaledLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v3.f64[0] = margins.top;
  v3.f64[1] = margins.leading;
  v4.f64[0] = margins.bottom;
  v4.f64[1] = margins.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_unscaledLayoutMargins.top), vceqq_f64(v4, *&self->_unscaledLayoutMargins.bottom)))) & 1) == 0)
  {
    self->_unscaledLayoutMargins = margins;
    [(_UIContextMenuHeaderView *)self _updateLayoutMargins];
  }
}

- (void)_updateLayoutMargins
{
  _titleFont = [(_UIContextMenuHeaderView *)self _titleFont];
  [(_UIContextMenuHeaderView *)self unscaledLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [_titleFont _scaledValueForValue:?];
  UIRoundToViewScale(self);
  v10 = v9;
  [_titleFont _scaledValueForValue:v6];
  UIRoundToViewScale(self);
  v12 = v11;
  [(_UIContextMenuHeaderView *)self _separatorHeight];
  [(UIView *)self setDirectionalLayoutMargins:v10, v4, v12 + v13, v8];
}

- (double)_separatorHeight
{
  separatorStyle = self->_separatorStyle;
  if (separatorStyle == 2)
  {
    traitCollection = [(UIView *)self traitCollection];
    v5 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    [v5 sectionSeparatorHeight];
    goto LABEL_5;
  }

  v3 = 0.0;
  if (separatorStyle == 1)
  {
    traitCollection = [(UIView *)self traitCollection];
    v5 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    [v5 itemSeparatorHeight];
LABEL_5:
    v3 = v6;
  }

  return v3;
}

- (int64_t)_labelRenderingMode
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  itemSubtitleRenderingMode = [v3 itemSubtitleRenderingMode];
  return itemSubtitleRenderingMode;
}

- (NSDirectionalEdgeInsets)unscaledLayoutMargins
{
  top = self->_unscaledLayoutMargins.top;
  leading = self->_unscaledLayoutMargins.leading;
  bottom = self->_unscaledLayoutMargins.bottom;
  trailing = self->_unscaledLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end
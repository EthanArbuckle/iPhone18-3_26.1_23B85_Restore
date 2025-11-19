@interface _UIContextMenuHeaderView
- (BOOL)_isDisplayingTitleLabel;
- (NSDirectionalEdgeInsets)unscaledLayoutMargins;
- (_UIContextMenuHeaderView)initWithFrame:(CGRect)a3;
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
- (void)setBackgroundMaterialGroupName:(id)a3;
- (void)setContentView:(id)a3;
- (void)setIsMenuTitle:(BOOL)a3;
- (void)setSeparatorStyle:(unint64_t)a3;
- (void)setTitle:(id)a3 accessoryAction:(id)a4;
- (void)setUnscaledLayoutMargins:(NSDirectionalEdgeInsets)a3;
- (void)updateConstraints;
@end

@implementation _UIContextMenuHeaderView

- (_UIContextMenuHeaderView)initWithFrame:(CGRect)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = _UIContextMenuHeaderView;
  v3 = [(UICollectionReusableView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(UIView *)self traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);
  v5 = [v4 gradientMaskingConfiguration];
  v6 = [v5 backgroundMasksCorners];

  if (v6)
  {
    v7 = [(UIView *)self layer];
    [v7 setAllowsGroupBlending:0];

    v24 = [(UIView *)self layer];
    [v24 setAllowsGroupOpacity:0];
  }

  else
  {
    v8 = [(_UIContextMenuHeaderView *)self bgView];

    if (v8)
    {
      v9 = [(_UIContextMenuHeaderView *)self bgView];
      [v9 removeFromSuperview];
    }

    v10 = [(_UIContextMenuHeaderView *)self isMenuTitle];
    v11 = [(UIView *)self traitCollection];
    v12 = [v11 userInterfaceIdiom];
    v13 = _UIContextMenuGetPlatformMetrics(v12);
    v14 = v13;
    if (v10)
    {
      v15 = [v13 menuTitleBackgroundProvider];

      if (v15)
      {
        v16 = [v14 menuTitleBackgroundProvider];
        v17 = v16[2]();
      }

      else
      {
        v16 = _UIContextMenuGetPlatformMetrics(v12);
        v20 = [UIVisualEffectView alloc];
        v21 = [v16 menuBackgroundEffect];
        v17 = [(UIVisualEffectView *)v20 initWithEffect:v21];

        v22 = [v16 menuBackgroundColor];
        [(UIView *)v17 setBackgroundColor:v22];
      }
    }

    else
    {
      v18 = [UIVisualEffectView alloc];
      v19 = [v14 menuBackgroundEffect];
      v17 = [(UIVisualEffectView *)v18 initWithEffect:v19];

      v16 = [v14 menuBackgroundColor];
      [(UIView *)v17 setBackgroundColor:v16];
    }

    [(_UIContextMenuHeaderView *)self setBgView:v17];
    v23 = [(_UIContextMenuHeaderView *)self bgView];
    v24 = v23;
    if (self)
    {
      [(UIView *)self insertSubview:v23 atIndex:0];
      [(UIView *)self _addBoundsMatchingConstraintsForView:v24];
    }
  }
}

- (void)setIsMenuTitle:(BOOL)a3
{
  if (self->_isMenuTitle != a3)
  {
    self->_isMenuTitle = a3;
    [(_UIContextMenuHeaderView *)self _updateBackgroundView];
  }
}

- (void)_createTitleLabelIfNecessary
{
  v3 = [(_UIContextMenuHeaderView *)self titleLabel];

  if (!v3)
  {
    v16 = objc_opt_new();
    v4 = [(UIView *)self traitCollection];
    v5 = _UIContextMenuGetPlatformMetrics([v4 userInterfaceIdiom]);
    v6 = [v5 headerPrimaryColor];

    [v16 setTextColor:v6];
    v7 = [(_UIContextMenuHeaderView *)self _titleFont];
    [v16 setFont:v7];

    v8 = [(UIView *)self traitCollection];
    v9 = [v8 userInterfaceIdiom];
    LODWORD(v6) = [(_UIContextMenuHeaderView *)self isMenuTitle];
    v10 = _UIContextMenuGetPlatformMetrics(v9);
    v11 = v10;
    if (v6)
    {
      v12 = [v10 menuTitleTextAlignment];
    }

    else
    {
      v12 = [v10 headerTextAlignment];
    }

    v13 = v12;

    [v16 setTextAlignment:v13];
    [v16 setNumberOfLines:{-[_UIContextMenuHeaderView _titleLabelNumberOfLines](self, "_titleLabelNumberOfLines")}];
    [v16 setAdjustsFontForContentSizeCategory:1];
    v14 = [(_UIContextMenuHeaderView *)self _titleLabelFilterForCurrentTraits];
    if (v14)
    {
      v15 = [v16 layer];
      [v15 setCompositingFilter:v14];
    }

    [v16 _setOverrideUserInterfaceRenderingMode:{-[_UIContextMenuHeaderView _labelRenderingMode](self, "_labelRenderingMode")}];
    [(_UIContextMenuHeaderView *)self setTitleLabel:v16];
  }
}

- (void)_clearTitleWithAccessoryContainerConstraints
{
  v5 = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainerConstraints];
  if ([v5 count])
  {
    v3 = MEMORY[0x1E69977A0];
    v4 = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainerConstraints];
    [v3 deactivateConstraints:v4];
  }

  [(_UIContextMenuHeaderView *)self setTitleWithAccessoryContainerConstraints:0];
}

- (id)_createAccessoryButton
{
  v3 = +[UIButtonConfiguration plainButtonConfiguration];
  [v3 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v4 = [(_UIContextMenuHeaderView *)self _titleFont];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50___UIContextMenuHeaderView__createAccessoryButton__block_invoke;
  v11[3] = &unk_1E7115DE8;
  objc_copyWeak(&v13, &location);
  v5 = v4;
  v12 = v5;
  [v3 setTitleTextAttributesTransformer:v11];
  v6 = [(_UIContextMenuHeaderView *)self accessoryAction];
  v7 = [UIButton buttonWithConfiguration:v3 primaryAction:v6];

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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainer];
  v5 = [(_UIContextMenuHeaderView *)self titleLabel];
  v6 = [(_UIContextMenuHeaderView *)self accessoryButton];
  v7 = v6;
  if (v4 && v5 && v6)
  {
    v8 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelAcce.isa, v5, v6, 0);
    v9 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[titleLabel]-(>=8)-[accessoryButton]|" options:2048 metrics:0 views:v8];
    [v3 addObjectsFromArray:v9];

    v10 = [v5 topAnchor];
    v11 = [v4 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v3 addObject:v12];

    v13 = [v5 lastBaselineAnchor];
    v14 = [v4 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v3 addObject:v15];

    [MEMORY[0x1E69977A0] activateConstraints:v3];
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
  v17 = [v3 copy];

  return v17;
}

- (void)setTitle:(id)a3 accessoryAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  title = self->_title;
  v28 = v6;
  v9 = title;
  v10 = v9 == v28;
  if (v9 == v28)
  {

    v14 = v28;
    goto LABEL_13;
  }

  if (!v28 || !v9)
  {

    goto LABEL_9;
  }

  v11 = [(__CFString *)v28 isEqual:v9];

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

    v14 = [(_UIContextMenuHeaderView *)self titleLabel];
    [v14 setText:v17];
LABEL_13:

    if (!v7)
    {
      goto LABEL_6;
    }

LABEL_14:
    accessoryAction = self->_accessoryAction;
    v19 = v7;
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

        v13 = [(_UIContextMenuHeaderView *)self accessoryButton];
LABEL_22:
        [(_UIContextMenuHeaderView *)self _clearTitleWithAccessoryContainerConstraints];
        [v13 removeFromSuperview];
        objc_storeStrong(&self->_accessoryAction, a4);
        v23 = [(_UIContextMenuHeaderView *)self _createAccessoryButton];

        [(_UIContextMenuHeaderView *)self setAccessoryButton:v23];
        v13 = v23;
LABEL_23:
        v24 = [(_UIContextMenuHeaderView *)self titleLabel];
        [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
        v25 = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainer];
        if (!v25)
        {
          v25 = objc_alloc_init(UIView);
          [(_UIContextMenuHeaderView *)self setTitleWithAccessoryContainer:v25];
        }

        [(UIView *)v25 addSubview:v24];
        [(UIView *)v25 addSubview:v13];
        v26 = [(_UIContextMenuHeaderView *)self titleWithAccessoryContainerConstraints];

        if (!v26)
        {
          v27 = [(_UIContextMenuHeaderView *)self _createTitleWithAccessoryContainerConstraints];
          [(_UIContextMenuHeaderView *)self setTitleWithAccessoryContainerConstraints:v27];
        }

        [(_UIContextMenuHeaderView *)self setContentView:v25];
        self->_isDisplayingTitleAndAccessory = 1;

        goto LABEL_28;
      }

      v22 = [(UIAction *)v19 isEqual:v20];
    }

    if (v10 & v22)
    {
      goto LABEL_29;
    }

    v13 = [(_UIContextMenuHeaderView *)self accessoryButton];
    if (v22)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v10 = 1;
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_6:
  [(_UIContextMenuHeaderView *)self _clearTitleWithAccessoryContainerConstraints];
  v12 = [(_UIContextMenuHeaderView *)self accessoryButton];
  [v12 removeFromSuperview];

  [(_UIContextMenuHeaderView *)self setAccessoryButton:0];
  v13 = [(_UIContextMenuHeaderView *)self titleLabel];
  [(_UIContextMenuHeaderView *)self setContentView:v13];
LABEL_28:

LABEL_29:
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  if (self->_contentView != v5)
  {
    v7 = v5;
    self->_isDisplayingTitleAndAccessory = 0;
    [(UIView *)self->_contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    contentView = self->_contentView;
    if (contentView)
    {
      [(UIView *)contentView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self addSubview:self->_contentView];
    }

    [(_UIContextMenuHeaderView *)self _setNeedsConstraintRebuild];
    v5 = v7;
  }
}

- (BOOL)_isDisplayingTitleLabel
{
  if (self->_isDisplayingTitleAndAccessory)
  {
    return 1;
  }

  v4 = [(_UIContextMenuHeaderView *)self contentView];
  v5 = [(_UIContextMenuHeaderView *)self titleLabel];
  v2 = v4 == v5;

  return v2;
}

- (void)setBackgroundMaterialGroupName:(id)a3
{
  v7 = a3;
  v4 = [(_UIContextMenuHeaderView *)self bgView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(_UIContextMenuHeaderView *)self bgView];
    [v6 _setGroupName:v7];
  }
}

- (void)setSeparatorStyle:(unint64_t)a3
{
  if (self->_separatorStyle == a3)
  {
    return;
  }

  self->_separatorStyle = a3;
  v4 = [(_UIContextMenuHeaderView *)self separator];
  [v4 removeFromSuperview];

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
  v8 = [(UIView *)self traitCollection];
  v9 = _UIContextMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
  v10 = [v9 sectionSeparatorColor];

  [v12 setBackgroundColor:v10];
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
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];
  v5 = [(_UIContextMenuHeaderView *)self isMenuTitle];
  v6 = _UIContextMenuGetPlatformMetrics(v4);
  v7 = v6;
  if (v5)
  {
    [v6 menuTitleFont];
  }

  else
  {
    [v6 headerFont];
  }
  v8 = ;
  v9 = [v8 _fontAdjustedForCurrentContentSizeCategory];

  return v9;
}

- (unint64_t)_titleLabelNumberOfLines
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory(v3, v4);

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
  v3 = [(_UIContextMenuHeaderView *)self _titleLabelFilterForCurrentTraits];
  if (v3)
  {
    v7 = v3;
    v4 = [(_UIContextMenuHeaderView *)self _titleLabelFilterForCurrentTraits];
    v5 = [(_UIContextMenuHeaderView *)self titleLabel];
    v6 = [v5 layer];
    [v6 setCompositingFilter:v4];

    v3 = v7;
  }
}

- (id)_titleLabelFilterForCurrentTraits
{
  v3 = [(UIView *)self traitCollection];
  v4 = _UIContextMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [v4 headerPrimaryCompositingFilterProvider];
  if (v5)
  {
    v6 = [v4 headerPrimaryCompositingFilterProvider];
    v7 = [(UIView *)self traitCollection];
    v8 = (v6)[2](v6, v7);
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
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [(_UIContextMenuHeaderView *)self separator];
    v49 = v3;
    if (v4)
    {
      v5 = [(UIView *)self traitCollection];
      v6 = [v5 userInterfaceIdiom];

      v7 = _UIContextMenuGetPlatformMetrics(v6);
      [v7 sectionSeparatorInsets];
      v9 = v8;
      v11 = v10;

      v46 = [v4 leadingAnchor];
      v44 = [(UIView *)self leadingAnchor];
      v42 = [v46 constraintEqualToAnchor:v44 constant:v9];
      v53[0] = v42;
      v40 = [v4 trailingAnchor];
      v12 = [(UIView *)self trailingAnchor];
      v13 = [v40 constraintEqualToAnchor:v12 constant:-v11];
      v53[1] = v13;
      v14 = [v4 bottomAnchor];
      v15 = [(UIView *)self bottomAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v53[2] = v16;
      v17 = [v4 heightAnchor];
      [(_UIContextMenuHeaderView *)self _separatorHeight];
      v18 = [v17 constraintEqualToConstant:?];
      v53[3] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
      [v49 addObjectsFromArray:v19];
    }

    v20 = [(_UIContextMenuHeaderView *)self contentView];
    if (v20)
    {
      v48 = v4;
      if ([(_UIContextMenuHeaderView *)self _isDisplayingTitleLabel])
      {
        v21 = [(UIView *)self layoutMarginsGuide];
        v22 = [v20 leadingAnchor];
        v43 = [v21 leadingAnchor];
        v45 = v22;
        v41 = [v22 constraintEqualToAnchor:v43];
        v52[0] = v41;
        v23 = [v20 trailingAnchor];
        v38 = [v21 trailingAnchor];
        v39 = v23;
        v24 = [v23 constraintEqualToAnchor:v38];
        v52[1] = v24;
        v25 = [v20 topAnchor];
        v26 = [v21 topAnchor];
        v27 = [v25 constraintEqualToAnchor:v26];
        v52[2] = v27;
        v28 = [v20 lastBaselineAnchor];
        v47 = v21;
        v29 = [v21 bottomAnchor];
        v30 = [v28 constraintEqualToAnchor:v29];
        v52[3] = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:4];
        [v49 addObjectsFromArray:v31];
      }

      else
      {
        v32 = [v4 topAnchor];
        v33 = v32;
        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = [(UIView *)self bottomAnchor];
        }

        v35 = v34;

        v36 = [v20 leadingAnchor];
        v43 = [(UIView *)self leadingAnchor];
        v45 = v36;
        v41 = [v36 constraintEqualToAnchor:v43];
        v51[0] = v41;
        v37 = [v20 trailingAnchor];
        v38 = [(UIView *)self trailingAnchor];
        v39 = v37;
        v24 = [v37 constraintEqualToAnchor:v38];
        v51[1] = v24;
        v25 = [v20 topAnchor];
        v26 = [(UIView *)self topAnchor];
        v27 = [v25 constraintEqualToAnchor:v26];
        v51[2] = v27;
        v28 = [v20 bottomAnchor];
        v47 = v35;
        v29 = [v28 constraintEqualToAnchor:v35];
        v51[3] = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:4];
        [v49 addObjectsFromArray:v30];
      }

      v4 = v48;
    }

    [MEMORY[0x1E69977A0] activateConstraints:v49];
  }

  v50.receiver = self;
  v50.super_class = _UIContextMenuHeaderView;
  [(UIView *)&v50 updateConstraints];
}

- (void)setUnscaledLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_unscaledLayoutMargins.top), vceqq_f64(v4, *&self->_unscaledLayoutMargins.bottom)))) & 1) == 0)
  {
    self->_unscaledLayoutMargins = a3;
    [(_UIContextMenuHeaderView *)self _updateLayoutMargins];
  }
}

- (void)_updateLayoutMargins
{
  v14 = [(_UIContextMenuHeaderView *)self _titleFont];
  [(_UIContextMenuHeaderView *)self unscaledLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v14 _scaledValueForValue:?];
  UIRoundToViewScale(self);
  v10 = v9;
  [v14 _scaledValueForValue:v6];
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
    v4 = [(UIView *)self traitCollection];
    v5 = _UIContextMenuGetPlatformMetrics([v4 userInterfaceIdiom]);
    [v5 sectionSeparatorHeight];
    goto LABEL_5;
  }

  v3 = 0.0;
  if (separatorStyle == 1)
  {
    v4 = [(UIView *)self traitCollection];
    v5 = _UIContextMenuGetPlatformMetrics([v4 userInterfaceIdiom]);
    [v5 itemSeparatorHeight];
LABEL_5:
    v3 = v6;
  }

  return v3;
}

- (int64_t)_labelRenderingMode
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);

  v4 = [v3 itemSubtitleRenderingMode];
  return v4;
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
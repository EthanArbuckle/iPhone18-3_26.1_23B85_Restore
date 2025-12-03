@interface UITableViewHeaderFooterView
+ (double)defaultFooterHeightForStyle:(int64_t)style;
+ (double)defaultHeaderHeightForStyle:(int64_t)style;
+ (id)_defaultFontForHeaderFooterView:(id)view;
+ (id)_defaultFontForTableViewStyle:(int64_t)style isSectionHeader:(BOOL)header;
+ (id)_defaultPlainHeaderFooterFont;
+ (id)_defaultTextColorForTableViewStyle:(int64_t)style isSectionHeader:(BOOL)header;
- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)view;
- (BOOL)_isSourceListOrMacIdiom;
- (BOOL)_useDetailText;
- (BOOL)_usingBackgroundConfigurationOrDefaultBackgroundConfiguration;
- (BOOL)isTransparentFocusItem;
- (CGRect)_backgroundRect;
- (CGRect)_backgroundRectForWidth:(double)width;
- (CGRect)_contentRect;
- (CGRect)_contentRectForWidth:(double)width;
- (CGRect)_detailLabelFrame;
- (CGRect)_labelFrame;
- (CGSize)_detailTextSizeForWidth:(double)width;
- (CGSize)_sizeThatFits:(CGSize)fits stripPaddingForAbuttingView:(BOOL)view isTopHeader:(BOOL)header;
- (CGSize)_textSizeForWidth:(double)width;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (NSString)text;
- (UIBackgroundConfiguration)backgroundConfiguration;
- (UICellConfigurationState)_configurationState;
- (UIEdgeInsets)_concreteDefaultLayoutMargins;
- (UIEdgeInsets)_effectiveSafeAreaInsets;
- (UIEdgeInsets)_insetsToBounds;
- (UIEdgeInsets)_insetsToContentRect;
- (UILabel)detailTextLabel;
- (UIListContentConfiguration)defaultContentConfiguration;
- (UITable)table;
- (UITableView)tableView;
- (UITableViewHeaderFooterView)initWithCoder:(NSCoder *)coder;
- (UITableViewHeaderFooterView)initWithFrame:(CGRect)frame;
- (UITableViewHeaderFooterView)initWithReuseIdentifier:(NSString *)reuseIdentifier;
- (UIViewConfigurationState)_bridgedConfigurationState;
- (_UIBackgroundViewConfiguration)_backgroundViewConfiguration;
- (_UIContentViewConfiguration)_contentViewConfiguration;
- (double)_marginWidth;
- (double)_rightMarginWidth;
- (id)_backgroundViewConfigurationProvider;
- (id)_contentViewConfigurationProvider;
- (id)_customViewForDefaultBackgroundAppearance;
- (id)_defaultBackgroundConfiguration;
- (id)_defaultTextColor;
- (id)_label:(BOOL)_label;
- (id)_table;
- (id)contentConfiguration;
- (unint64_t)_viewConfigurationState;
- (void)_applyBackgroundViewConfiguration:(id)configuration withState:(id)state;
- (void)_applyContentViewConfiguration:(id)configuration withState:(id)state usingSPI:(BOOL)i;
- (void)_clearChangeHandlersForOldContentView:(id)view;
- (void)_configureDefaultContentViewLayoutMargins;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_didUpdateMetrics:(BOOL)metrics;
- (void)_executeConfigurationUpdate;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_invalidateDetailLabelBackgroundColor;
- (void)_invalidateLabelBackgroundColor;
- (void)_layoutSystemBackgroundView;
- (void)_notifyIsDisplaying:(BOOL)displaying;
- (void)_performConfigurationStateUpdate;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_prepareForConfigurationStateUpdate;
- (void)_resetBackgroundViewConfiguration;
- (void)_resetContentViews;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets;
- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)enabled;
- (void)_setBackgroundViewConfiguration:(id)configuration;
- (void)_setBackgroundViewConfigurationProvider:(id)provider;
- (void)_setConstants:(id)constants;
- (void)_setContentView:(id)view insertAtBack:(BOOL)back;
- (void)_setContentViewConfigurationProvider:(id)provider;
- (void)_setInsetsContentViewsToSafeArea:(BOOL)area;
- (void)_setMarginWidth:(double)width;
- (void)_setMetricsAdapter:(id)adapter;
- (void)_setRightMarginWidth:(double)width;
- (void)_setStripPadding:(BOOL)padding;
- (void)_setTableViewStyle:(int64_t)style updateFrame:(BOOL)frame;
- (void)_setTopHeader:(BOOL)header;
- (void)_setupBackgroundView;
- (void)_setupChangeHandlersForNewContentView:(id)view;
- (void)_setupDefaultsIfNecessary;
- (void)_setupLabelAppearance;
- (void)_setupLabelForSourceList:(id)list;
- (void)_tableViewDidUpdateMarginWidth;
- (void)_updateBackgroundView;
- (void)_updateBackgroundViewConfigurationForState:(id)state;
- (void)_updateConfigurationUsingState:(id)state;
- (void)_updateConfigurationWithObservationTracking;
- (void)_updateContentAndBackgroundView;
- (void)_updateContentViewConfigurationForState:(id)state;
- (void)_updateDefaultBackgroundAppearance;
- (void)_updateDetailLabelBackgroundColor;
- (void)_updateDetailLabelBackgroundColorIfNeeded;
- (void)_updateProperties;
- (void)_willUpdateFocusInContext:(id)context;
- (void)didMoveToSuperview;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAutomaticallyUpdatesBackgroundConfiguration:(BOOL)automaticallyUpdatesBackgroundConfiguration;
- (void)setAutomaticallyUpdatesContentConfiguration:(BOOL)automaticallyUpdatesContentConfiguration;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundConfiguration:(UIBackgroundConfiguration *)backgroundConfiguration;
- (void)setBackgroundView:(UIView *)backgroundView;
- (void)setConfigurationUpdateHandler:(UITableViewHeaderFooterViewConfigurationUpdateHandler)configurationUpdateHandler;
- (void)setFloating:(BOOL)floating;
- (void)setFrame:(CGRect)frame;
- (void)setNeedsUpdateConfiguration;
- (void)setNeedsUpdateConstraints;
- (void)setSectionHeader:(BOOL)header;
- (void)setText:(id)text;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTintColor:(id)color;
- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UITableViewHeaderFooterView

- (id)_defaultBackgroundConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    _customViewForDefaultBackgroundAppearance = [(UITableViewHeaderFooterView *)self _customViewForDefaultBackgroundAppearance];
    if (!_customViewForDefaultBackgroundAppearance)
    {
      if ((*&self->_headerFooterFlags & 0x41) == 0x40)
      {
        +[UIBackgroundConfiguration listFooterConfiguration];
      }

      else
      {
        +[UIBackgroundConfiguration listHeaderConfiguration];
      }

      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (self)
  {
    _customViewForDefaultBackgroundAppearance = [(UITableViewHeaderFooterView *)self _customViewForDefaultBackgroundAppearance];
    if (!_customViewForDefaultBackgroundAppearance)
    {
      tableViewStyle = self->_tableViewStyle;
      if (tableViewStyle == 2)
      {
        v4 = +[UIBackgroundConfiguration _listInsetGroupedHeaderFooterConfiguration];
        goto LABEL_15;
      }

      if (tableViewStyle)
      {
        +[UIBackgroundConfiguration listGroupedHeaderFooterConfiguration];
      }

      else
      {
        +[UIBackgroundConfiguration listPlainHeaderFooterConfiguration];
      }

      v4 = LABEL_5:;
LABEL_15:
      v5 = v4;
      if ([(UITableViewHeaderFooterView *)self _tintColorAffectsBackgroundColor])
      {
        _interactionTintColor = [(UIView *)self _interactionTintColor];
        if (_interactionTintColor)
        {
          v8 = _interactionTintColor;
          [v5 setBackgroundColor:_interactionTintColor];
        }
      }

      goto LABEL_18;
    }

LABEL_8:
    v5 = +[UIBackgroundConfiguration clearConfiguration];
    [v5 setCustomView:_customViewForDefaultBackgroundAppearance];
LABEL_18:

    goto LABEL_19;
  }

  v5 = 0;
LABEL_19:

  return v5;
}

- (void)_resetContentViews
{
  [(UIView *)self->_label removeFromSuperview];
  label = self->_label;
  self->_label = 0;

  [(UIView *)self->_detailLabel removeFromSuperview];
  detailLabel = self->_detailLabel;
  self->_detailLabel = 0;
}

- (UICellConfigurationState)_configurationState
{
  v3 = [UIViewConfigurationState alloc];
  traitCollection = [(UIView *)self traitCollection];
  v5 = [(UIViewConfigurationState *)v3 initWithTraitCollection:traitCollection];

  [(UIViewConfigurationState *)v5 setDisabled:[(UIView *)self isUserInteractionEnabled]^ 1];
  [(UIViewConfigurationState *)v5 setFocused:[(UIView *)self isFocused]];
  [(UIViewConfigurationState *)v5 setPinned:(*&self->_headerFooterFlags >> 3) & 1];

  return v5;
}

- (void)_updateBackgroundView
{
  if (self->_backgroundView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(UITableViewHeaderFooterView *)self _tintColorAffectsBackgroundColor])
      {
        _interactionTintColor = [(UIView *)self _interactionTintColor];
        v3 = self->_backgroundView;
        v4 = v3;
        if (_interactionTintColor)
        {
          [(UIView *)v3 setBackgroundColor:_interactionTintColor];
          [v4 applyBackgroundConfiguration:0];
        }

        else
        {
          [(UIView *)v3 setBackgroundColor:0];
          _defaultBackgroundConfiguration = [(UITableViewHeaderFooterView *)self _defaultBackgroundConfiguration];
          configurationState = [(UITableViewHeaderFooterView *)self configurationState];
          v7 = [_defaultBackgroundConfiguration updatedConfigurationForState:configurationState];

          [v4 applyBackgroundConfiguration:v7];
          v4 = v7;
        }
      }
    }
  }
}

- (void)_invalidateDetailLabelBackgroundColor
{
  *&self->_headerFooterFlags |= 4u;
  if (self->_detailLabel)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (BOOL)_isSourceListOrMacIdiom
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom == 5;
}

- (UIEdgeInsets)_effectiveSafeAreaInsets
{
  _insetsContentViewsToSafeArea = [(UITableViewHeaderFooterView *)self _insetsContentViewsToSafeArea];
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (_insetsContentViewsToSafeArea)
  {
    superview = [(UIView *)self superview];

    if (superview)
    {
      [(UIView *)self safeAreaInsets];
      v6 = v9;
      v5 = v10;
      v4 = v11;
    }

    else
    {
      _table = [(UITableViewHeaderFooterView *)self _table];
      _scrollView = [_table _scrollView];
      [_scrollView safeAreaInsets];
      v6 = v14 + 0.0;
      v4 = v15 + 0.0;

      v7 = 0.0;
    }
  }

  v16 = v6;
  v17 = v5;
  v18 = v4;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v7;
  return result;
}

- (void)_configureDefaultContentViewLayoutMargins
{
  if (dyld_program_sdk_at_least())
  {
    contentView = self->_contentView;

    [(UIView *)contentView setEdgesPreservingSuperviewLayoutMargins:15];
  }

  else if (dyld_program_sdk_at_least())
  {
    [(UIView *)self->_contentView setEdgesPreservingSuperviewLayoutMargins:10];
    v4 = self->_contentView;
    v5 = [(UIView *)v4 edgesInsettingLayoutMarginsFromSafeArea]& 0xA;

    [(UIView *)v4 setEdgesInsettingLayoutMarginsFromSafeArea:v5];
  }
}

- (UIEdgeInsets)_concreteDefaultLayoutMargins
{
  v8.receiver = self;
  v8.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v8 _concreteDefaultLayoutMargins];
  v4 = _UITableViewHeaderFooterViewConcreteDefaultLayoutMargins(self, 0, v3);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (BOOL)_usingBackgroundConfigurationOrDefaultBackgroundConfiguration
{
  v3 = dyld_program_sdk_at_least();
  if (v3)
  {
    LOBYTE(v3) = [(UITableViewHeaderFooterView *)self _usingBackgroundViewConfiguration]|| (*&self->_headerFooterFlags & 0x3000) == 0 && (*&self->_headerFooterFlags & 0x800) == 0;
  }

  return v3;
}

- (void)_updateDefaultBackgroundAppearance
{
  if (dyld_program_sdk_at_least())
  {
    if ((*(&self->_headerFooterFlags + 1) & 0x38) == 0)
    {
      _defaultBackgroundConfiguration = [(UITableViewHeaderFooterView *)self _defaultBackgroundConfiguration];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __65__UITableViewHeaderFooterView__updateDefaultBackgroundAppearance__block_invoke;
      v5[3] = &unk_1E70F35B8;
      v5[4] = self;
      v6 = _defaultBackgroundConfiguration;
      v4 = _defaultBackgroundConfiguration;
      [UIView _performSystemAppearanceModifications:v5];
      *&self->_headerFooterFlags &= ~0x2000u;
    }
  }
}

- (id)_customViewForDefaultBackgroundAppearance
{
  if (!self->_contentView || (objc_opt_respondsToSelector() & 1) == 0 || ([(UIView *)self->_contentView _containerBackgroundView], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (!self->_constants || ![(UITableViewHeaderFooterView *)self _isSourceListOrMacIdiom]|| (objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_10;
    }

    v3 = [(UITableConstants *)self->_constants defaultHeaderFooterBackgroundViewClassForTableViewStyle:self->_tableViewStyle];
    if (!v3)
    {
      goto LABEL_11;
    }

    v4 = v3;
    if ([(objc_class *)v3 isSubclassOfClass:objc_opt_class()])
    {
      v5 = [v4 alloc];
      v3 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    }

    else
    {
LABEL_10:
      v3 = 0;
    }
  }

LABEL_11:

  return v3;
}

- (void)_setupDefaultsIfNecessary
{
  if ((*&self->_headerFooterFlags & 0x80) == 0)
  {
    if (self->_constants)
    {
      _table = [(UITableViewHeaderFooterView *)self _table];
      if (_table)
      {
        headerFooterFlags = self->_headerFooterFlags;

        if ((*&headerFooterFlags & 0x40) != 0)
        {
          *&self->_headerFooterFlags |= 0x80u;
          v5[0] = MEMORY[0x1E69E9820];
          v5[1] = 3221225472;
          v5[2] = __56__UITableViewHeaderFooterView__setupDefaultsIfNecessary__block_invoke;
          v5[3] = &unk_1E70F3590;
          v5[4] = self;
          [UIView _performSystemAppearanceModifications:v5];
        }
      }
    }
  }
}

void __56__UITableViewHeaderFooterView__setupDefaultsIfNecessary__block_invoke(uint64_t a1)
{
  v9 = [objc_opt_class() _defaultFontForHeaderFooterView:*(a1 + 32)];
  [*(*(a1 + 32) + 488) setFont:v9];
  [*(*(a1 + 32) + 496) setFont:v9];
  v2 = *(a1 + 32);
  v3 = v2[51];
  v4 = v3 > 0x10;
  v5 = (1 << v3) & 0x10006;
  if (!v4 && v5 != 0)
  {
    goto LABEL_5;
  }

  if ([*(a1 + 32) _isSourceListOrMacIdiom])
  {
    v2 = *(a1 + 32);
LABEL_5:
    v7 = [v2 _defaultTextColor];
    v8 = [v2 _accessibilityHigherContrastTintColorForColor:v7];

    [*(*(a1 + 32) + 488) setTextColor:v8];
    [*(*(a1 + 32) + 496) setTextColor:v8];
  }
}

- (UITableView)tableView
{
  _table = [(UITableViewHeaderFooterView *)self _table];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _table;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);
  if (!WeakRetained)
  {
    v4 = objc_opt_class();
    WeakRetained = _UIFallbackViewOfClassForReusableView(v4, self);
    if (WeakRetained)
    {
      objc_storeWeak(&self->_table, WeakRetained);
    }
  }

  v5 = WeakRetained;

  return v5;
}

- (UIViewConfigurationState)_bridgedConfigurationState
{
  selfCopy = self;
  result = [(UITableViewHeaderFooterView *)selfCopy _configurationState];
  if (result)
  {
    v4 = result;
    sub_188C9A23C(v4, &v7);

    sub_188C9C24C();
    v6 = v5;
    sub_188CA5DC8(&v7);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __52__UITableViewHeaderFooterView__setupLabelAppearance__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[70];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = [v2 traitCollection];
    v43 = _UITableConstantsForTraitCollection(v5);

    v4 = v43;
  }

  v44 = v4;
  v6 = *(a1 + 32);
  if (*(v6 + 488))
  {
    v7 = [*(v6 + 488) font];
    [v7 pointSize];
    v9 = v8;

    v6 = *(a1 + 32);
    if (v9 == 0.0)
    {
      v10 = [objc_opt_class() _defaultFontForHeaderFooterView:*(a1 + 32)];
      [*(*(a1 + 32) + 488) setFont:v10];

      [*(*(a1 + 32) + 488) setTextAlignment:*(*(a1 + 32) + 456)];
      v11 = [v44 supportsUserInterfaceStyles];
      v12 = *(a1 + 32);
      if (v11)
      {
        v13 = v12[61];
        v14 = [v44 fallbackHeaderTextColorForTableViewStyle:v12[51] userInterfaceStyle:1];
        [v13 _setFallbackTextColor:v14 forUserInterfaceStyle:1];

        v15 = *(a1 + 32);
        v16 = *(v15 + 488);
        v17 = [v44 fallbackHeaderTextColorForTableViewStyle:*(v15 + 408) userInterfaceStyle:2];
        [v16 _setFallbackTextColor:v17 forUserInterfaceStyle:2];

        v18 = *(a1 + 32);
        v19 = *(v18 + 488);
        v20 = [v44 fallbackHeaderTextColorForTableViewStyle:*(v18 + 408) userInterfaceStyle:1000];
        [v19 _setFallbackTextColor:v20 forUserInterfaceStyle:1000];
      }

      else
      {
        v20 = [*(a1 + 32) _defaultTextColor];
        v21 = [v12 _accessibilityHigherContrastTintColorForColor:v20];
        [*(*(a1 + 32) + 488) setTextColor:v21];
      }

      [*(*(a1 + 32) + 488) setLineBreakMode:4];
      v6 = *(a1 + 32);
      if (*(v6 + 408))
      {
        v22 = [UIApp preferredContentSizeCategory];
        IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v22);

        if (IsAccessibilityCategory)
        {
          LODWORD(v24) = 1055286886;
          [*(*(a1 + 32) + 488) _setHyphenationFactor:v24];
        }

        [*(*(a1 + 32) + 488) setNumberOfLines:0];
        v6 = *(a1 + 32);
      }
    }
  }

  v25 = *(v6 + 496);
  if (v25)
  {
    v26 = [v25 font];
    [v26 pointSize];
    v28 = v27;

    if (v28 == 0.0)
    {
      v29 = [objc_opt_class() _defaultFontForHeaderFooterView:*(a1 + 32)];
      [*(*(a1 + 32) + 496) setFont:v29];

      v30 = [v44 supportsUserInterfaceStyles];
      v31 = *(a1 + 32);
      if (v30)
      {
        v32 = v31[62];
        v33 = [v44 fallbackHeaderTextColorForTableViewStyle:v31[51] userInterfaceStyle:1];
        [v32 _setFallbackTextColor:v33 forUserInterfaceStyle:1];

        v34 = *(a1 + 32);
        v35 = *(v34 + 496);
        v36 = [v44 fallbackHeaderTextColorForTableViewStyle:*(v34 + 408) userInterfaceStyle:2];
        [v35 _setFallbackTextColor:v36 forUserInterfaceStyle:2];

        v37 = *(a1 + 32);
        v38 = *(v37 + 496);
        v39 = [v44 fallbackHeaderTextColorForTableViewStyle:*(v37 + 408) userInterfaceStyle:1000];
        [v38 _setFallbackTextColor:v39 forUserInterfaceStyle:1000];
      }

      else
      {
        v39 = [objc_opt_class() _defaultTextColorForTableViewStyle:*(*(a1 + 32) + 408) isSectionHeader:*(*(a1 + 32) + 576) & 1];
        v40 = [v31 _accessibilityHigherContrastTintColorForColor:v39];
        [*(*(a1 + 32) + 496) setTextColor:v40];
      }

      v41 = *(a1 + 32);
      v42 = *(v41 + 408);
      [*(v41 + 496) setLineBreakMode:4];
      if (v42)
      {
        [*(*(a1 + 32) + 496) setNumberOfLines:0];
      }
    }
  }
}

- (CGRect)_contentRect
{
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v9);

  [(UITableViewHeaderFooterView *)self _contentRectForWidth:Width];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_setupLabelAppearance
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __52__UITableViewHeaderFooterView__setupLabelAppearance__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _performSystemAppearanceModifications:v2];
}

- (id)_defaultTextColor
{
  if ([(UITableViewHeaderFooterView *)self _isSourceListOrMacIdiom])
  {
    headerFooterFlags = self->_headerFooterFlags;
    constants = self->_constants;
    tableViewStyle = self->_tableViewStyle;
    isFocused = [(UIView *)self isFocused];
    if (*&headerFooterFlags)
    {
      [(UITableConstants *)constants defaultHeaderTextColorForTableViewStyle:tableViewStyle focused:isFocused];
    }

    else
    {
      [(UITableConstants *)constants defaultFooterTextColorForTableViewStyle:tableViewStyle focused:isFocused];
    }
    v7 = ;
  }

  else
  {
    v7 = [objc_opt_class() _defaultTextColorForTableViewStyle:self->_tableViewStyle isSectionHeader:*&self->_headerFooterFlags & 1];
  }

  return v7;
}

- (void)invalidateIntrinsicContentSize
{
  _table = [(UITableViewHeaderFooterView *)self _table];
  v4 = _table;
  if (_table)
  {
    [_table _headerFooterDidInvalidateIntrinsicContentSize:self];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = UITableViewHeaderFooterView;
    [(UIView *)&v5 invalidateIntrinsicContentSize];
  }
}

- (void)layoutMarginsDidChange
{
  [(UIView *)self setNeedsLayout];
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    v3 = *(&self->super._viewFlags + 2);
    *(&self->super._viewFlags + 2) = v3 | 0x1000;
    [(UIView *)self layoutBelowIfNeeded];
    if ((v3 & 0x1000) == 0)
    {
      *(&self->super._viewFlags + 2) &= ~0x1000uLL;
    }
  }
}

- (void)_performConfigurationStateUpdate
{
  headerFooterFlags = self->_headerFooterFlags;
  if ((*&headerFooterFlags & 0x4000) != 0)
  {
    self->_headerFooterFlags = (*&headerFooterFlags & 0xFFFFBFFF);
    if (_UIObservationTrackingEnabled())
    {

      [(UITableViewHeaderFooterView *)self _updateConfigurationWithObservationTracking];
    }

    else
    {

      [(UITableViewHeaderFooterView *)self _executeConfigurationUpdate];
    }
  }
}

- (void)_updateConfigurationWithObservationTracking
{
  selfCopy = self;
  sub_188CBFFA4();
}

- (void)_executeConfigurationUpdate
{
  if (self)
  {
    v2 = _UISetCurrentFallbackEnvironment(self);
    configurationState = [self configurationState];
    memset(__src, 0, sizeof(__src));
    _UIBeginTrackingTraitUsage(self, 0, __src);
    [self _updateBackgroundViewConfigurationForState:configurationState];
    [self _updateContentViewConfigurationForState:configurationState];
    [self _updateConfigurationUsingState:configurationState];
    [self _updateViewConfigurationsWithState:{objc_msgSend(self, "_viewConfigurationState")}];
    [self updateConfigurationUsingState:configurationState];
    [self _bridgedUpdateConfigurationUsingState:configurationState];
    configurationUpdateHandler = [self configurationUpdateHandler];
    v5 = configurationUpdateHandler;
    if (configurationUpdateHandler)
    {
      (*(configurationUpdateHandler + 16))(configurationUpdateHandler, self, configurationState);
    }

    memcpy(v11, __src, sizeof(v11));
    TraitCollectionTSD = GetTraitCollectionTSD();
    memcpy(__dst, TraitCollectionTSD + 16, sizeof(__dst));
    memcpy(TraitCollectionTSD + 16, v11, 0x170uLL);
    v7 = __dst[22] & ~*&__src[11];
    v8 = *&__src[11] & ~__dst[22];
    v9 = __dst[22] & *&__src[11];
    v10 = [self methodForSelector:sel_updateConfigurationUsingState_];
    *&v11[0] = v7;
    *(&v11[0] + 1) = v8;
    *&v11[1] = v9;
    [(UIView *)self _recordTraitUsage:v11 trackedStateDiff:v10 insideMethod:sel_setNeedsUpdateConfiguration withInvalidationAction:?];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      [self _layoutSystemBackgroundView];
    }

    _UIRestorePreviousFallbackEnvironment(v2);
  }
}

- (id)contentConfiguration
{
  if ((*(&self->_headerFooterFlags + 1) & 0x80) != 0)
  {
    viewForContentConfiguration = self->_viewForContentConfiguration;
    if (viewForContentConfiguration)
    {
      viewForContentConfiguration = [viewForContentConfiguration configuration];
    }
  }

  else
  {
    viewForContentConfiguration = 0;
  }

  return viewForContentConfiguration;
}

- (unint64_t)_viewConfigurationState
{
  configurationState = [(UITableViewHeaderFooterView *)self configurationState];
  _viewConfigurationState = [configurationState _viewConfigurationState];

  return _viewConfigurationState;
}

- (void)didMoveToSuperview
{
  if ((*(&self->_headerFooterFlags + 1) & 4) == 0)
  {
    objc_storeWeak(&self->_table, 0);
  }

  v3.receiver = self;
  v3.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v3 didMoveToSuperview];
}

- (void)_updateProperties
{
  v3.receiver = self;
  v3.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v3 _updateProperties];
  [(UITableViewHeaderFooterView *)self _performConfigurationStateUpdate];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v21 layoutSubviews];
  [(UITableViewHeaderFooterView *)self _layoutSystemBackgroundView];
  [(UITableViewHeaderFooterView *)self _updateContentAndBackgroundView];
  [(UITableViewHeaderFooterView *)self _updateBackgroundView];
  [(UITableViewHeaderFooterView *)self _setupLabelAppearance];
  v3 = +[UIView areAnimationsEnabled];
  label = self->_label;
  if (label)
  {
    superview = [(UIView *)label superview];
    contentView = self->_contentView;

    if (superview != contentView)
    {
      [UIView setAnimationsEnabled:0];
      [(UIView *)self->_contentView addSubview:self->_label];
    }

    [(UITableViewHeaderFooterView *)self _labelFrame];
    [(UILabel *)self->_label setFrame:?];
    [UIView setAnimationsEnabled:v3];
  }

  detailLabel = self->_detailLabel;
  if (detailLabel)
  {
    superview2 = [(UIView *)detailLabel superview];
    v9 = self->_contentView;

    if (superview2 != v9)
    {
      [UIView setAnimationsEnabled:0];
      [(UIView *)self->_contentView addSubview:self->_detailLabel];
    }

    [(UITableViewHeaderFooterView *)self _detailLabelFrame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(UIView *)self->_detailLabel frame];
    if (v15 != v19 || v17 != v18)
    {
      [(UITableViewHeaderFooterView *)self _invalidateDetailLabelBackgroundColor];
    }

    [(UILabel *)self->_detailLabel setFrame:v11, v13, v15, v17];
    [(UITableViewHeaderFooterView *)self _updateDetailLabelBackgroundColorIfNeeded];
    [UIView setAnimationsEnabled:v3];
  }
}

- (void)_layoutSystemBackgroundView
{
  systemBackgroundView = self->_systemBackgroundView;
  if (systemBackgroundView)
  {
    [(_UISystemBackgroundView *)systemBackgroundView frameInContainerView:self];
    [(_UISystemBackgroundView *)self->_systemBackgroundView setFrame:?];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v4 = self->_systemBackgroundView;

      [(UIView *)v4 layoutIfNeeded];
    }
  }
}

- (void)_updateContentAndBackgroundView
{
  [(UITableViewHeaderFooterView *)self _backgroundRect];
  [(UIView *)self->_backgroundView setFrame:?];
  [(UITableViewHeaderFooterView *)self _contentRect];
  contentView = self->_contentView;

  [(UIView *)contentView setFrame:?];
}

- (CGRect)_backgroundRect
{
  [(UIView *)self bounds];
  Width = CGRectGetWidth(v9);

  [(UITableViewHeaderFooterView *)self _backgroundRectForWidth:Width];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (_UIContentViewConfiguration)_contentViewConfiguration
{
  if ((*(&self->_headerFooterFlags + 1) & 0x80) != 0 && !self->_viewForContentConfiguration)
  {
    configuration = [(UIView *)self->_contentView configuration];
  }

  else
  {
    configuration = 0;
  }

  return configuration;
}

- (UITableViewHeaderFooterView)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
  v4 = reuseIdentifier;
  if (dyld_program_sdk_at_least())
  {
    v8.receiver = self;
    v8.super_class = UITableViewHeaderFooterView;
    v5 = [(UIView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = v5;
    if (v5)
    {
      UITableViewHeaderFooterViewCommonInit(v5, v4);
    }
  }

  else
  {
    v6 = [(UITableViewHeaderFooterView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  return v6;
}

- (UITableViewHeaderFooterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (dyld_program_sdk_at_least())
  {
    v8 = [(UITableViewHeaderFooterView *)self initWithReuseIdentifier:0];
    v9 = v8;
    if (v8)
    {
      [(UITableViewHeaderFooterView *)v8 setFrame:x, y, width, height];
      [(UITableViewHeaderFooterView *)v9 _updateContentAndBackgroundView];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UITableViewHeaderFooterView;
    height = [(UIView *)&v12 initWithFrame:x, y, width, height];
    v9 = height;
    if (height)
    {
      UITableViewHeaderFooterViewCommonInit(height, 0);
    }
  }

  return v9;
}

- (UITableViewHeaderFooterView)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v22.receiver = self;
  v22.super_class = UITableViewHeaderFooterView;
  v5 = [(UIView *)&v22 initWithCoder:v4];
  if (dyld_program_sdk_at_least() && v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectForKey:@"UIReuseIdentifier"];
    UITableViewHeaderFooterViewCommonInit(v5, v6);

    v7 = [(NSCoder *)v4 decodeObjectForKey:@"UISystemBackgroundView"];
    systemBackgroundView = v5->_systemBackgroundView;
    v5->_systemBackgroundView = v7;

    v9 = v5->_systemBackgroundView;
    if (v9)
    {
      [(UIView *)v5 insertSubview:v9 atIndex:0];
    }

    else
    {
      v10 = [(NSCoder *)v4 decodeObjectForKey:@"UIBackgroundView"];
      [(UITableViewHeaderFooterView *)v5 setBackgroundView:v10];
    }

    v11 = [(NSCoder *)v4 decodeObjectForKey:@"UIContentConfigurationIdentifier"];
    v5->_headerFooterFlags = (*&v5->_headerFooterFlags & 0xFFFF7FFF | ((v11 != 0) << 15));

    v12 = [(NSCoder *)v4 decodeObjectForKey:@"UIContentConfigurationView"];
    viewForContentConfiguration = v5->_viewForContentConfiguration;
    v5->_viewForContentConfiguration = v12;

    v14 = [(NSCoder *)v4 decodeObjectForKey:@"UIContentView"];
    if (v14)
    {
      [(UITableViewHeaderFooterView *)v5 _setContentView:v14 insertAtBack:0];
    }

    if ((*(&v5->_headerFooterFlags + 1) & 0x80) == 0)
    {
      v15 = [(NSCoder *)v4 decodeObjectForKey:@"UILabel"];
      label = v5->_label;
      v5->_label = v15;

      v17 = [(NSCoder *)v4 decodeObjectForKey:@"UIDetailLabel"];
      detailLabel = v5->_detailLabel;
      v5->_detailLabel = v17;
    }

    if (!dyld_program_sdk_at_least() || [(NSCoder *)v4 containsValueForKey:@"UITableViewStyle"])
    {
      v5->_tableViewStyle = [(NSCoder *)v4 decodeIntegerForKey:@"UITableViewStyle"];
    }

    if ([(NSCoder *)v4 decodeBoolForKey:@"UIFloating"])
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    v5->_headerFooterFlags = (*&v5->_headerFooterFlags & 0xFFFFFFF7 | v19);
    v5->_headerFooterFlags = (*&v5->_headerFooterFlags & 0xFFFFFFFE | [(NSCoder *)v4 decodeBoolForKey:@"UIIsHeader"]);
    v5->_textAlignment = [(NSCoder *)v4 decodeIntegerForKey:@"UITextAlignment"];
    [(NSCoder *)v4 decodeDoubleForKey:@"UIMaxTitleWidth"];
    v5->_maxTitleWidth = v20;
    [(UIView *)v5 setNeedsLayout];
  }

  return v5;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5.receiver = self;
  v5.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v5 _populateArchivedSubviews:subviewsCopy];
  if (self->_systemBackgroundView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v14 encodeWithCoder:coderCopy];
  reuseIdentifier = self->_reuseIdentifier;
  if (reuseIdentifier)
  {
    [coderCopy encodeObject:reuseIdentifier forKey:@"UIReuseIdentifier"];
  }

  [coderCopy encodeObject:self->_systemBackgroundView forKey:@"UISystemBackgroundView"];
  if ((*(&self->_headerFooterFlags + 1) & 0x80) != 0)
  {
    contentConfiguration = [(UITableViewHeaderFooterView *)self contentConfiguration];
    if (contentConfiguration)
    {
      _contentViewConfiguration = contentConfiguration;
    }

    else
    {
      _contentViewConfiguration = [(UITableViewHeaderFooterView *)self _contentViewConfiguration];
      if (!_contentViewConfiguration)
      {
        v9 = 0;
LABEL_11:
        [coderCopy encodeObject:v9 forKey:@"UIContentConfigurationIdentifier"];

        goto LABEL_12;
      }
    }

    if (objc_opt_respondsToSelector())
    {
      [_contentViewConfiguration _wrappedConfigurationIdentifier];
    }

    else
    {
      v8 = objc_opt_class();
      NSStringFromClass(v8);
    }
    v9 = ;

    goto LABEL_11;
  }

LABEL_12:
  [coderCopy encodeObject:self->_viewForContentConfiguration forKey:@"UIContentConfigurationView"];
  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    [coderCopy encodeObject:backgroundView forKey:@"UIBackgroundView"];
  }

  contentView = self->_contentView;
  if (contentView)
  {
    [coderCopy encodeObject:contentView forKey:@"UIContentView"];
  }

  label = self->_label;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"UILabel"];
  }

  detailLabel = self->_detailLabel;
  if (detailLabel)
  {
    [coderCopy encodeObject:detailLabel forKey:@"UIDetailLabel"];
  }

  [coderCopy encodeBool:(*&self->_headerFooterFlags >> 3) & 1 forKey:@"UIFloating"];
  [coderCopy encodeInteger:self->_tableViewStyle forKey:@"UITableViewStyle"];
  [coderCopy encodeBool:*&self->_headerFooterFlags & 1 forKey:@"UIIsHeader"];
  [coderCopy encodeInteger:self->_textAlignment forKey:@"UITextAlignment"];
  [coderCopy encodeDouble:@"UIMaxTitleWidth" forKey:self->_maxTitleWidth];
}

- (void)_notifyIsDisplaying:(BOOL)displaying
{
  if (((((*&self->_headerFooterFlags & 0x200) == 0) ^ displaying) & 1) == 0)
  {
    displayingCopy = displaying;
    v5 = displaying ? 512 : 0;
    self->_headerFooterFlags = (*&self->_headerFooterFlags & 0xFFFFFDFF | v5);
    if (objc_opt_respondsToSelector())
    {
      contentView = self->_contentView;

      [(UIView *)contentView _containerViewIsHiddenForReuse:!displayingCopy];
    }
  }
}

- (void)prepareForReuse
{
  [(UILabel *)self->_detailLabel setText:0];
  [(UILabel *)self->_label setText:0];
  if (dyld_program_sdk_at_least())
  {
    *&self->_headerFooterFlags &= 0xFFFFFF3E;
    [(UIView *)self _removeAllAnimations:1];
  }

  [(UITableViewHeaderFooterView *)self _notifyIsDisplaying:0];

  [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
}

- (void)_setContentView:(id)view insertAtBack:(BOOL)back
{
  backCopy = back;
  viewCopy = view;
  v8 = viewCopy;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v10 = viewCopy;
    if (contentView)
    {
      [(UITableViewHeaderFooterView *)self _clearChangeHandlersForOldContentView:?];
      [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:0];
      [(UIView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    [(UIView *)v10 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
    v8 = v10;
    if (v10)
    {
      if (backCopy)
      {
        [(UIView *)self insertSubview:v10 atIndex:0];
      }

      else
      {
        [(UIView *)self addSubview:v10];
      }

      [(UIView *)v10 _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:(*&self->_headerFooterFlags >> 18) & 1];
      [(UITableViewHeaderFooterView *)self _setupChangeHandlersForNewContentView:v10];
      v8 = v10;
    }
  }
}

- (void)_clearChangeHandlersForOldContentView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setContainerBackgroundViewDidChangeHandler:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _setDefaultListContentConfigurationProvider:0];
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _containerViewIsHiddenForReuse:0];
  }
}

- (void)_setupChangeHandlersForNewContentView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__UITableViewHeaderFooterView__setupChangeHandlersForNewContentView___block_invoke;
    v7[3] = &unk_1E70F5A28;
    objc_copyWeak(&v8, &location);
    [viewCopy _setContainerBackgroundViewDidChangeHandler:v7];
    if ([(UITableViewHeaderFooterView *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
    {
      [(UITableViewHeaderFooterView *)self _updateDefaultBackgroundAppearance];
    }

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __69__UITableViewHeaderFooterView__setupChangeHandlersForNewContentView___block_invoke_2;
    v5[3] = &unk_1E70FE380;
    objc_copyWeak(&v6, &location);
    [viewCopy _setDefaultListContentConfigurationProvider:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  if (objc_opt_respondsToSelector())
  {
    [viewCopy _containerViewIsHiddenForReuse:(*&self->_headerFooterFlags & 0x200) == 0];
  }
}

void __69__UITableViewHeaderFooterView__setupChangeHandlersForNewContentView___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDefaultBackgroundAppearance];
}

id __69__UITableViewHeaderFooterView__setupChangeHandlersForNewContentView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained defaultContentConfiguration];
  v3 = [WeakRetained configurationState];
  v4 = [v2 updatedConfigurationForState:v3];

  return v4;
}

- (UIListContentConfiguration)defaultContentConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    if ((*&self->_headerFooterFlags & 0x41) == 0x40)
    {
      +[UIListContentConfiguration footerConfiguration];
    }

    else
    {
      +[UIListContentConfiguration headerConfiguration];
    }

    v6 = LABEL_13:;
    goto LABEL_16;
  }

  if (self)
  {
    tableViewStyle = self->_tableViewStyle;
    if (tableViewStyle < 0)
    {
      _table = [(UITableViewHeaderFooterView *)self _table];
      tableViewStyle = [_table _tableStyle];
    }

    v5 = *&self->_headerFooterFlags & 0x41;
    if ((tableViewStyle - 1) >= 2)
    {
      if (v5 == 64)
      {
        +[UIListContentConfiguration plainFooterConfiguration];
      }

      else
      {
        +[UIListContentConfiguration plainHeaderConfiguration];
      }
    }

    else if (v5 == 64)
    {
      +[UIListContentConfiguration groupedFooterConfiguration];
    }

    else
    {
      +[UIListContentConfiguration groupedHeaderConfiguration];
    }

    goto LABEL_13;
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (void)_applyContentViewConfiguration:(id)configuration withState:(id)state usingSPI:(BOOL)i
{
  iCopy = i;
  configurationCopy = configuration;
  stateCopy = state;
  configurationState = stateCopy;
  headerFooterFlags = self->_headerFooterFlags;
  if (configurationCopy)
  {
    if ((*&headerFooterFlags & 0x10000) != 0 && !self->_contentViewConfigurationProvider)
    {
      if (!stateCopy)
      {
        configurationState = [(UITableViewHeaderFooterView *)self configurationState];
      }

      v37 = configurationState;
      if (iCopy)
      {
        _viewConfigurationState = [(UITableViewHeaderFooterView *)self _viewConfigurationState];
        traitCollection = [(UIView *)self traitCollection];
        v13 = [configurationCopy updatedConfigurationForState:_viewConfigurationState traitCollection:traitCollection];
      }

      else
      {
        v13 = [configurationCopy updatedConfigurationForState:configurationState];
      }

      if (!v13)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewHeaderFooterView.m" lineNumber:661 description:{@"Updated configuration was nil for configuration: %@", configurationCopy}];
      }

      configurationState = v37;
    }

    else
    {
      v13 = configurationCopy;
    }

    v36 = configurationState;
    if ((*&headerFooterFlags & 0x8000) == 0)
    {
      *&self->_headerFooterFlags |= 0x8000u;
      [(UITableViewHeaderFooterView *)self _resetContentViews];
      if (!iCopy)
      {
LABEL_44:
        makeContentView = [v13 makeContentView];
        objc_storeStrong(&self->_viewForContentConfiguration, makeContentView);
        if (objc_opt_respondsToSelector())
        {
          _wrappedContentView = [(_UIContentViewInternal *)self->_viewForContentConfiguration _wrappedContentView];

          makeContentView = _wrappedContentView;
        }

        goto LABEL_46;
      }

      goto LABEL_40;
    }

    viewForContentConfiguration = self->_viewForContentConfiguration;
    if (!viewForContentConfiguration)
    {
      viewForContentConfiguration = self->_contentView;
    }

    v17 = v13;
    v18 = viewForContentConfiguration;
    if (objc_opt_respondsToSelector())
    {
      v19 = [v18 supportsConfiguration:v17];
    }

    else
    {
      v35 = a2;
      configuration = [v18 configuration];

      v18 = configuration;
      if (v18)
      {
        if (objc_opt_respondsToSelector())
        {
          [v18 _wrappedConfigurationIdentifier];
        }

        else
        {
          v24 = objc_opt_class();
          NSStringFromClass(v24);
        }
        v23 = ;
      }

      else
      {
        v23 = 0;
      }

      v25 = v17;
      if (v25)
      {
        if (objc_opt_respondsToSelector())
        {
          [v25 _wrappedConfigurationIdentifier];
        }

        else
        {
          v27 = objc_opt_class();
          NSStringFromClass(v27);
        }
        v26 = ;
      }

      else
      {
        v26 = 0;
      }

      v19 = [v23 isEqualToString:v26];
      a2 = v35;
    }

    *&self->_headerFooterFlags |= 0x8000u;
    if (!v19)
    {
      if (!iCopy)
      {
        configuration2 = [(_UIContentViewInternal *)self->_viewForContentConfiguration configuration];
        UIContentConfigurationAlertForReplacedContentView(@"header/footer view", self, configuration2, v17, @"Use separate reuse identifiers for different types of header/footer views to avoid this.");

        [(UITableViewHeaderFooterView *)self _resetContentViews];
        goto LABEL_44;
      }

      [(UITableViewHeaderFooterView *)self _resetContentViews];
LABEL_40:
      makeContentView = [v13 createContentView];
LABEL_46:
      if (!makeContentView)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"UITableViewHeaderFooterView.m" lineNumber:696 description:{@"Content configuration returned a nil content view: %@", v13}];
      }

      if (([makeContentView translatesAutoresizingMaskIntoConstraints] & 1) == 0)
      {
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"UITableViewHeaderFooterView.m" lineNumber:697 description:{@"The content view returned from the content configuration must have translatesAutoresizingMaskIntoConstraints enabled: %@", makeContentView}];
      }

      [(UITableViewHeaderFooterView *)self _setContentView:makeContentView insertAtBack:0];

      goto LABEL_51;
    }

    if (iCopy)
    {
      contentView = self->_contentView;
    }

    else
    {
      contentView = self->_viewForContentConfiguration;
    }

    [contentView setConfiguration:v17];
    v13 = v17;
  }

  else
  {
    self->_headerFooterFlags = (*&headerFooterFlags & 0xFFFF7FFF);
    if ((*&headerFooterFlags & 0x8000) == 0)
    {
      goto LABEL_52;
    }

    v36 = stateCopy;
    v14 = [_UITableViewHeaderFooterContentView alloc];
    [(UITableViewHeaderFooterView *)self _contentRect];
    v15 = [(_UITableViewHeaderFooterContentView *)v14 initWithFrame:?];
    [(UITableViewHeaderFooterView *)self _setContentView:v15 insertAtBack:0];

    [(UITableViewHeaderFooterView *)self _configureDefaultContentViewLayoutMargins];
    v13 = self->_viewForContentConfiguration;
    self->_viewForContentConfiguration = 0;
  }

LABEL_51:

  configurationState = v36;
LABEL_52:
}

- (void)setAutomaticallyUpdatesContentConfiguration:(BOOL)automaticallyUpdatesContentConfiguration
{
  if (automaticallyUpdatesContentConfiguration)
  {
    contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
    p_headerFooterFlags = &self->_headerFooterFlags;
    headerFooterFlags = self->_headerFooterFlags;
    if ((contentViewConfigurationProvider == 0) != ((*&headerFooterFlags & 0x10000) == 0))
    {
      return;
    }

    if (!contentViewConfigurationProvider)
    {
      *p_headerFooterFlags = (*&headerFooterFlags | 0x10000);
      [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
      return;
    }
  }

  else
  {
    p_headerFooterFlags = &self->_headerFooterFlags;
    headerFooterFlags = self->_headerFooterFlags;
    if ((*&headerFooterFlags & 0x10000) == 0)
    {
      return;
    }
  }

  *p_headerFooterFlags = (*&headerFooterFlags & 0xFFFEFFFF);
}

- (void)_setContentViewConfigurationProvider:(id)provider
{
  if (self->_contentViewConfigurationProvider != provider)
  {
    if (provider)
    {
      *&self->_headerFooterFlags &= ~0x10000u;
    }

    v4 = [provider copy];
    contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
    self->_contentViewConfigurationProvider = v4;

    [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (id)_contentViewConfigurationProvider
{
  v2 = _Block_copy(self->_contentViewConfigurationProvider);

  return v2;
}

- (void)_updateContentViewConfigurationForState:(id)state
{
  stateCopy = state;
  contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
  if (contentViewConfigurationProvider)
  {
    v11 = stateCopy;
    contentConfiguration = contentViewConfigurationProvider[2](contentViewConfigurationProvider, [(UITableViewHeaderFooterView *)self _viewConfigurationState]);
    [(UITableViewHeaderFooterView *)self _setContentViewConfiguration:contentConfiguration];
LABEL_3:

    stateCopy = v11;
    goto LABEL_4;
  }

  if (*(&self->_headerFooterFlags + 2))
  {
    v11 = stateCopy;
    if (self->_viewForContentConfiguration)
    {
      contentConfiguration = [(UITableViewHeaderFooterView *)self contentConfiguration];
      if (!contentConfiguration)
      {
        goto LABEL_3;
      }

      selfCopy2 = self;
      v8 = contentConfiguration;
      v9 = v11;
      v10 = 0;
    }

    else
    {
      contentConfiguration = [(UITableViewHeaderFooterView *)self _contentViewConfiguration];
      if (!contentConfiguration)
      {
        goto LABEL_3;
      }

      selfCopy2 = self;
      v8 = contentConfiguration;
      v9 = v11;
      v10 = 1;
    }

    [(UITableViewHeaderFooterView *)selfCopy2 _applyContentViewConfiguration:v8 withState:v9 usingSPI:v10];
    goto LABEL_3;
  }

LABEL_4:
}

+ (id)_defaultFontForTableViewStyle:(int64_t)style isSectionHeader:(BOOL)header
{
  v6 = +[UITraitCollection _fallbackTraitCollection];
  v7 = _UITableConstantsForTraitCollection(v6);

  if (header)
  {
    [v7 defaultHeaderFontForTableViewStyle:style];
  }

  else
  {
    [v7 defaultFooterFontForTableViewStyle:style];
  }
  v8 = ;

  return v8;
}

+ (id)_defaultFontForHeaderFooterView:(id)view
{
  viewCopy = view;
  sectionHeader = [viewCopy sectionHeader];
  _constants = [viewCopy _constants];
  tableView = [viewCopy tableView];

  _tableStyle = [tableView _tableStyle];
  if (sectionHeader)
  {
    [_constants defaultHeaderFontForTableViewStyle:_tableStyle];
  }

  else
  {
    [_constants defaultFooterFontForTableViewStyle:_tableStyle];
  }
  v8 = ;

  return v8;
}

+ (id)_defaultTextColorForTableViewStyle:(int64_t)style isSectionHeader:(BOOL)header
{
  v6 = +[UITraitCollection _fallbackTraitCollection];
  v7 = _UITableConstantsForTraitCollection(v6);

  if (header)
  {
    [v7 defaultHeaderTextColorForTableViewStyle:style focused:0];
  }

  else
  {
    [v7 defaultFooterTextColorForTableViewStyle:style focused:0];
  }
  v8 = ;

  return v8;
}

+ (id)_defaultPlainHeaderFooterFont
{
  if (dyld_program_sdk_at_least())
  {
    [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleHeadline"];
  }

  else
  {
    [off_1E70ECC18 boldSystemFontOfSize:14.0];
  }
  v2 = ;

  return v2;
}

+ (double)defaultHeaderHeightForStyle:(int64_t)style
{
  if (style)
  {
    return 17.5;
  }

  v4 = dyld_program_sdk_at_least();
  result = 23.0;
  if (v4)
  {
    _defaultPlainHeaderFooterFont = [objc_opt_class() _defaultPlainHeaderFooterFont];
    [_defaultPlainHeaderFooterFont _scaledValueForValue:28.0];
    v7 = v6;

    return v7;
  }

  return result;
}

+ (double)defaultFooterHeightForStyle:(int64_t)style
{
  if (style)
  {
    return 17.5;
  }

  v4 = dyld_program_sdk_at_least();
  result = 23.0;
  if (v4)
  {
    _defaultPlainHeaderFooterFont = [objc_opt_class() _defaultPlainHeaderFooterFont];
    [_defaultPlainHeaderFooterFont _scaledValueForValue:28.0];
    v7 = v6;

    return v7;
  }

  return result;
}

- (void)setFrame:(CGRect)frame
{
  self->_frame = frame;
  v4.receiver = self;
  v4.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v4 setFrame:?];
  if (qword_1ED49AF50 != -1)
  {
    dispatch_once(&qword_1ED49AF50, &__block_literal_global_577);
  }

  if (_MergedGlobals_37 == 1)
  {
    [(UIView *)self layoutBelowIfNeeded];
  }
}

void __40__UITableViewHeaderFooterView_setFrame___block_invoke()
{
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    v0 = _UIMainBundleIdentifier();
    if (![v0 rangeOfString:@"com.inditex.zara"])
    {
      _MergedGlobals_37 = 1;
    }
  }
}

- (void)_setAutomaticIntrinsicContentSizeInvalidationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_headerFooterFlags = (*&self->_headerFooterFlags & 0xFFFBFFFF | v3);
  [(UIView *)self->_contentView _setInvalidatesIntrinsicContentSizeForSubviewAutoLayoutChanges:?];
}

- (void)setSectionHeader:(BOOL)header
{
  headerCopy = header;
  headerFooterFlags = self->_headerFooterFlags;
  self->_headerFooterFlags = (*&headerFooterFlags & 0xFFFFFFFE | header);
  if (dyld_program_sdk_at_least() & 1) != 0 || ((*&headerFooterFlags ^ headerCopy))
  {
    *&self->_headerFooterFlags |= 0x40u;

    [(UITableViewHeaderFooterView *)self _setupDefaultsIfNecessary];
  }
}

- (void)_setupLabelForSourceList:(id)list
{
  listCopy = list;
  [listCopy setNumberOfLines:1];
  [listCopy setLineBreakMode:4];
  [listCopy setAllowsDefaultTighteningForTruncation:0];
  [listCopy setAdjustsFontSizeToFitWidth:0];
}

- (void)setTextAlignment:(int64_t)alignment
{
  if (self->_textAlignment != alignment)
  {
    self->_textAlignment = alignment;
    [(UILabel *)self->_label setTextAlignment:?];
  }
}

- (CGSize)_textSizeForWidth:(double)width
{
  v33 = *MEMORY[0x1E69E9840];
  text = [(UILabel *)self->_label text];
  if ([text length])
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    font = [(UILabel *)self->_label font];
    [font pointSize];
    v9 = v8;

    if (has_internal_diagnostics)
    {
      if (v9 != 0.0)
      {
        goto LABEL_4;
      }

      v26 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
LABEL_18:

LABEL_4:
        label = self->_label;
        if (self->_tableViewStyle)
        {
          [(UILabel *)label sizeThatFits:width, 1.79769313e308];
          v12 = v11;
          v14 = v13;
        }

        else
        {
          font2 = [(UILabel *)label font];
          [text _legacy_sizeWithFont:font2 forWidth:-[UILabel lineBreakMode](self->_label lineBreakMode:{"lineBreakMode"), width}];
          v12 = v16;
          v14 = v17;
        }

        goto LABEL_8;
      }

      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v31 = 138412290;
      v32 = v28;
      _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "Attempting to compute the size of a %@ text label with an undefined (0 pt) font! This will yield invalid results.", &v31, 0xCu);
    }

    else
    {
      if (v9 != 0.0)
      {
        goto LABEL_4;
      }

      v29 = *(__UILogGetCategoryCachedImpl("Assert", &_textSizeForWidth____s_category) + 8);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v26 = v29;
      v30 = objc_opt_class();
      v28 = NSStringFromClass(v30);
      v31 = 138412290;
      v32 = v28;
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Attempting to compute the size of a %@ text label with an undefined (0 pt) font! This will yield invalid results.", &v31, 0xCu);
    }

    goto LABEL_18;
  }

  v12 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
LABEL_8:
  _table = [(UITableViewHeaderFooterView *)self _table];
  v19 = _table;
  if (_table)
  {
    _scrollView = [_table _scrollView];
    [_scrollView _currentScreenScale];
    v22 = v21;
  }

  else
  {
    [(UIView *)self _currentScreenScale];
    v22 = v23;
  }

  v24 = ceil(v12 * v22) / v22;
  v25 = ceil(v14 * v22) / v22;
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)_detailTextSizeForWidth:(double)width
{
  v35 = *MEMORY[0x1E69E9840];
  _useDetailText = [(UITableViewHeaderFooterView *)self _useDetailText];
  v6 = *MEMORY[0x1E695F060];
  v7 = *(MEMORY[0x1E695F060] + 8);
  if (!_useDetailText)
  {
    goto LABEL_12;
  }

  text = [(UILabel *)self->_detailLabel text];
  if ([text length])
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    font = [(UILabel *)self->_detailLabel font];
    [font pointSize];
    v12 = v11;

    if (has_internal_diagnostics)
    {
      if (v12 != 0.0)
      {
        goto LABEL_5;
      }

      v28 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
LABEL_19:

LABEL_5:
        v13 = dyld_program_sdk_at_least();
        detailLabel = self->_detailLabel;
        if (v13)
        {
          [(UILabel *)detailLabel sizeThatFits:width, 1.79769313e308];
          v6 = v15;
          v7 = v16;
        }

        else
        {
          font2 = [(UILabel *)detailLabel font];
          [text _legacy_sizeWithFont:font2 constrainedToSize:-[UILabel lineBreakMode](self->_detailLabel lineBreakMode:{"lineBreakMode"), width, 3.40282347e38}];
          v6 = v18;
          v7 = v19;
        }

        goto LABEL_8;
      }

      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v33 = 138412290;
      v34 = v30;
      _os_log_fault_impl(&dword_188A29000, v28, OS_LOG_TYPE_FAULT, "Attempting to compute the size of a %@ detail text label with an undefined (0 pt) font! This will yield invalid results.", &v33, 0xCu);
    }

    else
    {
      if (v12 != 0.0)
      {
        goto LABEL_5;
      }

      v31 = *(__UILogGetCategoryCachedImpl("Assert", &_detailTextSizeForWidth____s_category) + 8);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v28 = v31;
      v32 = objc_opt_class();
      v30 = NSStringFromClass(v32);
      v33 = 138412290;
      v34 = v30;
      _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "Attempting to compute the size of a %@ detail text label with an undefined (0 pt) font! This will yield invalid results.", &v33, 0xCu);
    }

    goto LABEL_19;
  }

LABEL_8:
  _table = [(UITableViewHeaderFooterView *)self _table];
  v21 = _table;
  if (_table)
  {
    _scrollView = [_table _scrollView];
    [_scrollView _currentScreenScale];
    v24 = v23;
  }

  else
  {
    [(UIView *)self _currentScreenScale];
    v24 = v25;
  }

  v6 = ceil(v6 * v24) / v24;
  v7 = ceil(v7 * v24) / v24;

LABEL_12:
  v26 = v6;
  v27 = v7;
  result.height = v27;
  result.width = v26;
  return result;
}

- (void)_invalidateLabelBackgroundColor
{
  *&self->_headerFooterFlags |= 2u;
  if (self->_label)
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_updateDetailLabelBackgroundColor
{
  if (self->_detailLabel)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __64__UITableViewHeaderFooterView__updateDetailLabelBackgroundColor__block_invoke;
    v2[3] = &unk_1E70F3590;
    v2[4] = self;
    [UIView _performSystemAppearanceModifications:v2];
  }
}

void __64__UITableViewHeaderFooterView__updateDetailLabelBackgroundColor__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 408);
  v4 = v3 > 0x10;
  v5 = (1 << v3) & 0x10006;
  if (v4 || v5 == 0)
  {
    goto LABEL_7;
  }

  v7 = +[UIDevice currentDevice];
  if ([v7 userInterfaceIdiom])
  {

    v2 = *(a1 + 32);
LABEL_7:
    v8 = *(v2 + 496);
LABEL_8:
    v9 = +[UIColor clearColor];
    [v8 setBackgroundColor:v9];

    goto LABEL_9;
  }

  v15 = [*(*(a1 + 32) + 504) backgroundColor];
  [v15 alphaComponent];
  v17 = v16;

  v18 = *(a1 + 32);
  v8 = *(v18 + 496);
  if (v17 != 1.0)
  {
    goto LABEL_8;
  }

  v19 = [*(v18 + 504) backgroundColor];
  [v8 setBackgroundColor:v19];

LABEL_9:
  v10 = *(a1 + 32);
  v11 = *(v10 + 496);
  v12 = [*(v10 + 504) backgroundColor];
  if ([v12 isPatternColor])
  {
    [*(*(a1 + 32) + 496) frame];
    v13 = -CGRectGetMinX(v20);
    [*(*(a1 + 32) + 496) frame];
    v14 = -CGRectGetMinY(v21);
  }

  else
  {
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  [v11 setPatternPhase:{v13, v14}];

  *(*(a1 + 32) + 576) &= ~4u;
}

- (void)_updateDetailLabelBackgroundColorIfNeeded
{
  if ((*&self->_headerFooterFlags & 4) != 0)
  {
    if (self->_detailLabel)
    {
      [(UITableViewHeaderFooterView *)self _updateDetailLabelBackgroundColor];
    }
  }
}

- (id)_label:(BOOL)_label
{
  label = self->_label;
  if (label)
  {
    v5 = 1;
  }

  else
  {
    v5 = !_label;
  }

  if (!v5)
  {
    if ((*(&self->_headerFooterFlags + 1) & 0x80) != 0)
    {
      label = 0;
    }

    else
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __38__UITableViewHeaderFooterView__label___block_invoke;
      v7[3] = &unk_1E70F3590;
      v7[4] = self;
      [UIView _performSystemAppearanceModifications:v7];
      label = self->_label;
    }
  }

  return label;
}

uint64_t __38__UITableViewHeaderFooterView__label___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_UITableViewHeaderFooterViewLabel);
  v3 = *(a1 + 32);
  v4 = *(v3 + 488);
  *(v3 + 488) = v2;

  [*(*(a1 + 32) + 488) setOpaque:0];
  v5 = +[UIColor clearColor];
  [*(*(a1 + 32) + 488) setBackgroundColor:v5];

  v6 = [off_1E70ECC18 systemFontOfSize:0.0];
  [*(*(a1 + 32) + 488) setFont:v6];

  v7 = *(a1 + 32);
  if ((*(v7 + 408) & 0x8000000000000000) == 0)
  {
    [v7 _setupLabelAppearance];
    v7 = *(a1 + 32);
  }

  [*(v7 + 488) setUserInteractionEnabled:0];
  v8 = *(*(a1 + 32) + 488);

  return [v8 setEnabled:1];
}

- (UILabel)detailTextLabel
{
  detailLabel = self->_detailLabel;
  if (!detailLabel)
  {
    if ((*(&self->_headerFooterFlags + 1) & 0x80) != 0)
    {
      detailLabel = 0;
    }

    else
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __46__UITableViewHeaderFooterView_detailTextLabel__block_invoke;
      v5[3] = &unk_1E70F3590;
      v5[4] = self;
      [UIView _performSystemAppearanceModifications:v5];
      [(UITableViewHeaderFooterView *)self _invalidateDetailLabelBackgroundColor];
      detailLabel = self->_detailLabel;
    }
  }

  return detailLabel;
}

uint64_t __46__UITableViewHeaderFooterView_detailTextLabel__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(_UITableViewHeaderFooterViewLabel);
  v3 = *(a1 + 32);
  v4 = *(v3 + 496);
  *(v3 + 496) = v2;

  [*(*(a1 + 32) + 496) setOpaque:0];
  v5 = +[UIColor clearColor];
  [*(*(a1 + 32) + 496) setBackgroundColor:v5];

  v6 = [off_1E70ECC18 systemFontOfSize:0.0];
  [*(*(a1 + 32) + 496) setFont:v6];

  v7 = *(a1 + 32);
  if ((*(v7 + 408) & 0x8000000000000000) == 0)
  {
    [v7 _setupLabelAppearance];
    v7 = *(a1 + 32);
  }

  [*(v7 + 496) setUserInteractionEnabled:0];
  v8 = *(*(a1 + 32) + 496);

  return [v8 setEnabled:1];
}

- (NSString)text
{
  label = self->_label;
  if (label)
  {
    text = [(UILabel *)label text];
  }

  else
  {
    text = &stru_1EFB14550;
  }

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  if (self->_label || [textCopy length])
  {
    v4 = [(UITableViewHeaderFooterView *)self _label:1];
    [(UILabel *)self->_label setText:textCopy];
    [(UIView *)self setNeedsLayout];
    [(UIView *)self setNeedsDisplay];
  }
}

- (CGRect)_labelFrame
{
  text = [(UILabel *)self->_label text];
  _table = [(UITableViewHeaderFooterView *)self _table];
  v5 = MEMORY[0x1E695F058];
  v6 = *MEMORY[0x1E695F058];
  rect_24 = *(MEMORY[0x1E695F058] + 8);
  if (![text length])
  {
    v19 = *(v5 + 16);
    v20 = *(v5 + 24);
    goto LABEL_50;
  }

  [(UITableViewHeaderFooterView *)self _contentRect];
  v8 = v7;
  rect_8 = v10;
  rect_16 = v9;
  v12 = v11;
  [(UITableViewHeaderFooterView *)self _insetsToContentRect];
  v82 = v14;
  v83 = v13;
  v15 = v12;
  if (v12 - v13 - v14 <= self->_maxTitleWidth)
  {
    maxTitleWidth = v12 - v13 - v14;
  }

  else
  {
    maxTitleWidth = self->_maxTitleWidth;
  }

  [(UITableViewHeaderFooterView *)self _textSizeForWidth:maxTitleWidth];
  v19 = v17;
  v20 = v18;
  rect = v8;
  if (!self->_tableViewStyle)
  {
    [(UITableConstants *)self->_constants defaultPlainHeaderLabelYPositionForTableView:_table headerBounds:*&self->_headerFooterFlags & 1 textRect:v8 isHeader:rect_16, v15, rect_8, v6, rect_24, v17, v18];
    rect_24 = v28;
    goto LABEL_18;
  }

  font = [(UILabel *)self->_label font];
  if (*&self->_headerFooterFlags)
  {
    if (v20 > 1.79769313e308)
    {
      v29 = dyld_program_sdk_at_least();
      v30 = 35.0;
      if (v29)
      {
        [font _scaledValueForValue:35.0];
      }

      rect_24 = rect_16 + v30;
      v20 = 1.79769313e308;
      goto LABEL_17;
    }

    _useDetailText = [(UITableViewHeaderFooterView *)self _useDetailText];
    v51 = dyld_program_sdk_at_least();
    if (_useDetailText)
    {
      if (v51)
      {
        [font _scaledValueForValue:45.0];
        v53 = v52;
        [(UILabel *)self->_label _firstLineBaselineOffsetFromBoundsTop];
        rect_24 = v53 - v54;
        headerFooterFlags = self->_headerFooterFlags;
        if ((*&headerFooterFlags & 0x10) != 0)
        {
          [font _scaledValueForValue:10.0];
        }

        else
        {
          if ((*&headerFooterFlags & 0x20) != 0)
          {
            goto LABEL_17;
          }

          if (_table)
          {
            _scrollView = [_table _scrollView];
            [_scrollView _currentScreenScale];
            rect_24 = rect_24 - UIPixelBoundaryOffset(0, 17.5, v57);

            goto LABEL_17;
          }

          [(UIView *)self _currentScreenScale];
          v80 = UIPixelBoundaryOffset(0, 17.5, v81);
        }

        rect_24 = rect_24 - v80;
        goto LABEL_17;
      }

      v108.origin.x = v8;
      v108.size.height = rect_8;
      v108.origin.y = rect_16;
      v108.size.width = v15;
      MaxY = CGRectGetMaxY(v108);
      v76 = dyld_program_sdk_at_least();
      v77 = 10.0;
      if (v76)
      {
        v77 = 8.0;
      }

      v78 = MaxY - v77;
      [(UITableViewHeaderFooterView *)self _detailTextSizeForWidth:maxTitleWidth];
      v27 = v78 - v79 + -10.0 - v20;
    }

    else
    {
      v70 = 10.0;
      if (v51)
      {
        [font _scaledValueForValue:10.0];
        v70 = v71;
      }

      v106.origin.x = v8;
      v106.size.height = rect_8;
      v106.origin.y = rect_16;
      v106.size.width = v15;
      v72 = CGRectGetMaxY(v106);
      v107.origin.x = v6;
      v107.origin.y = rect_24;
      v107.size.width = v19;
      v107.size.height = v20;
      v73 = v72 - (v70 + CGRectGetHeight(v107));
      [(UILabel *)self->_label _baselineOffsetFromBottom];
      v27 = v73 + v74;
    }
  }

  else
  {
    v22 = 10.0;
    if (dyld_program_sdk_at_least())
    {
      [font _scaledValueForValue:10.0];
      v22 = v23;
    }

    v88.origin.x = rect;
    v88.size.height = rect_8;
    v88.origin.y = rect_16;
    v88.size.width = v15;
    v24 = CGRectGetMaxY(v88);
    v89.origin.x = v6;
    v89.origin.y = rect_24;
    v89.size.width = v19;
    v89.size.height = v20;
    Height = CGRectGetHeight(v89);
    [(UILabel *)self->_label _baselineOffsetFromBottom];
    v27 = v24 - (v22 + Height) + v26;
  }

  rect_24 = v27;
LABEL_17:

LABEL_18:
  font2 = [(UILabel *)self->_label font];
  [font2 lineHeight];
  v33 = v32;

  v90.origin.x = v6;
  v90.origin.y = rect_24;
  v90.size.width = v19;
  v90.size.height = v20;
  if (CGRectGetHeight(v90) < v33)
  {
    v34 = v20;
    if (v33 >= rect_8)
    {
      v20 = rect_8;
    }

    else
    {
      v20 = v33;
    }

    v91.origin.x = v6;
    v91.origin.y = rect_24;
    v91.size.width = v19;
    v91.size.height = v34;
    MinY = CGRectGetMinY(v91);
    v92.origin.x = v6;
    v92.origin.y = rect_24;
    v92.size.width = v19;
    v92.size.height = v34;
    v93.origin.y = round(MinY + CGRectGetHeight(v92) * 0.5 - v20 * 0.5);
    v93.origin.x = v6;
    rect_24 = v93.origin.y;
    v93.size.width = v19;
    v93.size.height = v20;
    v36 = CGRectGetMinY(v93);
    v94.origin.x = rect;
    v94.origin.y = rect_16;
    v94.size.width = v15;
    v94.size.height = rect_8;
    if (v36 < CGRectGetMinY(v94))
    {
      v95.origin.x = rect;
      v95.size.height = rect_8;
      v95.origin.y = rect_16;
      v95.size.width = v15;
      rect_24 = CGRectGetMinY(v95);
    }

    v96.origin.x = v6;
    v96.origin.y = rect_24;
    v96.size.width = v19;
    v96.size.height = v20;
    v37 = CGRectGetMaxY(v96);
    v97.origin.x = rect;
    v97.size.height = rect_8;
    v97.origin.y = rect_16;
    v97.size.width = v15;
    if (v37 > CGRectGetMaxY(v97))
    {
      v98.origin.x = rect;
      v98.size.height = rect_8;
      v98.origin.y = rect_16;
      v98.size.width = v15;
      v38 = CGRectGetMaxY(v98);
      v99.origin.x = v6;
      v99.origin.y = rect_24;
      v99.size.width = v19;
      v99.size.height = v20;
      rect_24 = rect_24 - (v38 - CGRectGetMaxY(v99));
    }
  }

  attributedText = [(UILabel *)self->_label attributedText];
  v40 = [attributedText _ui_resolvedTextAlignmentForUserInterfaceLayoutDirection:{+[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", -[UIView semanticContentAttribute](self, "semanticContentAttribute"))}];

  if (v40 == 2)
  {
    v101.origin.x = rect;
    v101.size.height = rect_8;
    v101.origin.y = rect_16;
    v101.size.width = v15;
    v48 = ceil(CGRectGetWidth(v101) - v19 - v82);
    if (v48 >= 0.0)
    {
      v6 = v48;
    }

    else
    {
      v6 = 0.0;
    }

    _scrollView2 = [_table _scrollView];
    if ([_scrollView2 _shouldReverseLayoutDirection])
    {
    }

    else
    {
      _isShowingIndex = [_table _isShowingIndex];

      if (_isShowingIndex)
      {
        [_table _indexFrame];
        v6 = v6 - CGRectGetWidth(v102);
      }
    }
  }

  else
  {
    v41 = rect;
    if (v40 == 1)
    {
      v45 = rect_8;
      v44 = rect_16;
      v46 = v15;
      v47 = ceil((CGRectGetWidth(*&v41) - v19) * 0.5);
      if (v47 >= 0.0)
      {
        v6 = v47;
      }

      else
      {
        v6 = 0.0;
      }

      goto LABEL_50;
    }

    if (!v40)
    {
      _scrollView3 = [_table _scrollView];
      if ([_scrollView3 _shouldReverseLayoutDirection])
      {
        _isShowingIndex2 = [_table _isShowingIndex];

        if (_isShowingIndex2)
        {
          [_table _indexFrame];
          v6 = v83 + CGRectGetWidth(v100);
          goto LABEL_50;
        }
      }

      else
      {
      }

      v6 = v83;
    }
  }

LABEL_50:
  v103.origin.x = v6;
  v103.origin.y = rect_24;
  v103.size.width = v19;
  v103.size.height = v20;
  v59 = fmax(CGRectGetWidth(v103), 0.0);
  v104.origin.x = v6;
  v104.origin.y = rect_24;
  v104.size.width = v59;
  v104.size.height = v20;
  v60 = fmax(CGRectGetHeight(v104), 0.0);
  v105.origin.x = v6;
  v105.origin.y = rect_24;
  v105.size.width = v59;
  v105.size.height = v60;
  v61 = CGRectGetMinY(v105);
  if (_table)
  {
    _scrollView4 = [_table _scrollView];
    [_scrollView4 _currentScreenScale];
    v64 = UIPixelBoundaryOffset(0, v61, v63);
  }

  else
  {
    [(UIView *)self _currentScreenScale];
    v64 = UIPixelBoundaryOffset(0, v61, v65);
  }

  v66 = v6;
  v67 = v64;
  v68 = v59;
  v69 = v60;
  result.size.height = v69;
  result.size.width = v68;
  result.origin.y = v67;
  result.origin.x = v66;
  return result;
}

- (CGRect)_detailLabelFrame
{
  _table = [(UITableViewHeaderFooterView *)self _table];
  [(UITableViewHeaderFooterView *)self _labelFrame];
  v5 = v4;
  v7 = v6;
  v44 = v8;
  [(UITableViewHeaderFooterView *)self _contentRect];
  v10 = v9;
  rect = v11;
  v13 = v12;
  v15 = v14;
  if ([_table _isShowingIndex])
  {
    [_table _indexFrame];
    v13 = v13 - CGRectGetWidth(v46);
  }

  [(UITableViewHeaderFooterView *)self _insetsToContentRect];
  maxTitleWidth = v13 - v16 - v17;
  if (maxTitleWidth > self->_maxTitleWidth)
  {
    maxTitleWidth = self->_maxTitleWidth;
  }

  [(UITableViewHeaderFooterView *)self _detailTextSizeForWidth:maxTitleWidth];
  v20 = v19;
  v22 = v21;
  v47.origin.x = v5;
  v23 = v7;
  v47.origin.y = v7;
  v47.size.width = v20;
  v47.size.height = v22;
  MaxY = CGRectGetMaxY(v47);
  v48.origin.x = v10;
  v48.origin.y = rect;
  v48.size.width = v13;
  v48.size.height = v15;
  if (MaxY > CGRectGetMaxY(v48))
  {
    v49.origin.x = v10;
    v49.origin.y = rect;
    v49.size.width = v13;
    v49.size.height = v15;
    v25 = CGRectGetMaxY(v49);
    v50.origin.x = v5;
    v50.origin.y = v23;
    v50.size.width = v20;
    v50.size.height = v22;
    v22 = fmax(v25 - CGRectGetMinY(v50), 0.0);
  }

  if ([(UIView *)self _shouldReverseLayoutDirection])
  {
    v5 = v5 + v44 - v20;
  }

  if (dyld_program_sdk_at_least())
  {
    v51.origin.x = v10;
    v51.origin.y = rect;
    v51.size.width = v13;
    v51.size.height = v15;
    v26 = CGRectGetMaxY(v51);
    font = [(UILabel *)self->_label font];
    v28 = dyld_program_sdk_at_least();
    v29 = 10.0;
    if (v28)
    {
      v29 = 8.0;
    }

    [font _scaledValueForValue:v29];
    v31 = v30;
    v52.origin.x = v5;
    v52.origin.y = v23;
    v52.size.width = v20;
    v52.size.height = v22;
    Height = CGRectGetHeight(v52);
    [(UILabel *)self->_detailLabel _baselineOffsetFromBottom];
    v34 = v26 - (v31 + Height - v33);
  }

  else
  {
    v53.origin.x = v5;
    v53.origin.y = v23;
    v53.size.width = v20;
    v53.size.height = v22;
    v34 = CGRectGetMaxY(v53) + 10.0;
  }

  v54.origin.x = v5;
  v54.origin.y = v34;
  v54.size.width = v20;
  v54.size.height = v22;
  MinY = CGRectGetMinY(v54);
  if (_table)
  {
    _scrollView = [_table _scrollView];
    [_scrollView _currentScreenScale];
    v38 = UIPixelBoundaryOffset(0, MinY, v37);
  }

  else
  {
    [(UIView *)self _currentScreenScale];
    v38 = UIPixelBoundaryOffset(0, MinY, v39);
  }

  v40 = v5;
  v41 = v38;
  v42 = v20;
  v43 = v22;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (BOOL)_useDetailText
{
  tableViewStyle = self->_tableViewStyle;
  v3 = tableViewStyle > 0x10;
  v4 = (1 << tableViewStyle) & 0x10006;
  v5 = v3 || v4 == 0;
  if (v5 || (*&self->_headerFooterFlags & 1) == 0)
  {
    return 0;
  }

  text = [(UILabel *)self->_detailLabel text];
  v6 = [text length] != 0;

  return v6;
}

- (CGSize)_sizeThatFits:(CGSize)fits stripPaddingForAbuttingView:(BOOL)view isTopHeader:(BOOL)header
{
  viewCopy = view;
  width = fits.width;
  p_label = &self->_label;
  label = self->_label;
  if (label)
  {
    [(UIView *)label frame:fits.width];
    if (CGRectGetWidth(v96) <= 0.0 || ([(UIView *)*p_label frame], fits.width = CGRectGetHeight(v97), fits.width <= 0.0))
    {
      [(UIView *)self setNeedsLayout];
    }
  }

  p_detailLabel = &self->_detailLabel;
  detailLabel = self->_detailLabel;
  if (detailLabel)
  {
    [(UIView *)detailLabel frame:fits.width];
    if (CGRectGetWidth(v98) <= 0.0 || ([(UIView *)*p_detailLabel frame], fits.width = CGRectGetHeight(v99), fits.width <= 0.0))
    {
      [(UIView *)self setNeedsLayout];
    }
  }

  [(UIView *)self layoutIfNeeded:fits.width];
  _table = [(UITableViewHeaderFooterView *)self _table];
  [(UITableViewHeaderFooterView *)self _insetsToBounds];
  v16 = v14 + v15;
  if (width - (v14 + v15) <= self->_maxTitleWidth)
  {
    maxTitleWidth = width - (v14 + v15);
  }

  else
  {
    maxTitleWidth = self->_maxTitleWidth;
  }

  [(UITableViewHeaderFooterView *)self _textSizeForWidth:maxTitleWidth];
  v19 = v18;
  v21 = v20;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    [(UITableConstants *)self->_constants defaultHeaderFooterLayoutMarginsForTableViewStyle:self->_tableViewStyle isHeader:*&self->_headerFooterFlags & 1 isFirstSection:(*&self->_headerFooterFlags >> 5) & 1];
    v26 = v25 + v21 + v24;
  }

  else
  {
    tableViewStyle = self->_tableViewStyle;
    v28 = tableViewStyle > 0x10;
    v29 = (1 << tableViewStyle) & 0x10006;
    v30 = v28 || v29 == 0;
    if (v30 || [(UITableViewHeaderFooterView *)self _isSourceListOrMacIdiom])
    {
      constants = self->_constants;
      table = [(UITableViewHeaderFooterView *)self table];
      [(UITableConstants *)constants defaultSectionHeaderHeightForTableView:table];
      v26 = v33;
    }

    else
    {
      v34 = dyld_program_sdk_at_least();
      headerFooterFlags = self->_headerFooterFlags;
      if (v34 && (*&headerFooterFlags & 1) != 0)
      {
        font = [(UILabel *)*p_label font];
        [font _scaledValueForValue:45.0];
        v38 = v37;
        font2 = [(UILabel *)*p_label font];
        [font2 lineHeight];
        v41 = v21 + v38 - v40;

        _useDetailText = [(UITableViewHeaderFooterView *)self _useDetailText];
        v43 = 10.0;
        if (_useDetailText)
        {
          [(UITableViewHeaderFooterView *)self _detailTextSizeForWidth:maxTitleWidth];
          v45 = v41 + v44;
          v46 = dyld_program_sdk_at_least();
          v47 = 20.0;
          if (v46)
          {
            v47 = 16.0;
          }

          [font _scaledValueForValue:v47];
          v49 = v48;
          font3 = [(UILabel *)*p_detailLabel font];
          [font3 lineHeight];
          v41 = v45 + v49 - v51;

          v52 = dyld_program_sdk_at_least();
          v43 = 10.0;
          if (v52)
          {
            v43 = 8.0;
          }
        }

        [font _scaledValueForValue:v43];
        v26 = v41 + v53;
        if (viewCopy)
        {
          v26 = v26 + -10.0;
        }

        else if (!header)
        {
          if (_table)
          {
            _scrollView = [_table _scrollView];
            [_scrollView _currentScreenScale];
            v26 = v26 - UIPixelBoundaryOffset(0, 17.5, v74);
          }

          else
          {
            [(UIView *)self _currentScreenScale];
            v26 = v26 - UIPixelBoundaryOffset(0, 17.5, v83);
          }
        }

        [(UIView *)self _currentScreenScale];
        if (v26 < UIPixelBoundaryOffset(0, 17.5, v84))
        {
          [(UIView *)self _currentScreenScale];
          v26 = UIPixelBoundaryOffset(0, 17.5, v85);
        }
      }

      else if (*&headerFooterFlags)
      {
        if ([(UITableViewHeaderFooterView *)self _useDetailText])
        {
          if (dyld_program_sdk_at_least())
          {
            v63 = 61.0;
          }

          else
          {
            v63 = 65.0;
          }

          v64 = dyld_program_sdk_at_least();
          v65 = 10.0;
          if (v64)
          {
            v65 = 8.0;
          }

          v66 = v63 + v65;
          font4 = [(UILabel *)*p_label font];
          [font4 lineHeight];
          v69 = v68;
          font5 = [(UILabel *)*p_detailLabel font];
          [font5 lineHeight];
          v72 = v66 - (v69 + v71);
        }

        else
        {
          [(UILabel *)*p_label _firstLineBaselineOffsetFromBoundsTop];
          v79 = v78;
          [(UILabel *)*p_label _baselineOffsetFromBottom];
          v72 = 55.0 - (v79 + v80);
        }

        v26 = v21 + v72;
        if (viewCopy)
        {
          v26 = v26 + -10.0;
        }

        else if (!header)
        {
          if (_table)
          {
            _scrollView2 = [_table _scrollView];
            [_scrollView2 _currentScreenScale];
            v26 = v26 - UIPixelBoundaryOffset(0, 17.5, v82);
          }

          else
          {
            [(UIView *)self _currentScreenScale];
            v26 = v26 - UIPixelBoundaryOffset(0, 17.5, v92);
          }
        }

        [(UIView *)self _currentScreenScale];
        if (v26 < UIPixelBoundaryOffset(0, 17.5, v93))
        {
          [(UIView *)self _currentScreenScale];
          v26 = UIPixelBoundaryOffset(0, 17.5, v94);
        }
      }

      else if (dyld_program_sdk_at_least())
      {
        if (dyld_program_sdk_at_least())
        {
          v54 = p_label;
        }

        else
        {
          v54 = &self->_detailLabel;
        }

        font6 = [(UILabel *)*v54 font];
        [font6 _scaledValueForValue:20.0];
        v57 = v56;
        [font6 _scaledValueForValue:10.0];
        v59 = v58;
        [(UILabel *)*p_label _firstLineBaselineOffsetFromBoundsTop];
        v61 = v60;
        [(UILabel *)*p_label _baselineOffsetFromBottom];
        v26 = v59 + v21 + v57 - (v61 + v62);
      }

      else
      {
        [(UILabel *)*p_label _firstLineBaselineOffsetFromBoundsTop];
        v76 = v75;
        [(UILabel *)*p_label _baselineOffsetFromBottom];
        v26 = v21 + 20.0 - (v76 + v77) + 10.0;
      }
    }
  }

  if (_table)
  {
    _scrollView3 = [_table _scrollView];
    [_scrollView3 _currentScreenScale];
    v88 = UIPixelBoundaryOffset(1, v26, v87);
  }

  else
  {
    [(UIView *)self _currentScreenScale];
    v88 = UIPixelBoundaryOffset(1, v26, v89);
  }

  v90 = v16 + v19;
  v91 = v88;
  result.height = v91;
  result.width = v90;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UITableViewHeaderFooterView *)self _performConfigurationStateUpdate];
  headerFooterFlags = self->_headerFooterFlags;
  if ((*&headerFooterFlags & 0x8000) != 0)
  {
    [(UITableViewHeaderFooterView *)self _contentRectForWidth:width];
    v10 = v9;
    [(UIView *)self->_contentView setFrame:?];
    v13 = 1.79769313e308;
    if (width == 0.0)
    {
      v14 = 1.79769313e308;
    }

    else
    {
      v14 = v10;
    }

    if (height != 0.0)
    {
      v13 = height;
    }

    contentView = self->_contentView;
    LODWORD(v11) = 1112014848;
    LODWORD(v12) = 1112014848;

    [(UIView *)contentView systemLayoutSizeFittingSize:v14 withHorizontalFittingPriority:v13 verticalFittingPriority:v11, v12];
  }

  else
  {

    [(UITableViewHeaderFooterView *)self _sizeThatFits:(*&headerFooterFlags >> 4) & 1 stripPaddingForAbuttingView:(*&headerFooterFlags >> 5) & 1 isTopHeader:width, height];
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  v6.receiver = self;
  v6.super_class = UITableViewHeaderFooterView;
  viewCopy = view;
  [(UIView *)&v6 _intrinsicContentSizeInvalidatedForChildView:viewCopy];
  contentView = self->_contentView;

  if (contentView == viewCopy)
  {
    [(UITableViewHeaderFooterView *)self invalidateIntrinsicContentSize:v6.receiver];
  }
}

- (void)setBackgroundConfiguration:(UIBackgroundConfiguration *)backgroundConfiguration
{
  headerFooterFlags = self->_headerFooterFlags;
  v4 = (*&headerFooterFlags >> 13) & 1;
  if (backgroundConfiguration)
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0x2000;
  }

  else
  {
    v5 = 0;
  }

  self->_headerFooterFlags = (v5 | *&headerFooterFlags & 0xFFFFDFFF);
  [UITableViewHeaderFooterView _applyBackgroundViewConfiguration:"_applyBackgroundViewConfiguration:withState:" withState:?];
}

- (void)_setBackgroundViewConfiguration:(id)configuration
{
  headerFooterFlags = self->_headerFooterFlags;
  v4 = (*&headerFooterFlags >> 13) & 1;
  if (configuration)
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 0x2000;
  }

  else
  {
    v5 = 0;
  }

  self->_headerFooterFlags = (v5 | *&headerFooterFlags & 0xFFFFDFFF);
  [UITableViewHeaderFooterView _applyBackgroundViewConfiguration:"_applyBackgroundViewConfiguration:withState:" withState:?];
}

- (void)_applyBackgroundViewConfiguration:(id)configuration withState:(id)state
{
  configurationCopy = configuration;
  stateCopy = state;
  configurationState = stateCopy;
  systemBackgroundView = self->_systemBackgroundView;
  if (configurationCopy)
  {
    if ((*(&self->_headerFooterFlags + 2) & 2) != 0 && !self->_backgroundViewConfigurationProvider)
    {
      if (!stateCopy)
      {
        configurationState = [(UITableViewHeaderFooterView *)self configurationState];
      }

      v15 = configurationState;
      v13 = [(_UISystemBackgroundView *)configurationCopy _updatedConfigurationForState:configurationState];
      if (!v13)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UITableViewHeaderFooterView.m" lineNumber:1552 description:{@"Updated configuration was nil for configuration: %@", configurationCopy}];
      }

      configurationCopy = v13;
    }

    else
    {
      v15 = stateCopy;
    }

    [(_UISystemBackgroundView *)configurationCopy __setMaskedCorners:15];
    if (systemBackgroundView)
    {
      [(_UISystemBackgroundView *)self->_systemBackgroundView setConfiguration:configurationCopy];
    }

    else
    {
      [(UITableViewHeaderFooterView *)self _resetBackgroundViewsAndColor];
      v11 = [[_UISystemBackgroundView alloc] initWithConfiguration:configurationCopy containerView:self];
      v12 = self->_systemBackgroundView;
      self->_systemBackgroundView = v11;

      [(UIView *)self insertSubview:self->_systemBackgroundView atIndex:0];
    }

    [(UIView *)self setNeedsLayout];
  }

  else
  {
    v15 = stateCopy;
    [0 __setMaskedCorners:15];
    if (!systemBackgroundView)
    {
      goto LABEL_12;
    }

    [(UIView *)self->_systemBackgroundView removeFromSuperview];
    configurationCopy = self->_systemBackgroundView;
    self->_systemBackgroundView = 0;
  }

LABEL_12:
}

- (UIBackgroundConfiguration)backgroundConfiguration
{
  configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = configuration;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (_UIBackgroundViewConfiguration)_backgroundViewConfiguration
{
  configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = configuration;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setAutomaticallyUpdatesBackgroundConfiguration:(BOOL)automaticallyUpdatesBackgroundConfiguration
{
  if (automaticallyUpdatesBackgroundConfiguration)
  {
    backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
    p_headerFooterFlags = &self->_headerFooterFlags;
    headerFooterFlags = self->_headerFooterFlags;
    if ((backgroundViewConfigurationProvider == 0) != ((*&headerFooterFlags & 0x20000) == 0))
    {
      return;
    }

    if (!backgroundViewConfigurationProvider)
    {
      *p_headerFooterFlags = (*&headerFooterFlags | 0x20000);
      [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
      return;
    }
  }

  else
  {
    p_headerFooterFlags = &self->_headerFooterFlags;
    headerFooterFlags = self->_headerFooterFlags;
    if ((*&headerFooterFlags & 0x20000) == 0)
    {
      return;
    }
  }

  *p_headerFooterFlags = (*&headerFooterFlags & 0xFFFDFFFF);
}

- (void)_setBackgroundViewConfigurationProvider:(id)provider
{
  headerFooterFlags = self->_headerFooterFlags;
  v4 = (*&headerFooterFlags >> 12) & 1;
  if (provider)
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 4096;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *&headerFooterFlags & 0xFFFFEFFF;
  self->_headerFooterFlags = v6;
  if (self->_backgroundViewConfigurationProvider != provider)
  {
    if (provider)
    {
      self->_headerFooterFlags = (v6 & 0xFFFDFFFF);
    }

    providerCopy = provider;
    v9 = [providerCopy copy];
    backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
    self->_backgroundViewConfigurationProvider = v9;

    [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (id)_backgroundViewConfigurationProvider
{
  v2 = _Block_copy(self->_backgroundViewConfigurationProvider);

  return v2;
}

- (void)_resetBackgroundViewConfiguration
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __64__UITableViewHeaderFooterView__resetBackgroundViewConfiguration__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _performSystemAppearanceModifications:v2];
}

uint64_t __64__UITableViewHeaderFooterView__resetBackgroundViewConfiguration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setBackgroundConfiguration:0];
  [*(a1 + 32) _setBackgroundViewConfigurationProvider:0];
  v2 = *(a1 + 32);

  return [v2 _setBackgroundViewConfiguration:0];
}

- (void)_updateBackgroundViewConfigurationForState:(id)state
{
  stateCopy = state;
  backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
  if (backgroundViewConfigurationProvider)
  {
    v7 = stateCopy;
    configuration = backgroundViewConfigurationProvider[2](backgroundViewConfigurationProvider, [(UITableViewHeaderFooterView *)self _viewConfigurationState]);
LABEL_3:
    [(UITableViewHeaderFooterView *)self _applyBackgroundViewConfiguration:configuration withState:v7];
LABEL_4:

    stateCopy = v7;
    goto LABEL_5;
  }

  if ((*(&self->_headerFooterFlags + 2) & 2) != 0)
  {
    v7 = stateCopy;
    configuration = [(_UISystemBackgroundView *)self->_systemBackgroundView configuration];
    if (!configuration)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

LABEL_5:
}

- (void)setConfigurationUpdateHandler:(UITableViewHeaderFooterViewConfigurationUpdateHandler)configurationUpdateHandler
{
  if (self->_configurationUpdateHandler != configurationUpdateHandler)
  {
    v4 = [configurationUpdateHandler copy];
    v5 = self->_configurationUpdateHandler;
    self->_configurationUpdateHandler = v4;

    [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (void)_prepareForConfigurationStateUpdate
{
  if ((*(&self->_headerFooterFlags + 1) & 0x40) != 0)
  {
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = __66__UITableViewHeaderFooterView__prepareForConfigurationStateUpdate__block_invoke;
      v3[3] = &unk_1E70F3590;
      v3[4] = self;
      [UIView performWithoutAnimation:v3];
    }
  }
}

- (void)setNeedsUpdateConfiguration
{
  if (dyld_program_sdk_at_least())
  {
    *&self->_headerFooterFlags |= 0x4000u;
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {

      [(UITableViewHeaderFooterView *)self _performConfigurationStateUpdate];
    }

    else
    {

      [(UIView *)self setNeedsUpdateProperties];
    }
  }
}

- (void)_updateConfigurationUsingState:(id)state
{
  if (objc_opt_respondsToSelector())
  {
    contentView = self->_contentView;

    [(UIView *)contentView _defaultListContentConfigurationMayHaveChanged];
  }
}

- (void)_setupBackgroundView
{
  if (!self->_backgroundView && !self->_systemBackgroundView && !self->_backgroundViewConfigurationProvider)
  {
    v3 = [_UITableViewHeaderFooterViewBackground alloc];
    [(UITableViewHeaderFooterView *)self _backgroundRect];
    v4 = [(_UITableViewHeaderFooterViewBackground *)v3 initWithFrame:?];
    [(UITableViewHeaderFooterView *)self setBackgroundView:v4];
  }
}

- (void)setBackgroundView:(UIView *)backgroundView
{
  v5 = backgroundView;
  if (self->_backgroundView != v5)
  {
    v10 = v5;
    if (v5)
    {
      [(UITableViewHeaderFooterView *)self _resetBackgroundViewConfiguration];
      v5 = v10;
    }

    headerFooterFlags = self->_headerFooterFlags;
    v7 = (*&headerFooterFlags >> 11) & 1;
    if (v5)
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 2048;
    }

    else
    {
      v8 = 0;
    }

    self->_headerFooterFlags = (v8 | *&headerFooterFlags & 0xFFFFF7FF);
    [(UIView *)self->_backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, backgroundView);
    v9 = self->_backgroundView;
    [(UITableViewHeaderFooterView *)self _backgroundRect];
    [(UIView *)v9 setFrame:?];
    [(UIView *)self insertSubview:self->_backgroundView atIndex:0];
    v5 = v10;
  }
}

- (CGRect)_backgroundRectForWidth:(double)width
{
  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITableViewHeaderFooterView *)self _rightMarginWidth];
    width = width - v11;
  }

  v12 = v6;
  v13 = v8;
  widthCopy = width;
  v15 = v10;
  result.size.height = v15;
  result.size.width = widthCopy;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_contentRectForWidth:(double)width
{
  [(UITableViewHeaderFooterView *)self _backgroundRectForWidth:?];
  v62 = v5;
  v63 = v4;
  v64 = v6;
  v50 = v7;
  [(UITableViewHeaderFooterView *)self _effectiveSafeAreaInsets];
  v55 = v9;
  v58 = v8;
  [(UIView *)self bounds];
  v60 = v10;
  v61 = v11;
  v66 = v12;
  _table = [(UITableViewHeaderFooterView *)self _table];
  [_table _sectionContentInset];
  v15 = v14;
  v17 = v16;
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  [_table _indexBarExtentFromEdge];
  v20 = fmax(v15, v19);
  v21 = fmax(v17, v19);
  if (_shouldReverseLayoutDirection)
  {
    v21 = v17;
  }

  else
  {
    v20 = v15;
  }

  v51 = v20;
  v53 = v21;
  _scrollView = [_table _scrollView];
  [_scrollView bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(UIView *)self frame];
  y = v67.origin.y;
  width = v67.size.width;
  rect = v67.size.height;
  x = v67.origin.x;
  MinX = CGRectGetMinX(v67);
  v68.origin.x = v24;
  v68.origin.y = v26;
  v68.size.width = v28;
  v68.size.height = v30;
  v52 = fmax(v51 - fmax(MinX - CGRectGetMinX(v68), 0.0), 0.0);
  v69.origin.x = v24;
  v69.origin.y = v26;
  v69.size.width = v28;
  v69.size.height = v30;
  MaxX = CGRectGetMaxX(v69);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = rect;
  v36 = fmax(v53 - fmax(MaxX - CGRectGetMaxX(v70), 0.0), 0.0);

  v54 = fmax(v58, v52);
  v59 = fmax(v55, v36);
  v71.origin.x = v63;
  v71.origin.y = v62;
  v71.size.width = v64;
  v71.size.height = v50;
  v56 = CGRectGetMinX(v71);
  v72.origin.x = v60;
  v72.origin.y = v66;
  v72.size.width = width;
  v72.size.height = v61;
  v57 = fmax(v54 - fmax(v56 - CGRectGetMinX(v72), 0.0), 0.0);
  v73.origin.x = v60;
  v73.origin.y = v66;
  v73.size.width = width;
  v73.size.height = v61;
  v37 = CGRectGetMaxX(v73);
  v74.origin.x = v63;
  v74.origin.y = v62;
  v74.size.width = v64;
  v74.size.height = v50;
  v38 = v37 - CGRectGetMaxX(v74);
  widthCopy = width;
  v78.size.height = v61;
  v40 = fmax(v59 - fmax(v38, 0.0), 0.0);
  v75.origin.x = v63 + v57;
  v75.origin.y = v62 + 0.0;
  v75.size.width = v64 - (v57 + v40);
  v75.size.height = v50;
  v78.origin.x = v60;
  v78.origin.y = v66;
  v78.size.width = width;
  v76 = CGRectIntersection(v75, v78);
  v41 = v76.origin.x;
  v42 = v76.origin.y;
  v43 = v76.size.width;
  height = v76.size.height;
  if (CGRectIsNull(v76))
  {
    height = v61;
    v42 = v66;
    v41 = v60;
  }

  else
  {
    widthCopy = v43;
  }

  v45 = v41;
  v46 = v42;
  v47 = widthCopy;
  v48 = height;
  result.size.height = v48;
  result.size.width = v47;
  result.origin.y = v46;
  result.origin.x = v45;
  return result;
}

- (void)_setInsetsContentViewsToSafeArea:(BOOL)area
{
  if (((((*&self->_headerFooterFlags & 0x100) == 0) ^ area) & 1) == 0)
  {
    if (area)
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    self->_headerFooterFlags = (*&self->_headerFooterFlags & 0xFFFFFEFF | v3);
    [(UIView *)self setNeedsLayout];
  }
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(UIView *)self safeAreaInsets];
  if (left != v9 || right != v8)
  {
    [(UIView *)self setNeedsLayout];
  }

  v11.receiver = self;
  v11.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v11 _safeAreaInsetsDidChangeFromOldInsets:top, left, bottom, right];
}

- (void)_setMarginWidth:(double)width
{
  if (self->_leadingMarginWidth != width)
  {
    self->_leadingMarginWidth = width;
    [(UIView *)self setNeedsLayout];
  }
}

- (double)_marginWidth
{
  result = self->_leadingMarginWidth;
  if (result == -1.0)
  {
    return 15.0;
  }

  return result;
}

- (void)_setRightMarginWidth:(double)width
{
  if (self->_trailingMarginWidth != width)
  {
    self->_trailingMarginWidth = width;
    [(UIView *)self setNeedsLayout];
  }
}

- (double)_rightMarginWidth
{
  result = self->_trailingMarginWidth;
  if (result == -1.0)
  {
    return 0.0;
  }

  return result;
}

- (UIEdgeInsets)_insetsToBounds
{
  _table = [(UITableViewHeaderFooterView *)self _table];
  if ([_table _supplementarySectionHeadersHugContent] && (*&self->_headerFooterFlags & 1) != 0 || objc_msgSend(_table, "_supplementariesFollowSectionContentInsets"))
  {
    [(UITableConstants *)self->_constants defaultHeaderFooterLayoutMarginsForTableViewStyle:[(UITableViewHeaderFooterView *)self tableViewStyle] isHeader:*&self->_headerFooterFlags & 1 isFirstSection:[(UITableViewHeaderFooterView *)self _isTopHeader]];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    _scrollView = [_table _scrollView];
    if (_scrollView)
    {
      _scrollView2 = [_table _scrollView];
      _shouldReverseLayoutDirection = [_scrollView2 _shouldReverseLayoutDirection];
    }

    else
    {
      _shouldReverseLayoutDirection = 0;
    }

    [(UITableViewHeaderFooterView *)self _marginWidth];
    v7 = v11;
    v12 = dyld_program_sdk_at_least();
    [(UITableViewHeaderFooterView *)self _rightMarginWidth];
    v14 = v13;
    if (v12)
    {
      [(UITableViewHeaderFooterView *)self _contentRect];
      v19 = v15;
      v20 = v16;
      v21 = v17;
      v22 = v18;
      if (_shouldReverseLayoutDirection)
      {
        MinX = CGRectGetMinX(*&v15);
        [(UIView *)self bounds];
        v24 = MinX - CGRectGetMinX(v31);
      }

      else
      {
        [(UIView *)self bounds];
        MaxX = CGRectGetMaxX(v32);
        v33.origin.x = v19;
        v33.origin.y = v20;
        v33.size.width = v21;
        v33.size.height = v22;
        v24 = MaxX - CGRectGetMaxX(v33);
      }

      v25 = v14 + v24;
    }

    else
    {
      v25 = fmax(v7, v13);
    }

    if (_shouldReverseLayoutDirection)
    {
      v5 = v25;
    }

    else
    {
      v5 = v7;
    }

    if (!_shouldReverseLayoutDirection)
    {
      v7 = v25;
    }
  }

  v27 = 0.0;
  v28 = 0.0;
  v29 = v5;
  v30 = v7;
  result.right = v30;
  result.bottom = v28;
  result.left = v29;
  result.top = v27;
  return result;
}

- (UIEdgeInsets)_insetsToContentRect
{
  [(UITableViewHeaderFooterView *)self _insetsToBounds];
  v4 = v3;
  v6 = v5;
  [(UITableViewHeaderFooterView *)self _contentRect];
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  v11 = fmax(v4 - CGRectGetMinX(v17), 0.0);
  [(UIView *)self bounds];
  v12 = CGRectGetWidth(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v13 = fmax(v6 - (v12 - CGRectGetMaxX(v19)), 0.0);
  v14 = 0.0;
  v15 = 0.0;
  v16 = v11;
  result.right = v13;
  result.bottom = v15;
  result.left = v16;
  result.top = v14;
  return result;
}

- (void)_setTableViewStyle:(int64_t)style updateFrame:(BOOL)frame
{
  if (self->_tableViewStyle == style)
  {
    if (self->_systemBackgroundView)
    {
      return;
    }
  }

  else
  {
    frameCopy = frame;
    self->_tableViewStyle = style;
    if (![(UITableViewHeaderFooterView *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
    {
      [(UITableViewHeaderFooterView *)self _setupBackgroundView];
    }

    [(UITableViewHeaderFooterView *)self _updateBackgroundView];
    [(UITableViewHeaderFooterView *)self _invalidateDetailLabelBackgroundColor];
    if (frameCopy)
    {
      [(UITableViewHeaderFooterView *)self setFrame:self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height];
    }
  }

  [(UITableViewHeaderFooterView *)self _updateDefaultBackgroundAppearance];
}

- (void)setFloating:(BOOL)floating
{
  if (((((*&self->_headerFooterFlags & 8) == 0) ^ floating) & 1) == 0)
  {
    floatingCopy = floating;
    [(UITableViewHeaderFooterView *)self _prepareForConfigurationStateUpdate];
    if (floatingCopy)
    {
      v5 = 8;
    }

    else
    {
      v5 = 0;
    }

    self->_headerFooterFlags = (*&self->_headerFooterFlags & 0xFFFFFFF7 | v5);
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      [(UIView *)self setOpaque:(*&self->_headerFooterFlags & 8) == 0];
    }

    [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
  if (isUserInteractionEnabled != enabledCopy)
  {
    [(UITableViewHeaderFooterView *)self _prepareForConfigurationStateUpdate];
  }

  v6.receiver = self;
  v6.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v6 setUserInteractionEnabled:enabledCopy];
  if (isUserInteractionEnabled != [(UIView *)self isUserInteractionEnabled])
  {
    [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (void)setBackgroundColor:(id)color
{
  v3 = *(__UILogGetCategoryCachedImpl("TableView", &setBackgroundColor____s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "Changing the background color of UITableViewHeaderFooterView is not supported. Use the background view configuration instead.", v4, 2u);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v4 traitCollectionDidChange:change];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
  }
}

- (BOOL)_forwardsSystemLayoutFittingSizeToContentView:(id)view
{
  contentView = self->_contentView;
  if (contentView != view || ![(UIView *)contentView _wantsAutolayout])
  {
    return 0;
  }

  subviews = [(UIView *)self->_contentView subviews];
  v6 = [subviews count] != 0;

  return v6;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(UITableViewHeaderFooterView *)self _performConfigurationStateUpdate];
  [(UITableViewHeaderFooterView *)self _contentRectForWidth:width];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(UIView *)self->_contentView setFrame:?];
  if ((*(&self->_headerFooterFlags + 1) & 0x80) != 0 && [(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints])
  {
    if (fittingPriority >= 1000.0)
    {
      v20 = height;
    }

    else
    {
      v20 = 1.79769313e308;
    }

    *&v18 = priority;
    *&v19 = fittingPriority;
    [(UIView *)self->_contentView systemLayoutSizeFittingSize:v15 withHorizontalFittingPriority:v20 verticalFittingPriority:v18, v19];
    v22 = v21;
    v24 = v23;
    v25 = self->_contentView;
    if (priority != 1000.0 && v22 > 2777777.0 || fittingPriority != 1000.0 && v24 > 2777777.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIContentViewAssertValidFittingSize(UIView * _Nonnull __strong, CGSize, UILayoutPriority, UILayoutPriority)"}];
      v44.width = v22;
      v44.height = v24;
      v39 = NSStringFromCGSize(v44);
      [currentHandler handleFailureInFunction:v38 file:@"_UIContentViewShared.h" lineNumber:73 description:{@"Content view returned an invalid size %@ from -systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority: which is not allowed. If you have implemented a custom content view, you need to add constraints inside it so that its size is not ambiguous, or you need to manually compute and return a valid size. Content view: %@", v39, v25}];
    }

    if (priority >= 1000.0)
    {
      v26 = width;
    }

    else
    {
      v26 = v22;
    }

    if (fittingPriority >= 1000.0)
    {
      v27 = height;
    }

    else
    {
      v27 = v24;
    }

    goto LABEL_27;
  }

  if (![(UIView *)self->_contentView _wantsAutolayoutOrIsGuardingForEngineHosting])
  {
    v40[0] = self;
    v40[1] = UITableViewHeaderFooterView;
    v36 = v40;
LABEL_25:
    *&v28 = priority;
    *&v29 = fittingPriority;
    [(objc_super *)v36 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v28, v29];
    goto LABEL_27;
  }

  subviews = [(UIView *)self->_contentView subviews];
  v31 = [subviews count];

  if (!v31)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__UITableViewHeaderFooterView_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority__once_0 != -1)
    {
      dispatch_once(&systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority__once_0, block);
    }

    v41.receiver = self;
    v41.super_class = UITableViewHeaderFooterView;
    v36 = &v41;
    goto LABEL_25;
  }

  contentView = self->_contentView;
  v46.origin.x = v11;
  v46.origin.y = v13;
  v46.size.width = v15;
  v46.size.height = v17;
  v33 = CGRectGetWidth(v46);
  *&v34 = priority;
  *&v35 = fittingPriority;

  [(UIView *)contentView systemLayoutSizeFittingSize:v33 withHorizontalFittingPriority:height verticalFittingPriority:v34, v35];
LABEL_27:
  result.height = v27;
  result.width = v26;
  return result;
}

void __113__UITableViewHeaderFooterView_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_VisualizeMaterials_block_invoke___s_category_6) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Custom views and layout for UITableViewHeaderFooterView should be contained within the content view. Offending view: %@", &v4, 0xCu);
  }
}

- (void)setNeedsUpdateConstraints
{
  [(UIView *)self->_contentView setNeedsUpdateConstraints];
  [(UIView *)self _setNeedsUpdateConstraints];
  _layoutEngine = [(UIView *)self _layoutEngine];
  if (_layoutEngine)
  {
  }

  else if ((*(&self->super._viewFlags + 7) & 0x40) == 0)
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)setTranslatesAutoresizingMaskIntoConstraints:(BOOL)constraints
{
  constraintsCopy = constraints;
  v9 = *MEMORY[0x1E69E9840];
  if (!constraints)
  {
    if ([(UIView *)self translatesAutoresizingMaskIntoConstraints])
    {
      if (dyld_program_sdk_at_least())
      {
        v5 = *(__UILogGetCategoryCachedImpl("LayoutConstraints", &setTranslatesAutoresizingMaskIntoConstraints____s_category_166) + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Changing the translatesAutoresizingMaskIntoConstraints property of a UITableViewHeaderFooterView that is managed by a UITableView is not supported, and will result in incorrect self-sizing. View: %@", buf, 0xCu);
        }
      }
    }
  }

  v6.receiver = self;
  v6.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v6 setTranslatesAutoresizingMaskIntoConstraints:constraintsCopy];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  _interactionTintColor = [(UIView *)self _interactionTintColor];
  v7.receiver = self;
  v7.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v7 setTintColor:colorCopy];

  _interactionTintColor2 = [(UIView *)self _interactionTintColor];
  if (_interactionTintColor != _interactionTintColor2)
  {
    [(UITableViewHeaderFooterView *)self _updateBackgroundView];
    [(UITableViewHeaderFooterView *)self _updateDefaultBackgroundAppearance];
  }
}

- (void)_tableViewDidUpdateMarginWidth
{
  if (self->_leadingMarginWidth == -1.0)
  {
    [(UIView *)self setNeedsLayout];

    [(UIView *)self layoutBelowIfNeeded];
  }
}

- (void)_setStripPadding:(BOOL)padding
{
  if (padding)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_headerFooterFlags = (*&self->_headerFooterFlags & 0xFFFFFFEF | v3);
}

- (void)_setTopHeader:(BOOL)header
{
  if (header)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_headerFooterFlags = (*&self->_headerFooterFlags & 0xFFFFFFDF | v3);
}

- (BOOL)isTransparentFocusItem
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3)
  {
    isTransparentFocusItem = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = UITableViewHeaderFooterView;
    isTransparentFocusItem = [(UIView *)&v6 isTransparentFocusItem];
  }

  return isTransparentFocusItem;
}

- (void)_willUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v8 _willUpdateFocusInContext:contextCopy];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v6 = previouslyFocusedView;
  if (previouslyFocusedView == self)
  {

LABEL_5:
    [(UITableViewHeaderFooterView *)self _prepareForConfigurationStateUpdate];
    goto LABEL_6;
  }

  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = UITableViewHeaderFooterView;
  [(UIView *)&v8 _didUpdateFocusInContext:contextCopy];
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v6 = previouslyFocusedView;
  if (previouslyFocusedView == self)
  {

LABEL_5:
    [(UITableViewHeaderFooterView *)self setNeedsUpdateConfiguration];
    goto LABEL_6;
  }

  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (void)_setConstants:(id)constants
{
  v4 = self->_constants != constants;
  objc_storeStrong(&self->_constants, constants);

  [(UITableViewHeaderFooterView *)self _didUpdateMetrics:v4];
}

- (void)_setMetricsAdapter:(id)adapter
{
  v4 = self->_metricsAdapter != adapter;
  objc_storeStrong(&self->_metricsAdapter, adapter);

  [(UITableViewHeaderFooterView *)self _didUpdateMetrics:v4];
}

- (void)_didUpdateMetrics:(BOOL)metrics
{
  metricsCopy = metrics;
  if ([(UITableViewHeaderFooterView *)self _isSourceListOrMacIdiom])
  {
    *&self->_headerFooterFlags &= ~0x80u;
  }

  if (dyld_program_sdk_at_least() && ![(UITableViewHeaderFooterView *)self _usingBackgroundConfigurationOrDefaultBackgroundConfiguration])
  {
    [(UITableViewHeaderFooterView *)self _setupBackgroundView];
  }

  [(UITableViewHeaderFooterView *)self _setupDefaultsIfNecessary];
  if (metricsCopy)
  {
    [(UITableViewHeaderFooterView *)self _updateDefaultBackgroundAppearance];
  }

  [(UIView *)self setNeedsLayout];
}

- (UITable)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

@end
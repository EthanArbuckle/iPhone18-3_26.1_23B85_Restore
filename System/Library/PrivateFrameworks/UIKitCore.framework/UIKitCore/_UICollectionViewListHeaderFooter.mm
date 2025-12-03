@interface _UICollectionViewListHeaderFooter
- (CGSize)_contentTargetSizeForTargetSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority forUseWithSizeThatFits:(BOOL)fits;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIEdgeInsets)_contentViewInsets;
- (_UICollectionViewListHeaderFooter)initWithCoder:(id)coder;
- (_UICollectionViewListHeaderFooter)initWithFrame:(CGRect)frame;
- (_UIContentViewConfiguration)_contentViewConfiguration;
- (id)_backgroundViewConfigurationProvider;
- (id)_contentViewConfigurationProvider;
- (id)_defaultBackgroundViewConfigurationProvider;
- (int64_t)_styleFromLayoutAttributes:(id)attributes;
- (unint64_t)_viewConfigurationState;
- (void)_applyBackgroundViewConfiguration:(id)configuration;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_layoutContentView;
- (void)_layoutSystemBackgroundView;
- (void)_performConfigurationStateUpdate;
- (void)_populateArchivedSubviews:(id)subviews;
- (void)_resetBackgroundColor;
- (void)_resetBackgroundViewConfiguration;
- (void)_setAutomaticallyUpdatesBackgroundViewConfiguration:(BOOL)configuration;
- (void)_setAutomaticallyUpdatesContentViewConfiguration:(BOOL)configuration;
- (void)_setBackgroundViewConfiguration:(id)configuration;
- (void)_setBackgroundViewConfigurationProvider:(id)provider;
- (void)_setContentViewConfiguration:(id)configuration;
- (void)_setContentViewConfigurationProvider:(id)provider;
- (void)_setLayoutAttributes:(id)attributes;
- (void)_setNeedsConfigurationStateUpdate;
- (void)_updateBackgroundViewConfigurationForState:(unint64_t)state;
- (void)_updateConstants;
- (void)_updateContentViewConfigurationForState:(unint64_t)state;
- (void)_updateDefaultBackgroundAppearance;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)color;
- (void)setContentView:(id)view;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation _UICollectionViewListHeaderFooter

- (_UICollectionViewListHeaderFooter)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UICollectionViewListHeaderFooter;
  v3 = [(UICollectionReusableView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc([objc_opt_class() _contentViewClass]);
    [(UIView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    [(_UICollectionViewListHeaderFooter *)v3 setContentView:v5];

    _UICollectionViewListHeaderFooterCommonInit(v3);
  }

  return v3;
}

- (_UICollectionViewListHeaderFooter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UICollectionViewListHeaderFooter;
  v5 = [(UICollectionReusableView *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"UIContentView"];
    contentView = v5->_contentView;
    v5->_contentView = v6;

    if (v5->_contentView)
    {
      [(UIView *)v5 addSubview:?];
    }

    else
    {
      v8 = objc_alloc([objc_opt_class() _contentViewClass]);
      [(UIView *)v5 bounds];
      v9 = [v8 initWithFrame:?];
      [(_UICollectionViewListHeaderFooter *)v5 setContentView:v9];
    }

    _UICollectionViewListHeaderFooterCommonInit(v5);
  }

  return v5;
}

- (void)_populateArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5.receiver = self;
  v5.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v5 _populateArchivedSubviews:subviewsCopy];
  if (self->_systemBackgroundView)
  {
    [subviewsCopy removeObject:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = _UICollectionViewListHeaderFooter;
  [(UICollectionReusableView *)&v6 encodeWithCoder:coderCopy];
  contentView = self->_contentView;
  if (contentView)
  {
    [coderCopy encodeObject:contentView forKey:@"UIContentView"];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = _UICollectionViewListHeaderFooter;
  [(UICollectionReusableView *)&v3 prepareForReuse];
  [(UIView *)self _removeAllAnimations:1];
  [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
}

- (void)_setLayoutAttributes:(id)attributes
{
  v4 = *(&self->_headerFooterFlags + 2);
  attributesCopy = attributes;
  *(&self->_headerFooterFlags + 2) = *(&self->_headerFooterFlags + 1) & 0xFFF8 | [(_UICollectionViewListHeaderFooter *)self _styleFromLayoutAttributes:attributesCopy]& 7;
  v7.receiver = self;
  v7.super_class = _UICollectionViewListHeaderFooter;
  [(UICollectionReusableView *)&v7 _setLayoutAttributes:attributesCopy];

  [(UIView *)self->_contentView bounds];
  if (CGRectEqualToRect(v8, *MEMORY[0x1E695F058]))
  {
    [(_UICollectionViewListHeaderFooter *)self _layoutContentView];
  }

  if (((*(&self->_headerFooterFlags + 2) ^ v4) & 7) != 0 || ([(_UICollectionViewListHeaderFooter *)self _backgroundViewConfigurationProvider], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    [(_UICollectionViewListHeaderFooter *)self _updateDefaultBackgroundAppearance];
  }
}

- (int64_t)_styleFromLayoutAttributes:(id)attributes
{
  _existingListAttributes = [(UICollectionViewLayoutAttributes *)attributes _existingListAttributes];
  if (_existingListAttributes)
  {
    v4 = _existingListAttributes[2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isUserInteractionEnabled = [(UIView *)self isUserInteractionEnabled];
  v6.receiver = self;
  v6.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v6 setUserInteractionEnabled:enabledCopy];
  if (isUserInteractionEnabled != [(UIView *)self isUserInteractionEnabled])
  {
    [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
  }
}

- (void)_setContentViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  contentViewConfigurationClass = self->_contentViewConfigurationClass;
  if (configurationCopy)
  {
    if ((*(&self->_headerFooterFlags + 1) & 0x100) != 0 && !self->_contentViewConfigurationProvider)
    {
      v15 = configurationCopy;
      _viewConfigurationState = [(_UICollectionViewListHeaderFooter *)self _viewConfigurationState];
      traitCollection = [(UIView *)self traitCollection];
      v9 = [v15 updatedConfigurationForState:_viewConfigurationState traitCollection:traitCollection];

      if (!v9)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListHeaderFooter.m" lineNumber:143 description:{@"Updated configuration was nil for configuration: %@", v15}];
      }

      configurationCopy = v9;
    }

    v16 = configurationCopy;
    if (contentViewConfigurationClass)
    {
      v10 = self->_contentViewConfigurationClass;
      v11 = objc_opt_class();
      self->_contentViewConfigurationClass = objc_opt_class();
      if (v10 == v11)
      {
        [(UIView *)self->_contentView setConfiguration:v16];
        goto LABEL_14;
      }
    }

    else
    {
      self->_contentViewConfigurationClass = objc_opt_class();
    }

    createContentView = [v16 createContentView];
    [(_UICollectionViewListHeaderFooter *)self setContentView:createContentView];

    goto LABEL_14;
  }

  self->_contentViewConfigurationClass = objc_opt_class();
  if (!contentViewConfigurationClass)
  {
    return;
  }

  v12 = objc_alloc([objc_opt_class() _contentViewClass]);
  [(UIView *)self bounds];
  v16 = [v12 initWithFrame:?];
  [(_UICollectionViewListHeaderFooter *)self setContentView:?];
LABEL_14:
}

- (_UIContentViewConfiguration)_contentViewConfiguration
{
  if (self->_contentViewConfigurationClass)
  {
    configuration = [(UIView *)self->_contentView configuration];
  }

  else
  {
    configuration = 0;
  }

  return configuration;
}

- (void)_setAutomaticallyUpdatesContentViewConfiguration:(BOOL)configuration
{
  if (configuration)
  {
    contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
    v4 = &self->_headerFooterFlags + 1;
    v5 = *(&self->_headerFooterFlags + 2);
    if ((contentViewConfigurationProvider == 0) != ((v5 & 0x100) == 0))
    {
      return;
    }

    if (!contentViewConfigurationProvider)
    {
      *v4 = v5 | 0x100;
      [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
      return;
    }
  }

  else
  {
    v4 = &self->_headerFooterFlags + 1;
    v5 = *(&self->_headerFooterFlags + 2);
    if ((v5 & 0x100) == 0)
    {
      return;
    }
  }

  *v4 = v5 & 0xFEFF;
}

- (void)_setContentViewConfigurationProvider:(id)provider
{
  if (self->_contentViewConfigurationProvider != provider)
  {
    if (provider)
    {
      *(&self->_headerFooterFlags + 2) &= ~0x100u;
    }

    v4 = [provider copy];
    contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
    self->_contentViewConfigurationProvider = v4;

    [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
  }
}

- (id)_contentViewConfigurationProvider
{
  v2 = _Block_copy(self->_contentViewConfigurationProvider);

  return v2;
}

- (void)_updateContentViewConfigurationForState:(unint64_t)state
{
  contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
  if (contentViewConfigurationProvider)
  {
    v5 = contentViewConfigurationProvider[2](contentViewConfigurationProvider, state);
    v9 = v5;
    selfCopy2 = self;
LABEL_3:
    [(_UICollectionViewListHeaderFooter *)selfCopy2 _setContentViewConfiguration:v5];
    _contentViewConfiguration = v9;
    goto LABEL_4;
  }

  if ((*(&self->_headerFooterFlags + 1) & 0x100) == 0)
  {
    return;
  }

  _contentViewConfiguration = [(_UICollectionViewListHeaderFooter *)self _contentViewConfiguration];
  if (_contentViewConfiguration)
  {
    v8 = _contentViewConfiguration;
    selfCopy2 = self;
    v9 = v8;
    v5 = v8;
    goto LABEL_3;
  }

LABEL_4:
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    [(UIView *)v7 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
    viewCopy = v7;
    if (v7)
    {
      [(UIView *)self addSubview:self->_contentView];
      viewCopy = v7;
    }
  }
}

- (void)_setBackgroundViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  v6 = *(&self->_headerFooterFlags + 2);
  v7 = (v6 >> 6) & 1;
  if (configurationCopy)
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  *(&self->_headerFooterFlags + 2) = v8 | v6 & 0xFFBF;
  v9 = configurationCopy;
  if ((v6 & 0x20) == 0 && v7)
  {
    [(_UICollectionViewListHeaderFooter *)self _setBackgroundViewConfigurationProvider:0];
    v5 = v9;
  }

  [(_UICollectionViewListHeaderFooter *)self _applyBackgroundViewConfiguration:v5];
}

- (void)_applyBackgroundViewConfiguration:(id)configuration
{
  configurationCopy = configuration;
  systemBackgroundView = self->_systemBackgroundView;
  if (configurationCopy)
  {
    v7 = configurationCopy;
    if ((*(&self->_headerFooterFlags + 1) & 0x80) != 0 && !self->_backgroundViewConfigurationProvider)
    {
      v15 = configurationCopy;
      _viewConfigurationState = [(_UICollectionViewListHeaderFooter *)self _viewConfigurationState];
      traitCollection = [(UIView *)self traitCollection];
      v10 = [(_UISystemBackgroundView *)v15 updatedConfigurationForState:_viewConfigurationState traitCollection:traitCollection];

      if (!v10)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UICollectionViewListHeaderFooter.m" lineNumber:236 description:{@"Updated configuration was nil for configuration: %@", v15}];
      }

      v7 = v10;
    }

    v16 = v7;
    if (systemBackgroundView)
    {
      [(_UISystemBackgroundView *)self->_systemBackgroundView setConfiguration:v7];
    }

    else
    {
      [(_UICollectionViewListHeaderFooter *)self _resetBackgroundColor];
      v12 = [[_UISystemBackgroundView alloc] initWithConfiguration:v16 containerView:self];
      v13 = self->_systemBackgroundView;
      self->_systemBackgroundView = v12;

      [(UIView *)self insertSubview:self->_systemBackgroundView atIndex:0];
    }

    [(UIView *)self setNeedsLayout];
    v11 = v16;
  }

  else
  {
    if (!systemBackgroundView)
    {
      return;
    }

    [(UIView *)self->_systemBackgroundView removeFromSuperview];
    v11 = self->_systemBackgroundView;
    self->_systemBackgroundView = 0;
  }
}

- (void)_setAutomaticallyUpdatesBackgroundViewConfiguration:(BOOL)configuration
{
  if (configuration)
  {
    backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
    v4 = &self->_headerFooterFlags + 1;
    v5 = *(&self->_headerFooterFlags + 2);
    if ((backgroundViewConfigurationProvider == 0) != ((v5 & 0x80) == 0))
    {
      return;
    }

    if (!backgroundViewConfigurationProvider)
    {
      *v4 = v5 | 0x80;
      [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
      return;
    }
  }

  else
  {
    v4 = &self->_headerFooterFlags + 1;
    v5 = *(&self->_headerFooterFlags + 2);
    if ((v5 & 0x80) == 0)
    {
      return;
    }
  }

  *v4 = v5 & 0xFF7F;
}

- (void)_setBackgroundViewConfigurationProvider:(id)provider
{
  v3 = *(&self->_headerFooterFlags + 2);
  v4 = (v3 >> 5) & 1;
  if (provider)
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = 32;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | v3 & 0xFFDF;
  *(&self->_headerFooterFlags + 2) = v6;
  if (self->_backgroundViewConfigurationProvider != provider)
  {
    if (provider)
    {
      *(&self->_headerFooterFlags + 2) = v6 & 0xFF7F;
    }

    providerCopy = provider;
    v9 = [providerCopy copy];
    backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
    self->_backgroundViewConfigurationProvider = v9;

    [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
  }
}

- (id)_backgroundViewConfigurationProvider
{
  v2 = _Block_copy(self->_backgroundViewConfigurationProvider);

  return v2;
}

- (id)_defaultBackgroundViewConfigurationProvider
{
  v2 = *(&self->_headerFooterFlags + 1) & 7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80___UICollectionViewListHeaderFooter__defaultBackgroundViewConfigurationProvider__block_invoke;
  aBlock[3] = &__block_descriptor_40_e40____UIBackgroundViewConfiguration_16__0Q8l;
  aBlock[4] = v2;
  v3 = _Block_copy(aBlock);

  return v3;
}

- (void)_updateDefaultBackgroundAppearance
{
  v2 = *(&self->_headerFooterFlags + 2);
  if ((v2 & 0x70) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71___UICollectionViewListHeaderFooter__updateDefaultBackgroundAppearance__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView _performSystemAppearanceModifications:v4];
    *(&self->_headerFooterFlags + 2) = *(&self->_headerFooterFlags + 1) & 0xFF5F | v2 & 0x80;
  }
}

- (void)_resetBackgroundColor
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58___UICollectionViewListHeaderFooter__resetBackgroundColor__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _performSystemAppearanceModifications:v2];
}

- (void)_resetBackgroundViewConfiguration
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __70___UICollectionViewListHeaderFooter__resetBackgroundViewConfiguration__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _performSystemAppearanceModifications:v2];
}

- (void)_updateBackgroundViewConfigurationForState:(unint64_t)state
{
  backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
  if (backgroundViewConfigurationProvider)
  {
    v5 = backgroundViewConfigurationProvider[2](backgroundViewConfigurationProvider, state);
    v9 = v5;
    selfCopy2 = self;
LABEL_3:
    [(_UICollectionViewListHeaderFooter *)selfCopy2 _applyBackgroundViewConfiguration:v5];
    _backgroundViewConfiguration = v9;
    goto LABEL_4;
  }

  if ((*(&self->_headerFooterFlags + 1) & 0x80) == 0)
  {
    return;
  }

  _backgroundViewConfiguration = [(_UICollectionViewListHeaderFooter *)self _backgroundViewConfiguration];
  if (_backgroundViewConfiguration)
  {
    v8 = _backgroundViewConfiguration;
    selfCopy2 = self;
    v9 = v8;
    v5 = v8;
    goto LABEL_3;
  }

LABEL_4:
}

- (unint64_t)_viewConfigurationState
{
  if ([(UIView *)self isUserInteractionEnabled])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  if ([(UIView *)self isFocused])
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (void)_setNeedsConfigurationStateUpdate
{
  *(&self->_headerFooterFlags + 2) |= 8u;
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {

    [(_UICollectionViewListHeaderFooter *)self _performConfigurationStateUpdate];
  }

  else
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_performConfigurationStateUpdate
{
  v3 = *(&self->_headerFooterFlags + 2);
  if ((v3 & 8) != 0)
  {
    *(&self->_headerFooterFlags + 2) = v3 & 0xFFF7;
    v5 = _UISetCurrentFallbackEnvironment(self);
    _viewConfigurationState = [(_UICollectionViewListHeaderFooter *)self _viewConfigurationState];
    [(_UICollectionViewListHeaderFooter *)self _updateBackgroundViewConfigurationForState:_viewConfigurationState];
    [(_UICollectionViewListHeaderFooter *)self _updateContentViewConfigurationForState:_viewConfigurationState];
    [(_UICollectionViewListHeaderFooter *)self _updateViewConfigurationsWithState:_viewConfigurationState];
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      [(_UICollectionViewListHeaderFooter *)self _layoutSystemBackgroundView];
    }

    _UIRestorePreviousFallbackEnvironment(v5);
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

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    [(_UICollectionViewListHeaderFooter *)self _resetBackgroundViewConfiguration];
  }

  v5 = *(&self->_headerFooterFlags + 2);
  v6 = (v5 >> 4) & 1;
  if (colorCopy)
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 16;
  }

  else
  {
    v7 = 0;
  }

  *(&self->_headerFooterFlags + 2) = v7 | v5 & 0xFFEF;
  v8.receiver = self;
  v8.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v8 setBackgroundColor:colorCopy];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v3 layoutSubviews];
  [(_UICollectionViewListHeaderFooter *)self _performConfigurationStateUpdate];
  [(_UICollectionViewListHeaderFooter *)self _layoutSystemBackgroundView];
  [(_UICollectionViewListHeaderFooter *)self _layoutContentView];
}

- (void)_layoutContentView
{
  if ([(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints])
  {
    [(UIView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(_UICollectionViewListHeaderFooter *)self _contentViewInsets];
    contentView = self->_contentView;

    [(UIView *)contentView setFrame:v4 + v12, v6 + v11, v8 - (v12 + v14), v10 - (v11 + v13)];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v4 traitCollectionDidChange:change];
  [(_UICollectionViewListHeaderFooter *)self _updateConstants];
  [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
}

- (void)_updateConstants
{
  traitCollection = [(UIView *)self traitCollection];
  obj = _UITableConstantsForTraitCollection(traitCollection);

  v4 = obj;
  if (obj != self->_constants)
  {
    objc_storeStrong(&self->_constants, obj);
    [(_UICollectionViewListHeaderFooter *)self _updateDefaultBackgroundAppearance];
    v4 = obj;
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v6.receiver = self;
  v6.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v6 setSemanticContentAttribute:?];
  contentView = [(_UICollectionViewListHeaderFooter *)self contentView];
  [contentView setSemanticContentAttribute:attribute];
}

- (CGSize)_contentTargetSizeForTargetSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority forUseWithSizeThatFits:(BOOL)fits
{
  height = size.height;
  width = size.width;
  v35 = *MEMORY[0x1E69E9840];
  [(_UICollectionViewListHeaderFooter *)self _contentViewInsets];
  v14 = v13;
  v16 = v15;
  v17 = width - (v11 + v12);
  v25 = height;
  v18 = height - (v13 + v15);
  if (v17 < 0.0)
  {
    v19 = v11;
    v17 = 0.0;
    if (priority >= 1000.0)
    {
      v20 = v12;
      v21 = *(__UILogGetCategoryCachedImpl("CollectionView", &_MergedGlobals_7_10) + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v28 = v19;
        v29 = 2048;
        v30 = v20;
        v31 = 2048;
        v32 = width;
        v33 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "The _UICollectionViewListHeaderFooter's content view insets (left: %g, right: %g) exceed the _UICollectionViewListHeaderFooter's target width of %g with required fitting priority. Header/footer: %@", buf, 0x2Au);
      }
    }
  }

  if (v18 < 0.0)
  {
    v18 = 0.0;
    if (fittingPriority >= 1000.0)
    {
      v22 = *(__UILogGetCategoryCachedImpl("CollectionView", &qword_1ED49AD48) + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v28 = v14;
        v29 = 2048;
        v30 = v16;
        v31 = 2048;
        v32 = v25;
        v33 = 2112;
        selfCopy2 = self;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "The _UICollectionViewListHeaderFooter's content view insets (top: %g, bottom: %g) exceed the _UICollectionViewListHeaderFooter's target height of %g with required fitting priority. Header/footer: %@", buf, 0x2Au);
      }
    }
  }

  v23 = 1.79769313e308;
  if (fittingPriority < 1000.0 && fits)
  {
    v24 = 1.79769313e308;
  }

  else
  {
    v24 = v18;
  }

  if (priority >= 1000.0 || !fits)
  {
    v23 = v17;
  }

  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v63 = *MEMORY[0x1E69E9840];
  [(_UICollectionViewListHeaderFooter *)self _performConfigurationStateUpdate];
  [(_UICollectionViewListHeaderFooter *)self _contentViewInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(_UICollectionViewListHeaderFooter *)self _layoutContentView];
  if (!self->_contentViewConfigurationClass || ![(UIView *)self->_contentView translatesAutoresizingMaskIntoConstraints])
  {
    selfCopy = self;
    if ([(UIView *)selfCopy _wantsAutolayout])
    {
      requiresConstraintBasedLayout = 1;
    }

    else
    {
      requiresConstraintBasedLayout = [objc_opt_class() requiresConstraintBasedLayout];
    }

    if (-[UIView _wantsAutolayout](selfCopy->_contentView, "_wantsAutolayout") || [objc_opt_class() requiresConstraintBasedLayout])
    {
      if (!requiresConstraintBasedLayout || (v32 = selfCopy, ![(UIView *)selfCopy needsUpdateConstraints]) && (v32 = selfCopy, [(UIView *)selfCopy->_contentView translatesAutoresizingMaskIntoConstraints]))
      {
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        translatesAutoresizingMaskIntoConstraints = [(UIView *)selfCopy->_contentView translatesAutoresizingMaskIntoConstraints];
        if (has_internal_diagnostics)
        {
          if (!translatesAutoresizingMaskIntoConstraints)
          {
            v55 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v62 = selfCopy;
              _os_log_fault_impl(&dword_188A29000, v55, OS_LOG_TYPE_FAULT, "contentView of _UICollectionViewListHeaderFooter has translatesAutoresizingMaskIntoConstraints false and is missing constraints to the header/footer, which will cause substandard performance in header/footer autosizing. Please leave the contentView's translatesAutoresizingMaskIntoConstraints true or else provide constraints between the contentView and the header/footer. %@", buf, 0xCu);
            }
          }
        }

        else if (!translatesAutoresizingMaskIntoConstraints)
        {
          v56 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AD50) + 8);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v62 = selfCopy;
            _os_log_impl(&dword_188A29000, v56, OS_LOG_TYPE_ERROR, "contentView of _UICollectionViewListHeaderFooter has translatesAutoresizingMaskIntoConstraints false and is missing constraints to the header/footer, which will cause substandard performance in header/footer autosizing. Please leave the contentView's translatesAutoresizingMaskIntoConstraints true or else provide constraints between the contentView and the header/footer. %@", buf, 0xCu);
          }
        }

        if ([(UIView *)selfCopy->_contentView translatesAutoresizingMaskIntoConstraints])
        {
          [(UIView *)selfCopy->_contentView _setHostsLayoutEngine:1];
        }

        v32 = selfCopy->_contentView;
      }
    }

    else
    {
      v32 = selfCopy;
      if (!requiresConstraintBasedLayout)
      {
        v59.receiver = selfCopy;
        v59.super_class = _UICollectionViewListHeaderFooter;
        *&v30 = priority;
        *&v31 = fittingPriority;
        [(UIView *)&v59 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v30, v31];
        v26 = v48;
        v27 = v49;
        v32 = selfCopy;
LABEL_51:

        goto LABEL_52;
      }
    }

    [(UIView *)v32 _setWantsAutolayout];
    buf[0] = 1;
    if (v13 == 0.0 && v11 == 0.0 && v17 == 0.0 && v15 == 0.0 || v32 != selfCopy->_contentView)
    {
      if (fittingPriority == 50.0 && height == 0.0)
      {
        v38 = buf;
      }

      else
      {
        v38 = 0;
      }

      *&v35 = priority;
      *&v36 = fittingPriority;
      [(UIView *)v32 _systemLayoutSizeFittingSize:v38 withHorizontalFittingPriority:width verticalFittingPriority:height hasIntentionallyCollapsedHeight:v35, v36];
      v26 = v39;
      v27 = v40;
    }

    else
    {
      *&v35 = priority;
      *&v36 = fittingPriority;
      [(_UICollectionViewListHeaderFooter *)selfCopy _contentTargetSizeForTargetSize:0 withHorizontalFittingPriority:width verticalFittingPriority:height forUseWithSizeThatFits:v35, v36];
      if (v43 == 0.0 && fittingPriority == 50.0)
      {
        v45 = buf;
      }

      else
      {
        v45 = 0;
      }

      [UIView _systemLayoutSizeFittingSize:v32 withHorizontalFittingPriority:"_systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:hasIntentionallyCollapsedHeight:" verticalFittingPriority:v45 hasIntentionallyCollapsedHeight:?];
      v26 = v46 - (-v17 - v13);
      v27 = v47 - (-v15 - v11);
    }

    if (v27 == 0.0 && (buf[0] & 1) == 0)
    {
      [(_UICollectionViewListHeaderFooter *)selfCopy sizeThatFits:width, height];
      v26 = v41;
      v27 = v42;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __119___UICollectionViewListHeaderFooter_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = selfCopy;
      if (qword_1ED49AD58 != -1)
      {
        dispatch_once(&qword_1ED49AD58, block);
      }
    }

    goto LABEL_51;
  }

  v57 = v13;
  v58 = v11;
  v20 = v15;
  *&v18 = priority;
  *&v19 = fittingPriority;
  [(_UICollectionViewListHeaderFooter *)self _contentTargetSizeForTargetSize:1 withHorizontalFittingPriority:width verticalFittingPriority:height forUseWithSizeThatFits:v18, v19];
  [UIView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  v22 = v21;
  v24 = v23;
  v25 = self->_contentView;
  if (priority != 1000.0 && v22 > 2777777.0 || fittingPriority != 1000.0 && v24 > 2777777.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIContentViewAssertValidFittingSize(UIView * _Nonnull __strong, CGSize, UILayoutPriority, UILayoutPriority)"}];
    v64.width = v22;
    v64.height = v24;
    v54 = NSStringFromCGSize(v64);
    [currentHandler handleFailureInFunction:v53 file:@"_UIContentViewShared.h" lineNumber:73 description:{@"Content view returned an invalid size %@ from -systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority: which is not allowed. If you have implemented a custom content view, you need to add constraints inside it so that its size is not ambiguous, or you need to manually compute and return a valid size. Content view: %@", v54, v25}];
  }

  if (priority >= 1000.0)
  {
    v26 = width;
  }

  else
  {
    v26 = v22 - (-v17 - v57);
  }

  if (fittingPriority >= 1000.0)
  {
    v27 = height;
  }

  else
  {
    v27 = v24 - (-v20 - v58);
  }

LABEL_52:
  v50 = v26;
  v51 = v27;
  result.height = v51;
  result.width = v50;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(_UICollectionViewListHeaderFooter *)self _performConfigurationStateUpdate];
  if (self->_contentViewConfigurationClass)
  {
    [(_UICollectionViewListHeaderFooter *)self _layoutContentView];
    if (width == 0.0)
    {
      *&v6 = 50.0;
    }

    else
    {
      *&v6 = 1000.0;
    }

    if (height == 0.0)
    {
      *&v7 = 50.0;
    }

    else
    {
      *&v7 = 1000.0;
    }

    [(_UICollectionViewListHeaderFooter *)self _contentTargetSizeForTargetSize:1 withHorizontalFittingPriority:width verticalFittingPriority:height forUseWithSizeThatFits:v6, v7];
    [UIView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
    v9 = v8;
    v11 = v10;
    [(_UICollectionViewListHeaderFooter *)self _contentViewInsets];
    width = v9 - (-v13 - v14);
    height = v11 - (-v12 - v15);
  }

  v16 = width;
  v17 = height;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  previouslyFocusedView = [contextCopy previouslyFocusedView];
  v6 = previouslyFocusedView;
  if (previouslyFocusedView == self)
  {

LABEL_5:
    [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
    goto LABEL_6;
  }

  nextFocusedView = [contextCopy nextFocusedView];

  if (nextFocusedView == self)
  {
    goto LABEL_5;
  }

LABEL_6:
  v8.receiver = self;
  v8.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v8 _didUpdateFocusInContext:contextCopy];
}

- (UIEdgeInsets)_contentViewInsets
{
  top = self->_contentViewInsets.top;
  left = self->_contentViewInsets.left;
  bottom = self->_contentViewInsets.bottom;
  right = self->_contentViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
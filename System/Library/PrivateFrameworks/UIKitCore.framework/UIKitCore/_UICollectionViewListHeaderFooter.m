@interface _UICollectionViewListHeaderFooter
- (CGSize)_contentTargetSizeForTargetSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5 forUseWithSizeThatFits:(BOOL)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (UIEdgeInsets)_contentViewInsets;
- (_UICollectionViewListHeaderFooter)initWithCoder:(id)a3;
- (_UICollectionViewListHeaderFooter)initWithFrame:(CGRect)a3;
- (_UIContentViewConfiguration)_contentViewConfiguration;
- (id)_backgroundViewConfigurationProvider;
- (id)_contentViewConfigurationProvider;
- (id)_defaultBackgroundViewConfigurationProvider;
- (int64_t)_styleFromLayoutAttributes:(id)a3;
- (unint64_t)_viewConfigurationState;
- (void)_applyBackgroundViewConfiguration:(id)a3;
- (void)_didUpdateFocusInContext:(id)a3;
- (void)_layoutContentView;
- (void)_layoutSystemBackgroundView;
- (void)_performConfigurationStateUpdate;
- (void)_populateArchivedSubviews:(id)a3;
- (void)_resetBackgroundColor;
- (void)_resetBackgroundViewConfiguration;
- (void)_setAutomaticallyUpdatesBackgroundViewConfiguration:(BOOL)a3;
- (void)_setAutomaticallyUpdatesContentViewConfiguration:(BOOL)a3;
- (void)_setBackgroundViewConfiguration:(id)a3;
- (void)_setBackgroundViewConfigurationProvider:(id)a3;
- (void)_setContentViewConfiguration:(id)a3;
- (void)_setContentViewConfigurationProvider:(id)a3;
- (void)_setLayoutAttributes:(id)a3;
- (void)_setNeedsConfigurationStateUpdate;
- (void)_updateBackgroundViewConfigurationForState:(unint64_t)a3;
- (void)_updateConstants;
- (void)_updateContentViewConfigurationForState:(unint64_t)a3;
- (void)_updateDefaultBackgroundAppearance;
- (void)encodeWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBackgroundColor:(id)a3;
- (void)setContentView:(id)a3;
- (void)setSemanticContentAttribute:(int64_t)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation _UICollectionViewListHeaderFooter

- (_UICollectionViewListHeaderFooter)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UICollectionViewListHeaderFooter;
  v3 = [(UICollectionReusableView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (_UICollectionViewListHeaderFooter)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UICollectionViewListHeaderFooter;
  v5 = [(UICollectionReusableView *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"UIContentView"];
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

- (void)_populateArchivedSubviews:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v5 _populateArchivedSubviews:v4];
  if (self->_systemBackgroundView)
  {
    [v4 removeObject:?];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UICollectionViewListHeaderFooter;
  [(UICollectionReusableView *)&v6 encodeWithCoder:v4];
  contentView = self->_contentView;
  if (contentView)
  {
    [v4 encodeObject:contentView forKey:@"UIContentView"];
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

- (void)_setLayoutAttributes:(id)a3
{
  v4 = *(&self->_headerFooterFlags + 2);
  v5 = a3;
  *(&self->_headerFooterFlags + 2) = *(&self->_headerFooterFlags + 1) & 0xFFF8 | [(_UICollectionViewListHeaderFooter *)self _styleFromLayoutAttributes:v5]& 7;
  v7.receiver = self;
  v7.super_class = _UICollectionViewListHeaderFooter;
  [(UICollectionReusableView *)&v7 _setLayoutAttributes:v5];

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

- (int64_t)_styleFromLayoutAttributes:(id)a3
{
  v3 = [(UICollectionViewLayoutAttributes *)a3 _existingListAttributes];
  if (v3)
  {
    v4 = v3[2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIView *)self isUserInteractionEnabled];
  v6.receiver = self;
  v6.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v6 setUserInteractionEnabled:v3];
  if (v5 != [(UIView *)self isUserInteractionEnabled])
  {
    [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
  }
}

- (void)_setContentViewConfiguration:(id)a3
{
  v5 = a3;
  contentViewConfigurationClass = self->_contentViewConfigurationClass;
  if (v5)
  {
    if ((*(&self->_headerFooterFlags + 1) & 0x100) != 0 && !self->_contentViewConfigurationProvider)
    {
      v15 = v5;
      v7 = [(_UICollectionViewListHeaderFooter *)self _viewConfigurationState];
      v8 = [(UIView *)self traitCollection];
      v9 = [v15 updatedConfigurationForState:v7 traitCollection:v8];

      if (!v9)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListHeaderFooter.m" lineNumber:143 description:{@"Updated configuration was nil for configuration: %@", v15}];
      }

      v5 = v9;
    }

    v16 = v5;
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

    v13 = [v16 createContentView];
    [(_UICollectionViewListHeaderFooter *)self setContentView:v13];

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
    v3 = [(UIView *)self->_contentView configuration];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setAutomaticallyUpdatesContentViewConfiguration:(BOOL)a3
{
  if (a3)
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

- (void)_setContentViewConfigurationProvider:(id)a3
{
  if (self->_contentViewConfigurationProvider != a3)
  {
    if (a3)
    {
      *(&self->_headerFooterFlags + 2) &= ~0x100u;
    }

    v4 = [a3 copy];
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

- (void)_updateContentViewConfigurationForState:(unint64_t)a3
{
  contentViewConfigurationProvider = self->_contentViewConfigurationProvider;
  if (contentViewConfigurationProvider)
  {
    v5 = contentViewConfigurationProvider[2](contentViewConfigurationProvider, a3);
    v9 = v5;
    v6 = self;
LABEL_3:
    [(_UICollectionViewListHeaderFooter *)v6 _setContentViewConfiguration:v5];
    v7 = v9;
    goto LABEL_4;
  }

  if ((*(&self->_headerFooterFlags + 1) & 0x100) == 0)
  {
    return;
  }

  v7 = [(_UICollectionViewListHeaderFooter *)self _contentViewConfiguration];
  if (v7)
  {
    v8 = v7;
    v6 = self;
    v9 = v8;
    v5 = v8;
    goto LABEL_3;
  }

LABEL_4:
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)v7 setSemanticContentAttribute:[(UIView *)self semanticContentAttribute]];
    v5 = v7;
    if (v7)
    {
      [(UIView *)self addSubview:self->_contentView];
      v5 = v7;
    }
  }
}

- (void)_setBackgroundViewConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(&self->_headerFooterFlags + 2);
  v7 = (v6 >> 6) & 1;
  if (v4)
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
  v9 = v4;
  if ((v6 & 0x20) == 0 && v7)
  {
    [(_UICollectionViewListHeaderFooter *)self _setBackgroundViewConfigurationProvider:0];
    v5 = v9;
  }

  [(_UICollectionViewListHeaderFooter *)self _applyBackgroundViewConfiguration:v5];
}

- (void)_applyBackgroundViewConfiguration:(id)a3
{
  v5 = a3;
  systemBackgroundView = self->_systemBackgroundView;
  if (v5)
  {
    v7 = v5;
    if ((*(&self->_headerFooterFlags + 1) & 0x80) != 0 && !self->_backgroundViewConfigurationProvider)
    {
      v15 = v5;
      v8 = [(_UICollectionViewListHeaderFooter *)self _viewConfigurationState];
      v9 = [(UIView *)self traitCollection];
      v10 = [(_UISystemBackgroundView *)v15 updatedConfigurationForState:v8 traitCollection:v9];

      if (!v10)
      {
        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        [v14 handleFailureInMethod:a2 object:self file:@"_UICollectionViewListHeaderFooter.m" lineNumber:236 description:{@"Updated configuration was nil for configuration: %@", v15}];
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

- (void)_setAutomaticallyUpdatesBackgroundViewConfiguration:(BOOL)a3
{
  if (a3)
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

- (void)_setBackgroundViewConfigurationProvider:(id)a3
{
  v3 = *(&self->_headerFooterFlags + 2);
  v4 = (v3 >> 5) & 1;
  if (a3)
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
  if (self->_backgroundViewConfigurationProvider != a3)
  {
    if (a3)
    {
      *(&self->_headerFooterFlags + 2) = v6 & 0xFF7F;
    }

    v8 = a3;
    v9 = [v8 copy];
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

- (void)_updateBackgroundViewConfigurationForState:(unint64_t)a3
{
  backgroundViewConfigurationProvider = self->_backgroundViewConfigurationProvider;
  if (backgroundViewConfigurationProvider)
  {
    v5 = backgroundViewConfigurationProvider[2](backgroundViewConfigurationProvider, a3);
    v9 = v5;
    v6 = self;
LABEL_3:
    [(_UICollectionViewListHeaderFooter *)v6 _applyBackgroundViewConfiguration:v5];
    v7 = v9;
    goto LABEL_4;
  }

  if ((*(&self->_headerFooterFlags + 1) & 0x80) == 0)
  {
    return;
  }

  v7 = [(_UICollectionViewListHeaderFooter *)self _backgroundViewConfiguration];
  if (v7)
  {
    v8 = v7;
    v6 = self;
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
    v6 = [(_UICollectionViewListHeaderFooter *)self _viewConfigurationState];
    [(_UICollectionViewListHeaderFooter *)self _updateBackgroundViewConfigurationForState:v6];
    [(_UICollectionViewListHeaderFooter *)self _updateContentViewConfigurationForState:v6];
    [(_UICollectionViewListHeaderFooter *)self _updateViewConfigurationsWithState:v6];
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

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(_UICollectionViewListHeaderFooter *)self _resetBackgroundViewConfiguration];
  }

  v5 = *(&self->_headerFooterFlags + 2);
  v6 = (v5 >> 4) & 1;
  if (v4)
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
  [(UIView *)&v8 setBackgroundColor:v4];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v4 traitCollectionDidChange:a3];
  [(_UICollectionViewListHeaderFooter *)self _updateConstants];
  [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
}

- (void)_updateConstants
{
  v3 = [(UIView *)self traitCollection];
  obj = _UITableConstantsForTraitCollection(v3);

  v4 = obj;
  if (obj != self->_constants)
  {
    objc_storeStrong(&self->_constants, obj);
    [(_UICollectionViewListHeaderFooter *)self _updateDefaultBackgroundAppearance];
    v4 = obj;
  }
}

- (void)setSemanticContentAttribute:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v6 setSemanticContentAttribute:?];
  v5 = [(_UICollectionViewListHeaderFooter *)self contentView];
  [v5 setSemanticContentAttribute:a3];
}

- (CGSize)_contentTargetSizeForTargetSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5 forUseWithSizeThatFits:(BOOL)a6
{
  height = a3.height;
  width = a3.width;
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
    if (a4 >= 1000.0)
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
        v34 = self;
        _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_ERROR, "The _UICollectionViewListHeaderFooter's content view insets (left: %g, right: %g) exceed the _UICollectionViewListHeaderFooter's target width of %g with required fitting priority. Header/footer: %@", buf, 0x2Au);
      }
    }
  }

  if (v18 < 0.0)
  {
    v18 = 0.0;
    if (a5 >= 1000.0)
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
        v34 = self;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "The _UICollectionViewListHeaderFooter's content view insets (top: %g, bottom: %g) exceed the _UICollectionViewListHeaderFooter's target height of %g with required fitting priority. Header/footer: %@", buf, 0x2Au);
      }
    }
  }

  v23 = 1.79769313e308;
  if (a5 < 1000.0 && a6)
  {
    v24 = 1.79769313e308;
  }

  else
  {
    v24 = v18;
  }

  if (a4 >= 1000.0 || !a6)
  {
    v23 = v17;
  }

  result.height = v24;
  result.width = v23;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
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
    v28 = self;
    if ([(UIView *)v28 _wantsAutolayout])
    {
      v29 = 1;
    }

    else
    {
      v29 = [objc_opt_class() requiresConstraintBasedLayout];
    }

    if (-[UIView _wantsAutolayout](v28->_contentView, "_wantsAutolayout") || [objc_opt_class() requiresConstraintBasedLayout])
    {
      if (!v29 || (v32 = v28, ![(UIView *)v28 needsUpdateConstraints]) && (v32 = v28, [(UIView *)v28->_contentView translatesAutoresizingMaskIntoConstraints]))
      {
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v34 = [(UIView *)v28->_contentView translatesAutoresizingMaskIntoConstraints];
        if (has_internal_diagnostics)
        {
          if (!v34)
          {
            v55 = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v62 = v28;
              _os_log_fault_impl(&dword_188A29000, v55, OS_LOG_TYPE_FAULT, "contentView of _UICollectionViewListHeaderFooter has translatesAutoresizingMaskIntoConstraints false and is missing constraints to the header/footer, which will cause substandard performance in header/footer autosizing. Please leave the contentView's translatesAutoresizingMaskIntoConstraints true or else provide constraints between the contentView and the header/footer. %@", buf, 0xCu);
            }
          }
        }

        else if (!v34)
        {
          v56 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49AD50) + 8);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v62 = v28;
            _os_log_impl(&dword_188A29000, v56, OS_LOG_TYPE_ERROR, "contentView of _UICollectionViewListHeaderFooter has translatesAutoresizingMaskIntoConstraints false and is missing constraints to the header/footer, which will cause substandard performance in header/footer autosizing. Please leave the contentView's translatesAutoresizingMaskIntoConstraints true or else provide constraints between the contentView and the header/footer. %@", buf, 0xCu);
          }
        }

        if ([(UIView *)v28->_contentView translatesAutoresizingMaskIntoConstraints])
        {
          [(UIView *)v28->_contentView _setHostsLayoutEngine:1];
        }

        v32 = v28->_contentView;
      }
    }

    else
    {
      v32 = v28;
      if (!v29)
      {
        v59.receiver = v28;
        v59.super_class = _UICollectionViewListHeaderFooter;
        *&v30 = a4;
        *&v31 = a5;
        [(UIView *)&v59 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v30, v31];
        v26 = v48;
        v27 = v49;
        v32 = v28;
LABEL_51:

        goto LABEL_52;
      }
    }

    [(UIView *)v32 _setWantsAutolayout];
    buf[0] = 1;
    if (v13 == 0.0 && v11 == 0.0 && v17 == 0.0 && v15 == 0.0 || v32 != v28->_contentView)
    {
      if (a5 == 50.0 && height == 0.0)
      {
        v38 = buf;
      }

      else
      {
        v38 = 0;
      }

      *&v35 = a4;
      *&v36 = a5;
      [(UIView *)v32 _systemLayoutSizeFittingSize:v38 withHorizontalFittingPriority:width verticalFittingPriority:height hasIntentionallyCollapsedHeight:v35, v36];
      v26 = v39;
      v27 = v40;
    }

    else
    {
      *&v35 = a4;
      *&v36 = a5;
      [(_UICollectionViewListHeaderFooter *)v28 _contentTargetSizeForTargetSize:0 withHorizontalFittingPriority:width verticalFittingPriority:height forUseWithSizeThatFits:v35, v36];
      if (v43 == 0.0 && a5 == 50.0)
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
      [(_UICollectionViewListHeaderFooter *)v28 sizeThatFits:width, height];
      v26 = v41;
      v27 = v42;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __119___UICollectionViewListHeaderFooter_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke;
      block[3] = &unk_1E70F3590;
      block[4] = v28;
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
  *&v18 = a4;
  *&v19 = a5;
  [(_UICollectionViewListHeaderFooter *)self _contentTargetSizeForTargetSize:1 withHorizontalFittingPriority:width verticalFittingPriority:height forUseWithSizeThatFits:v18, v19];
  [UIView systemLayoutSizeFittingSize:"systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority:" withHorizontalFittingPriority:? verticalFittingPriority:?];
  v22 = v21;
  v24 = v23;
  v25 = self->_contentView;
  if (a4 != 1000.0 && v22 > 2777777.0 || a5 != 1000.0 && v24 > 2777777.0)
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UIContentViewAssertValidFittingSize(UIView * _Nonnull __strong, CGSize, UILayoutPriority, UILayoutPriority)"}];
    v64.width = v22;
    v64.height = v24;
    v54 = NSStringFromCGSize(v64);
    [v52 handleFailureInFunction:v53 file:@"_UIContentViewShared.h" lineNumber:73 description:{@"Content view returned an invalid size %@ from -systemLayoutSizeFittingSize:withHorizontalFittingPriority:verticalFittingPriority: which is not allowed. If you have implemented a custom content view, you need to add constraints inside it so that its size is not ambiguous, or you need to manually compute and return a valid size. Content view: %@", v54, v25}];
  }

  if (a4 >= 1000.0)
  {
    v26 = width;
  }

  else
  {
    v26 = v22 - (-v17 - v57);
  }

  if (a5 >= 1000.0)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)_didUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 previouslyFocusedView];
  v6 = v5;
  if (v5 == self)
  {

LABEL_5:
    [(_UICollectionViewListHeaderFooter *)self _setNeedsConfigurationStateUpdate];
    goto LABEL_6;
  }

  v7 = [v4 nextFocusedView];

  if (v7 == self)
  {
    goto LABEL_5;
  }

LABEL_6:
  v8.receiver = self;
  v8.super_class = _UICollectionViewListHeaderFooter;
  [(UIView *)&v8 _didUpdateFocusInContext:v4];
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
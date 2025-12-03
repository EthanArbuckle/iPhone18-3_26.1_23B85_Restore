@interface PLPillView
- (BOOL)_configureGlassIfNecessary;
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFitsContentItem:(id)item;
- (PLPillView)initWithLeadingAccessoryView:(id)view trailingAccessoryView:(id)accessoryView;
- (UIEdgeInsets)shadowOutsets;
- (double)_effectiveCornerRadius;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureShadowViewIfNecessary;
- (void)_setBackground:(id)background;
- (void)layoutSubviews;
- (void)setHasShadow:(BOOL)shadow;
- (void)setUsesBackgroundView:(BOOL)view;
@end

@implementation PLPillView

- (PLPillView)initWithLeadingAccessoryView:(id)view trailingAccessoryView:(id)accessoryView
{
  v37[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  accessoryViewCopy = accessoryView;
  v35.receiver = self;
  v35.super_class = PLPillView;
  v6 = [(PLPillView *)&v35 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_adjustsFontForContentSizeCategory = 1;
    v6->_hasShadow = 1;
    v6->_usesBackgroundView = 1;
    traitCollection = [(PLPillView *)v6 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory = v7->_preferredContentSizeCategory;
    v7->_preferredContentSizeCategory = preferredContentSizeCategory;

    v11 = [[PLPillContentView alloc] initWithLeadingAccessoryView:viewCopy trailingAccessoryView:accessoryViewCopy];
    contentView = v7->_contentView;
    v7->_contentView = v11;

    [(PLPillContentView *)v7->_contentView setAdjustsFontForContentSizeCategory:v7->_adjustsFontForContentSizeCategory];
    [(PLPillView *)v7 addSubview:v7->_contentView];
    leadingAnchor = [(PLPillContentView *)v7->_contentView leadingAnchor];
    leadingAnchor2 = [(PLPillView *)v7 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v37[0] = v27;
    trailingAnchor = [(PLPillContentView *)v7->_contentView trailingAnchor];
    trailingAnchor2 = [(PLPillView *)v7 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v37[1] = v15;
    topAnchor = [(PLPillContentView *)v7->_contentView topAnchor];
    topAnchor2 = [(PLPillView *)v7 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v37[2] = v18;
    bottomAnchor = [(PLPillContentView *)v7->_contentView bottomAnchor];
    bottomAnchor2 = [(PLPillView *)v7 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v37[3] = v21;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v26];
    objc_initWeak(&location, v7);
    v22 = objc_opt_self();
    v36 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __65__PLPillView_initWithLeadingAccessoryView_trailingAccessoryView___block_invoke;
    v32[3] = &unk_2784255D0;
    objc_copyWeak(&v33, &location);
    v24 = [(PLPillView *)v7 registerForTraitChanges:v23 withHandler:v32];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __65__PLPillView_initWithLeadingAccessoryView_trailingAccessoryView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[434] == 1)
    {
      v6 = [WeakRetained traitCollection];
      v7 = [v6 preferredContentSizeCategory];

      v8 = v5[55];
      v5[55] = v7;

      [v5 adjustForContentSizeCategoryChange];
    }

    v9 = [MEMORY[0x277D75D28] bs_nextViewControllerForView:v5];
    [v9 bs_traitCollectionDidChange:v10 forManagedTraitEnvironment:v5];
  }
}

- (CGSize)sizeThatFitsContentItem:(id)item
{
  [(PLPillContentView *)self->_contentView sizeThatFitsContentItem:item];
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)shadowOutsets
{
  [(PLPillView *)self _configureShadowViewIfNecessary];
  [(MTShadowView *)self->_shadowView shadowOutsets];
  if (self->_wantsAutomaticGlass)
  {
    v6 = 32.0;
    v5 = 32.0;
    v4 = 32.0;
    v3 = 32.0;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setHasShadow:(BOOL)shadow
{
  if (self->_hasShadow != shadow)
  {
    self->_hasShadow = shadow;
    [(PLPillView *)self setNeedsLayout];
  }
}

- (void)setUsesBackgroundView:(BOOL)view
{
  if (self->_usesBackgroundView != view)
  {
    self->_usesBackgroundView = view;
    [(PLPillView *)self setNeedsLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  [(PLPillContentView *)self->_contentView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = PLPillView;
  [(PLPillView *)&v16 layoutSubviews];
  if (![(PLPillView *)self _configureGlassIfNecessary])
  {
    [(PLPillView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(PLPillView *)self _effectiveCornerRadius];
    v12 = v11;
    [(PLPillView *)self _configureBackgroundViewIfNecessary];
    [(MTMaterialView *)self->_materialView _continuousCornerRadius];
    if (v13 != v12)
    {
      [(MTShadowView *)self->_shadowView removeFromSuperview];
      shadowView = self->_shadowView;
      self->_shadowView = 0;

      [(MTMaterialView *)self->_materialView _setContinuousCornerRadius:v12];
    }

    [(MTMaterialView *)self->_materialView setFrame:v4, v6, v8, v10];
    [(PLPillView *)self _configureShadowViewIfNecessary];
    v15 = self->_shadowView;
    [(MTShadowView *)v15 frameWithContentWithFrame:v4, v6, v8, v10];
    [(MTShadowView *)v15 setFrame:?];
  }

  [(PLPillContentView *)self->_contentView layoutIfNeeded];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = [(PLPillView *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    adjustsFontForContentSizeCategory = [(PLPillContentView *)self->_contentView adjustForContentSizeCategoryChange];
    if (adjustsFontForContentSizeCategory)
    {
      [(PLPillView *)self invalidateIntrinsicContentSize];
      [(PLPillView *)self setNeedsUpdateConstraints];
      [(PLPillView *)self setNeedsLayout];
      LOBYTE(adjustsFontForContentSizeCategory) = 1;
    }
  }

  return adjustsFontForContentSizeCategory;
}

- (double)_effectiveCornerRadius
{
  lastObject = 424;
  centerContentItems = [(PLPillContentView *)self->_contentView centerContentItems];
  v5 = [centerContentItems count];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  if (v5 > 1)
  {
    v8 = 1.0;
  }

  else
  {
    contentView = self->_contentView;
    lastObject = [centerContentItems lastObject];
    [(PLPillView *)self bounds];
    v8 = [(PLPillContentView *)contentView isWrappingRequiredForCenterContentItem:lastObject inBounds:?];
  }

  v9 = *MEMORY[0x277D76860];
  v10 = preferredContentSizeCategory;
  v11 = [(NSString *)v10 isEqualToString:v9];
  v12 = *MEMORY[0x277D76838];
  if (!v11)
  {
    v12 = v10;
  }

  v13 = v12;

  if ((v5 > 1 || v8 != 0.0) && UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76818], v13) == NSOrderedAscending)
  {
    v14 = 20.0;
  }

  else
  {
    v14 = floor(PLContentViewHeightForContentSizeCategory(v13, v5, v8) * 0.5);
  }

  if (v5 <= 1)
  {
  }

  return v14;
}

- (void)_configureShadowViewIfNecessary
{
  if (![(PLPillView *)self _configureGlassIfNecessary])
  {
    shadowView = self->_shadowView;
    if (shadowView)
    {
      if (!self->_hasShadow)
      {
        [(MTShadowView *)shadowView removeFromSuperview];
        v4 = self->_shadowView;
        self->_shadowView = 0;
      }
    }

    else if (self->_hasShadow)
    {
      v5 = objc_alloc(MEMORY[0x277D26728]);
      [(PLPillView *)self _effectiveCornerRadius];
      v8 = 1065353216;
      v9 = xmmword_21FE0D1B0;
      v10 = 0x4039000000000000;
      v6 = [v5 initWithShadowAttributes:&v8 maskCornerRadius:?];
      v7 = self->_shadowView;
      self->_shadowView = v6;

      [(PLPillView *)self insertSubview:self->_shadowView atIndex:0];
    }
  }
}

- (void)_configureBackgroundViewIfNecessary
{
  if (![(PLPillView *)self _configureGlassIfNecessary])
  {
    materialView = self->_materialView;
    if (materialView)
    {
      if (!self->_usesBackgroundView)
      {
        [(MTMaterialView *)materialView removeFromSuperview];
        v4 = self->_materialView;
        self->_materialView = 0;
      }
    }

    else if (self->_usesBackgroundView)
    {
      v5 = [MEMORY[0x277D26718] materialViewWithRecipe:53 options:8];
      v6 = self->_materialView;
      self->_materialView = v5;

      v7 = self->_materialView;
      if (self->_shadowView)
      {

        [(PLPillView *)self insertSubview:v7 aboveSubview:?];
      }

      else
      {

        [(PLPillView *)self insertSubview:v7 atIndex:?];
      }
    }
  }
}

- (void)_setBackground:(id)background
{
  self->_hasClientSpecifiedBackground = 1;
  v3.receiver = self;
  v3.super_class = PLPillView;
  [(PLPillView *)&v3 _setBackground:background];
}

- (BOOL)_configureGlassIfNecessary
{
  if (!_UISolariumEnabled() || self->_hasClientSpecifiedBackground)
  {
    p_wantsAutomaticGlass = &self->_wantsAutomaticGlass;
    self->_wantsAutomaticGlass = 0;
    goto LABEL_4;
  }

  if ([(PLPillView *)self hasShadow])
  {
    p_wantsAutomaticGlass = &self->_wantsAutomaticGlass;
    self->_wantsAutomaticGlass = 1;
  }

  else
  {
    usesBackgroundView = [(PLPillView *)self usesBackgroundView];
    p_wantsAutomaticGlass = &self->_wantsAutomaticGlass;
    self->_wantsAutomaticGlass = usesBackgroundView;
    if (!usesBackgroundView)
    {
LABEL_4:
      if (!self->_hasClientSpecifiedBackground)
      {
        [(PLPillContentView *)self->_contentView _setBackground:0];
      }

      return *p_wantsAutomaticGlass;
    }
  }

  superview = [(MTMaterialView *)self->_materialView superview];

  if (superview == self)
  {
    [(MTMaterialView *)self->_materialView removeFromSuperview];
    materialView = self->_materialView;
    self->_materialView = 0;
  }

  superview2 = [(MTShadowView *)self->_shadowView superview];

  if (superview2 == self)
  {
    [(MTShadowView *)self->_shadowView removeFromSuperview];
    shadowView = self->_shadowView;
    self->_shadowView = 0;
  }

  _background = [(PLPillContentView *)self->_contentView _background];

  if (!_background)
  {
    v10 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:0 size:1];
    [(PLPillContentView *)self->_contentView _setBackground:v10];
    contentView = self->_contentView;
    [(PLPillView *)self _effectiveCornerRadius];
    [(PLPillContentView *)contentView _setContinuousCornerRadius:?];
  }

  return *p_wantsAutomaticGlass;
}

@end
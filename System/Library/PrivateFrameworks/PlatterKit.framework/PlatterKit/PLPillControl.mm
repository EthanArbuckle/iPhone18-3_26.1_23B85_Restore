@interface PLPillControl
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFitsContentItem:(id)item;
- (PLPillControl)initWithLeadingAccessoryView:(id)view trailingAccessoryView:(id)accessoryView;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_configureShadowNecessary;
- (void)_performHighlight:(BOOL)highlight;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PLPillControl

- (PLPillControl)initWithLeadingAccessoryView:(id)view trailingAccessoryView:(id)accessoryView
{
  v40[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  accessoryViewCopy = accessoryView;
  v38.receiver = self;
  v38.super_class = PLPillControl;
  v6 = [(PLPillControl *)&v38 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_adjustsFontForContentSizeCategory = 1;
    traitCollection = [(PLPillControl *)v6 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory = v7->_preferredContentSizeCategory;
    v7->_preferredContentSizeCategory = preferredContentSizeCategory;

    [(PLPillControl *)v7 _setContinuousCornerRadius:8.0];
    v11 = [[PLPillContentView alloc] initWithLeadingAccessoryView:viewCopy trailingAccessoryView:accessoryViewCopy];
    contentView = v7->_contentView;
    v7->_contentView = v11;

    [(PLPillContentView *)v7->_contentView setUserInteractionEnabled:0];
    [(PLPillContentView *)v7->_contentView setAdjustsFontForContentSizeCategory:v7->_adjustsFontForContentSizeCategory];
    [(PLPillControl *)v7 addSubview:v7->_contentView];
    leadingAnchor = [(PLPillContentView *)v7->_contentView leadingAnchor];
    leadingAnchor2 = [(PLPillControl *)v7 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v40[0] = v30;
    trailingAnchor = [(PLPillContentView *)v7->_contentView trailingAnchor];
    trailingAnchor2 = [(PLPillControl *)v7 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v40[1] = v15;
    topAnchor = [(PLPillContentView *)v7->_contentView topAnchor];
    topAnchor2 = [(PLPillControl *)v7 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v40[2] = v18;
    bottomAnchor = [(PLPillContentView *)v7->_contentView bottomAnchor];
    bottomAnchor2 = [(PLPillControl *)v7 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v40[3] = v21;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v29];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    LODWORD(topAnchor2) = [currentDevice userInterfaceIdiom] == 1;

    if (topAnchor2)
    {
      v23 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v7];
      [(PLPillControl *)v7 addInteraction:v23];
    }

    objc_initWeak(&location, v7);
    v24 = objc_opt_self();
    v39[0] = v24;
    v25 = objc_opt_self();
    v39[1] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __68__PLPillControl_initWithLeadingAccessoryView_trailingAccessoryView___block_invoke;
    v35[3] = &unk_2784255D0;
    objc_copyWeak(&v36, &location);
    v27 = [(PLPillControl *)v7 registerForTraitChanges:v26 withHandler:v35];

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __68__PLPillControl_initWithLeadingAccessoryView_trailingAccessoryView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v13 traitCollection];
    v8 = [v7 hasDifferentColorAppearanceComparedToTraitCollection:v5];

    if (v8)
    {
      [WeakRetained _performHighlight:{objc_msgSend(WeakRetained, "isHighlighted")}];
    }

    if (*(WeakRetained + 464) == 1)
    {
      v9 = [WeakRetained traitCollection];
      v10 = [v9 preferredContentSizeCategory];

      v11 = *(WeakRetained + 59);
      *(WeakRetained + 59) = v10;

      [WeakRetained adjustForContentSizeCategoryChange];
    }

    v12 = [MEMORY[0x277D75D28] bs_nextViewControllerForView:WeakRetained];
    [v12 bs_traitCollectionDidChange:v5 forManagedTraitEnvironment:WeakRetained];
  }
}

- (CGSize)sizeThatFitsContentItem:(id)item
{
  [(PLPillContentView *)self->_contentView sizeThatFitsContentItem:item];
  result.height = v4;
  result.width = v3;
  return result;
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
  v3.receiver = self;
  v3.super_class = PLPillControl;
  [(PLPillControl *)&v3 layoutSubviews];
  [(PLPillControl *)self _configureShadowNecessary];
  [(PLPillContentView *)self->_contentView layoutIfNeeded];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = PLPillControl;
  [(PLPillControl *)&v4 didMoveToWindow];
  tertiarySystemBackgroundColor = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  [(PLPillControl *)self setBackgroundColor:tertiarySystemBackgroundColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if ([(PLPillControl *)self isHighlighted]!= highlighted)
  {
    v7.receiver = self;
    v7.super_class = PLPillControl;
    [(PLPillControl *)&v7 setHighlighted:highlightedCopy];
    if ([MEMORY[0x277D75D18] areAnimationsEnabled] && (objc_msgSend(MEMORY[0x277D75D18], "_isInAnimationBlock") & 1) == 0)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __32__PLPillControl_setHighlighted___block_invoke;
      v5[3] = &unk_278425100;
      v5[4] = self;
      v6 = highlightedCopy;
      [MEMORY[0x277D75D18] _animateUsingDefaultDampedSpringWithDelay:6 initialSpringVelocity:v5 options:0 animations:0.0 completion:0.0];
    }

    else
    {
      [(PLPillControl *)self _performHighlight:highlightedCopy];
    }
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  adjustsFontForContentSizeCategory = [(PLPillControl *)self adjustsFontForContentSizeCategory];
  if (adjustsFontForContentSizeCategory)
  {
    adjustsFontForContentSizeCategory = [(PLPillContentView *)self->_contentView adjustForContentSizeCategoryChange];
    if (adjustsFontForContentSizeCategory)
    {
      [(PLPillControl *)self invalidateIntrinsicContentSize];
      [(PLPillControl *)self setNeedsUpdateConstraints];
      [(PLPillControl *)self setNeedsLayout];
      LOBYTE(adjustsFontForContentSizeCategory) = 1;
    }
  }

  return adjustsFontForContentSizeCategory;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = MEMORY[0x277D758D8];
  regionCopy = region;
  v7 = objc_alloc_init(v5);
  v8 = MEMORY[0x277D75208];
  [regionCopy rect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v8 bezierPathWithRoundedRect:v10 cornerRadius:{v12, v14, v16, 8.0}];
  [v7 setVisiblePath:v17];
  v18 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v7];
  v19 = [MEMORY[0x277D75858] effectWithPreview:v18];
  v20 = [MEMORY[0x277D75890] styleWithEffect:v19 shape:0];

  return v20;
}

- (void)_configureShadowNecessary
{
  layer = [(PLPillControl *)self layer];
  [layer shadowOpacity];
  if (fabsf(v2) < 2.2204e-16)
  {
    [layer setShadowPathIsBounds:1];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowOffset:{0.0, 10.0}];
    [layer setShadowRadius:20.0];
    LODWORD(v4) = 1036831949;
    [layer setShadowOpacity:v4];
  }
}

- (void)_performHighlight:(BOOL)highlight
{
  tertiarySystemBackgroundColor = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v7 = tertiarySystemBackgroundColor;
  if (highlight)
  {
    v6 = [tertiarySystemBackgroundColor colorWithAlphaComponent:0.94];
    [(PLPillControl *)self setBackgroundColor:v6];
  }

  else
  {
    [(PLPillControl *)self setBackgroundColor:tertiarySystemBackgroundColor];
  }
}

@end
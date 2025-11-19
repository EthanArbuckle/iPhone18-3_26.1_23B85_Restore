@interface PLPillControl
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFitsContentItem:(id)a3;
- (PLPillControl)initWithLeadingAccessoryView:(id)a3 trailingAccessoryView:(id)a4;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_configureShadowNecessary;
- (void)_performHighlight:(BOOL)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation PLPillControl

- (PLPillControl)initWithLeadingAccessoryView:(id)a3 trailingAccessoryView:(id)a4
{
  v40[4] = *MEMORY[0x277D85DE8];
  v33 = a3;
  v34 = a4;
  v38.receiver = self;
  v38.super_class = PLPillControl;
  v6 = [(PLPillControl *)&v38 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_adjustsFontForContentSizeCategory = 1;
    v8 = [(PLPillControl *)v6 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    preferredContentSizeCategory = v7->_preferredContentSizeCategory;
    v7->_preferredContentSizeCategory = v9;

    [(PLPillControl *)v7 _setContinuousCornerRadius:8.0];
    v11 = [[PLPillContentView alloc] initWithLeadingAccessoryView:v33 trailingAccessoryView:v34];
    contentView = v7->_contentView;
    v7->_contentView = v11;

    [(PLPillContentView *)v7->_contentView setUserInteractionEnabled:0];
    [(PLPillContentView *)v7->_contentView setAdjustsFontForContentSizeCategory:v7->_adjustsFontForContentSizeCategory];
    [(PLPillControl *)v7 addSubview:v7->_contentView];
    v32 = [(PLPillContentView *)v7->_contentView leadingAnchor];
    v31 = [(PLPillControl *)v7 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v40[0] = v30;
    v13 = [(PLPillContentView *)v7->_contentView trailingAnchor];
    v14 = [(PLPillControl *)v7 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v40[1] = v15;
    v16 = [(PLPillContentView *)v7->_contentView topAnchor];
    v17 = [(PLPillControl *)v7 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v40[2] = v18;
    v19 = [(PLPillContentView *)v7->_contentView bottomAnchor];
    v20 = [(PLPillControl *)v7 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v40[3] = v21;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v29];
    v22 = [MEMORY[0x277D75418] currentDevice];
    LODWORD(v17) = [v22 userInterfaceIdiom] == 1;

    if (v17)
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

- (CGSize)sizeThatFitsContentItem:(id)a3
{
  [(PLPillContentView *)self->_contentView sizeThatFitsContentItem:a3];
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
  v3 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  [(PLPillControl *)self setBackgroundColor:v3];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(PLPillControl *)self isHighlighted]!= a3)
  {
    v7.receiver = self;
    v7.super_class = PLPillControl;
    [(PLPillControl *)&v7 setHighlighted:v3];
    if ([MEMORY[0x277D75D18] areAnimationsEnabled] && (objc_msgSend(MEMORY[0x277D75D18], "_isInAnimationBlock") & 1) == 0)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __32__PLPillControl_setHighlighted___block_invoke;
      v5[3] = &unk_278425100;
      v5[4] = self;
      v6 = v3;
      [MEMORY[0x277D75D18] _animateUsingDefaultDampedSpringWithDelay:6 initialSpringVelocity:v5 options:0 animations:0.0 completion:0.0];
    }

    else
    {
      [(PLPillControl *)self _performHighlight:v3];
    }
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(PLPillControl *)self adjustsFontForContentSizeCategory];
  if (v3)
  {
    v3 = [(PLPillContentView *)self->_contentView adjustForContentSizeCategoryChange];
    if (v3)
    {
      [(PLPillControl *)self invalidateIntrinsicContentSize];
      [(PLPillControl *)self setNeedsUpdateConstraints];
      [(PLPillControl *)self setNeedsLayout];
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = MEMORY[0x277D758D8];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = MEMORY[0x277D75208];
  [v6 rect];
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
  v5 = [(PLPillControl *)self layer];
  [v5 shadowOpacity];
  if (fabsf(v2) < 2.2204e-16)
  {
    [v5 setShadowPathIsBounds:1];
    v3 = [MEMORY[0x277D75348] blackColor];
    [v5 setShadowColor:{objc_msgSend(v3, "CGColor")}];

    [v5 setShadowOffset:{0.0, 10.0}];
    [v5 setShadowRadius:20.0];
    LODWORD(v4) = 1036831949;
    [v5 setShadowOpacity:v4];
  }
}

- (void)_performHighlight:(BOOL)a3
{
  v5 = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
  v7 = v5;
  if (a3)
  {
    v6 = [v5 colorWithAlphaComponent:0.94];
    [(PLPillControl *)self setBackgroundColor:v6];
  }

  else
  {
    [(PLPillControl *)self setBackgroundColor:v5];
  }
}

@end
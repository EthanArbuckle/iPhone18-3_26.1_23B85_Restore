@interface NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerViewDelegate)delegate;
- (void)_unmanagedViewTapped;
- (void)layoutSubviews;
- (void)setContainsUnmanagedContent:(BOOL)a3;
@end

@implementation NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UISegmentedControl *)self->_unmanagedSegmentControl frame:a3.width];
  v3 = CGRectGetMaxY(v6) + 35.0;
  v4 = 0.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v60[2] = *MEMORY[0x277D85DE8];
  v57.receiver = self;
  v57.super_class = NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView;
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)&v57 layoutSubviews];
  if (!self->_unmanagedView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    unmanagedView = self->_unmanagedView;
    self->_unmanagedView = v3;

    v5 = self->_unmanagedView;
    v6 = [MEMORY[0x277D75348] systemLightGrayColor];
    [(UIView *)v5 setBackgroundColor:v6];

    [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self addSubview:self->_unmanagedView];
  }

  if (!self->_tapGestureRecongizer)
  {
    v7 = objc_alloc_init(MEMORY[0x277D75B80]);
    tapGestureRecongizer = self->_tapGestureRecongizer;
    self->_tapGestureRecongizer = v7;

    [(UITapGestureRecognizer *)self->_tapGestureRecongizer setDelegate:self];
    [(UIView *)self->_unmanagedView addGestureRecognizer:self->_tapGestureRecongizer];
    [(UITapGestureRecognizer *)self->_tapGestureRecongizer addTarget:self action:sel__unmanagedViewTapped];
  }

  if (!self->_unmanagedTitleLabel)
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    unmanagedTitleLabel = self->_unmanagedTitleLabel;
    self->_unmanagedTitleLabel = v9;

    [(UILabel *)self->_unmanagedTitleLabel setText:@"Set containsUnmanagedContent on configuration:"];
    [(UILabel *)self->_unmanagedTitleLabel setNumberOfLines:0];
    [(UILabel *)self->_unmanagedTitleLabel setTextAlignment:1];
    [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self addSubview:self->_unmanagedTitleLabel];
  }

  if (!self->_unmanagedSegmentControl)
  {
    objc_initWeak(&location, self);
    v11 = MEMORY[0x277D750C8];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __93__NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView_layoutSubviews__block_invoke;
    v54[3] = &unk_27836F428;
    objc_copyWeak(&v55, &location);
    v12 = [v11 actionWithTitle:@"No" image:0 identifier:0 handler:v54];
    v13 = MEMORY[0x277D750C8];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __93__NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView_layoutSubviews__block_invoke_2;
    v52[3] = &unk_27836F428;
    objc_copyWeak(&v53, &location);
    v14 = [v13 actionWithTitle:@"Yes" image:0 identifier:0 handler:v52];
    v15 = objc_alloc(MEMORY[0x277D75A08]);
    v60[0] = v12;
    v60[1] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    v17 = [v15 initWithFrame:v16 actions:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    unmanagedSegmentControl = self->_unmanagedSegmentControl;
    self->_unmanagedSegmentControl = v17;

    [(UISegmentedControl *)self->_unmanagedSegmentControl setSelectedSegmentIndex:self->_containsUnmanagedContent];
    [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self addSubview:self->_unmanagedSegmentControl];

    objc_destroyWeak(&v53);
    objc_destroyWeak(&v55);
    objc_destroyWeak(&location);
  }

  if (!self->_overflowingLabel)
  {
    v19 = objc_alloc_init(MEMORY[0x277D756B8]);
    overflowingLabel = self->_overflowingLabel;
    self->_overflowingLabel = v19;

    v21 = objc_alloc_init(MEMORY[0x277CCAB48]);
    v22 = *MEMORY[0x277D743F8];
    v23 = *MEMORY[0x277D74428];
    v24 = *MEMORY[0x277D740A8];
    v25 = *MEMORY[0x277D740C0];
    v26 = 25;
    do
    {
      v27 = MEMORY[0x277D74300];
      v28 = arc4random_uniform(0x14u);
      if (arc4random_uniform(0x14u))
      {
        v29 = v23;
      }

      else
      {
        v29 = v22;
      }

      v30 = [v27 systemFontOfSize:(v28 + 10) weight:v29];
      v31 = MEMORY[0x277D75348];
      v32 = arc4random_uniform(0xFFu);
      v33 = arc4random_uniform(0xFFu);
      v34 = [v31 colorWithRed:v32 / 255.0 green:v33 / 255.0 blue:arc4random_uniform(0xFFu) / 255.0 alpha:1.0];
      v35 = objc_alloc(MEMORY[0x277CCA898]);
      v58[0] = v24;
      v58[1] = v25;
      v59[0] = v30;
      v59[1] = v34;
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:2];
      v37 = [v35 initWithString:@"repeating str" attributes:v36];
      [v21 appendAttributedString:v37];

      --v26;
    }

    while (v26);
    [(UILabel *)self->_overflowingLabel setAttributedText:v21];
    [(UILabel *)self->_overflowingLabel setNumberOfLines:0];
    [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self addSubview:self->_overflowingLabel];
  }

  v38 = self->_unmanagedView;
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self bounds];
  [(UIView *)v38 setFrame:?];
  v39 = self->_unmanagedTitleLabel;
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self bounds];
  [(UILabel *)v39 setFrame:16.0, 16.0, v40 + -32.0, 50.0];
  v41 = self->_unmanagedSegmentControl;
  [(UILabel *)self->_unmanagedTitleLabel frame];
  MaxY = CGRectGetMaxY(v61);
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self bounds];
  [(UISegmentedControl *)v41 setFrame:16.0, MaxY + 16.0, v43 + -32.0, 100.0];
  v44 = self->_overflowingLabel;
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self bounds];
  v46 = v45;
  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self bounds];
  [(UILabel *)v44 sizeThatFits:v46 + 80.0, v47];
  v49 = v48;
  v51 = v50;
  [(UISegmentedControl *)self->_unmanagedSegmentControl frame];
  [(UILabel *)self->_overflowingLabel setFrame:-40.0, CGRectGetMaxY(v62) + 8.0, v49, v51];
}

void __93__NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 unmanagedContentViewControllerView:v3 setContainsUnmanagedContent:0];

    WeakRetained = v3;
  }
}

void __93__NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 unmanagedContentViewControllerView:v3 setContainsUnmanagedContent:1];

    WeakRetained = v3;
  }
}

- (void)setContainsUnmanagedContent:(BOOL)a3
{
  self->_containsUnmanagedContent = a3;
  [(UISegmentedControl *)self->_unmanagedSegmentControl setSelectedSegmentIndex:a3];

  [(NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerView *)self setNeedsLayout];
}

- (void)_unmanagedViewTapped
{
  v3 = [(UIView *)self->_unmanagedView backgroundColor];
  v4 = [MEMORY[0x277D75348] systemLightGrayColor];
  if ([v3 isEqual:v4])
  {
    [MEMORY[0x277D75348] systemMintColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemLightGrayColor];
  }
  v5 = ;

  [(UIView *)self->_unmanagedView setBackgroundColor:v5];
}

- (NCSupplementaryViewPrototypeRecipeContentUnmanagedContentViewControllerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
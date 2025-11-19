@interface STUIStatusBarCellularNetworkTypeView
- (STUIStatusBarCellularNetworkTypeView)initWithFrame:(CGRect)a3;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (void)_animateUpdateToText:(id)a3 prefixLength:(int64_t)a4 styleAttributes:(id)a5 attributedText:(id)a6 type:(int64_t)a7;
- (void)setAttributedText:(id)a3 prefixLength:(int64_t)a4 forType:(int64_t)a5 animated:(BOOL)a6;
- (void)setFixedWidth:(double)a3;
- (void)setText:(id)a3 prefixLength:(int64_t)a4 withStyleAttributes:(id)a5 forType:(int64_t)a6 animated:(BOOL)a7;
@end

@implementation STUIStatusBarCellularNetworkTypeView

- (STUIStatusBarCellularNetworkTypeView)initWithFrame:(CGRect)a3
{
  v55[12] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = STUIStatusBarCellularNetworkTypeView;
  v3 = [(STUIStatusBarCellularNetworkTypeView *)&v54 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = objc_alloc_init(MEMORY[0x277D756D0]);
  [(STUIStatusBarCellularNetworkTypeView *)v3 addLayoutGuide:?];
  v5 = [STUIStatusBarStringView alloc];
  [(STUIStatusBarCellularNetworkTypeView *)v3 bounds];
  v6 = [(STUIStatusBarStringView *)v5 initWithFrame:?];
  stringView = v3->_stringView;
  v3->_stringView = v6;

  [(STUIStatusBarStringView *)v3->_stringView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(STUIStatusBarStringView *)v3->_stringView setLineBreakMode:2];
  [(STUIStatusBarCellularNetworkTypeView *)v3 addSubview:v3->_stringView];
  v8 = objc_alloc(MEMORY[0x277D75CF8]);
  [(STUIStatusBarCellularNetworkTypeView *)v3 bounds];
  v9 = [v8 initWithFrame:?];
  prefixLabel = v3->_prefixLabel;
  v3->_prefixLabel = v9;

  [(UIVectorLabel *)v3->_prefixLabel setText:&stru_287D04F38];
  [(UIVectorLabel *)v3->_prefixLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVectorLabel *)v3->_prefixLabel setHidden:1];
  [(STUIStatusBarCellularNetworkTypeView *)v3 addSubview:v3->_prefixLabel];
  v11 = objc_alloc(MEMORY[0x277D75CF8]);
  [(STUIStatusBarCellularNetworkTypeView *)v3 bounds];
  v12 = [v11 initWithFrame:?];
  accessoryLabel = v3->_accessoryLabel;
  v3->_accessoryLabel = v12;

  [(UIVectorLabel *)v3->_accessoryLabel setText:&stru_287D04F38];
  [(UIVectorLabel *)v3->_accessoryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVectorLabel *)v3->_accessoryLabel setHidden:1];
  [(STUIStatusBarCellularNetworkTypeView *)v3 addSubview:v3->_accessoryLabel];
  v14 = [(STUIStatusBarCellularNetworkTypeView *)v3 widthAnchor];
  v15 = [v14 constraintEqualToConstant:0.0];
  widthConstraint = v3->_widthConstraint;
  v3->_widthConstraint = v15;

  v53 = [v4 leadingAnchor];
  v52 = [(STUIStatusBarStringView *)v3->_stringView leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v55[0] = v51;
  v50 = [v4 trailingAnchor];
  v49 = [(STUIStatusBarStringView *)v3->_stringView trailingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v55[1] = v48;
  v47 = [v4 topAnchor];
  v46 = [(STUIStatusBarStringView *)v3->_stringView topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v55[2] = v45;
  v44 = [v4 bottomAnchor];
  v43 = [(STUIStatusBarStringView *)v3->_stringView bottomAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v55[3] = v42;
  v41 = [v4 leadingAnchor];
  v39 = [(UIVectorLabel *)v3->_prefixLabel leadingAnchor];
  v38 = [v41 constraintEqualToAnchor:v39];
  v55[4] = v38;
  v37 = [(UIVectorLabel *)v3->_prefixLabel trailingAnchor];
  v36 = [(UIVectorLabel *)v3->_accessoryLabel leadingAnchor];
  v34 = [v37 constraintEqualToAnchor:v36];
  v55[5] = v34;
  v33 = [(STUIStatusBarStringView *)v3->_stringView lastBaselineAnchor];
  v32 = [(UIVectorLabel *)v3->_prefixLabel lastBaselineAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v55[6] = v31;
  v30 = [(STUIStatusBarStringView *)v3->_stringView lastBaselineAnchor];
  v29 = [(UIVectorLabel *)v3->_accessoryLabel lastBaselineAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v55[7] = v28;
  v17 = v4;
  v18 = [v4 centerXAnchor];
  v19 = [(STUIStatusBarCellularNetworkTypeView *)v3 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v55[8] = v20;
  v21 = [(STUIStatusBarCellularNetworkTypeView *)v3 topAnchor];
  v35 = v17;
  v22 = [v17 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v55[9] = v23;
  v24 = [(STUIStatusBarCellularNetworkTypeView *)v3 bottomAnchor];
  v25 = [v17 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v55[10] = v26;
  v55[11] = v3->_widthConstraint;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:12];

  [MEMORY[0x277CCAAD0] activateConstraints:v40];
  return v3;
}

- (void)setFixedWidth:(double)a3
{
  v5 = [(STUIStatusBarCellularNetworkTypeView *)self widthConstraint];
  [v5 constant];
  v7 = vabdd_f64(a3, v6);

  if (v7 > 0.00000011920929)
  {
    if (a3 <= 0.0 || (-[STUIStatusBarCellularNetworkTypeView widthConstraint](self, "widthConstraint"), v8 = objc_claimAutoreleasedReturnValue(), [v8 constant], v10 = v9, v8, v10 <= 0.0))
    {
      v12 = [(STUIStatusBarCellularNetworkTypeView *)self widthConstraint];
      [v12 setConstant:a3];

      v13 = [(STUIStatusBarCellularNetworkTypeView *)self superview];
      [v13 layoutSubviews];
    }

    else
    {
      v11 = *MEMORY[0x277D76620];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __54__STUIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke;
      v14[3] = &unk_279D38628;
      v14[4] = self;
      *&v14[5] = a3;
      [v11 _performBlockAfterCATransactionCommits:v14];
    }
  }
}

uint64_t __54__STUIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) widthConstraint];
  [v3 setConstant:v2];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__STUIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke_2;
  v5[3] = &unk_279D37F00;
  v5[4] = *(a1 + 32);
  return [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.5];
}

void __54__STUIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) superview];
  [v1 layoutSubviews];
}

- (void)_animateUpdateToText:(id)a3 prefixLength:(int64_t)a4 styleAttributes:(id)a5 attributedText:(id)a6 type:(int64_t)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = MEMORY[0x277D75D18];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke;
  v31[3] = &unk_279D38AE8;
  v16 = a4 != 0x7FFFFFFFFFFFFFFFLL;
  v31[4] = self;
  v36 = a4 != 0x7FFFFFFFFFFFFFFFLL;
  v17 = v12;
  v32 = v17;
  v35 = a4;
  v18 = v14;
  v33 = v18;
  v19 = v13;
  v34 = v19;
  [v15 performWithoutAnimation:v31];
  objc_initWeak(&location, self);
  v20 = *MEMORY[0x277D76620];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_2;
  v24[3] = &unk_279D38B60;
  objc_copyWeak(v28, &location);
  v21 = v18;
  v25 = v21;
  v22 = v17;
  v26 = v22;
  v23 = v19;
  v29 = v16;
  v27 = v23;
  v28[1] = a7;
  [v20 _performBlockAfterCATransactionCommits:v24];

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

void __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setAlpha:0.0];
  [*(*(a1 + 32) + 432) setHidden:0];
  [*(*(a1 + 32) + 432) setAlpha:1.0];
  [*(*(a1 + 32) + 440) setHidden:0];
  if (*(a1 + 72) == 1)
  {
    [*(*(a1 + 32) + 440) setAlpha:0.0];
    v2 = [*(a1 + 40) substringFromIndex:*(a1 + 64)];
    [*(*(a1 + 32) + 440) setText:v2];

    v3 = *(a1 + 48);
    if (v3)
    {
      v7 = [v3 attributesAtIndex:*(a1 + 64) effectiveRange:0];
      v4 = [v7 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
      [*(*(a1 + 32) + 440) setFont:v4];

      v5 = [v7 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
      [*(*(a1 + 32) + 440) setTextColor:v5];
    }

    else
    {
      v6 = [*(a1 + 56) fontForStyle:{objc_msgSend(*(*(a1 + 32) + 424), "fontStyle")}];
      [*(*(a1 + 32) + 440) setFont:v6];

      v7 = [*(a1 + 56) textColor];
      [*(*(a1 + 32) + 440) setTextColor:?];
    }
  }
}

void __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_3;
  v5[3] = &unk_279D38B10;
  objc_copyWeak(&v9, (a1 + 56));
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 72);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_9;
  v3[3] = &unk_279D38B38;
  objc_copyWeak(v4, (a1 + 56));
  v4[1] = *(a1 + 64);
  [v2 animateWithDuration:v5 animations:v3 completion:0.5];
  objc_destroyWeak(v4);

  objc_destroyWeak(&v9);
}

void __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_3(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained _isAnimatingUpdate])
  {
    if (*(a1 + 32))
    {
      [WeakRetained[53] setAttributedText:?];
      v3 = [*(a1 + 32) attributesAtIndex:0 effectiveRange:0];
      v4 = *MEMORY[0x277D740A8];
      v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
      v6 = *MEMORY[0x277D740C0];
      v7 = [v3 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
    }

    else
    {
      [WeakRetained[53] setText:*(a1 + 40)];
      [WeakRetained[53] applyStyleAttributes:*(a1 + 48)];
      v5 = [*(a1 + 48) fontForStyle:{objc_msgSend(WeakRetained[53], "fontStyle")}];
      v7 = [*(a1 + 48) textColor];
      v4 = *MEMORY[0x277D740A8];
      v6 = *MEMORY[0x277D740C0];
    }

    v8 = objc_alloc(MEMORY[0x277CCA898]);
    v9 = [WeakRetained[54] text];
    v13[0] = *MEMORY[0x277D740D0];
    v13[1] = v4;
    v14[0] = &unk_287D1B350;
    v14[1] = v5;
    v13[2] = v6;
    v14[2] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    v11 = [v8 initWithString:v9 attributes:v10];
    [WeakRetained[54] _setAttributedText:v11];

    v12 = 0.0;
    if (*(a1 + 64))
    {
      v12 = 1.0;
    }

    [WeakRetained[55] setAlpha:v12];
  }
}

void __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isAnimatingUpdate])
  {
    [WeakRetained[54] setHidden:1];
    [WeakRetained[55] setHidden:1];
    [WeakRetained[53] setAlpha:1.0];
    WeakRetained[52] = *(a1 + 40);
    *(WeakRetained + 408) = 0;
  }
}

- (void)setAttributedText:(id)a3 prefixLength:(int64_t)a4 forType:(int64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v33[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = v10;
  if (v6 && !self->_animatingUpdate)
  {
    self->_animatingUpdate = 1;
    v28 = [v10 string];
    [(STUIStatusBarCellularNetworkTypeView *)self _animateUpdateToText:v28 prefixLength:a4 styleAttributes:0 attributedText:v11 type:a5];
  }

  else
  {
    v31 = a5;
    [(STUIStatusBarStringView *)self->_stringView setAttributedText:v10];
    [(UIVectorLabel *)self->_prefixLabel setHidden:1];
    [(UIVectorLabel *)self->_accessoryLabel setHidden:1];
    [(STUIStatusBarStringView *)self->_stringView setAlpha:1.0];
    v12 = [v11 string];
    v13 = v12;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v12 substringToIndex:a4];
    }

    v15 = [v11 attributesAtIndex:0 effectiveRange:0];
    v16 = *MEMORY[0x277D740A8];
    v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
    v18 = *MEMORY[0x277D740C0];
    v29 = v15;
    v19 = [v15 objectForKeyedSubscript:*MEMORY[0x277D740C0]];
    v20 = objc_alloc(MEMORY[0x277CCA898]);
    v32[0] = *MEMORY[0x277D740D0];
    v32[1] = v16;
    v33[0] = &unk_287D1B350;
    v33[1] = v17;
    v30 = v17;
    v32[2] = v18;
    v33[2] = v19;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
    v22 = [v20 initWithString:v14 attributes:v21];
    [(UIVectorLabel *)self->_prefixLabel _setAttributedText:v22];

    [(UIVectorLabel *)self->_prefixLabel setNeedsLayout];
    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [v11 string];
      v24 = [v23 substringFromIndex:a4];
      [(UIVectorLabel *)self->_accessoryLabel setText:v24];

      v25 = [v11 attributesAtIndex:a4 effectiveRange:0];
      v26 = [v25 objectForKeyedSubscript:v16];
      [(UIVectorLabel *)self->_accessoryLabel setFont:v26];

      v27 = [v25 objectForKeyedSubscript:v18];
      [(UIVectorLabel *)self->_accessoryLabel setTextColor:v27];

      [(UIVectorLabel *)self->_accessoryLabel setNeedsLayout];
    }

    self->_type = v31;
    self->_animatingUpdate = 0;
  }
}

- (void)setText:(id)a3 prefixLength:(int64_t)a4 withStyleAttributes:(id)a5 forType:(int64_t)a6 animated:(BOOL)a7
{
  v7 = a7;
  v27[3] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  if (v7 && !self->_animatingUpdate)
  {
    self->_animatingUpdate = 1;
    [(STUIStatusBarCellularNetworkTypeView *)self _animateUpdateToText:v12 prefixLength:a4 styleAttributes:v13 attributedText:0 type:a6];
  }

  else
  {
    [(STUIStatusBarStringView *)self->_stringView setText:v12];
    [(STUIStatusBarStringView *)self->_stringView applyStyleAttributes:v13];
    [(UIVectorLabel *)self->_prefixLabel setHidden:1];
    [(UIVectorLabel *)self->_accessoryLabel setHidden:1];
    [(STUIStatusBarStringView *)self->_stringView setAlpha:1.0];
    v23 = v12;
    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v12 substringToIndex:a4];
    }

    v15 = v14;
    v16 = [v13 fontForStyle:{-[STUIStatusBarStringView fontStyle](self->_stringView, "fontStyle", v23)}];
    v17 = [v13 textColor];
    v18 = objc_alloc(MEMORY[0x277CCA898]);
    v19 = *MEMORY[0x277D740A8];
    v26[0] = *MEMORY[0x277D740D0];
    v26[1] = v19;
    v27[0] = &unk_287D1B350;
    v27[1] = v16;
    v26[2] = *MEMORY[0x277D740C0];
    v27[2] = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v25 = v15;
    v21 = [v18 initWithString:v15 attributes:v20];
    [(UIVectorLabel *)self->_prefixLabel _setAttributedText:v21];

    [(UIVectorLabel *)self->_prefixLabel setNeedsLayout];
    v12 = v24;
    if (a4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [v24 substringFromIndex:a4];
      [(UIVectorLabel *)self->_accessoryLabel setText:v22];

      [(UIVectorLabel *)self->_accessoryLabel setFont:v16];
      [(UIVectorLabel *)self->_accessoryLabel setTextColor:v17];
      [(UIVectorLabel *)self->_accessoryLabel setNeedsLayout];
    }

    self->_type = a6;
    self->_animatingUpdate = 0;
  }
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v3 = objc_alloc(MEMORY[0x277D750B0]);
  v4 = [(STUIStatusBarStringView *)self->_stringView text];
  v5 = [v3 initWithTitle:v4 image:0 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v5;
}

@end
@interface STUIStatusBarCellularNetworkTypeView
- (STUIStatusBarCellularNetworkTypeView)initWithFrame:(CGRect)frame;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (void)_animateUpdateToText:(id)text prefixLength:(int64_t)length styleAttributes:(id)attributes attributedText:(id)attributedText type:(int64_t)type;
- (void)setAttributedText:(id)text prefixLength:(int64_t)length forType:(int64_t)type animated:(BOOL)animated;
- (void)setFixedWidth:(double)width;
- (void)setText:(id)text prefixLength:(int64_t)length withStyleAttributes:(id)attributes forType:(int64_t)type animated:(BOOL)animated;
@end

@implementation STUIStatusBarCellularNetworkTypeView

- (STUIStatusBarCellularNetworkTypeView)initWithFrame:(CGRect)frame
{
  v55[12] = *MEMORY[0x277D85DE8];
  v54.receiver = self;
  v54.super_class = STUIStatusBarCellularNetworkTypeView;
  v3 = [(STUIStatusBarCellularNetworkTypeView *)&v54 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  widthAnchor = [(STUIStatusBarCellularNetworkTypeView *)v3 widthAnchor];
  v15 = [widthAnchor constraintEqualToConstant:0.0];
  widthConstraint = v3->_widthConstraint;
  v3->_widthConstraint = v15;

  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [(STUIStatusBarStringView *)v3->_stringView leadingAnchor];
  v51 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v55[0] = v51;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [(STUIStatusBarStringView *)v3->_stringView trailingAnchor];
  v48 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v55[1] = v48;
  topAnchor = [v4 topAnchor];
  topAnchor2 = [(STUIStatusBarStringView *)v3->_stringView topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[2] = v45;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [(STUIStatusBarStringView *)v3->_stringView bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v55[3] = v42;
  leadingAnchor3 = [v4 leadingAnchor];
  leadingAnchor4 = [(UIVectorLabel *)v3->_prefixLabel leadingAnchor];
  v38 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v55[4] = v38;
  trailingAnchor3 = [(UIVectorLabel *)v3->_prefixLabel trailingAnchor];
  leadingAnchor5 = [(UIVectorLabel *)v3->_accessoryLabel leadingAnchor];
  v34 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor5];
  v55[5] = v34;
  lastBaselineAnchor = [(STUIStatusBarStringView *)v3->_stringView lastBaselineAnchor];
  lastBaselineAnchor2 = [(UIVectorLabel *)v3->_prefixLabel lastBaselineAnchor];
  v31 = [lastBaselineAnchor constraintEqualToAnchor:lastBaselineAnchor2];
  v55[6] = v31;
  lastBaselineAnchor3 = [(STUIStatusBarStringView *)v3->_stringView lastBaselineAnchor];
  lastBaselineAnchor4 = [(UIVectorLabel *)v3->_accessoryLabel lastBaselineAnchor];
  v28 = [lastBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor4];
  v55[7] = v28;
  v17 = v4;
  centerXAnchor = [v4 centerXAnchor];
  centerXAnchor2 = [(STUIStatusBarCellularNetworkTypeView *)v3 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v55[8] = v20;
  topAnchor3 = [(STUIStatusBarCellularNetworkTypeView *)v3 topAnchor];
  v35 = v17;
  topAnchor4 = [v17 topAnchor];
  v23 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v55[9] = v23;
  bottomAnchor3 = [(STUIStatusBarCellularNetworkTypeView *)v3 bottomAnchor];
  bottomAnchor4 = [v17 bottomAnchor];
  v26 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v55[10] = v26;
  v55[11] = v3->_widthConstraint;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:12];

  [MEMORY[0x277CCAAD0] activateConstraints:v40];
  return v3;
}

- (void)setFixedWidth:(double)width
{
  widthConstraint = [(STUIStatusBarCellularNetworkTypeView *)self widthConstraint];
  [widthConstraint constant];
  v7 = vabdd_f64(width, v6);

  if (v7 > 0.00000011920929)
  {
    if (width <= 0.0 || (-[STUIStatusBarCellularNetworkTypeView widthConstraint](self, "widthConstraint"), v8 = objc_claimAutoreleasedReturnValue(), [v8 constant], v10 = v9, v8, v10 <= 0.0))
    {
      widthConstraint2 = [(STUIStatusBarCellularNetworkTypeView *)self widthConstraint];
      [widthConstraint2 setConstant:width];

      superview = [(STUIStatusBarCellularNetworkTypeView *)self superview];
      [superview layoutSubviews];
    }

    else
    {
      v11 = *MEMORY[0x277D76620];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __54__STUIStatusBarCellularNetworkTypeView_setFixedWidth___block_invoke;
      v14[3] = &unk_279D38628;
      v14[4] = self;
      *&v14[5] = width;
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

- (void)_animateUpdateToText:(id)text prefixLength:(int64_t)length styleAttributes:(id)attributes attributedText:(id)attributedText type:(int64_t)type
{
  textCopy = text;
  attributesCopy = attributes;
  attributedTextCopy = attributedText;
  v15 = MEMORY[0x277D75D18];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __110__STUIStatusBarCellularNetworkTypeView__animateUpdateToText_prefixLength_styleAttributes_attributedText_type___block_invoke;
  v31[3] = &unk_279D38AE8;
  v16 = length != 0x7FFFFFFFFFFFFFFFLL;
  v31[4] = self;
  v36 = length != 0x7FFFFFFFFFFFFFFFLL;
  v17 = textCopy;
  v32 = v17;
  lengthCopy = length;
  v18 = attributedTextCopy;
  v33 = v18;
  v19 = attributesCopy;
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
  v28[1] = type;
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

- (void)setAttributedText:(id)text prefixLength:(int64_t)length forType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  v33[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  v11 = textCopy;
  if (animatedCopy && !self->_animatingUpdate)
  {
    self->_animatingUpdate = 1;
    string = [textCopy string];
    [(STUIStatusBarCellularNetworkTypeView *)self _animateUpdateToText:string prefixLength:length styleAttributes:0 attributedText:v11 type:type];
  }

  else
  {
    typeCopy = type;
    [(STUIStatusBarStringView *)self->_stringView setAttributedText:textCopy];
    [(UIVectorLabel *)self->_prefixLabel setHidden:1];
    [(UIVectorLabel *)self->_accessoryLabel setHidden:1];
    [(STUIStatusBarStringView *)self->_stringView setAlpha:1.0];
    string2 = [v11 string];
    v13 = string2;
    if (length == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = string2;
    }

    else
    {
      v14 = [string2 substringToIndex:length];
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
    if (length != 0x7FFFFFFFFFFFFFFFLL)
    {
      string3 = [v11 string];
      v24 = [string3 substringFromIndex:length];
      [(UIVectorLabel *)self->_accessoryLabel setText:v24];

      v25 = [v11 attributesAtIndex:length effectiveRange:0];
      v26 = [v25 objectForKeyedSubscript:v16];
      [(UIVectorLabel *)self->_accessoryLabel setFont:v26];

      v27 = [v25 objectForKeyedSubscript:v18];
      [(UIVectorLabel *)self->_accessoryLabel setTextColor:v27];

      [(UIVectorLabel *)self->_accessoryLabel setNeedsLayout];
    }

    self->_type = typeCopy;
    self->_animatingUpdate = 0;
  }
}

- (void)setText:(id)text prefixLength:(int64_t)length withStyleAttributes:(id)attributes forType:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  v27[3] = *MEMORY[0x277D85DE8];
  textCopy = text;
  attributesCopy = attributes;
  if (animatedCopy && !self->_animatingUpdate)
  {
    self->_animatingUpdate = 1;
    [(STUIStatusBarCellularNetworkTypeView *)self _animateUpdateToText:textCopy prefixLength:length styleAttributes:attributesCopy attributedText:0 type:type];
  }

  else
  {
    [(STUIStatusBarStringView *)self->_stringView setText:textCopy];
    [(STUIStatusBarStringView *)self->_stringView applyStyleAttributes:attributesCopy];
    [(UIVectorLabel *)self->_prefixLabel setHidden:1];
    [(UIVectorLabel *)self->_accessoryLabel setHidden:1];
    [(STUIStatusBarStringView *)self->_stringView setAlpha:1.0];
    v23 = textCopy;
    if (length == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = textCopy;
    }

    else
    {
      v14 = [textCopy substringToIndex:length];
    }

    v15 = v14;
    v16 = [attributesCopy fontForStyle:{-[STUIStatusBarStringView fontStyle](self->_stringView, "fontStyle", v23)}];
    textColor = [attributesCopy textColor];
    v18 = objc_alloc(MEMORY[0x277CCA898]);
    v19 = *MEMORY[0x277D740A8];
    v26[0] = *MEMORY[0x277D740D0];
    v26[1] = v19;
    v27[0] = &unk_287D1B350;
    v27[1] = v16;
    v26[2] = *MEMORY[0x277D740C0];
    v27[2] = textColor;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v25 = v15;
    v21 = [v18 initWithString:v15 attributes:v20];
    [(UIVectorLabel *)self->_prefixLabel _setAttributedText:v21];

    [(UIVectorLabel *)self->_prefixLabel setNeedsLayout];
    textCopy = v24;
    if (length != 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = [v24 substringFromIndex:length];
      [(UIVectorLabel *)self->_accessoryLabel setText:v22];

      [(UIVectorLabel *)self->_accessoryLabel setFont:v16];
      [(UIVectorLabel *)self->_accessoryLabel setTextColor:textColor];
      [(UIVectorLabel *)self->_accessoryLabel setNeedsLayout];
    }

    self->_type = type;
    self->_animatingUpdate = 0;
  }
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v3 = objc_alloc(MEMORY[0x277D750B0]);
  text = [(STUIStatusBarStringView *)self->_stringView text];
  v5 = [v3 initWithTitle:text image:0 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v5;
}

@end
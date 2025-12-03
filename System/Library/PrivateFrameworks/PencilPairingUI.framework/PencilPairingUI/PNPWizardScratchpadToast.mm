@interface PNPWizardScratchpadToast
- (CGSize)intrinsicContentSize;
- (PNPWizardScratchpadToast)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setText:(id)text;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PNPWizardScratchpadToast

- (void)layoutSubviews
{
  [(PNPWizardScratchpadToast *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIVisualEffectView *)self->_background setFrame:?];
  v31 = [MEMORY[0x277D75210] effectWithStyle:1];
  background = self->_background;
  traitCollection = [(PNPWizardScratchpadToast *)self traitCollection];
  v9 = [v31 effectForUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  [(UIVisualEffectView *)background setEffect:v9];

  if (v4 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v4;
  }

  [(UIVisualEffectView *)self->_background _setContinuousCornerRadius:v10 * 0.5];
  UIRectInset();
  traitCollection2 = [(PNPWizardScratchpadToast *)self traitCollection];
  [traitCollection2 displayScale];
  UIRectIntegralWithScale();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(UILabel *)self->_label setFrame:v13, v15, v17, v19];
  v20 = MEMORY[0x277D74300];
  v21 = *MEMORY[0x277D76968];
  v22 = *MEMORY[0x277D767F8];
  traitCollection3 = [(PNPWizardScratchpadToast *)self traitCollection];
  v24 = [v20 _preferredFontForTextStyle:v21 maximumContentSizeCategory:v22 compatibleWithTraitCollection:traitCollection3];

  v25 = MEMORY[0x277D74300];
  [v24 pointSize];
  v26 = [v25 systemFontOfSize:? weight:?];

  [(UILabel *)self->_label setFont:v26];
  label = self->_label;
  text = [(PNPWizardScratchpadToast *)self text];
  [(UILabel *)label setText:text];

  v29 = self->_label;
  toastLabelTextColor = [MEMORY[0x277D75348] toastLabelTextColor];
  [(UILabel *)v29 setTextColor:toastLabelTextColor];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_label intrinsicContentSize];
  if (v2 < 160.0)
  {
    v2 = 160.0;
  }

  if (v3 < 25.0)
  {
    v3 = 25.0;
  }

  v4 = v2 + 20.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (void)setText:(id)text
{
  objc_storeStrong(&self->_text, text);

  [(PNPWizardScratchpadToast *)self setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PNPWizardScratchpadToast;
  changeCopy = change;
  [(PNPWizardScratchpadToast *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PNPWizardScratchpadToast *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];

  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(PNPWizardScratchpadToast *)self setNeedsLayout];
    [(PNPWizardScratchpadToast *)self layoutIfNeeded];
  }
}

- (PNPWizardScratchpadToast)initWithFrame:(CGRect)frame
{
  v15[1] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PNPWizardScratchpadToast;
  v3 = [(PNPWizardScratchpadToast *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = objc_alloc(MEMORY[0x277D75D68]);
  v5 = [MEMORY[0x277D75210] effectWithStyle:1];
  v6 = [v4 initWithEffect:v5];
  background = v3->_background;
  v3->_background = v6;

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  label = v3->_label;
  v3->_label = v8;

  [(UILabel *)v3->_label setNumberOfLines:1];
  [(UILabel *)v3->_label setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)v3->_label setTextAlignment:1];
  v10 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5D8]];
  layer = [(UILabel *)v3->_label layer];
  v15[0] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  [layer setFilters:v12];

  [(PNPWizardScratchpadToast *)v3 addSubview:v3->_background];
  [(PNPWizardScratchpadToast *)v3 addSubview:v3->_label];

  return v3;
}

@end
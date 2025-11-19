@interface SBDisplayItemLayoutAttributesDebugView
- (SBDisplayItemLayoutAttributes)layoutAttributes;
- (SBDisplayItemLayoutAttributesDebugView)initWithFrame:(CGRect)a3;
- (void)setLayoutAttributes:(id)a3;
@end

@implementation SBDisplayItemLayoutAttributesDebugView

- (SBDisplayItemLayoutAttributesDebugView)initWithFrame:(CGRect)a3
{
  v37[6] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = SBDisplayItemLayoutAttributesDebugView;
  v3 = [(SBDisplayItemLayoutAttributesDebugView *)&v36 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBDisplayItemLayoutAttributesDebugView *)v3 bs_setHitTestingDisabled:1];
    v5 = MEMORY[0x277D75348];
    v35 = v4;
    v6 = v4;
    v7 = [v5 darkTextColor];
    v8 = [v7 colorWithAlphaComponent:0.6];
    [(SBDisplayItemLayoutAttributesDebugView *)v6 setBackgroundColor:v8];

    v9 = [(SBDisplayItemLayoutAttributesDebugView *)v6 layer];
    [v9 setCornerRadius:12.0];

    [(SBDisplayItemLayoutAttributesDebugView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = objc_alloc(MEMORY[0x277D756B8]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v6->_label;
    v6->_label = v11;
    v13 = v11;

    v14 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v13 setNumberOfLines:0];
    [(UILabel *)v13 setLineBreakMode:0];
    [(UILabel *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(UILabel *)v13 setFont:v15];

    [(UILabel *)v13 setAdjustsFontSizeToFitWidth:1];
    [(SBDisplayItemLayoutAttributesDebugView *)v6 addSubview:v13];
    v27 = MEMORY[0x277CCAAD0];
    v34 = [(SBDisplayItemLayoutAttributesDebugView *)v6 heightAnchor];
    v33 = [v34 constraintEqualToConstant:200.0];
    v37[0] = v33;
    v32 = [(SBDisplayItemLayoutAttributesDebugView *)v6 widthAnchor];
    v31 = [v32 constraintEqualToConstant:340.0];
    v37[1] = v31;
    v30 = [(UILabel *)v13 leadingAnchor];
    v29 = [(SBDisplayItemLayoutAttributesDebugView *)v6 leadingAnchor];
    v28 = [v30 constraintEqualToAnchor:v29 constant:10.0];
    v37[2] = v28;
    v26 = [(UILabel *)v13 trailingAnchor];
    v16 = [(SBDisplayItemLayoutAttributesDebugView *)v6 trailingAnchor];
    v17 = [v26 constraintEqualToAnchor:v16 constant:-10.0];
    v37[3] = v17;
    v18 = [(UILabel *)v13 topAnchor];
    v19 = [(SBDisplayItemLayoutAttributesDebugView *)v6 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:5.0];
    v37[4] = v20;
    v21 = [(UILabel *)v13 bottomAnchor];
    v22 = [(SBDisplayItemLayoutAttributesDebugView *)v6 bottomAnchor];

    v23 = [v21 constraintEqualToAnchor:v22 constant:-5.0];
    v37[5] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:6];
    [v27 activateConstraints:v24];

    v4 = v35;
  }

  return v4;
}

- (void)setLayoutAttributes:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_layoutAttributes, v4);
  label = self->_label;
  v6 = [v4 debugDescription];

  [(UILabel *)label setText:v6];
}

- (SBDisplayItemLayoutAttributes)layoutAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutAttributes);

  return WeakRetained;
}

@end
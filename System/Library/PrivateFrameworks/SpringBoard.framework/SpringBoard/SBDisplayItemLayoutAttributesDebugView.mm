@interface SBDisplayItemLayoutAttributesDebugView
- (SBDisplayItemLayoutAttributes)layoutAttributes;
- (SBDisplayItemLayoutAttributesDebugView)initWithFrame:(CGRect)frame;
- (void)setLayoutAttributes:(id)attributes;
@end

@implementation SBDisplayItemLayoutAttributesDebugView

- (SBDisplayItemLayoutAttributesDebugView)initWithFrame:(CGRect)frame
{
  v37[6] = *MEMORY[0x277D85DE8];
  v36.receiver = self;
  v36.super_class = SBDisplayItemLayoutAttributesDebugView;
  v3 = [(SBDisplayItemLayoutAttributesDebugView *)&v36 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBDisplayItemLayoutAttributesDebugView *)v3 bs_setHitTestingDisabled:1];
    v5 = MEMORY[0x277D75348];
    v35 = v4;
    v6 = v4;
    darkTextColor = [v5 darkTextColor];
    v8 = [darkTextColor colorWithAlphaComponent:0.6];
    [(SBDisplayItemLayoutAttributesDebugView *)v6 setBackgroundColor:v8];

    layer = [(SBDisplayItemLayoutAttributesDebugView *)v6 layer];
    [layer setCornerRadius:12.0];

    [(SBDisplayItemLayoutAttributesDebugView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = objc_alloc(MEMORY[0x277D756B8]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v6->_label;
    v6->_label = v11;
    v13 = v11;

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UILabel *)v13 setTextColor:systemWhiteColor];

    [(UILabel *)v13 setNumberOfLines:0];
    [(UILabel *)v13 setLineBreakMode:0];
    [(UILabel *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(UILabel *)v13 setFont:v15];

    [(UILabel *)v13 setAdjustsFontSizeToFitWidth:1];
    [(SBDisplayItemLayoutAttributesDebugView *)v6 addSubview:v13];
    v27 = MEMORY[0x277CCAAD0];
    heightAnchor = [(SBDisplayItemLayoutAttributesDebugView *)v6 heightAnchor];
    v33 = [heightAnchor constraintEqualToConstant:200.0];
    v37[0] = v33;
    widthAnchor = [(SBDisplayItemLayoutAttributesDebugView *)v6 widthAnchor];
    v31 = [widthAnchor constraintEqualToConstant:340.0];
    v37[1] = v31;
    leadingAnchor = [(UILabel *)v13 leadingAnchor];
    leadingAnchor2 = [(SBDisplayItemLayoutAttributesDebugView *)v6 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v37[2] = v28;
    trailingAnchor = [(UILabel *)v13 trailingAnchor];
    trailingAnchor2 = [(SBDisplayItemLayoutAttributesDebugView *)v6 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    v37[3] = v17;
    topAnchor = [(UILabel *)v13 topAnchor];
    topAnchor2 = [(SBDisplayItemLayoutAttributesDebugView *)v6 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
    v37[4] = v20;
    bottomAnchor = [(UILabel *)v13 bottomAnchor];
    bottomAnchor2 = [(SBDisplayItemLayoutAttributesDebugView *)v6 bottomAnchor];

    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v37[5] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:6];
    [v27 activateConstraints:v24];

    v4 = v35;
  }

  return v4;
}

- (void)setLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_storeWeak(&self->_layoutAttributes, attributesCopy);
  label = self->_label;
  v6 = [attributesCopy debugDescription];

  [(UILabel *)label setText:v6];
}

- (SBDisplayItemLayoutAttributes)layoutAttributes
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutAttributes);

  return WeakRetained;
}

@end
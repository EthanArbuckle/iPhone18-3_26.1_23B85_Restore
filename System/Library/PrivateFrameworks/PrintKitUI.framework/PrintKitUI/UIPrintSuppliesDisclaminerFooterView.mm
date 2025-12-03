@interface UIPrintSuppliesDisclaminerFooterView
- (UIPrintSuppliesDisclaminerFooterView)initWithReuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)textViewDidChange:(id)change;
- (void)updateDisclaimerTextWithInfoURL:(id)l tintColor:(id)color;
@end

@implementation UIPrintSuppliesDisclaminerFooterView

- (UIPrintSuppliesDisclaminerFooterView)initWithReuseIdentifier:(id)identifier
{
  v53[4] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = UIPrintSuppliesDisclaminerFooterView;
  v3 = [(UIPrintSuppliesDisclaminerFooterView *)&v51 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    [contentView addSubview:v4];

    contentView2 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v6 = MEMORY[0x277CCAAD0];
    contentView3 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v48 = [v6 constraintWithItem:v4 attribute:5 relatedBy:0 toItem:contentView3 attribute:5 multiplier:1.0 constant:0.0];
    v53[0] = v48;
    v7 = MEMORY[0x277CCAAD0];
    contentView4 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v9 = [v7 constraintWithItem:v4 attribute:6 relatedBy:0 toItem:contentView4 attribute:6 multiplier:1.0 constant:0.0];
    v53[1] = v9;
    v10 = MEMORY[0x277CCAAD0];
    contentView5 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v12 = [v10 constraintWithItem:v4 attribute:3 relatedBy:0 toItem:contentView5 attribute:3 multiplier:1.0 constant:0.0];
    v53[2] = v12;
    v13 = MEMORY[0x277CCAAD0];
    contentView6 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v15 = [v13 constraintWithItem:v4 attribute:4 relatedBy:0 toItem:contentView6 attribute:4 multiplier:1.0 constant:0.0];
    v53[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
    [contentView2 addConstraints:v16];

    v17 = objc_alloc(MEMORY[0x277D75C40]);
    v18 = [v17 initWithFrame:0 textContainer:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIPrintSuppliesDisclaminerFooterView *)v3 setDisclaimerTextView:v18];

    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    disclaimerTextView = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView setFont:v19];

    disclaimerTextView2 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView2 setTextContainerInset:{0.0, 0.0, 0.0, 0.0}];

    disclaimerTextView3 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView3 setAdjustsFontForContentSizeCategory:1];

    disclaimerTextView4 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView4 setTextAlignment:4];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    disclaimerTextView5 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView5 setTextColor:secondaryLabelColor];

    disclaimerTextView6 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView6 setBackgroundColor:0];

    disclaimerTextView7 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView7 setOpaque:0];

    disclaimerTextView8 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView8 setScrollEnabled:0];

    disclaimerTextView9 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView9 setEditable:0];

    disclaimerTextView10 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView10 setSelectable:0];

    disclaimerTextView11 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView11 setDelegate:v3];

    disclaimerTextView12 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [disclaimerTextView12 setTranslatesAutoresizingMaskIntoConstraints:0];

    disclaimerTextView13 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v4 addSubview:disclaimerTextView13];

    v34 = MEMORY[0x277CCAAD0];
    disclaimerTextView14 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    v35 = [v34 constraintWithItem:disclaimerTextView14 attribute:5 relatedBy:0 toItem:v4 attribute:17 multiplier:1.0 constant:0.0];
    v52[0] = v35;
    v36 = MEMORY[0x277CCAAD0];
    disclaimerTextView15 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    v38 = [v36 constraintWithItem:disclaimerTextView15 attribute:3 relatedBy:0 toItem:v4 attribute:15 multiplier:1.0 constant:0.0];
    v52[1] = v38;
    v39 = MEMORY[0x277CCAAD0];
    disclaimerTextView16 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    v41 = [v39 constraintWithItem:disclaimerTextView16 attribute:4 relatedBy:0 toItem:v4 attribute:16 multiplier:1.0 constant:0.0];
    v52[2] = v41;
    v42 = MEMORY[0x277CCAAD0];
    disclaimerTextView17 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    v44 = [v42 constraintWithItem:disclaimerTextView17 attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
    v52[3] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
    [v4 addConstraints:v45];
  }

  return v3;
}

- (void)updateDisclaimerTextWithInfoURL:(id)l tintColor:(id)color
{
  v37[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  selfCopy = self;
  colorCopy = color;
  [(UIPrintSuppliesDisclaminerFooterView *)self setSuppliesInfoURL:lCopy];
  v7 = objc_alloc(MEMORY[0x277CCAB48]);
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Supply levels shown are approximate." value:@"Supply levels shown are approximate." table:@"Localizable"];
  v29 = *MEMORY[0x277D740A8];
  v34 = *MEMORY[0x277D740A8];
  v10 = *MEMORY[0x277D76968];
  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v37[0] = v11;
  v35 = *MEMORY[0x277D740C0];
  v12 = v35;
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v37[1] = secondaryLabelColor;
  v36 = v35;
  clearColor = [MEMORY[0x277D75348] clearColor];
  v37[2] = clearColor;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v34 count:3];
  v16 = [v7 initWithString:v9 attributes:v15];

  if (lCopy)
  {
    v17 = objc_alloc(MEMORY[0x277CCAB48]);
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"More Info" value:@"More Info" table:@"Localizable"];
    v21 = [v18 stringWithFormat:@" %@", v20];
    v22 = *MEMORY[0x277D740E8];
    v33[0] = lCopy;
    v32[0] = v22;
    v32[1] = v29;
    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    v33[1] = v23;
    v33[2] = colorCopy;
    v32[2] = v12;
    v32[3] = v12;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    v33[3] = clearColor2;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
    v26 = [v17 initWithString:v21 attributes:v25];

    [v16 appendAttributedString:v26];
    disclaimerTextView = [(UIPrintSuppliesDisclaminerFooterView *)selfCopy disclaimerTextView];
    [disclaimerTextView setSelectable:1];
  }

  disclaimerTextView2 = [(UIPrintSuppliesDisclaminerFooterView *)selfCopy disclaimerTextView];
  [disclaimerTextView2 setAttributedText:v16];
}

- (void)prepareForReuse
{
  disclaimerTextView = [(UIPrintSuppliesDisclaminerFooterView *)self disclaimerTextView];
  [disclaimerTextView setAttributedText:0];

  [(UIPrintSuppliesDisclaminerFooterView *)self setSuppliesInfoURL:0];
  v4.receiver = self;
  v4.super_class = UIPrintSuppliesDisclaminerFooterView;
  [(UIPrintSuppliesDisclaminerFooterView *)&v4 prepareForReuse];
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  [changeCopy frame];
  [changeCopy sizeThatFits:{v3, 3.40282347e38}];
  [changeCopy frame];
  [changeCopy setFrame:?];
}

@end
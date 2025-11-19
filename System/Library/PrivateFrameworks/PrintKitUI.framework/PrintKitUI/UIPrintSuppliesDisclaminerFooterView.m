@interface UIPrintSuppliesDisclaminerFooterView
- (UIPrintSuppliesDisclaminerFooterView)initWithReuseIdentifier:(id)a3;
- (void)prepareForReuse;
- (void)textViewDidChange:(id)a3;
- (void)updateDisclaimerTextWithInfoURL:(id)a3 tintColor:(id)a4;
@end

@implementation UIPrintSuppliesDisclaminerFooterView

- (UIPrintSuppliesDisclaminerFooterView)initWithReuseIdentifier:(id)a3
{
  v53[4] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = UIPrintSuppliesDisclaminerFooterView;
  v3 = [(UIPrintSuppliesDisclaminerFooterView *)&v51 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    [v5 addSubview:v4];

    v47 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v6 = MEMORY[0x277CCAAD0];
    v49 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v48 = [v6 constraintWithItem:v4 attribute:5 relatedBy:0 toItem:v49 attribute:5 multiplier:1.0 constant:0.0];
    v53[0] = v48;
    v7 = MEMORY[0x277CCAAD0];
    v8 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v9 = [v7 constraintWithItem:v4 attribute:6 relatedBy:0 toItem:v8 attribute:6 multiplier:1.0 constant:0.0];
    v53[1] = v9;
    v10 = MEMORY[0x277CCAAD0];
    v11 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v12 = [v10 constraintWithItem:v4 attribute:3 relatedBy:0 toItem:v11 attribute:3 multiplier:1.0 constant:0.0];
    v53[2] = v12;
    v13 = MEMORY[0x277CCAAD0];
    v14 = [(UIPrintSuppliesDisclaminerFooterView *)v3 contentView];
    v15 = [v13 constraintWithItem:v4 attribute:4 relatedBy:0 toItem:v14 attribute:4 multiplier:1.0 constant:0.0];
    v53[3] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
    [v47 addConstraints:v16];

    v17 = objc_alloc(MEMORY[0x277D75C40]);
    v18 = [v17 initWithFrame:0 textContainer:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(UIPrintSuppliesDisclaminerFooterView *)v3 setDisclaimerTextView:v18];

    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    v20 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v20 setFont:v19];

    v21 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v21 setTextContainerInset:{0.0, 0.0, 0.0, 0.0}];

    v22 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v22 setAdjustsFontForContentSizeCategory:1];

    v23 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v23 setTextAlignment:4];

    v24 = [MEMORY[0x277D75348] secondaryLabelColor];
    v25 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v25 setTextColor:v24];

    v26 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v26 setBackgroundColor:0];

    v27 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v27 setOpaque:0];

    v28 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v28 setScrollEnabled:0];

    v29 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v29 setEditable:0];

    v30 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v30 setSelectable:0];

    v31 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v31 setDelegate:v3];

    v32 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

    v33 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    [v4 addSubview:v33];

    v34 = MEMORY[0x277CCAAD0];
    v50 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    v35 = [v34 constraintWithItem:v50 attribute:5 relatedBy:0 toItem:v4 attribute:17 multiplier:1.0 constant:0.0];
    v52[0] = v35;
    v36 = MEMORY[0x277CCAAD0];
    v37 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    v38 = [v36 constraintWithItem:v37 attribute:3 relatedBy:0 toItem:v4 attribute:15 multiplier:1.0 constant:0.0];
    v52[1] = v38;
    v39 = MEMORY[0x277CCAAD0];
    v40 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    v41 = [v39 constraintWithItem:v40 attribute:4 relatedBy:0 toItem:v4 attribute:16 multiplier:1.0 constant:0.0];
    v52[2] = v41;
    v42 = MEMORY[0x277CCAAD0];
    v43 = [(UIPrintSuppliesDisclaminerFooterView *)v3 disclaimerTextView];
    v44 = [v42 constraintWithItem:v43 attribute:6 relatedBy:0 toItem:v4 attribute:6 multiplier:1.0 constant:0.0];
    v52[3] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:4];
    [v4 addConstraints:v45];
  }

  return v3;
}

- (void)updateDisclaimerTextWithInfoURL:(id)a3 tintColor:(id)a4
{
  v37[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v30 = self;
  v31 = a4;
  [(UIPrintSuppliesDisclaminerFooterView *)self setSuppliesInfoURL:v6];
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
  v13 = [MEMORY[0x277D75348] secondaryLabelColor];
  v37[1] = v13;
  v36 = v35;
  v14 = [MEMORY[0x277D75348] clearColor];
  v37[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v34 count:3];
  v16 = [v7 initWithString:v9 attributes:v15];

  if (v6)
  {
    v17 = objc_alloc(MEMORY[0x277CCAB48]);
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"More Info" value:@"More Info" table:@"Localizable"];
    v21 = [v18 stringWithFormat:@" %@", v20];
    v22 = *MEMORY[0x277D740E8];
    v33[0] = v6;
    v32[0] = v22;
    v32[1] = v29;
    v23 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    v33[1] = v23;
    v33[2] = v31;
    v32[2] = v12;
    v32[3] = v12;
    v24 = [MEMORY[0x277D75348] clearColor];
    v33[3] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];
    v26 = [v17 initWithString:v21 attributes:v25];

    [v16 appendAttributedString:v26];
    v27 = [(UIPrintSuppliesDisclaminerFooterView *)v30 disclaimerTextView];
    [v27 setSelectable:1];
  }

  v28 = [(UIPrintSuppliesDisclaminerFooterView *)v30 disclaimerTextView];
  [v28 setAttributedText:v16];
}

- (void)prepareForReuse
{
  v3 = [(UIPrintSuppliesDisclaminerFooterView *)self disclaimerTextView];
  [v3 setAttributedText:0];

  [(UIPrintSuppliesDisclaminerFooterView *)self setSuppliesInfoURL:0];
  v4.receiver = self;
  v4.super_class = UIPrintSuppliesDisclaminerFooterView;
  [(UIPrintSuppliesDisclaminerFooterView *)&v4 prepareForReuse];
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  [v4 frame];
  [v4 sizeThatFits:{v3, 3.40282347e38}];
  [v4 frame];
  [v4 setFrame:?];
}

@end
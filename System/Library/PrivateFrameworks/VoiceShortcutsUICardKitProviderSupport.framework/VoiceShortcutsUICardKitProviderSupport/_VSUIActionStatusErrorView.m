@interface _VSUIActionStatusErrorView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_VSUIActionStatusErrorView)initWithCoder:(id)a3;
- (_VSUIActionStatusErrorView)initWithFrame:(CGRect)a3;
- (void)_setUpViews;
@end

@implementation _VSUIActionStatusErrorView

- (_VSUIActionStatusErrorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _VSUIActionStatusErrorView;
  v3 = [(_VSUIActionStatusErrorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_VSUIActionStatusErrorView *)v3 _setUpViews];
  }

  return v4;
}

- (_VSUIActionStatusErrorView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _VSUIActionStatusErrorView;
  v3 = [(_VSUIActionStatusErrorView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_VSUIActionStatusErrorView *)v3 _setUpViews];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v4 = a3.width + -24.0 + -10.0;
  v5 = [(_VSUIActionStatusErrorView *)self errorLabel];
  [v5 sizeThatFits:{v4, height}];
  v7 = v6;
  v9 = v8;

  v10 = v9 + 15.0 + 15.0;
  v11 = v7;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)_setUpViews
{
  v63[13] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"There was a problem. Try again…" value:&stru_2881E1470 table:0];
  [v8 setText:v10];

  v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v8 setFont:v11];

  v12 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v8 setTextColor:v12];

  [v8 setTextAlignment:1];
  [v8 setNumberOfLines:2];
  [v8 setLineBreakMode:4];
  [(_VSUIActionStatusErrorView *)self addSubview:v8];
  [(_VSUIActionStatusErrorView *)self setErrorLabel:v8];
  v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [MEMORY[0x277D75348] systemGray3Color];
  [v13 setBackgroundColor:v14];

  v15 = [v13 layer];
  [v15 setCornerRadius:12.0];

  [(_VSUIActionStatusErrorView *)self addSubview:v13];
  [(_VSUIActionStatusErrorView *)self setErrorIconBackgroundView:v13];
  v16 = MEMORY[0x277D755B8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v62 = [v16 imageNamed:@"ActionErrorAlert" inBundle:v17];

  v18 = objc_alloc(MEMORY[0x277D755E8]);
  v19 = [MEMORY[0x277D75348] systemGrayColor];
  v20 = [v62 _flatImageWithColor:v19];
  v21 = [v18 initWithImage:v20];

  v22 = [v21 layer];
  [v22 setMasksToBounds:1];

  [v21 setContentMode:1];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_VSUIActionStatusErrorView *)self addSubview:v21];
  [(_VSUIActionStatusErrorView *)self setErrorIconView:v21];
  v48 = MEMORY[0x277CCAAD0];
  v61 = [v13 widthAnchor];
  v60 = [v61 constraintEqualToConstant:24.0];
  v63[0] = v60;
  v59 = [v13 heightAnchor];
  v58 = [v59 constraintEqualToConstant:24.0];
  v63[1] = v58;
  v57 = [v13 trailingAnchor];
  v56 = [(_VSUIActionStatusErrorView *)self trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:-15.0];
  v63[2] = v55;
  v54 = [v13 centerYAnchor];
  v53 = [v8 centerYAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v63[3] = v52;
  v51 = [v8 leadingAnchor];
  v50 = [(_VSUIActionStatusErrorView *)self leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:15.0];
  v63[4] = v49;
  v47 = [v8 trailingAnchor];
  v46 = [v13 leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 constant:-10.0];
  v63[5] = v45;
  v44 = [v8 topAnchor];
  v43 = [(_VSUIActionStatusErrorView *)self topAnchor];
  v42 = [v44 constraintGreaterThanOrEqualToAnchor:v43];
  v63[6] = v42;
  v40 = [v8 bottomAnchor];
  v39 = [(_VSUIActionStatusErrorView *)self bottomAnchor];
  v38 = [v40 constraintLessThanOrEqualToAnchor:v39];
  v63[7] = v38;
  v37 = [v8 centerYAnchor];
  v36 = [(_VSUIActionStatusErrorView *)self centerYAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v63[8] = v35;
  v34 = [v21 widthAnchor];
  v33 = [v34 constraintEqualToConstant:20.0];
  v63[9] = v33;
  v32 = [v21 heightAnchor];
  v23 = [v32 constraintEqualToConstant:20.0];
  v63[10] = v23;
  v41 = v21;
  v24 = [v21 centerYAnchor];
  v25 = [v13 centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];
  v63[11] = v26;
  v27 = [v21 centerXAnchor];
  v28 = [v13 centerXAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:0.0];
  v63[12] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:13];
  [v48 activateConstraints:v30];

  v31 = *MEMORY[0x277D85DE8];
}

@end
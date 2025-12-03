@interface _VSUIActionStatusErrorView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_VSUIActionStatusErrorView)initWithCoder:(id)coder;
- (_VSUIActionStatusErrorView)initWithFrame:(CGRect)frame;
- (void)_setUpViews;
@end

@implementation _VSUIActionStatusErrorView

- (_VSUIActionStatusErrorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _VSUIActionStatusErrorView;
  v3 = [(_VSUIActionStatusErrorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_VSUIActionStatusErrorView *)v3 _setUpViews];
  }

  return v4;
}

- (_VSUIActionStatusErrorView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _VSUIActionStatusErrorView;
  v3 = [(_VSUIActionStatusErrorView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_VSUIActionStatusErrorView *)v3 _setUpViews];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  v4 = fits.width + -24.0 + -10.0;
  errorLabel = [(_VSUIActionStatusErrorView *)self errorLabel];
  [errorLabel sizeThatFits:{v4, height}];
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

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v8 setTextColor:secondaryLabelColor];

  [v8 setTextAlignment:1];
  [v8 setNumberOfLines:2];
  [v8 setLineBreakMode:4];
  [(_VSUIActionStatusErrorView *)self addSubview:v8];
  [(_VSUIActionStatusErrorView *)self setErrorLabel:v8];
  v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
  [v13 setBackgroundColor:systemGray3Color];

  layer = [v13 layer];
  [layer setCornerRadius:12.0];

  [(_VSUIActionStatusErrorView *)self addSubview:v13];
  [(_VSUIActionStatusErrorView *)self setErrorIconBackgroundView:v13];
  v16 = MEMORY[0x277D755B8];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v62 = [v16 imageNamed:@"ActionErrorAlert" inBundle:v17];

  v18 = objc_alloc(MEMORY[0x277D755E8]);
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v20 = [v62 _flatImageWithColor:systemGrayColor];
  v21 = [v18 initWithImage:v20];

  layer2 = [v21 layer];
  [layer2 setMasksToBounds:1];

  [v21 setContentMode:1];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(_VSUIActionStatusErrorView *)self addSubview:v21];
  [(_VSUIActionStatusErrorView *)self setErrorIconView:v21];
  v48 = MEMORY[0x277CCAAD0];
  widthAnchor = [v13 widthAnchor];
  v60 = [widthAnchor constraintEqualToConstant:24.0];
  v63[0] = v60;
  heightAnchor = [v13 heightAnchor];
  v58 = [heightAnchor constraintEqualToConstant:24.0];
  v63[1] = v58;
  trailingAnchor = [v13 trailingAnchor];
  trailingAnchor2 = [(_VSUIActionStatusErrorView *)self trailingAnchor];
  v55 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
  v63[2] = v55;
  centerYAnchor = [v13 centerYAnchor];
  centerYAnchor2 = [v8 centerYAnchor];
  v52 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v63[3] = v52;
  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [(_VSUIActionStatusErrorView *)self leadingAnchor];
  v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v63[4] = v49;
  trailingAnchor3 = [v8 trailingAnchor];
  leadingAnchor3 = [v13 leadingAnchor];
  v45 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-10.0];
  v63[5] = v45;
  topAnchor = [v8 topAnchor];
  topAnchor2 = [(_VSUIActionStatusErrorView *)self topAnchor];
  v42 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v63[6] = v42;
  bottomAnchor = [v8 bottomAnchor];
  bottomAnchor2 = [(_VSUIActionStatusErrorView *)self bottomAnchor];
  v38 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v63[7] = v38;
  centerYAnchor3 = [v8 centerYAnchor];
  centerYAnchor4 = [(_VSUIActionStatusErrorView *)self centerYAnchor];
  v35 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v63[8] = v35;
  widthAnchor2 = [v21 widthAnchor];
  v33 = [widthAnchor2 constraintEqualToConstant:20.0];
  v63[9] = v33;
  heightAnchor2 = [v21 heightAnchor];
  v23 = [heightAnchor2 constraintEqualToConstant:20.0];
  v63[10] = v23;
  v41 = v21;
  centerYAnchor5 = [v21 centerYAnchor];
  centerYAnchor6 = [v13 centerYAnchor];
  v26 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6 constant:0.0];
  v63[11] = v26;
  centerXAnchor = [v21 centerXAnchor];
  centerXAnchor2 = [v13 centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  v63[12] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:13];
  [v48 activateConstraints:v30];

  v31 = *MEMORY[0x277D85DE8];
}

@end
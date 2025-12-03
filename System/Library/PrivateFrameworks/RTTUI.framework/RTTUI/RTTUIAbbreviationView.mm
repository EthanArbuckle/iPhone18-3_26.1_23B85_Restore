@interface RTTUIAbbreviationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)abbreviationText;
- (RTTUIAbbreviationView)initWithFrame:(CGRect)frame;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (void)setAbbreviationData:(id)data;
- (void)setDrawLeftBorder:(BOOL)border;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation RTTUIAbbreviationView

- (RTTUIAbbreviationView)initWithFrame:(CGRect)frame
{
  v97[4] = *MEMORY[0x277D85DE8];
  v93.receiver = self;
  v93.super_class = RTTUIAbbreviationView;
  v3 = [(RTTUIAbbreviationView *)&v93 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    [(RTTUIAbbreviationView *)v3 setHighlightView:v9];

    highlightView = [(RTTUIAbbreviationView *)v3 highlightView];
    [highlightView setTranslatesAutoresizingMaskIntoConstraints:0];

    highlightView2 = [(RTTUIAbbreviationView *)v3 highlightView];
    [highlightView2 _setContinuousCornerRadius:8.0];

    systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
    highlightView3 = [(RTTUIAbbreviationView *)v3 highlightView];
    [highlightView3 setBackgroundColor:systemDarkGrayColor];

    highlightView4 = [(RTTUIAbbreviationView *)v3 highlightView];
    [highlightView4 setHidden:1];

    highlightView5 = [(RTTUIAbbreviationView *)v3 highlightView];
    [(RTTUIAbbreviationView *)v3 addSubview:highlightView5];

    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RTTUIAbbreviationView *)v3 addSubview:v16];
    firstValue = objc_alloc_init(MEMORY[0x277D756B8]);
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [firstValue setTextColor:whiteColor];

    [firstValue setTextAlignment:1];
    v18 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    [firstValue setFont:v18];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [firstValue setBackgroundColor:clearColor];

    v92 = v16;
    [v16 addSubview:firstValue];
    [(RTTUIAbbreviationView *)v3 setAbbreviation:firstValue];
    v90 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [v90 setTextColor:whiteColor2];

    [v90 setTextAlignment:1];
    v21 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [v90 setFont:v21];

    [v90 setAdjustsFontSizeToFitWidth:1];
    [v90 setAllowsDefaultTighteningForTruncation:1];
    [v90 setMinimumScaleFactor:0.800000012];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v90 setBackgroundColor:clearColor2];

    [v16 addSubview:v90];
    [(RTTUIAbbreviationView *)v3 setHint:v90];
    v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    [(RTTUIAbbreviationView *)v3 setLeftBorderView:v23];

    leftBorderView = [(RTTUIAbbreviationView *)v3 leftBorderView];
    [leftBorderView setTranslatesAutoresizingMaskIntoConstraints:0];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    v26 = [systemGrayColor colorWithAlphaComponent:0.35];
    leftBorderView2 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    [leftBorderView2 setBackgroundColor:v26];

    leftBorderView3 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    [leftBorderView3 setHidden:1];

    leftBorderView4 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    [(RTTUIAbbreviationView *)v3 addSubview:leftBorderView4];

    v30 = MEMORY[0x277CCAAD0];
    leftBorderView5 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    v83 = [v30 constraintWithItem:leftBorderView5 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
    v97[0] = v83;
    v31 = MEMORY[0x277CCAAD0];
    leftBorderView6 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    v33 = [v31 constraintWithItem:leftBorderView6 attribute:8 relatedBy:0 toItem:v3 attribute:8 multiplier:0.65 constant:0.0];
    v97[1] = v33;
    v34 = MEMORY[0x277CCAAD0];
    leftBorderView7 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    v36 = [v34 constraintWithItem:leftBorderView7 attribute:9 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:-1.0];
    v97[2] = v36;
    v37 = MEMORY[0x277CCAAD0];
    leftBorderView8 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    v39 = [v37 constraintWithItem:leftBorderView8 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    v97[3] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:4];
    [v30 activateConstraints:v40];

    v78 = MEMORY[0x277CCAAD0];
    highlightView6 = [(RTTUIAbbreviationView *)v3 highlightView];
    widthAnchor = [highlightView6 widthAnchor];
    widthAnchor2 = [v92 widthAnchor];
    v81 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.95];
    v96[0] = v81;
    highlightView7 = [(RTTUIAbbreviationView *)v3 highlightView];
    heightAnchor = [highlightView7 heightAnchor];
    heightAnchor2 = [v92 heightAnchor];
    v76 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:1.0];
    v96[1] = v76;
    highlightView8 = [(RTTUIAbbreviationView *)v3 highlightView];
    centerXAnchor = [highlightView8 centerXAnchor];
    centerXAnchor2 = [v92 centerXAnchor];
    v44 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v96[2] = v44;
    highlightView9 = [(RTTUIAbbreviationView *)v3 highlightView];
    centerYAnchor = [highlightView9 centerYAnchor];
    centerYAnchor2 = [v92 centerYAnchor];
    v48 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v96[3] = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
    [v78 activateConstraints:v49];

    v85 = MEMORY[0x277CCAAD0];
    widthAnchor3 = [v92 widthAnchor];
    widthAnchor4 = [(RTTUIAbbreviationView *)v3 widthAnchor];
    v51 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4 multiplier:1.0];
    v95[0] = v51;
    centerXAnchor3 = [v92 centerXAnchor];
    centerXAnchor4 = [(RTTUIAbbreviationView *)v3 centerXAnchor];
    v54 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v95[1] = v54;
    centerYAnchor3 = [v92 centerYAnchor];
    centerYAnchor4 = [(RTTUIAbbreviationView *)v3 centerYAnchor];
    v57 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v95[2] = v57;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:3];
    [v85 activateConstraints:v58];

    v89 = MEMORY[0x277CCAAD0];
    topAnchor = [firstValue topAnchor];
    topAnchor2 = [v92 topAnchor];
    v61 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v94[0] = v61;
    bottomAnchor = [v90 bottomAnchor];
    bottomAnchor2 = [v92 bottomAnchor];
    v64 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v94[1] = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:2];
    [v89 activateConstraints:v65];

    v66 = MEMORY[0x277CCAAD0];
    v67 = _NSDictionaryOfVariableBindings(&cfstr_AbbrHint.isa, firstValue, v90, 0);
    v68 = [v66 constraintsWithVisualFormat:@"V:|[abbr]-2-[hint]|" options:0 metrics:0 views:v67];
    [v92 addConstraints:v68];

    v69 = MEMORY[0x277CCAAD0];
    v70 = _NSDictionaryOfVariableBindings(&cfstr_AbbrHint.isa, firstValue, v90, 0);
    v71 = [v69 constraintsWithVisualFormat:@"H:|[abbr]|" options:0 metrics:0 views:v70];
    [v92 addConstraints:v71];

    v72 = MEMORY[0x277CCAAD0];
    v73 = _NSDictionaryOfVariableBindings(&cfstr_AbbrHint.isa, firstValue, v90, 0);
    v74 = [v72 constraintsWithVisualFormat:@"H:|[hint]|" options:0 metrics:0 views:v73];
    [v92 addConstraints:v74];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  hint = [(RTTUIAbbreviationView *)self hint];
  [hint frame];
  v7 = v6;

  abbreviation = [(RTTUIAbbreviationView *)self abbreviation];
  [abbreviation frame];
  v10 = v9;

  if (v7 >= v10)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + 50.0;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  highlightView = [(RTTUIAbbreviationView *)self highlightView];
  [highlightView setHidden:!highlightedCopy];
}

- (void)setDrawLeftBorder:(BOOL)border
{
  borderCopy = border;
  leftBorderView = [(RTTUIAbbreviationView *)self leftBorderView];
  [leftBorderView setHidden:!borderCopy];
}

- (void)setAbbreviationData:(id)data
{
  dataCopy = data;
  v11 = [dataCopy objectForKey:@"abbr"];
  v5 = [dataCopy objectForKey:@"hint"];

  abbreviation = [(RTTUIAbbreviationView *)self abbreviation];
  [abbreviation setText:v11];

  hint = [(RTTUIAbbreviationView *)self hint];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v5];
  [hint setText:v8];

  abbreviation2 = [(RTTUIAbbreviationView *)self abbreviation];
  [abbreviation2 sizeToFit];

  hint2 = [(RTTUIAbbreviationView *)self hint];
  [hint2 sizeToFit];
}

- (id)accessibilityLabel
{
  abbreviation = [(RTTUIAbbreviationView *)self abbreviation];
  hint = [(RTTUIAbbreviationView *)self hint];
  v4 = __AXStringForVariables();

  return v4;
}

- (id)accessibilityIdentifier
{
  abbreviation = [(RTTUIAbbreviationView *)self abbreviation];
  text = [abbreviation text];

  return text;
}

- (NSString)abbreviationText
{
  abbreviation = [(RTTUIAbbreviationView *)self abbreviation];
  text = [abbreviation text];

  return text;
}

@end
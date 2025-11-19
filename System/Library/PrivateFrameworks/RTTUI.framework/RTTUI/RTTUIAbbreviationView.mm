@interface RTTUIAbbreviationView
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)abbreviationText;
- (RTTUIAbbreviationView)initWithFrame:(CGRect)a3;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (void)setAbbreviationData:(id)a3;
- (void)setDrawLeftBorder:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation RTTUIAbbreviationView

- (RTTUIAbbreviationView)initWithFrame:(CGRect)a3
{
  v97[4] = *MEMORY[0x277D85DE8];
  v93.receiver = self;
  v93.super_class = RTTUIAbbreviationView;
  v3 = [(RTTUIAbbreviationView *)&v93 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    [(RTTUIAbbreviationView *)v3 setHighlightView:v9];

    v10 = [(RTTUIAbbreviationView *)v3 highlightView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(RTTUIAbbreviationView *)v3 highlightView];
    [v11 _setContinuousCornerRadius:8.0];

    v12 = [MEMORY[0x277D75348] systemDarkGrayColor];
    v13 = [(RTTUIAbbreviationView *)v3 highlightView];
    [v13 setBackgroundColor:v12];

    v14 = [(RTTUIAbbreviationView *)v3 highlightView];
    [v14 setHidden:1];

    v15 = [(RTTUIAbbreviationView *)v3 highlightView];
    [(RTTUIAbbreviationView *)v3 addSubview:v15];

    v16 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RTTUIAbbreviationView *)v3 addSubview:v16];
    firstValue = objc_alloc_init(MEMORY[0x277D756B8]);
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [MEMORY[0x277D75348] whiteColor];
    [firstValue setTextColor:v17];

    [firstValue setTextAlignment:1];
    v18 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    [firstValue setFont:v18];

    v19 = [MEMORY[0x277D75348] clearColor];
    [firstValue setBackgroundColor:v19];

    v92 = v16;
    [v16 addSubview:firstValue];
    [(RTTUIAbbreviationView *)v3 setAbbreviation:firstValue];
    v90 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [MEMORY[0x277D75348] whiteColor];
    [v90 setTextColor:v20];

    [v90 setTextAlignment:1];
    v21 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [v90 setFont:v21];

    [v90 setAdjustsFontSizeToFitWidth:1];
    [v90 setAllowsDefaultTighteningForTruncation:1];
    [v90 setMinimumScaleFactor:0.800000012];
    v22 = [MEMORY[0x277D75348] clearColor];
    [v90 setBackgroundColor:v22];

    [v16 addSubview:v90];
    [(RTTUIAbbreviationView *)v3 setHint:v90];
    v23 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v6, v7, v8}];
    [(RTTUIAbbreviationView *)v3 setLeftBorderView:v23];

    v24 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = [MEMORY[0x277D75348] systemGrayColor];
    v26 = [v25 colorWithAlphaComponent:0.35];
    v27 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    [v27 setBackgroundColor:v26];

    v28 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    [v28 setHidden:1];

    v29 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    [(RTTUIAbbreviationView *)v3 addSubview:v29];

    v30 = MEMORY[0x277CCAAD0];
    v86 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    v83 = [v30 constraintWithItem:v86 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:1.0];
    v97[0] = v83;
    v31 = MEMORY[0x277CCAAD0];
    v32 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    v33 = [v31 constraintWithItem:v32 attribute:8 relatedBy:0 toItem:v3 attribute:8 multiplier:0.65 constant:0.0];
    v97[1] = v33;
    v34 = MEMORY[0x277CCAAD0];
    v35 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    v36 = [v34 constraintWithItem:v35 attribute:9 relatedBy:0 toItem:v3 attribute:1 multiplier:1.0 constant:-1.0];
    v97[2] = v36;
    v37 = MEMORY[0x277CCAAD0];
    v38 = [(RTTUIAbbreviationView *)v3 leftBorderView];
    v39 = [v37 constraintWithItem:v38 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    v97[3] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:4];
    [v30 activateConstraints:v40];

    v78 = MEMORY[0x277CCAAD0];
    v87 = [(RTTUIAbbreviationView *)v3 highlightView];
    v84 = [v87 widthAnchor];
    v82 = [v92 widthAnchor];
    v81 = [v84 constraintEqualToAnchor:v82 multiplier:0.95];
    v96[0] = v81;
    v80 = [(RTTUIAbbreviationView *)v3 highlightView];
    v79 = [v80 heightAnchor];
    v77 = [v92 heightAnchor];
    v76 = [v79 constraintEqualToAnchor:v77 multiplier:1.0];
    v96[1] = v76;
    v41 = [(RTTUIAbbreviationView *)v3 highlightView];
    v42 = [v41 centerXAnchor];
    v43 = [v92 centerXAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];
    v96[2] = v44;
    v45 = [(RTTUIAbbreviationView *)v3 highlightView];
    v46 = [v45 centerYAnchor];
    v47 = [v92 centerYAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v96[3] = v48;
    v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
    [v78 activateConstraints:v49];

    v85 = MEMORY[0x277CCAAD0];
    v88 = [v92 widthAnchor];
    v50 = [(RTTUIAbbreviationView *)v3 widthAnchor];
    v51 = [v88 constraintEqualToAnchor:v50 multiplier:1.0];
    v95[0] = v51;
    v52 = [v92 centerXAnchor];
    v53 = [(RTTUIAbbreviationView *)v3 centerXAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    v95[1] = v54;
    v55 = [v92 centerYAnchor];
    v56 = [(RTTUIAbbreviationView *)v3 centerYAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v95[2] = v57;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:3];
    [v85 activateConstraints:v58];

    v89 = MEMORY[0x277CCAAD0];
    v59 = [firstValue topAnchor];
    v60 = [v92 topAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    v94[0] = v61;
    v62 = [v90 bottomAnchor];
    v63 = [v92 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v5 = [(RTTUIAbbreviationView *)self hint];
  [v5 frame];
  v7 = v6;

  v8 = [(RTTUIAbbreviationView *)self abbreviation];
  [v8 frame];
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

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v4 = [(RTTUIAbbreviationView *)self highlightView];
  [v4 setHidden:!v3];
}

- (void)setDrawLeftBorder:(BOOL)a3
{
  v3 = a3;
  v4 = [(RTTUIAbbreviationView *)self leftBorderView];
  [v4 setHidden:!v3];
}

- (void)setAbbreviationData:(id)a3
{
  v4 = a3;
  v11 = [v4 objectForKey:@"abbr"];
  v5 = [v4 objectForKey:@"hint"];

  v6 = [(RTTUIAbbreviationView *)self abbreviation];
  [v6 setText:v11];

  v7 = [(RTTUIAbbreviationView *)self hint];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v5];
  [v7 setText:v8];

  v9 = [(RTTUIAbbreviationView *)self abbreviation];
  [v9 sizeToFit];

  v10 = [(RTTUIAbbreviationView *)self hint];
  [v10 sizeToFit];
}

- (id)accessibilityLabel
{
  v3 = [(RTTUIAbbreviationView *)self abbreviation];
  v6 = [(RTTUIAbbreviationView *)self hint];
  v4 = __AXStringForVariables();

  return v4;
}

- (id)accessibilityIdentifier
{
  v2 = [(RTTUIAbbreviationView *)self abbreviation];
  v3 = [v2 text];

  return v3;
}

- (NSString)abbreviationText
{
  v2 = [(RTTUIAbbreviationView *)self abbreviation];
  v3 = [v2 text];

  return v3;
}

@end
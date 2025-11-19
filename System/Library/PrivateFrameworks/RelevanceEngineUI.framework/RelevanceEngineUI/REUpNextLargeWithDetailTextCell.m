@interface REUpNextLargeWithDetailTextCell
+ (void)initialize;
- (REUpNextLargeWithDetailTextCell)initWithFrame:(CGRect)a3;
- (void)_updateHeaderColor;
- (void)configureWithContent:(id)a3;
- (void)defaultTextColorDidChange;
@end

@implementation REUpNextLargeWithDetailTextCell

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    kActiveLayout_0 = 0x4033800000000000;
    kActiveLayout_1 = 0x4043800000000000;
    kActiveLayout_2 = 0x4010000000000000;
    kActiveLayout_3 = 0x3FF0000000000000;
    kActiveLayout_5 = 0x4030800000000000;
    kActiveLayout_4 = 0x402F000000000000;
    kActiveLayout_6 = 0x4043800000000000;
    kActiveLayout_7 = 0x4020000000000000;
    kActiveLayout_8 = 0x402F000000000000;
    kActiveLayout_10 = 0x4018000000000000;
    kActiveLayout_12 = 0x4018000000000000;
  }
}

- (REUpNextLargeWithDetailTextCell)initWithFrame:(CGRect)a3
{
  v117[18] = *MEMORY[0x277D85DE8];
  v116.receiver = self;
  v116.super_class = REUpNextLargeWithDetailTextCell;
  v3 = [(REUpNextBaseCell *)&v116 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5];
    v5 = [v4 fontDescriptor];
    v114 = [v5 fontDescriptorWithSymbolicTraits:2];

    v6 = *MEMORY[0x277D74418];
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_6 weight:*MEMORY[0x277D74418]];
    v112 = [v7 CLKFontWithAlternativePunctuation];

    v113 = [MEMORY[0x277CBBB08] fontWithDescriptor:v114 size:*&kActiveLayout_0];
    v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_4 weight:v6];
    v9 = [v8 CLKFontWithAlternativePunctuation];
    v115 = [v9 CLKFontWithMonospacedNumbers];

    v10 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v3->_contentLayoutGuide;
    v3->_contentLayoutGuide = v10;

    v12 = objc_alloc(MEMORY[0x277CFA760]);
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = [v12 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v17;

    [(CLKUIColoringLabel *)v3->_headerLabel setNowProvider:&__block_literal_global_1];
    [(CLKUIColoringLabel *)v3->_headerLabel setFont:v113];
    [(CLKUIColoringLabel *)v3->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_headerLabel setLineBreakMode:4];
    v19 = v3->_headerLabel;
    v20 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v19 setTextColor:v20];

    v21 = [objc_alloc(MEMORY[0x277CFA760]) initWithFrame:2 options:{v13, v14, v15, v16}];
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v21;

    [(CLKUIColoringLabel *)v3->_bodyLabel setNowProvider:&__block_literal_global_7];
    [(CLKUIColoringLabel *)v3->_bodyLabel setFont:v112];
    [(CLKUIColoringLabel *)v3->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setLineBreakMode:4];
    v23 = v3->_bodyLabel;
    v24 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v23 setTextColor:v24];

    [(CLKUIColoringLabel *)v3->_bodyLabel setMinimumScaleFactor:0.75];
    [(CLKUIColoringLabel *)v3->_bodyLabel setAdjustsFontSizeToFitWidth:1];
    [(CLKUIColoringLabel *)v3->_bodyLabel setBaselineAdjustment:0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setNumberOfLines:1];
    LODWORD(v25) = 1132068864;
    [(CLKUIColoringLabel *)v3->_bodyLabel setContentCompressionResistancePriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(CLKUIColoringLabel *)v3->_bodyLabel setContentHuggingPriority:0 forAxis:v26];
    v27 = [[REUpNextImageView alloc] initWithFrame:v13, v14, v15, v16];
    bodyImage = v3->_bodyImage;
    v3->_bodyImage = v27;

    LODWORD(v29) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentCompressionResistancePriority:0 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentCompressionResistancePriority:1 forAxis:v32];
    [(REUpNextImageView *)v3->_bodyImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [objc_alloc(MEMORY[0x277CFA760]) initWithFrame:4 options:{v13, v14, v15, v16}];
    detail1Label = v3->_detail1Label;
    v3->_detail1Label = v33;

    [(CLKUIColoringLabel *)v3->_detail1Label setNowProvider:&__block_literal_global_10];
    [(CLKUIColoringLabel *)v3->_detail1Label setFont:v115];
    [(CLKUIColoringLabel *)v3->_detail1Label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_detail1Label setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_detail1Label setTextAlignment:2];
    v35 = v3->_detail1Label;
    v36 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v35 setTextColor:v36];

    LODWORD(v37) = 1148846080;
    [(CLKUIColoringLabel *)v3->_detail1Label setContentCompressionResistancePriority:0 forAxis:v37];
    LODWORD(v38) = 1132068864;
    [(CLKUIColoringLabel *)v3->_detail1Label setContentHuggingPriority:0 forAxis:v38];
    v39 = [objc_alloc(MEMORY[0x277CFA760]) initWithFrame:4 options:{v13, v14, v15, v16}];
    detail2Label = v3->_detail2Label;
    v3->_detail2Label = v39;

    [(CLKUIColoringLabel *)v3->_detail2Label setNowProvider:&__block_literal_global_12];
    [(CLKUIColoringLabel *)v3->_detail2Label setFont:v115];
    v41 = v3->_detail2Label;
    v42 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v41 setTextColor:v42];

    [(CLKUIColoringLabel *)v3->_detail2Label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_detail2Label setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_detail2Label setTextAlignment:2];
    LODWORD(v43) = 1148846080;
    [(CLKUIColoringLabel *)v3->_detail2Label setContentCompressionResistancePriority:0 forAxis:v43];
    LODWORD(v44) = 1132068864;
    [(CLKUIColoringLabel *)v3->_detail2Label setContentHuggingPriority:0 forAxis:v44];
    v45 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [v45 addLayoutGuide:v3->_contentLayoutGuide];

    v46 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [v46 addSubview:v3->_bodyImage];

    v47 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [v47 addSubview:v3->_headerLabel];

    v48 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [v48 addSubview:v3->_bodyLabel];

    v49 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [v49 addSubview:v3->_detail1Label];

    v50 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [v50 addSubview:v3->_detail2Label];

    v110 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v111 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    v109 = [v111 topAnchor];
    v108 = [v110 constraintEqualToAnchor:v109 constant:0.0];
    v117[0] = v108;
    v106 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v107 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    v105 = [v107 bottomAnchor];
    v104 = [v106 constraintEqualToAnchor:v105 constant:-0.0];
    v117[1] = v104;
    v102 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v103 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    v101 = [v103 leadingAnchor];
    v100 = [v102 constraintEqualToAnchor:v101 constant:*&kActiveLayout_10];
    v117[2] = v100;
    v98 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v99 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    v97 = [v99 trailingAnchor];
    v96 = [v98 constraintEqualToAnchor:v97 constant:-*&kActiveLayout_12];
    v117[3] = v96;
    v95 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v94 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v93 = [v95 constraintEqualToAnchor:v94 constant:*&kActiveLayout_0];
    v117[4] = v93;
    v92 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    v91 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    v117[5] = v90;
    v89 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    v88 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v117[6] = v87;
    v86 = [(CLKUIColoringLabel *)v3->_bodyLabel firstBaselineAnchor];
    v85 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v84 = [v86 constraintEqualToAnchor:v85 constant:*&kActiveLayout_1];
    v117[7] = v84;
    v83 = [(CLKUIColoringLabel *)v3->_bodyLabel lastBaselineAnchor];
    v82 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v81 = [v83 constraintEqualToAnchor:v82 constant:-*&kActiveLayout_7];
    v117[8] = v81;
    v80 = [(REUpNextImageView *)v3->_bodyImage bottomAnchor];
    v79 = [(CLKUIColoringLabel *)v3->_bodyLabel firstBaselineAnchor];
    v78 = [v80 constraintEqualToAnchor:v79];
    v117[9] = v78;
    v77 = [(CLKUIColoringLabel *)v3->_detail2Label firstBaselineAnchor];
    v76 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v75 = [v77 constraintEqualToAnchor:v76 constant:-*&kActiveLayout_7];
    v117[10] = v75;
    v73 = [(CLKUIColoringLabel *)v3->_detail1Label firstBaselineAnchor];
    v72 = [(CLKUIColoringLabel *)v3->_detail2Label firstBaselineAnchor];
    v71 = [v73 constraintEqualToAnchor:v72 constant:-*&kActiveLayout_8];
    v117[11] = v71;
    v70 = [(CLKUIColoringLabel *)v3->_detail2Label leadingAnchor];
    v69 = [(CLKUIColoringLabel *)v3->_detail1Label leadingAnchor];
    v68 = [v70 constraintEqualToAnchor:v69];
    v117[12] = v68;
    v67 = [(CLKUIColoringLabel *)v3->_detail2Label trailingAnchor];
    v66 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v117[13] = v65;
    v64 = [(CLKUIColoringLabel *)v3->_bodyLabel leadingAnchor];
    v63 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v117[14] = v62;
    v51 = [(REUpNextImageView *)v3->_bodyImage leadingAnchor];
    v52 = [(CLKUIColoringLabel *)v3->_bodyLabel trailingAnchor];
    v53 = [v51 constraintEqualToAnchor:v52 constant:*&kActiveLayout_2];
    v117[15] = v53;
    v54 = [(CLKUIColoringLabel *)v3->_detail1Label leadingAnchor];
    v55 = [(REUpNextImageView *)v3->_bodyImage trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:*&kActiveLayout_3];
    v117[16] = v56;
    v57 = [(CLKUIColoringLabel *)v3->_detail1Label trailingAnchor];
    v58 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    v117[17] = v59;
    v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:18];

    [MEMORY[0x277CCAAD0] activateConstraints:v74];
  }

  v60 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_updateHeaderColor
{
  v3 = [(REUpNextBaseCell *)self content];
  if ([v3 tintColorAffectsHeader])
  {
    v4 = [(REUpNextBaseCell *)self shouldOverrideContentHeaderColor];

    if (v4)
    {
      headerLabel = self->_headerLabel;
      v8 = [(REUpNextBaseCell *)self content];
      v6 = [v8 tintColor];
      [(CLKUIColoringLabel *)headerLabel setTextColor:v6];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = self->_headerLabel;
  v8 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)v7 setTextColor:?];
LABEL_6:
}

- (void)defaultTextColorDidChange
{
  v9.receiver = self;
  v9.super_class = REUpNextLargeWithDetailTextCell;
  [(REUpNextBaseCell *)&v9 defaultTextColorDidChange];
  [(REUpNextLargeWithDetailTextCell *)self _updateHeaderColor];
  bodyLabel = self->_bodyLabel;
  v4 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)bodyLabel setTextColor:v4];

  detail1Label = self->_detail1Label;
  v6 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)detail1Label setTextColor:v6];

  detail2Label = self->_detail2Label;
  v8 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)detail2Label setTextColor:v8];
}

- (void)configureWithContent:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = REUpNextLargeWithDetailTextCell;
  [(REUpNextBaseCell *)&v24 configureWithContent:v4];
  bodyImage = self->_bodyImage;
  v6 = [v4 tintColor];
  [(REUpNextImageView *)bodyImage setFallbackTintColor:v6];

  v7 = [v4 bodyImageProvider];

  if (v7)
  {
    v8 = self->_bodyImage;
    v9 = [v4 bodyImageProvider];
    [(REUpNextImageView *)v8 setImageProvider:v9];
LABEL_5:

    goto LABEL_6;
  }

  v10 = [v4 overrideBodyImage];

  if (v10)
  {
    v11 = self->_bodyImage;
    v9 = [v4 overrideBodyImage];
    [(REUpNextImageView *)v11 setOverrideImage:v9];
    goto LABEL_5;
  }

LABEL_6:
  [(REUpNextLargeWithDetailTextCell *)self _updateHeaderColor];
  headerLabel = self->_headerLabel;
  v13 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:v13];

  bodyLabel = self->_bodyLabel;
  v15 = [v4 description1TextProvider];
  [(CLKUIColoringLabel *)bodyLabel setTextProvider:v15];

  detail1Label = self->_detail1Label;
  v17 = [v4 description2TextProvider];
  [(CLKUIColoringLabel *)detail1Label setTextProvider:v17];

  detail2Label = self->_detail2Label;
  v19 = [v4 description3TextProvider];
  [(CLKUIColoringLabel *)detail2Label setTextProvider:v19];

  v20 = [v4 headerTextProvider];
  [v20 setPaused:0];

  v21 = [v4 description1TextProvider];
  [v21 setPaused:0];

  v22 = [v4 description2TextProvider];
  [v22 setPaused:0];

  v23 = [v4 description3TextProvider];
  [v23 setPaused:0];
}

@end
@interface REUpNextLargeTextCell
+ (void)initialize;
- (REUpNextLargeTextCell)initWithFrame:(CGRect)a3;
- (void)_updateHeaderColor;
- (void)configureWithContent:(id)a3;
- (void)defaultTextColorDidChange;
- (void)updateConstraints;
@end

@implementation REUpNextLargeTextCell

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    kActiveLayout_0_2 = 0x4033800000000000;
    kActiveLayout_1_2 = 0x4043800000000000;
    kActiveLayout_2_2 = 0x4012000000000000;
    kActiveLayout_3_1 = 0x4030800000000000;
    kActiveLayout_4_1 = 0x4043800000000000;
    kActiveLayout_5_1 = 0x4020000000000000;
    kActiveLayout_8_0 = 0x4018000000000000;
    kActiveLayout_10_0 = 0x4018000000000000;
  }
}

- (REUpNextLargeTextCell)initWithFrame:(CGRect)a3
{
  v137[9] = *MEMORY[0x277D85DE8];
  v131.receiver = self;
  v131.super_class = REUpNextLargeTextCell;
  v3 = [(REUpNextBaseCell *)&v131 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_3_1];
    v5 = [v4 fontDescriptor];
    v130 = [v5 fontDescriptorWithSymbolicTraits:2];

    v6 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_4_1 weight:*MEMORY[0x277D74418]];
    v7 = [v6 CLKFontWithAlternativePunctuation];
    standardBodyFont = v3->_standardBodyFont;
    v3->_standardBodyFont = v7;

    v9 = [(CLKFont *)v3->_standardBodyFont CLKFontWithMonospacedNumbers];
    monospaceBodyFont = v3->_monospaceBodyFont;
    v3->_monospaceBodyFont = v9;

    v11 = [MEMORY[0x277CBBB08] fontWithDescriptor:v130 size:*&kActiveLayout_3_1];
    v12 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v3->_contentLayoutGuide;
    v3->_contentLayoutGuide = v12;

    v14 = objc_alloc(MEMORY[0x277CFA760]);
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = [v14 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], v16, v17, v18}];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v19;

    [(CLKUIColoringLabel *)v3->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_headerLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_headerLabel setNowProvider:&__block_literal_global_3];
    v129 = v11;
    [(CLKUIColoringLabel *)v3->_headerLabel setFont:v11];
    v21 = v3->_headerLabel;
    v22 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v21 setTextColor:v22];

    v23 = [objc_alloc(MEMORY[0x277CFA760]) initWithFrame:6 options:{v15, v16, v17, v18}];
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v23;

    [(CLKUIColoringLabel *)v3->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_bodyLabel setNowProvider:&__block_literal_global_7_0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setFont:v3->_standardBodyFont];
    v25 = v3->_bodyLabel;
    v26 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v25 setTextColor:v26];

    [(CLKUIColoringLabel *)v3->_bodyLabel setMinimumScaleFactor:0.75];
    [(CLKUIColoringLabel *)v3->_bodyLabel setAdjustsFontSizeToFitWidth:1];
    [(CLKUIColoringLabel *)v3->_bodyLabel setBaselineAdjustment:0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setNumberOfLines:1];
    v27 = [[REUpNextImageView alloc] initWithFrame:v15, v16, v17, v18];
    headerImage = v3->_headerImage;
    v3->_headerImage = v27;

    LODWORD(v29) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentCompressionResistancePriority:0 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentCompressionResistancePriority:1 forAxis:v32];
    [(REUpNextImageView *)v3->_headerImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [[REUpNextImageView alloc] initWithFrame:v15, v16, v17, v18];
    bodyImage = v3->_bodyImage;
    v3->_bodyImage = v33;

    LODWORD(v35) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentHuggingPriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentHuggingPriority:1 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentCompressionResistancePriority:0 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentCompressionResistancePriority:1 forAxis:v38];
    [(REUpNextImageView *)v3->_bodyImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [(REUpNextLargeTextCell *)v3 contentView];
    [v39 addLayoutGuide:v3->_contentLayoutGuide];

    v40 = [(REUpNextLargeTextCell *)v3 contentView];
    [v40 addSubview:v3->_headerImage];

    v41 = [(REUpNextLargeTextCell *)v3 contentView];
    [v41 addSubview:v3->_headerLabel];

    v42 = [(REUpNextLargeTextCell *)v3 contentView];
    [v42 addSubview:v3->_bodyLabel];

    v43 = [(REUpNextLargeTextCell *)v3 contentView];
    [v43 addSubview:v3->_bodyImage];

    [v11 capHeight];
    UIRoundToViewScale();
    v45 = v44;
    v126 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v127 = [(REUpNextLargeTextCell *)v3 contentView];
    v125 = [v127 topAnchor];
    v124 = [v126 constraintEqualToAnchor:v125 constant:0.0];
    v137[0] = v124;
    v122 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v123 = [(REUpNextLargeTextCell *)v3 contentView];
    v121 = [v123 bottomAnchor];
    v120 = [v122 constraintEqualToAnchor:v121 constant:-0.0];
    v137[1] = v120;
    v118 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v119 = [(REUpNextLargeTextCell *)v3 contentView];
    v117 = [v119 leadingAnchor];
    v116 = [v118 constraintEqualToAnchor:v117 constant:*&kActiveLayout_8_0];
    v137[2] = v116;
    v114 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v115 = [(REUpNextLargeTextCell *)v3 contentView];
    v113 = [v115 trailingAnchor];
    v112 = [v114 constraintEqualToAnchor:v113 constant:-*&kActiveLayout_10_0];
    v137[3] = v112;
    v111 = [(REUpNextImageView *)v3->_headerImage centerYAnchor];
    v110 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v109 = [v111 constraintEqualToAnchor:v110 constant:-v45];
    v137[4] = v109;
    v108 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v107 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v106 = [v108 constraintEqualToAnchor:v107 constant:*&kActiveLayout_0_2];
    v137[5] = v106;
    v46 = [(REUpNextImageView *)v3->_bodyImage bottomAnchor];
    v47 = [(CLKUIColoringLabel *)v3->_bodyLabel firstBaselineAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v137[6] = v48;
    v49 = [(CLKUIColoringLabel *)v3->_bodyLabel firstBaselineAnchor];
    v50 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v51 = [v49 constraintEqualToAnchor:v50 constant:*&kActiveLayout_1_2];
    v137[7] = v51;
    v52 = [(CLKUIColoringLabel *)v3->_bodyLabel lastBaselineAnchor];
    v53 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 constant:-*&kActiveLayout_5_1];
    v137[8] = v54;
    v128 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:9];

    v55 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    v56 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v136[0] = v57;
    v58 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    v59 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];
    v136[1] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:2];
    headerWithNoImageConstraints = v3->_headerWithNoImageConstraints;
    v3->_headerWithNoImageConstraints = v61;

    v63 = [(REUpNextImageView *)v3->_headerImage leadingAnchor];
    v64 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];
    v135[0] = v65;
    v66 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    v67 = [(REUpNextImageView *)v3->_headerImage trailingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:*&kActiveLayout_2_2];
    v135[1] = v68;
    v69 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    v70 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v71 = [v69 constraintEqualToAnchor:v70];
    v135[2] = v71;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:3];
    headerWithLeftImageConstraints = v3->_headerWithLeftImageConstraints;
    v3->_headerWithLeftImageConstraints = v72;

    v74 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    v75 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    v134[0] = v76;
    v77 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    v78 = [(REUpNextImageView *)v3->_headerImage leadingAnchor];
    v79 = [v77 constraintEqualToAnchor:v78 constant:-*&kActiveLayout_2_2];
    v134[1] = v79;
    v80 = [(REUpNextImageView *)v3->_headerImage trailingAnchor];
    v81 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v82 = [v80 constraintEqualToAnchor:v81];
    v134[2] = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:3];
    headerWithRightImageConstraints = v3->_headerWithRightImageConstraints;
    v3->_headerWithRightImageConstraints = v83;

    v85 = [(CLKUIColoringLabel *)v3->_bodyLabel leadingAnchor];
    v86 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];
    v133[0] = v87;
    v88 = [(CLKUIColoringLabel *)v3->_bodyLabel trailingAnchor];
    v89 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];
    v133[1] = v90;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:2];
    bodyWithNoImageConstraints = v3->_bodyWithNoImageConstraints;
    v3->_bodyWithNoImageConstraints = v91;

    v93 = [(REUpNextImageView *)v3->_bodyImage leadingAnchor];
    v94 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];
    v132[0] = v95;
    v96 = [(CLKUIColoringLabel *)v3->_bodyLabel leadingAnchor];
    v97 = [(REUpNextImageView *)v3->_bodyImage trailingAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 constant:0.0];
    v132[1] = v98;
    v99 = [(CLKUIColoringLabel *)v3->_bodyLabel trailingAnchor];
    v100 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];
    v132[2] = v101;
    v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:3];
    bodyWithLeftImageConstraints = v3->_bodyWithLeftImageConstraints;
    v3->_bodyWithLeftImageConstraints = v102;

    [MEMORY[0x277CCAAD0] activateConstraints:v3->_bodyWithNoImageConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v3->_headerWithNoImageConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v128];
  }

  v104 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)updateConstraints
{
  v3 = [(REUpNextBaseCell *)self content];
  v4 = [v3 headerImageProvider];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 overrideHeaderImage];
    v5 = v6 != 0;
  }

  v7 = [v3 headerImageEdge];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if (self->_showingHeaderImage != v5 || v7 != self->_currentImageEdge)
  {
    self->_currentImageEdge = v7;
    self->_showingHeaderImage = v5;
    headerImage = self->_headerImage;
    if (v5)
    {
      [(REUpNextImageView *)headerImage setHidden:0];
      [v9 addObjectsFromArray:self->_headerWithNoImageConstraints];
      v11 = [v3 headerImageEdge];
      if (v11 == 2)
      {
        v12 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithLeftImageConstraints;
      }

      else
      {
        v12 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithRightImageConstraints;
      }

      if (v11 == 2)
      {
        v13 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithRightImageConstraints;
      }

      else
      {
        v13 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithLeftImageConstraints;
      }
    }

    else
    {
      [(REUpNextImageView *)headerImage setHidden:1];
      [v9 addObjectsFromArray:self->_headerWithLeftImageConstraints];
      v13 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithNoImageConstraints;
      v12 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithRightImageConstraints;
    }

    [v9 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v12)];
    [v8 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v13)];
  }

  v14 = [v3 bodyImageProvider];
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v16 = [v3 overrideBodyImage];
    v15 = v16 != 0;
  }

  if (self->_showingBodyImage != v15)
  {
    self->_showingBodyImage = v15;
    if (v15)
    {
      v17 = &OBJC_IVAR___REUpNextLargeTextCell__bodyWithNoImageConstraints;
    }

    else
    {
      v17 = &OBJC_IVAR___REUpNextLargeTextCell__bodyWithLeftImageConstraints;
    }

    if (v15)
    {
      v18 = &OBJC_IVAR___REUpNextLargeTextCell__bodyWithLeftImageConstraints;
    }

    else
    {
      v18 = &OBJC_IVAR___REUpNextLargeTextCell__bodyWithNoImageConstraints;
    }

    [(REUpNextImageView *)self->_bodyImage setHidden:!v15];
    [v9 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v17)];
    [v8 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v18)];
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:v9];
  [MEMORY[0x277CCAAD0] activateConstraints:v8];
  v19.receiver = self;
  v19.super_class = REUpNextLargeTextCell;
  [(REUpNextLargeTextCell *)&v19 updateConstraints];
}

- (void)_updateHeaderColor
{
  v6 = [(REUpNextBaseCell *)self content];
  if ([v6 tintColorAffectsHeader] && !-[REUpNextBaseCell shouldOverrideContentHeaderColor](self, "shouldOverrideContentHeaderColor"))
  {
    headerLabel = self->_headerLabel;
    v4 = [v6 tintColor];
  }

  else
  {
    headerLabel = self->_headerLabel;
    v4 = [(REUpNextBaseCell *)self defaultTextColor];
  }

  v5 = v4;
  [(CLKUIColoringLabel *)headerLabel setTextColor:v4];
}

- (void)defaultTextColorDidChange
{
  v4.receiver = self;
  v4.super_class = REUpNextLargeTextCell;
  [(REUpNextBaseCell *)&v4 defaultTextColorDidChange];
  [(REUpNextLargeTextCell *)self _updateHeaderColor];
  v3 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)self->_bodyLabel setTextColor:v3];
}

- (void)configureWithContent:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = REUpNextLargeTextCell;
  [(REUpNextBaseCell *)&v30 configureWithContent:v4];
  v5 = [v4 useMonospaceFont];
  bodyLabel = self->_bodyLabel;
  v7 = &OBJC_IVAR___REUpNextLargeTextCell__standardBodyFont;
  if (v5)
  {
    v7 = &OBJC_IVAR___REUpNextLargeTextCell__monospaceBodyFont;
  }

  [(CLKUIColoringLabel *)self->_bodyLabel setFont:*(&self->super.super.super.super.super.super.isa + *v7)];
  headerImage = self->_headerImage;
  v9 = [v4 tintColor];
  [(REUpNextImageView *)headerImage setFallbackTintColor:v9];

  v10 = [v4 headerImageProvider];

  if (v10)
  {
    v11 = self->_headerImage;
    v12 = [v4 headerImageProvider];
    [(REUpNextImageView *)v11 setImageProvider:v12];
  }

  else
  {
    v13 = [v4 overrideHeaderImage];

    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = self->_headerImage;
    v12 = [v4 overrideHeaderImage];
    [(REUpNextImageView *)v14 setOverrideImage:v12];
  }

LABEL_8:
  bodyImage = self->_bodyImage;
  v16 = [v4 tintColor];
  [(REUpNextImageView *)bodyImage setFallbackTintColor:v16];

  v17 = [v4 bodyImageProvider];

  if (v17)
  {
    v18 = self->_bodyImage;
    v19 = [v4 bodyImageProvider];
    [(REUpNextImageView *)v18 setImageProvider:v19];
  }

  else
  {
    v20 = [v4 overrideBodyImage];

    if (!v20)
    {
      goto LABEL_13;
    }

    v21 = self->_bodyImage;
    v19 = [v4 overrideBodyImage];
    [(REUpNextImageView *)v21 setOverrideImage:v19];
  }

LABEL_13:
  [(REUpNextLargeTextCell *)self _updateHeaderColor];
  headerLabel = self->_headerLabel;
  v23 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:v23];

  v24 = [v4 overrideBodyString];

  v25 = self->_bodyLabel;
  if (v24)
  {
    [(CLKUIColoringLabel *)self->_bodyLabel setTextProvider:0];
    v26 = self->_bodyLabel;
    v27 = [v4 overrideBodyString];
    [(CLKUIColoringLabel *)v26 setText:v27];
  }

  else
  {
    v27 = [v4 description1TextProvider];
    [(CLKUIColoringLabel *)v25 setTextProvider:v27];
  }

  v28 = [v4 headerTextProvider];
  [v28 setPaused:0];

  v29 = [v4 description1TextProvider];
  [v29 setPaused:0];

  [(REUpNextLargeTextCell *)self setNeedsUpdateConstraints];
}

@end
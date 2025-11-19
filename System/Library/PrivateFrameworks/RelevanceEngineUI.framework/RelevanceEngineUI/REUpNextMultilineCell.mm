@interface REUpNextMultilineCell
+ (void)initialize;
- (REUpNextMultilineCell)initWithFrame:(CGRect)a3;
- (void)_updateHeaderColor;
- (void)configureWithContent:(id)a3;
- (void)defaultTextColorDidChange;
- (void)updateConstraints;
@end

@implementation REUpNextMultilineCell

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    kActiveLayout_0_4 = 0x4012000000000000;
    kActiveLayout_1_4 = 0x4033800000000000;
    kActiveLayout_2_4 = 0x4033800000000000;
    kActiveLayout_3_2 = 0x4033800000000000;
    kActiveLayout_4_2 = 0x4010000000000000;
    kActiveLayout_5_2 = 0x4030800000000000;
    kActiveLayout_6_1 = 0x4020000000000000;
    kActiveLayout_7_1 = 0x400C000000000000;
    kActiveLayout_8_1 = 0x3FE0000000000000;
    kActiveLayout_10_1 = 0x4040000000000000;
    kActiveLayout_11_0 = 0x3FF0000000000000;
    kActiveLayout_13 = 0x4018000000000000;
    kActiveLayout_15 = 0x4018000000000000;
  }
}

- (REUpNextMultilineCell)initWithFrame:(CGRect)a3
{
  v225[14] = *MEMORY[0x277D85DE8];
  v213.receiver = self;
  v213.super_class = REUpNextMultilineCell;
  v3 = [(REUpNextBaseCell *)&v213 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_2];
    v5 = [v4 fontDescriptor];
    v211 = [v5 fontDescriptorWithSymbolicTraits:1];

    v6 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_2];
    v7 = [v6 fontDescriptor];
    v210 = [v7 fontDescriptorWithSymbolicTraits:2];

    v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_2 weight:*MEMORY[0x277D74410]];
    standardFont = v3->_standardFont;
    v3->_standardFont = v8;

    v10 = [MEMORY[0x277CBBB08] fontWithDescriptor:v211 size:*&kActiveLayout_5_2];
    italicFont = v3->_italicFont;
    v3->_italicFont = v10;

    v12 = [MEMORY[0x277CBBB08] fontWithDescriptor:v210 size:*&kActiveLayout_5_2];
    boldFont = v3->_boldFont;
    v3->_boldFont = v12;

    v14 = __39__REUpNextMultilineCell_initWithFrame___block_invoke();
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v14;

    [(CLKUIColoringLabel *)v3->_headerLabel setFont:v3->_boldFont];
    v16 = v3->_headerLabel;
    v17 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v16 setTextColor:v17];

    v18 = __39__REUpNextMultilineCell_initWithFrame___block_invoke();
    descriptionLine1Label = v3->_descriptionLine1Label;
    v3->_descriptionLine1Label = v18;

    v20 = v3->_descriptionLine1Label;
    v21 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v20 setTextColor:v21];

    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setFont:v3->_standardFont];
    v209 = objc_alloc_init(MEMORY[0x277D74240]);
    [v209 setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setParagraphStyle:v209];
    LODWORD(v22) = 1148846080;
    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setContentHuggingPriority:1 forAxis:v22];
    v23 = __39__REUpNextMultilineCell_initWithFrame___block_invoke();
    descriptionLine2Label = v3->_descriptionLine2Label;
    v3->_descriptionLine2Label = v23;

    v25 = v3->_descriptionLine2Label;
    v26 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v25 setTextColor:v26];

    [(CLKUIColoringLabel *)v3->_descriptionLine2Label setFont:v3->_italicFont];
    [(CLKUIColoringLabel *)v3->_descriptionLine2Label setNumberOfLines:1];
    v27 = [REUpNextImageView alloc];
    v28 = *MEMORY[0x277CBF3A0];
    v29 = *(MEMORY[0x277CBF3A0] + 8);
    v30 = *(MEMORY[0x277CBF3A0] + 16);
    v31 = *(MEMORY[0x277CBF3A0] + 24);
    v32 = [(REUpNextImageView *)v27 initWithFrame:*MEMORY[0x277CBF3A0], v29, v30, v31];
    headerImage = v3->_headerImage;
    v3->_headerImage = v32;

    LODWORD(v34) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentHuggingPriority:0 forAxis:v34];
    LODWORD(v35) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentHuggingPriority:1 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentCompressionResistancePriority:0 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentCompressionResistancePriority:1 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setContentCompressionResistancePriority:1 forAxis:v38];
    LODWORD(v39) = 1148829696;
    [(CLKUIColoringLabel *)v3->_headerLabel setContentCompressionResistancePriority:1 forAxis:v39];
    LODWORD(v40) = 1148846080;
    [(CLKUIColoringLabel *)v3->_headerLabel setContentHuggingPriority:1 forAxis:v40];
    [(REUpNextImageView *)v3->_headerImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v41 = [[REUpNextImageView alloc] initWithFrame:v28, v29, v30, v31];
    descriptionImageView = v3->_descriptionImageView;
    v3->_descriptionImageView = v41;

    [(REUpNextImageView *)v3->_descriptionImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(REUpNextImageView *)v3->_descriptionImageView setContentMode:6];
    LODWORD(v43) = 1148846080;
    [(REUpNextImageView *)v3->_descriptionImageView setContentHuggingPriority:0 forAxis:v43];
    LODWORD(v44) = 1148846080;
    [(REUpNextImageView *)v3->_descriptionImageView setContentCompressionResistancePriority:0 forAxis:v44];
    v45 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v3->_contentLayoutGuide;
    v3->_contentLayoutGuide = v45;

    v47 = objc_alloc_init(MEMORY[0x277D756D0]);
    descriptionTextLayoutGuide = v3->_descriptionTextLayoutGuide;
    v3->_descriptionTextLayoutGuide = v47;

    v49 = objc_alloc_init(MEMORY[0x277D756D0]);
    bodyImageSizingLayoutGuide = v3->_bodyImageSizingLayoutGuide;
    v3->_bodyImageSizingLayoutGuide = v49;

    v51 = [(REUpNextMultilineCell *)v3 contentView];
    [v51 addLayoutGuide:v3->_contentLayoutGuide];

    v52 = [(REUpNextMultilineCell *)v3 contentView];
    [v52 addLayoutGuide:v3->_descriptionTextLayoutGuide];

    v53 = [(REUpNextMultilineCell *)v3 contentView];
    [v53 addLayoutGuide:v3->_bodyImageSizingLayoutGuide];

    v54 = [(REUpNextMultilineCell *)v3 contentView];
    [v54 addSubview:v3->_headerImage];

    v55 = [(REUpNextMultilineCell *)v3 contentView];
    [v55 addSubview:v3->_headerLabel];

    v56 = [(REUpNextMultilineCell *)v3 contentView];
    [v56 addSubview:v3->_descriptionLine1Label];

    v57 = [(REUpNextMultilineCell *)v3 contentView];
    [v57 addSubview:v3->_descriptionLine2Label];

    v58 = [(REUpNextMultilineCell *)v3 contentView];
    [v58 addSubview:v3->_descriptionImageView];

    [(CLKFont *)v3->_boldFont capHeight];
    UIRoundToViewScale();
    v60 = v59;
    v205 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v207 = [(REUpNextMultilineCell *)v3 contentView];
    v203 = [v207 topAnchor];
    v201 = [v205 constraintEqualToAnchor:v203 constant:0.0];
    v225[0] = v201;
    v199 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v200 = [(REUpNextMultilineCell *)v3 contentView];
    v198 = [v200 bottomAnchor];
    v197 = [v199 constraintEqualToAnchor:v198 constant:-0.0];
    v225[1] = v197;
    v195 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v196 = [(REUpNextMultilineCell *)v3 contentView];
    v194 = [v196 leadingAnchor];
    v193 = [v195 constraintEqualToAnchor:v194 constant:*&kActiveLayout_13];
    v225[2] = v193;
    v191 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v192 = [(REUpNextMultilineCell *)v3 contentView];
    v190 = [v192 trailingAnchor];
    v189 = [v191 constraintEqualToAnchor:v190 constant:-*&kActiveLayout_15];
    v225[3] = v189;
    v188 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide trailingAnchor];
    v187 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v186 = [v188 constraintEqualToAnchor:v187];
    v225[4] = v186;
    v185 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide bottomAnchor];
    v184 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v183 = [v185 constraintEqualToAnchor:v184 constant:-*&kActiveLayout_6_1];
    v225[5] = v183;
    v182 = [(REUpNextImageView *)v3->_headerImage centerYAnchor];
    v181 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v180 = [v182 constraintEqualToAnchor:v181 constant:-v60];
    v225[6] = v180;
    v179 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label leadingAnchor];
    v178 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v177 = [v179 constraintEqualToAnchor:v178];
    v225[7] = v177;
    v176 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label trailingAnchor];
    v175 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide trailingAnchor];
    v174 = [v176 constraintEqualToAnchor:v175];
    v225[8] = v174;
    v173 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label trailingAnchor];
    v172 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide trailingAnchor];
    v171 = [v173 constraintEqualToAnchor:v172];
    v225[9] = v171;
    v170 = [(REUpNextImageView *)v3->_descriptionImageView leadingAnchor];
    v169 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v168 = [v170 constraintEqualToAnchor:v169 constant:*&kActiveLayout_8_1];
    v225[10] = v168;
    v61 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide leadingAnchor];
    v62 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];
    v225[11] = v63;
    v64 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide trailingAnchor];
    v65 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    v225[12] = v66;
    v67 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide topAnchor];
    v68 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    [(CLKFont *)v3->_standardFont capHeight];
    v70 = [v67 constraintEqualToAnchor:v68 constant:-(v69 + *&kActiveLayout_11_0)];
    v225[13] = v70;
    v208 = [MEMORY[0x277CBEA60] arrayWithObjects:v225 count:14];

    v71 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    v72 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v73 = [v71 constraintEqualToAnchor:v72 constant:*&kActiveLayout_2_4];
    v224[0] = v73;
    v74 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide topAnchor];
    v75 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    v224[1] = v76;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:2];
    withoutHeaderConstraints = v3->_withoutHeaderConstraints;
    v3->_withoutHeaderConstraints = v77;

    v206 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    v79 = [(CLKUIColoringLabel *)v3->_headerLabel lastBaselineAnchor];
    v80 = [v206 constraintEqualToAnchor:v79 constant:*&kActiveLayout_2_4];
    v223[0] = v80;
    v81 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v82 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v83 = [v81 constraintEqualToAnchor:v82 constant:*&kActiveLayout_1_4];
    v223[1] = v83;
    v84 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide topAnchor];
    v85 = [(CLKUIColoringLabel *)v3->_headerLabel lastBaselineAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];
    v223[2] = v86;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v223 count:3];
    withHeaderConstraints = v3->_withHeaderConstraints;
    v3->_withHeaderConstraints = v87;

    v89 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    v90 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90];
    v222[0] = v91;
    v92 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    v93 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v94 = [v92 constraintEqualToAnchor:v93];
    v222[1] = v94;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v222 count:2];
    headerWithNoImageConstraints = v3->_headerWithNoImageConstraints;
    v3->_headerWithNoImageConstraints = v95;

    v97 = [(REUpNextImageView *)v3->_headerImage leadingAnchor];
    v98 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v99 = [v97 constraintEqualToAnchor:v98];
    v221[0] = v99;
    v100 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    v101 = [(REUpNextImageView *)v3->_headerImage trailingAnchor];
    v102 = [v100 constraintEqualToAnchor:v101 constant:*&kActiveLayout_4_2];
    v221[1] = v102;
    v103 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    v104 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v105 = [v103 constraintEqualToAnchor:v104];
    v221[2] = v105;
    v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:3];
    headerWithLeftImageConstraints = v3->_headerWithLeftImageConstraints;
    v3->_headerWithLeftImageConstraints = v106;

    v108 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    v109 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v110 = [v108 constraintEqualToAnchor:v109];
    v220[0] = v110;
    v111 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    v112 = [(REUpNextImageView *)v3->_headerImage leadingAnchor];
    v113 = [v111 constraintEqualToAnchor:v112 constant:-*&kActiveLayout_4_2];
    v220[1] = v113;
    v114 = [(REUpNextImageView *)v3->_headerImage trailingAnchor];
    v115 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v116 = [v114 constraintEqualToAnchor:v115];
    v220[2] = v116;
    v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v220 count:3];
    headerWithRightImageConstraints = v3->_headerWithRightImageConstraints;
    v3->_headerWithRightImageConstraints = v117;

    v212 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label firstBaselineAnchor];
    v204 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    v119 = [v212 constraintEqualToAnchor:v204 constant:*&kActiveLayout_3_2];
    v219[0] = v119;
    v120 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label lastBaselineAnchor];
    v121 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide bottomAnchor];
    v122 = [v120 constraintEqualToAnchor:v121];
    v219[1] = v122;
    v123 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide bottomAnchor];
    v124 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label lastBaselineAnchor];
    v125 = [v123 constraintEqualToAnchor:v124 constant:*&kActiveLayout_11_0];
    v219[2] = v125;
    v126 = [MEMORY[0x277CBEA60] arrayWithObjects:v219 count:3];
    withDescription2Constraints = v3->_withDescription2Constraints;
    v3->_withDescription2Constraints = v126;

    v128 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    v129 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide bottomAnchor];
    v130 = [v128 constraintLessThanOrEqualToAnchor:v129];
    v218[0] = v130;
    v131 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide bottomAnchor];
    v132 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:*&kActiveLayout_11_0];
    v218[1] = v133;
    v134 = [MEMORY[0x277CBEA60] arrayWithObjects:v218 count:2];
    withoutDescription2Constraints = v3->_withoutDescription2Constraints;
    v3->_withoutDescription2Constraints = v134;

    v136 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label leadingAnchor];
    v137 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];
    v217 = v138;
    v139 = [MEMORY[0x277CBEA60] arrayWithObjects:&v217 count:1];
    withoutDescriptionAccessoryConstraints = v3->_withoutDescriptionAccessoryConstraints;
    v3->_withoutDescriptionAccessoryConstraints = v139;

    v141 = [(REUpNextImageView *)v3->_descriptionImageView heightAnchor];
    v142 = [v141 constraintEqualToConstant:*&kActiveLayout_10_1];
    v216[0] = v142;
    v143 = [(REUpNextImageView *)v3->_descriptionImageView bottomAnchor];
    v144 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v145 = [v143 constraintEqualToAnchor:v144 constant:-*&kActiveLayout_6_1];
    v216[1] = v145;
    v146 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v147 = [(REUpNextImageView *)v3->_descriptionImageView trailingAnchor];
    v148 = [v146 constraintEqualToAnchor:v147 constant:*&kActiveLayout_7_1];
    v216[2] = v148;
    v149 = [MEMORY[0x277CBEA60] arrayWithObjects:v216 count:3];
    withDescriptionImageViewConstraints = v3->_withDescriptionImageViewConstraints;
    v3->_withDescriptionImageViewConstraints = v149;

    v202 = [(REUpNextImageView *)v3->_descriptionImageView topAnchor];
    v151 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide topAnchor];
    v152 = [v202 constraintEqualToAnchor:v151];
    v215[0] = v152;
    v153 = [(REUpNextImageView *)v3->_descriptionImageView bottomAnchor];
    v154 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide bottomAnchor];
    v155 = [v153 constraintEqualToAnchor:v154];
    v215[1] = v155;
    v156 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v157 = [(REUpNextImageView *)v3->_descriptionImageView trailingAnchor];
    v158 = [v156 constraintEqualToAnchor:v157 constant:*&kActiveLayout_7_1];
    v215[2] = v158;
    v159 = [MEMORY[0x277CBEA60] arrayWithObjects:v215 count:3];
    withStretchableDescriptionImageViewConstraints = v3->_withStretchableDescriptionImageViewConstraints;
    v3->_withStretchableDescriptionImageViewConstraints = v159;

    v161 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v162 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v163 = [v161 constraintEqualToAnchor:v162];
    v214 = v163;
    v164 = [MEMORY[0x277CBEA60] arrayWithObjects:&v214 count:1];
    withoutDescriptionImageViewConstraints = v3->_withoutDescriptionImageViewConstraints;
    v3->_withoutDescriptionImageViewConstraints = v164;

    [MEMORY[0x277CCAAD0] activateConstraints:v3->_withHeaderConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v3->_headerWithNoImageConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v3->_withoutDescription2Constraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v3->_withoutDescriptionAccessoryConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v3->_withoutDescriptionImageViewConstraints];
    v3->_showingHeader = 1;
    v3->_headerImageEdge = 0;
    [(CLKUIColoringLabel *)v3->_descriptionLine2Label setHidden:1];
    [(REUpNextImageView *)v3->_descriptionImageView setHidden:1];
    [MEMORY[0x277CCAAD0] activateConstraints:v208];
    [(CLKUIColoringLabel *)v3->_headerLabel setNumberOfLines:2];
    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setNumberOfLines:2];
  }

  v166 = *MEMORY[0x277D85DE8];
  return v3;
}

id __39__REUpNextMultilineCell_initWithFrame___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CFA760]);
  v1 = [v0 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setLineBreakMode:4];
  [v1 setNowProvider:&__block_literal_global_5_0];

  return v1;
}

- (void)_updateHeaderColor
{
  v3 = [(REUpNextBaseCell *)self content];
  if ([v3 tintColorAffectsHeader])
  {
    v4 = [(REUpNextBaseCell *)self shouldOverrideContentHeaderColor];

    if (!v4)
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
  v9.super_class = REUpNextMultilineCell;
  [(REUpNextBaseCell *)&v9 defaultTextColorDidChange];
  [(REUpNextMultilineCell *)self _updateHeaderColor];
  descriptionLine1Label = self->_descriptionLine1Label;
  v4 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextColor:v4];

  descriptionLine2Label = self->_descriptionLine2Label;
  v6 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextColor:v6];

  accessoryView = self->_accessoryView;
  v8 = [(REUpNextBaseCell *)self defaultTextColor];
  [(REUpNextAccessoryView *)accessoryView setTextColor:v8];
}

- (void)updateConstraints
{
  v62[3] = *MEMORY[0x277D85DE8];
  v3 = [(REUpNextBaseCell *)self content];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [v3 description2TextProvider];
  v7 = v6 != 0;

  if (self->_showingThreeLineLayout != v7)
  {
    self->_showingThreeLineLayout = v7;
    [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:v6 == 0];
    if (self->_showingThreeLineLayout)
    {
      v8 = &OBJC_IVAR___REUpNextMultilineCell__withoutDescription2Constraints;
    }

    else
    {
      v8 = &OBJC_IVAR___REUpNextMultilineCell__withDescription2Constraints;
    }

    if (self->_showingThreeLineLayout)
    {
      v9 = &OBJC_IVAR___REUpNextMultilineCell__withDescription2Constraints;
    }

    else
    {
      v9 = &OBJC_IVAR___REUpNextMultilineCell__withoutDescription2Constraints;
    }

    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v8)];
    [v4 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v9)];
  }

  v10 = [v3 headerTextProvider];
  v11 = v10 != 0;

  v12 = 0x27FED8000uLL;
  if (self->_showingHeader != v11)
  {
    self->_showingHeader = v11;
    [(CLKUIColoringLabel *)self->_headerLabel setHidden:v10 == 0];
    if (self->_showingHeader)
    {
      v13 = &OBJC_IVAR___REUpNextMultilineCell__withoutHeaderConstraints;
    }

    else
    {
      v13 = &OBJC_IVAR___REUpNextMultilineCell__withHeaderConstraints;
    }

    if (self->_showingHeader)
    {
      v14 = &OBJC_IVAR___REUpNextMultilineCell__withHeaderConstraints;
    }

    else
    {
      v14 = &OBJC_IVAR___REUpNextMultilineCell__withoutHeaderConstraints;
    }

    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v13)];
    [v4 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v14)];
  }

  v15 = [v3 headerImageProvider];
  if (!v15)
  {
    v16 = [v3 overrideHeaderImage];
    if (v16)
    {
      v17 = v10 == 0;
    }

    else
    {
      v17 = 1;
    }

    v11 = !v17;
  }

  v18 = [v3 headerImageEdge];
  if (self->_showingHeaderImage != v11 || v18 != self->_headerImageEdge)
  {
    self->_showingHeaderImage = v11;
    self->_headerImageEdge = v18;
    headerImage = self->_headerImage;
    if (v11)
    {
      [(REUpNextImageView *)headerImage setHidden:0];
      [v5 addObjectsFromArray:self->_headerWithNoImageConstraints];
      v20 = [v3 headerImageEdge];
      if (v20 == 2)
      {
        v21 = &OBJC_IVAR___REUpNextMultilineCell__headerWithLeftImageConstraints;
      }

      else
      {
        v21 = &OBJC_IVAR___REUpNextMultilineCell__headerWithRightImageConstraints;
      }

      if (v20 == 2)
      {
        v22 = &OBJC_IVAR___REUpNextMultilineCell__headerWithRightImageConstraints;
      }

      else
      {
        v22 = &OBJC_IVAR___REUpNextMultilineCell__headerWithLeftImageConstraints;
      }
    }

    else
    {
      [(REUpNextImageView *)headerImage setHidden:1];
      [v5 addObjectsFromArray:self->_headerWithLeftImageConstraints];
      v22 = &OBJC_IVAR___REUpNextMultilineCell__headerWithNoImageConstraints;
      v21 = &OBJC_IVAR___REUpNextMultilineCell__headerWithRightImageConstraints;
    }

    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v21)];
    [v4 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v22)];
  }

  v23 = [v3 descriptionAccessory];
  v24 = v23 != 0;

  if (self->_showingAccessory == v24)
  {
    if (!v23)
    {
      goto LABEL_45;
    }

LABEL_43:
    v36 = 0;
    goto LABEL_49;
  }

  self->_showingAccessory = v24;
  if (v23)
  {
    if (!self->_accessoryView)
    {
      v25 = [REUpNextAccessoryView alloc];
      v26 = [(REUpNextAccessoryView *)v25 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      accessoryView = self->_accessoryView;
      self->_accessoryView = v26;

      v28 = self->_accessoryView;
      v29 = [v3 descriptionAccessory];
      [(REUpNextAccessoryView *)v28 configureWithDescription:v29];

      [(REUpNextAccessoryView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      v60 = [(CLKUIColoringLabel *)self->_descriptionLine2Label leadingAnchor];
      v59 = [(REUpNextAccessoryView *)self->_accessoryView trailingAnchor];
      v58 = [v60 constraintEqualToAnchor:v59 constant:*&kActiveLayout_0_4];
      v62[0] = v58;
      v57 = [(REUpNextAccessoryView *)self->_accessoryView leadingAnchor];
      v56 = [(UILayoutGuide *)self->_descriptionTextLayoutGuide leadingAnchor];
      v55 = [v57 constraintEqualToAnchor:v56];
      v62[1] = v55;
      v30 = [(REUpNextAccessoryView *)self->_accessoryView firstBaselineAnchor];
      v31 = [(CLKUIColoringLabel *)self->_descriptionLine2Label firstBaselineAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];
      v62[2] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
      withDescriptionAccessoryConstraints = self->_withDescriptionAccessoryConstraints;
      self->_withDescriptionAccessoryConstraints = v33;
    }

    v35 = [(REUpNextMultilineCell *)self contentView];
    [v35 addSubview:self->_accessoryView];

    [v5 addObjectsFromArray:self->_withoutDescriptionAccessoryConstraints];
    [v4 addObjectsFromArray:self->_withDescriptionAccessoryConstraints];
    goto LABEL_43;
  }

  [v5 addObjectsFromArray:self->_withDescriptionAccessoryConstraints];
  [v4 addObjectsFromArray:self->_withoutDescriptionAccessoryConstraints];
  [(REUpNextAccessoryView *)self->_accessoryView removeFromSuperview];
LABEL_45:
  v37 = [v3 bodyImageProvider];
  if (v37)
  {
    v36 = 1;
  }

  else
  {
    v38 = [v3 overrideBodyImage];
    v36 = v38 != 0;
  }

LABEL_49:
  v39 = [v3 bodyImageShouldStretch];
  v40 = v39;
  if (self->_showingDescriptionImage != v36 || self->_usingStretchableImage != v39)
  {
    self->_showingDescriptionImage = v36;
    self->_usingStretchableImage = v39;
    showingDescriptionImage = self->_showingDescriptionImage;
    if (showingDescriptionImage)
    {
      [v5 addObjectsFromArray:self->_withoutDescriptionImageViewConstraints];
      v43 = v40 == 0;
      if (v40)
      {
        v44 = 250.0;
      }

      else
      {
        v44 = 1000.0;
      }

      if (v40)
      {
        v45 = 0;
      }

      else
      {
        v45 = 6;
      }

      v46 = v3;
      v47 = v5;
      if (v43)
      {
        v48 = &OBJC_IVAR___REUpNextMultilineCell__withStretchableDescriptionImageViewConstraints;
      }

      else
      {
        v48 = &OBJC_IVAR___REUpNextMultilineCell__withDescriptionImageViewConstraints;
      }

      if (v43)
      {
        v49 = &OBJC_IVAR___REUpNextMultilineCell__withDescriptionImageViewConstraints;
      }

      else
      {
        v49 = &OBJC_IVAR___REUpNextMultilineCell__withStretchableDescriptionImageViewConstraints;
      }

      *&v42 = v44;
      [(REUpNextImageView *)self->_descriptionImageView setContentHuggingPriority:1 forAxis:v42];
      *&v50 = v44;
      [(REUpNextImageView *)self->_descriptionImageView setContentCompressionResistancePriority:1 forAxis:v50];
      [(REUpNextImageView *)self->_descriptionImageView setContentMode:v45];
      v51 = *v48;
      v5 = v47;
      v3 = v46;
      v12 = 0x27FED8000;
      [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + v51)];
      [v4 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v49)];
    }

    else
    {
      [v5 addObjectsFromArray:self->_withDescriptionImageViewConstraints];
      [v5 addObjectsFromArray:self->_withStretchableDescriptionImageViewConstraints];
      [v4 addObjectsFromArray:self->_withoutDescriptionImageViewConstraints];
    }

    [(REUpNextImageView *)self->_descriptionImageView setHidden:!showingDescriptionImage];
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:v5];
  [MEMORY[0x277CCAAD0] activateConstraints:v4];
  if (self->_showingThreeLineLayout)
  {
    v52 = 1;
    v53 = 1;
  }

  else if (self->_showingHeaderImage || self->_showingDescriptionImage)
  {
    v53 = 2;
    v52 = 1;
  }

  else
  {
    if (!self->_showingHeader)
    {
      v53 = 3;
      goto LABEL_73;
    }

    v52 = 2;
    v53 = 2;
  }

  [*(&self->super.super.super.super.super.super.isa + *(v12 + 884)) setNumberOfLines:v52];
LABEL_73:
  [(CLKUIColoringLabel *)self->_descriptionLine1Label setNumberOfLines:v53];
  v61.receiver = self;
  v61.super_class = REUpNextMultilineCell;
  [(REUpNextMultilineCell *)&v61 updateConstraints];

  v54 = *MEMORY[0x277D85DE8];
}

- (void)configureWithContent:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = REUpNextMultilineCell;
  [(REUpNextBaseCell *)&v30 configureWithContent:v4];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__REUpNextMultilineCell_configureWithContent___block_invoke;
  v29[3] = &unk_279AF61C0;
  v29[4] = self;
  v5 = MEMORY[0x2667182D0](v29);
  (v5)[2](v5, self->_descriptionLine1Label, [v4 description1FontStyle]);
  (v5)[2](v5, self->_descriptionLine2Label, [v4 description2FontStyle]);
  [(REUpNextMultilineCell *)self _updateHeaderColor];
  headerImage = self->_headerImage;
  v7 = [v4 tintColor];
  [(REUpNextImageView *)headerImage setFallbackTintColor:v7];

  v8 = [v4 headerImageProvider];

  if (v8)
  {
    v9 = self->_headerImage;
    v10 = [v4 headerImageProvider];
    [(REUpNextImageView *)v9 setImageProvider:v10];
  }

  else
  {
    v11 = [v4 overrideHeaderImage];

    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = self->_headerImage;
    v10 = [v4 overrideHeaderImage];
    [(REUpNextImageView *)v12 setOverrideImage:v10];
  }

LABEL_6:
  descriptionImageView = self->_descriptionImageView;
  v14 = [v4 tintColor];
  [(REUpNextImageView *)descriptionImageView setFallbackTintColor:v14];

  v15 = [v4 bodyImageProvider];

  if (v15)
  {
    v16 = self->_descriptionImageView;
    v17 = [v4 bodyImageProvider];
    [(REUpNextImageView *)v16 setImageProvider:v17];
LABEL_10:

    goto LABEL_11;
  }

  v18 = [v4 overrideBodyImage];

  if (v18)
  {
    v19 = self->_descriptionImageView;
    v17 = [v4 overrideBodyImage];
    [(REUpNextImageView *)v19 setOverrideImage:v17];
    goto LABEL_10;
  }

LABEL_11:
  headerLabel = self->_headerLabel;
  v21 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:v21];

  descriptionLine1Label = self->_descriptionLine1Label;
  v23 = [v4 description1TextProvider];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextProvider:v23];

  descriptionLine2Label = self->_descriptionLine2Label;
  v25 = [v4 description2TextProvider];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextProvider:v25];

  v26 = [v4 headerTextProvider];
  [v26 setPaused:0];

  v27 = [v4 description1TextProvider];
  [v27 setPaused:0];

  v28 = [v4 description2TextProvider];
  [v28 setPaused:0];

  [(REUpNextMultilineCell *)self setNeedsUpdateConstraints];
}

void __46__REUpNextMultilineCell_configureWithContent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0.0;
  v8 = v5;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = &OBJC_IVAR___REUpNextMultilineCell__boldFont;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v7 = &OBJC_IVAR___REUpNextMultilineCell__standardFont;
      v6 = 0.8;
    }
  }

  else
  {
    v7 = &OBJC_IVAR___REUpNextMultilineCell__standardFont;
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      if (!REIsCurrentLocaleCJK())
      {
        v7 = &OBJC_IVAR___REUpNextMultilineCell__italicFont;
      }
    }
  }

  [v8 setFont:*(*(a1 + 32) + *v7)];
  v5 = v8;
LABEL_12:
  [v5 setMinimumScaleFactor:v6];
  [v8 setAdjustsFontSizeToFitWidth:v6 != 0.0];
}

@end
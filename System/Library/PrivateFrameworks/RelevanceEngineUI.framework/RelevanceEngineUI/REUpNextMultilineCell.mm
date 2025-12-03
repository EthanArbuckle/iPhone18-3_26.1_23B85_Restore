@interface REUpNextMultilineCell
+ (void)initialize;
- (REUpNextMultilineCell)initWithFrame:(CGRect)frame;
- (void)_updateHeaderColor;
- (void)configureWithContent:(id)content;
- (void)defaultTextColorDidChange;
- (void)updateConstraints;
@end

@implementation REUpNextMultilineCell

+ (void)initialize
{
  if (objc_opt_class() == self)
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

- (REUpNextMultilineCell)initWithFrame:(CGRect)frame
{
  v225[14] = *MEMORY[0x277D85DE8];
  v213.receiver = self;
  v213.super_class = REUpNextMultilineCell;
  v3 = [(REUpNextBaseCell *)&v213 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_2];
    fontDescriptor = [v4 fontDescriptor];
    v211 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

    v6 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_2];
    fontDescriptor2 = [v6 fontDescriptor];
    v210 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:2];

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
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v16 setTextColor:whiteColor];

    v18 = __39__REUpNextMultilineCell_initWithFrame___block_invoke();
    descriptionLine1Label = v3->_descriptionLine1Label;
    v3->_descriptionLine1Label = v18;

    v20 = v3->_descriptionLine1Label;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v20 setTextColor:whiteColor2];

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
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v25 setTextColor:whiteColor3];

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

    contentView = [(REUpNextMultilineCell *)v3 contentView];
    [contentView addLayoutGuide:v3->_contentLayoutGuide];

    contentView2 = [(REUpNextMultilineCell *)v3 contentView];
    [contentView2 addLayoutGuide:v3->_descriptionTextLayoutGuide];

    contentView3 = [(REUpNextMultilineCell *)v3 contentView];
    [contentView3 addLayoutGuide:v3->_bodyImageSizingLayoutGuide];

    contentView4 = [(REUpNextMultilineCell *)v3 contentView];
    [contentView4 addSubview:v3->_headerImage];

    contentView5 = [(REUpNextMultilineCell *)v3 contentView];
    [contentView5 addSubview:v3->_headerLabel];

    contentView6 = [(REUpNextMultilineCell *)v3 contentView];
    [contentView6 addSubview:v3->_descriptionLine1Label];

    contentView7 = [(REUpNextMultilineCell *)v3 contentView];
    [contentView7 addSubview:v3->_descriptionLine2Label];

    contentView8 = [(REUpNextMultilineCell *)v3 contentView];
    [contentView8 addSubview:v3->_descriptionImageView];

    [(CLKFont *)v3->_boldFont capHeight];
    UIRoundToViewScale();
    v60 = v59;
    topAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    contentView9 = [(REUpNextMultilineCell *)v3 contentView];
    topAnchor2 = [contentView9 topAnchor];
    v201 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v225[0] = v201;
    bottomAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    contentView10 = [(REUpNextMultilineCell *)v3 contentView];
    bottomAnchor2 = [contentView10 bottomAnchor];
    v197 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
    v225[1] = v197;
    leadingAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    contentView11 = [(REUpNextMultilineCell *)v3 contentView];
    leadingAnchor2 = [contentView11 leadingAnchor];
    v193 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&kActiveLayout_13];
    v225[2] = v193;
    trailingAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    contentView12 = [(REUpNextMultilineCell *)v3 contentView];
    trailingAnchor2 = [contentView12 trailingAnchor];
    v189 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-*&kActiveLayout_15];
    v225[3] = v189;
    trailingAnchor3 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v186 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v225[4] = v186;
    bottomAnchor3 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide bottomAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v183 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-*&kActiveLayout_6_1];
    v225[5] = v183;
    centerYAnchor = [(REUpNextImageView *)v3->_headerImage centerYAnchor];
    firstBaselineAnchor = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v180 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-v60];
    v225[6] = v180;
    leadingAnchor3 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v177 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v225[7] = v177;
    trailingAnchor5 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label trailingAnchor];
    trailingAnchor6 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide trailingAnchor];
    v174 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v225[8] = v174;
    trailingAnchor7 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label trailingAnchor];
    trailingAnchor8 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide trailingAnchor];
    v171 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v225[9] = v171;
    leadingAnchor5 = [(REUpNextImageView *)v3->_descriptionImageView leadingAnchor];
    leadingAnchor6 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v168 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:*&kActiveLayout_8_1];
    v225[10] = v168;
    leadingAnchor7 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide leadingAnchor];
    leadingAnchor8 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v63 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v225[11] = v63;
    trailingAnchor9 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide trailingAnchor];
    trailingAnchor10 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide trailingAnchor];
    v66 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v225[12] = v66;
    topAnchor3 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide topAnchor];
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    [(CLKFont *)v3->_standardFont capHeight];
    v70 = [topAnchor3 constraintEqualToAnchor:firstBaselineAnchor2 constant:-(v69 + *&kActiveLayout_11_0)];
    v225[13] = v70;
    v208 = [MEMORY[0x277CBEA60] arrayWithObjects:v225 count:14];

    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    topAnchor4 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v73 = [firstBaselineAnchor3 constraintEqualToAnchor:topAnchor4 constant:*&kActiveLayout_2_4];
    v224[0] = v73;
    topAnchor5 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide topAnchor];
    topAnchor6 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v76 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v224[1] = v76;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v224 count:2];
    withoutHeaderConstraints = v3->_withoutHeaderConstraints;
    v3->_withoutHeaderConstraints = v77;

    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    lastBaselineAnchor = [(CLKUIColoringLabel *)v3->_headerLabel lastBaselineAnchor];
    v80 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor constant:*&kActiveLayout_2_4];
    v223[0] = v80;
    firstBaselineAnchor5 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    topAnchor7 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v83 = [firstBaselineAnchor5 constraintEqualToAnchor:topAnchor7 constant:*&kActiveLayout_1_4];
    v223[1] = v83;
    topAnchor8 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide topAnchor];
    lastBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_headerLabel lastBaselineAnchor];
    v86 = [topAnchor8 constraintEqualToAnchor:lastBaselineAnchor2];
    v223[2] = v86;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v223 count:3];
    withHeaderConstraints = v3->_withHeaderConstraints;
    v3->_withHeaderConstraints = v87;

    leadingAnchor9 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    leadingAnchor10 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v91 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
    v222[0] = v91;
    trailingAnchor11 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    trailingAnchor12 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v94 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v222[1] = v94;
    v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v222 count:2];
    headerWithNoImageConstraints = v3->_headerWithNoImageConstraints;
    v3->_headerWithNoImageConstraints = v95;

    leadingAnchor11 = [(REUpNextImageView *)v3->_headerImage leadingAnchor];
    leadingAnchor12 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v99 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v221[0] = v99;
    leadingAnchor13 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    trailingAnchor13 = [(REUpNextImageView *)v3->_headerImage trailingAnchor];
    v102 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor13 constant:*&kActiveLayout_4_2];
    v221[1] = v102;
    trailingAnchor14 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    trailingAnchor15 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v105 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
    v221[2] = v105;
    v106 = [MEMORY[0x277CBEA60] arrayWithObjects:v221 count:3];
    headerWithLeftImageConstraints = v3->_headerWithLeftImageConstraints;
    v3->_headerWithLeftImageConstraints = v106;

    leadingAnchor14 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    leadingAnchor15 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v110 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15];
    v220[0] = v110;
    trailingAnchor16 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    leadingAnchor16 = [(REUpNextImageView *)v3->_headerImage leadingAnchor];
    v113 = [trailingAnchor16 constraintEqualToAnchor:leadingAnchor16 constant:-*&kActiveLayout_4_2];
    v220[1] = v113;
    trailingAnchor17 = [(REUpNextImageView *)v3->_headerImage trailingAnchor];
    trailingAnchor18 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v116 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18];
    v220[2] = v116;
    v117 = [MEMORY[0x277CBEA60] arrayWithObjects:v220 count:3];
    headerWithRightImageConstraints = v3->_headerWithRightImageConstraints;
    v3->_headerWithRightImageConstraints = v117;

    firstBaselineAnchor6 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label firstBaselineAnchor];
    lastBaselineAnchor3 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    v119 = [firstBaselineAnchor6 constraintEqualToAnchor:lastBaselineAnchor3 constant:*&kActiveLayout_3_2];
    v219[0] = v119;
    lastBaselineAnchor4 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label lastBaselineAnchor];
    bottomAnchor5 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide bottomAnchor];
    v122 = [lastBaselineAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v219[1] = v122;
    bottomAnchor6 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide bottomAnchor];
    lastBaselineAnchor5 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label lastBaselineAnchor];
    v125 = [bottomAnchor6 constraintEqualToAnchor:lastBaselineAnchor5 constant:*&kActiveLayout_11_0];
    v219[2] = v125;
    v126 = [MEMORY[0x277CBEA60] arrayWithObjects:v219 count:3];
    withDescription2Constraints = v3->_withDescription2Constraints;
    v3->_withDescription2Constraints = v126;

    lastBaselineAnchor6 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    bottomAnchor7 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide bottomAnchor];
    v130 = [lastBaselineAnchor6 constraintLessThanOrEqualToAnchor:bottomAnchor7];
    v218[0] = v130;
    bottomAnchor8 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide bottomAnchor];
    lastBaselineAnchor7 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    v133 = [bottomAnchor8 constraintEqualToAnchor:lastBaselineAnchor7 constant:*&kActiveLayout_11_0];
    v218[1] = v133;
    v134 = [MEMORY[0x277CBEA60] arrayWithObjects:v218 count:2];
    withoutDescription2Constraints = v3->_withoutDescription2Constraints;
    v3->_withoutDescription2Constraints = v134;

    leadingAnchor17 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label leadingAnchor];
    leadingAnchor18 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    v138 = [leadingAnchor17 constraintEqualToAnchor:leadingAnchor18];
    v217 = v138;
    v139 = [MEMORY[0x277CBEA60] arrayWithObjects:&v217 count:1];
    withoutDescriptionAccessoryConstraints = v3->_withoutDescriptionAccessoryConstraints;
    v3->_withoutDescriptionAccessoryConstraints = v139;

    heightAnchor = [(REUpNextImageView *)v3->_descriptionImageView heightAnchor];
    v142 = [heightAnchor constraintEqualToConstant:*&kActiveLayout_10_1];
    v216[0] = v142;
    bottomAnchor9 = [(REUpNextImageView *)v3->_descriptionImageView bottomAnchor];
    bottomAnchor10 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v145 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:-*&kActiveLayout_6_1];
    v216[1] = v145;
    leadingAnchor19 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    trailingAnchor19 = [(REUpNextImageView *)v3->_descriptionImageView trailingAnchor];
    v148 = [leadingAnchor19 constraintEqualToAnchor:trailingAnchor19 constant:*&kActiveLayout_7_1];
    v216[2] = v148;
    v149 = [MEMORY[0x277CBEA60] arrayWithObjects:v216 count:3];
    withDescriptionImageViewConstraints = v3->_withDescriptionImageViewConstraints;
    v3->_withDescriptionImageViewConstraints = v149;

    topAnchor9 = [(REUpNextImageView *)v3->_descriptionImageView topAnchor];
    topAnchor10 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide topAnchor];
    v152 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
    v215[0] = v152;
    bottomAnchor11 = [(REUpNextImageView *)v3->_descriptionImageView bottomAnchor];
    bottomAnchor12 = [(UILayoutGuide *)v3->_bodyImageSizingLayoutGuide bottomAnchor];
    v155 = [bottomAnchor11 constraintEqualToAnchor:bottomAnchor12];
    v215[1] = v155;
    leadingAnchor20 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    trailingAnchor20 = [(REUpNextImageView *)v3->_descriptionImageView trailingAnchor];
    v158 = [leadingAnchor20 constraintEqualToAnchor:trailingAnchor20 constant:*&kActiveLayout_7_1];
    v215[2] = v158;
    v159 = [MEMORY[0x277CBEA60] arrayWithObjects:v215 count:3];
    withStretchableDescriptionImageViewConstraints = v3->_withStretchableDescriptionImageViewConstraints;
    v3->_withStretchableDescriptionImageViewConstraints = v159;

    leadingAnchor21 = [(UILayoutGuide *)v3->_descriptionTextLayoutGuide leadingAnchor];
    leadingAnchor22 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v163 = [leadingAnchor21 constraintEqualToAnchor:leadingAnchor22];
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
  content = [(REUpNextBaseCell *)self content];
  if ([content tintColorAffectsHeader])
  {
    shouldOverrideContentHeaderColor = [(REUpNextBaseCell *)self shouldOverrideContentHeaderColor];

    if (!shouldOverrideContentHeaderColor)
    {
      headerLabel = self->_headerLabel;
      content2 = [(REUpNextBaseCell *)self content];
      tintColor = [content2 tintColor];
      [(CLKUIColoringLabel *)headerLabel setTextColor:tintColor];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = self->_headerLabel;
  content2 = [(REUpNextBaseCell *)self defaultTextColor];
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
  defaultTextColor = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextColor:defaultTextColor];

  descriptionLine2Label = self->_descriptionLine2Label;
  defaultTextColor2 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextColor:defaultTextColor2];

  accessoryView = self->_accessoryView;
  defaultTextColor3 = [(REUpNextBaseCell *)self defaultTextColor];
  [(REUpNextAccessoryView *)accessoryView setTextColor:defaultTextColor3];
}

- (void)updateConstraints
{
  v62[3] = *MEMORY[0x277D85DE8];
  content = [(REUpNextBaseCell *)self content];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  description2TextProvider = [content description2TextProvider];
  v7 = description2TextProvider != 0;

  if (self->_showingThreeLineLayout != v7)
  {
    self->_showingThreeLineLayout = v7;
    [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:description2TextProvider == 0];
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

  headerTextProvider = [content headerTextProvider];
  v11 = headerTextProvider != 0;

  v12 = 0x27FED8000uLL;
  if (self->_showingHeader != v11)
  {
    self->_showingHeader = v11;
    [(CLKUIColoringLabel *)self->_headerLabel setHidden:headerTextProvider == 0];
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

  headerImageProvider = [content headerImageProvider];
  if (!headerImageProvider)
  {
    overrideHeaderImage = [content overrideHeaderImage];
    if (overrideHeaderImage)
    {
      v17 = headerTextProvider == 0;
    }

    else
    {
      v17 = 1;
    }

    v11 = !v17;
  }

  headerImageEdge = [content headerImageEdge];
  if (self->_showingHeaderImage != v11 || headerImageEdge != self->_headerImageEdge)
  {
    self->_showingHeaderImage = v11;
    self->_headerImageEdge = headerImageEdge;
    headerImage = self->_headerImage;
    if (v11)
    {
      [(REUpNextImageView *)headerImage setHidden:0];
      [v5 addObjectsFromArray:self->_headerWithNoImageConstraints];
      headerImageEdge2 = [content headerImageEdge];
      if (headerImageEdge2 == 2)
      {
        v21 = &OBJC_IVAR___REUpNextMultilineCell__headerWithLeftImageConstraints;
      }

      else
      {
        v21 = &OBJC_IVAR___REUpNextMultilineCell__headerWithRightImageConstraints;
      }

      if (headerImageEdge2 == 2)
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

  descriptionAccessory = [content descriptionAccessory];
  v24 = descriptionAccessory != 0;

  if (self->_showingAccessory == v24)
  {
    if (!descriptionAccessory)
    {
      goto LABEL_45;
    }

LABEL_43:
    v36 = 0;
    goto LABEL_49;
  }

  self->_showingAccessory = v24;
  if (descriptionAccessory)
  {
    if (!self->_accessoryView)
    {
      v25 = [REUpNextAccessoryView alloc];
      v26 = [(REUpNextAccessoryView *)v25 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      accessoryView = self->_accessoryView;
      self->_accessoryView = v26;

      v28 = self->_accessoryView;
      descriptionAccessory2 = [content descriptionAccessory];
      [(REUpNextAccessoryView *)v28 configureWithDescription:descriptionAccessory2];

      [(REUpNextAccessoryView *)self->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingAnchor = [(CLKUIColoringLabel *)self->_descriptionLine2Label leadingAnchor];
      trailingAnchor = [(REUpNextAccessoryView *)self->_accessoryView trailingAnchor];
      v58 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:*&kActiveLayout_0_4];
      v62[0] = v58;
      leadingAnchor2 = [(REUpNextAccessoryView *)self->_accessoryView leadingAnchor];
      leadingAnchor3 = [(UILayoutGuide *)self->_descriptionTextLayoutGuide leadingAnchor];
      v55 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
      v62[1] = v55;
      firstBaselineAnchor = [(REUpNextAccessoryView *)self->_accessoryView firstBaselineAnchor];
      firstBaselineAnchor2 = [(CLKUIColoringLabel *)self->_descriptionLine2Label firstBaselineAnchor];
      v32 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
      v62[2] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
      withDescriptionAccessoryConstraints = self->_withDescriptionAccessoryConstraints;
      self->_withDescriptionAccessoryConstraints = v33;
    }

    contentView = [(REUpNextMultilineCell *)self contentView];
    [contentView addSubview:self->_accessoryView];

    [v5 addObjectsFromArray:self->_withoutDescriptionAccessoryConstraints];
    [v4 addObjectsFromArray:self->_withDescriptionAccessoryConstraints];
    goto LABEL_43;
  }

  [v5 addObjectsFromArray:self->_withDescriptionAccessoryConstraints];
  [v4 addObjectsFromArray:self->_withoutDescriptionAccessoryConstraints];
  [(REUpNextAccessoryView *)self->_accessoryView removeFromSuperview];
LABEL_45:
  bodyImageProvider = [content bodyImageProvider];
  if (bodyImageProvider)
  {
    v36 = 1;
  }

  else
  {
    overrideBodyImage = [content overrideBodyImage];
    v36 = overrideBodyImage != 0;
  }

LABEL_49:
  bodyImageShouldStretch = [content bodyImageShouldStretch];
  v40 = bodyImageShouldStretch;
  if (self->_showingDescriptionImage != v36 || self->_usingStretchableImage != bodyImageShouldStretch)
  {
    self->_showingDescriptionImage = v36;
    self->_usingStretchableImage = bodyImageShouldStretch;
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

      v46 = content;
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
      content = v46;
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

- (void)configureWithContent:(id)content
{
  contentCopy = content;
  v30.receiver = self;
  v30.super_class = REUpNextMultilineCell;
  [(REUpNextBaseCell *)&v30 configureWithContent:contentCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__REUpNextMultilineCell_configureWithContent___block_invoke;
  v29[3] = &unk_279AF61C0;
  v29[4] = self;
  v5 = MEMORY[0x2667182D0](v29);
  (v5)[2](v5, self->_descriptionLine1Label, [contentCopy description1FontStyle]);
  (v5)[2](v5, self->_descriptionLine2Label, [contentCopy description2FontStyle]);
  [(REUpNextMultilineCell *)self _updateHeaderColor];
  headerImage = self->_headerImage;
  tintColor = [contentCopy tintColor];
  [(REUpNextImageView *)headerImage setFallbackTintColor:tintColor];

  headerImageProvider = [contentCopy headerImageProvider];

  if (headerImageProvider)
  {
    v9 = self->_headerImage;
    headerImageProvider2 = [contentCopy headerImageProvider];
    [(REUpNextImageView *)v9 setImageProvider:headerImageProvider2];
  }

  else
  {
    overrideHeaderImage = [contentCopy overrideHeaderImage];

    if (!overrideHeaderImage)
    {
      goto LABEL_6;
    }

    v12 = self->_headerImage;
    headerImageProvider2 = [contentCopy overrideHeaderImage];
    [(REUpNextImageView *)v12 setOverrideImage:headerImageProvider2];
  }

LABEL_6:
  descriptionImageView = self->_descriptionImageView;
  tintColor2 = [contentCopy tintColor];
  [(REUpNextImageView *)descriptionImageView setFallbackTintColor:tintColor2];

  bodyImageProvider = [contentCopy bodyImageProvider];

  if (bodyImageProvider)
  {
    v16 = self->_descriptionImageView;
    bodyImageProvider2 = [contentCopy bodyImageProvider];
    [(REUpNextImageView *)v16 setImageProvider:bodyImageProvider2];
LABEL_10:

    goto LABEL_11;
  }

  overrideBodyImage = [contentCopy overrideBodyImage];

  if (overrideBodyImage)
  {
    v19 = self->_descriptionImageView;
    bodyImageProvider2 = [contentCopy overrideBodyImage];
    [(REUpNextImageView *)v19 setOverrideImage:bodyImageProvider2];
    goto LABEL_10;
  }

LABEL_11:
  headerLabel = self->_headerLabel;
  headerTextProvider = [contentCopy headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:headerTextProvider];

  descriptionLine1Label = self->_descriptionLine1Label;
  description1TextProvider = [contentCopy description1TextProvider];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextProvider:description1TextProvider];

  descriptionLine2Label = self->_descriptionLine2Label;
  description2TextProvider = [contentCopy description2TextProvider];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextProvider:description2TextProvider];

  headerTextProvider2 = [contentCopy headerTextProvider];
  [headerTextProvider2 setPaused:0];

  description1TextProvider2 = [contentCopy description1TextProvider];
  [description1TextProvider2 setPaused:0];

  description2TextProvider2 = [contentCopy description2TextProvider];
  [description2TextProvider2 setPaused:0];

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
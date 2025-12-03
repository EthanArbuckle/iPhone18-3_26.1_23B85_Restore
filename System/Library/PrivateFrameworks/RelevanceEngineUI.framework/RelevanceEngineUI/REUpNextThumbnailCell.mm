@interface REUpNextThumbnailCell
+ (void)initialize;
- (REUpNextThumbnailCell)initWithFrame:(CGRect)frame;
- (void)configureWithContent:(id)content;
- (void)defaultTextColorDidChange;
- (void)updateConstraints;
@end

@implementation REUpNextThumbnailCell

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    kActiveLayout_1_0 = 0x4033800000000000;
    kActiveLayout_2_0 = 0x4033800000000000;
    kActiveLayout_3_0 = 0x4033800000000000;
    kActiveLayout_4_0 = 0x4018000000000000;
    kActiveLayout_5_0 = 0x4030800000000000;
    kActiveLayout_6_0 = 0x401E000000000000;
    kActiveLayout_9 = 0x4018000000000000;
    kActiveLayout_11 = 0x4018000000000000;
    kActiveLayout_0_0 = 0x4000000000000000;
    kActiveLayout_7_0 = 0x4050600000000000;
  }
}

- (REUpNextThumbnailCell)initWithFrame:(CGRect)frame
{
  v125[14] = *MEMORY[0x277D85DE8];
  v120.receiver = self;
  v120.super_class = REUpNextThumbnailCell;
  v3 = [(REUpNextBaseCell *)&v120 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_0];
    fontDescriptor = [v4 fontDescriptor];
    v118 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];

    v6 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_0];
    fontDescriptor2 = [v6 fontDescriptor];
    v119 = [fontDescriptor2 fontDescriptorWithSymbolicTraits:2];

    v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_0 weight:*MEMORY[0x277D74410]];
    standardFont = v3->_standardFont;
    v3->_standardFont = v8;

    v10 = [MEMORY[0x277CBBB08] fontWithDescriptor:v119 size:*&kActiveLayout_5_0];
    boldFont = v3->_boldFont;
    v3->_boldFont = v10;

    v12 = [MEMORY[0x277CBBB08] fontWithDescriptor:v118 size:*&kActiveLayout_5_0];
    italicFont = v3->_italicFont;
    v3->_italicFont = v12;

    v14 = objc_alloc_init(MEMORY[0x277D74240]);
    [v14 setLineBreakMode:4];
    v15 = __39__REUpNextThumbnailCell_initWithFrame___block_invoke();
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v15;

    [(CLKUIColoringLabel *)v3->_headerLabel setFont:v3->_boldFont];
    v17 = v3->_headerLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v17 setTextColor:whiteColor];

    [(CLKUIColoringLabel *)v3->_headerLabel setNumberOfLines:2];
    v117 = v14;
    [(CLKUIColoringLabel *)v3->_headerLabel setParagraphStyle:v14];
    v19 = __39__REUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine1Label = v3->_descriptionLine1Label;
    v3->_descriptionLine1Label = v19;

    v21 = v3->_descriptionLine1Label;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v21 setTextColor:whiteColor2];

    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setFont:v3->_standardFont];
    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setParagraphStyle:v14];
    v23 = __39__REUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine2Label = v3->_descriptionLine2Label;
    v3->_descriptionLine2Label = v23;

    v25 = v3->_descriptionLine2Label;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v25 setTextColor:whiteColor3];

    [(CLKUIColoringLabel *)v3->_descriptionLine2Label setFont:v3->_italicFont];
    [(CLKUIColoringLabel *)v3->_descriptionLine2Label setNumberOfLines:1];
    v27 = objc_alloc(MEMORY[0x277D755E8]);
    v28 = [v27 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    imageView = v3->_imageView;
    v3->_imageView = v28;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:1];
    layer = [(UIImageView *)v3->_imageView layer];
    [layer setCornerRadius:*&kActiveLayout_0_0];

    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    v31 = objc_alloc_init(MEMORY[0x277D756D0]);
    labelLayoutGuide = v3->_labelLayoutGuide;
    v3->_labelLayoutGuide = v31;

    contentView = [(REUpNextThumbnailCell *)v3 contentView];
    [contentView addLayoutGuide:v3->_labelLayoutGuide];

    contentView2 = [(REUpNextThumbnailCell *)v3 contentView];
    [contentView2 addSubview:v3->_imageView];

    contentView3 = [(REUpNextThumbnailCell *)v3 contentView];
    [contentView3 addSubview:v3->_headerLabel];

    contentView4 = [(REUpNextThumbnailCell *)v3 contentView];
    [contentView4 addSubview:v3->_descriptionLine1Label];

    contentView5 = [(REUpNextThumbnailCell *)v3 contentView];
    [contentView5 addSubview:v3->_descriptionLine2Label];

    widthAnchor = [(UIImageView *)v3->_imageView widthAnchor];
    v39 = [widthAnchor constraintEqualToConstant:1.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v39;

    heightAnchor = [(UIImageView *)v3->_imageView heightAnchor];
    v42 = [heightAnchor constraintEqualToConstant:1.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v42;

    leadingAnchor = [(UIImageView *)v3->_imageView leadingAnchor];
    contentView6 = [(REUpNextThumbnailCell *)v3 contentView];
    leadingAnchor2 = [contentView6 leadingAnchor];
    v112 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&kActiveLayout_4_0];
    v125[0] = v112;
    centerYAnchor = [(UIImageView *)v3->_imageView centerYAnchor];
    contentView7 = [(REUpNextThumbnailCell *)v3 contentView];
    centerYAnchor2 = [contentView7 centerYAnchor];
    v108 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v125[1] = v108;
    topAnchor = [(UILayoutGuide *)v3->_labelLayoutGuide topAnchor];
    contentView8 = [(REUpNextThumbnailCell *)v3 contentView];
    topAnchor2 = [contentView8 topAnchor];
    v104 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v125[2] = v104;
    bottomAnchor = [(UILayoutGuide *)v3->_labelLayoutGuide bottomAnchor];
    contentView9 = [(REUpNextThumbnailCell *)v3 contentView];
    bottomAnchor2 = [contentView9 bottomAnchor];
    v100 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
    v125[3] = v100;
    leadingAnchor3 = [(UILayoutGuide *)v3->_labelLayoutGuide leadingAnchor];
    trailingAnchor = [(UIImageView *)v3->_imageView trailingAnchor];
    v97 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:*&kActiveLayout_9];
    v125[4] = v97;
    trailingAnchor2 = [(UILayoutGuide *)v3->_labelLayoutGuide trailingAnchor];
    contentView10 = [(REUpNextThumbnailCell *)v3 contentView];
    trailingAnchor3 = [contentView10 trailingAnchor];
    v93 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-*&kActiveLayout_11];
    v125[5] = v93;
    leadingAnchor4 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    leadingAnchor5 = [(UILayoutGuide *)v3->_labelLayoutGuide leadingAnchor];
    v90 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v125[6] = v90;
    trailingAnchor4 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    trailingAnchor5 = [(UILayoutGuide *)v3->_labelLayoutGuide trailingAnchor];
    v87 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v125[7] = v87;
    leadingAnchor6 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label leadingAnchor];
    leadingAnchor7 = [(UILayoutGuide *)v3->_labelLayoutGuide leadingAnchor];
    v84 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v125[8] = v84;
    trailingAnchor6 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label trailingAnchor];
    trailingAnchor7 = [(UILayoutGuide *)v3->_labelLayoutGuide trailingAnchor];
    v46 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v125[9] = v46;
    leadingAnchor8 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label leadingAnchor];
    leadingAnchor9 = [(UILayoutGuide *)v3->_labelLayoutGuide leadingAnchor];
    v49 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v125[10] = v49;
    trailingAnchor8 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label trailingAnchor];
    trailingAnchor9 = [(UILayoutGuide *)v3->_labelLayoutGuide trailingAnchor];
    v52 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v125[11] = v52;
    v125[12] = v3->_imageHeightConstraint;
    v125[13] = v3->_imageWidthConstraint;
    v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:14];

    firstBaselineAnchor = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    topAnchor3 = [(UILayoutGuide *)v3->_labelLayoutGuide topAnchor];
    v55 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:*&kActiveLayout_1_0];
    v124 = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
    withoutHeaderConstraints = v3->_withoutHeaderConstraints;
    v3->_withoutHeaderConstraints = v56;

    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    topAnchor4 = [(UILayoutGuide *)v3->_labelLayoutGuide topAnchor];
    v60 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor4 constant:*&kActiveLayout_1_0];
    v123[0] = v60;
    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    lastBaselineAnchor = [(CLKUIColoringLabel *)v3->_headerLabel lastBaselineAnchor];
    v63 = [firstBaselineAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:*&kActiveLayout_2_0];
    v123[1] = v63;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
    withHeaderConstraints = v3->_withHeaderConstraints;
    v3->_withHeaderConstraints = v64;

    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label firstBaselineAnchor];
    lastBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    v68 = [firstBaselineAnchor4 constraintEqualToAnchor:lastBaselineAnchor2 constant:*&kActiveLayout_3_0];
    v122[0] = v68;
    lastBaselineAnchor3 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label lastBaselineAnchor];
    bottomAnchor3 = [(UILayoutGuide *)v3->_labelLayoutGuide bottomAnchor];
    v71 = [lastBaselineAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:-*&kActiveLayout_6_0];
    v122[1] = v71;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:2];
    withDescription2Constraints = v3->_withDescription2Constraints;
    v3->_withDescription2Constraints = v72;

    lastBaselineAnchor4 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v3->_labelLayoutGuide bottomAnchor];
    v76 = [lastBaselineAnchor4 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-*&kActiveLayout_6_0];
    v121[0] = v76;
    lastBaselineAnchor5 = [(CLKUIColoringLabel *)v3->_headerLabel lastBaselineAnchor];
    bottomAnchor5 = [(UILayoutGuide *)v3->_labelLayoutGuide bottomAnchor];
    v79 = [lastBaselineAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor5 constant:-*&kActiveLayout_6_0];
    v121[1] = v79;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v121 count:2];
    withoutDescription2Constraints = v3->_withoutDescription2Constraints;
    v3->_withoutDescription2Constraints = v80;

    [MEMORY[0x277CCAAD0] activateConstraints:v3->_withoutDescription2Constraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v3->_withoutHeaderConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v116];
    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setNumberOfLines:3];
    [(CLKUIColoringLabel *)v3->_headerLabel setHidden:1];
    [(CLKUIColoringLabel *)v3->_descriptionLine2Label setHidden:1];
  }

  v82 = *MEMORY[0x277D85DE8];
  return v3;
}

id __39__REUpNextThumbnailCell_initWithFrame___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CFA760]);
  v1 = [v0 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setLineBreakMode:4];
  [v1 setNowProvider:&__block_literal_global_5];

  return v1;
}

- (void)defaultTextColorDidChange
{
  v11.receiver = self;
  v11.super_class = REUpNextThumbnailCell;
  [(REUpNextBaseCell *)&v11 defaultTextColorDidChange];
  headerLabel = self->_headerLabel;
  defaultTextColor = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)headerLabel setTextColor:defaultTextColor];

  descriptionLine1Label = self->_descriptionLine1Label;
  defaultTextColor2 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextColor:defaultTextColor2];

  descriptionLine2Label = self->_descriptionLine2Label;
  defaultTextColor3 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextColor:defaultTextColor3];

  imageView = self->_imageView;
  defaultTextColor4 = [(REUpNextBaseCell *)self defaultTextColor];
  [(UIImageView *)imageView setTintColor:defaultTextColor4];
}

- (void)updateConstraints
{
  content = [(REUpNextBaseCell *)self content];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = *&kActiveLayout_7_0 - (*&kActiveLayout_4_0 * 2.0 + 0.0 + 0.0);
  overrideBodyImage = [content overrideBodyImage];
  [overrideBodyImage size];
  v10 = v9;
  if (v9 <= v8 || v9 <= v6)
  {
    if (v8 >= v9 && v8 > v6)
    {
      v10 = v6 * (v9 / v8);
      v8 = v6;
    }
  }

  else
  {
    v8 = v6 * (v8 / v9);
    v10 = v6;
  }

  [(NSLayoutConstraint *)self->_imageWidthConstraint setConstant:v8];
  [(NSLayoutConstraint *)self->_imageHeightConstraint setConstant:v10];
  description2TextProvider = [content description2TextProvider];
  v12 = description2TextProvider != 0;

  if (self->_showingThreeLineLayout != v12)
  {
    self->_showingThreeLineLayout = v12;
    [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:description2TextProvider == 0];
    if (self->_showingThreeLineLayout)
    {
      v13 = &OBJC_IVAR___REUpNextThumbnailCell__withoutDescription2Constraints;
    }

    else
    {
      v13 = &OBJC_IVAR___REUpNextThumbnailCell__withDescription2Constraints;
    }

    if (self->_showingThreeLineLayout)
    {
      v14 = &OBJC_IVAR___REUpNextThumbnailCell__withDescription2Constraints;
    }

    else
    {
      v14 = &OBJC_IVAR___REUpNextThumbnailCell__withoutDescription2Constraints;
    }

    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v13)];
    [v4 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v14)];
  }

  headerTextProvider = [content headerTextProvider];
  v16 = headerTextProvider != 0;

  if (self->_showingHeader != v16)
  {
    v17 = headerTextProvider == 0;
    v18 = headerTextProvider == 0;
    self->_showingHeader = v16;
    if (headerTextProvider)
    {
      v19 = &OBJC_IVAR___REUpNextThumbnailCell__withoutHeaderConstraints;
    }

    else
    {
      v19 = &OBJC_IVAR___REUpNextThumbnailCell__withHeaderConstraints;
    }

    if (v17)
    {
      v20 = &OBJC_IVAR___REUpNextThumbnailCell__withoutHeaderConstraints;
    }

    else
    {
      v20 = &OBJC_IVAR___REUpNextThumbnailCell__withHeaderConstraints;
    }

    [(CLKUIColoringLabel *)self->_headerLabel setHidden:v18];
    [v5 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v19)];
    [v4 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v20)];
  }

  if (!self->_showingThreeLineLayout)
  {
    if (self->_showingHeader)
    {
      description1TextProvider = [content description1TextProvider];

      headerLabel = self->_headerLabel;
      if (description1TextProvider)
      {
        [(CLKUIColoringLabel *)headerLabel setNumberOfLines:2];
        headerLabel = self->_descriptionLine1Label;
        v22 = 2;
        goto LABEL_30;
      }
    }

    else
    {
      headerLabel = self->_descriptionLine1Label;
    }

    v22 = 3;
    goto LABEL_30;
  }

  [(CLKUIColoringLabel *)self->_headerLabel setNumberOfLines:1];
  headerLabel = self->_descriptionLine1Label;
  v22 = 1;
LABEL_30:
  [(CLKUIColoringLabel *)headerLabel setNumberOfLines:v22];
  [MEMORY[0x277CCAAD0] deactivateConstraints:v5];
  [MEMORY[0x277CCAAD0] activateConstraints:v4];
  v24.receiver = self;
  v24.super_class = REUpNextThumbnailCell;
  [(REUpNextThumbnailCell *)&v24 updateConstraints];
}

- (void)configureWithContent:(id)content
{
  v18.receiver = self;
  v18.super_class = REUpNextThumbnailCell;
  contentCopy = content;
  [(REUpNextBaseCell *)&v18 configureWithContent:contentCopy];
  headerLabel = self->_headerLabel;
  headerTextProvider = [contentCopy headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:headerTextProvider];

  descriptionLine1Label = self->_descriptionLine1Label;
  description1TextProvider = [contentCopy description1TextProvider];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextProvider:description1TextProvider];

  descriptionLine2Label = self->_descriptionLine2Label;
  description2TextProvider = [contentCopy description2TextProvider];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextProvider:description2TextProvider];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__REUpNextThumbnailCell_configureWithContent___block_invoke;
  v17[3] = &unk_279AF61C0;
  v17[4] = self;
  v11 = MEMORY[0x2667182D0](v17);
  (v11)[2](v11, self->_headerLabel, [contentCopy headerFontStyle]);
  (v11)[2](v11, self->_descriptionLine1Label, [contentCopy description1FontStyle]);
  (v11)[2](v11, self->_descriptionLine2Label, [contentCopy description2FontStyle]);
  imageView = self->_imageView;
  overrideBodyImage = [contentCopy overrideBodyImage];
  [(UIImageView *)imageView setImage:overrideBodyImage];

  headerTextProvider2 = [contentCopy headerTextProvider];
  [headerTextProvider2 setPaused:0];

  description1TextProvider2 = [contentCopy description1TextProvider];
  [description1TextProvider2 setPaused:0];

  description2TextProvider2 = [contentCopy description2TextProvider];

  [description2TextProvider2 setPaused:0];
  [(REUpNextThumbnailCell *)self setNeedsUpdateConstraints];
}

void __46__REUpNextThumbnailCell_configureWithContent___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = 0.0;
  v8 = v5;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v7 = &OBJC_IVAR___REUpNextThumbnailCell__boldFont;
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_12;
      }

      v7 = &OBJC_IVAR___REUpNextThumbnailCell__standardFont;
      v6 = 0.8;
    }
  }

  else
  {
    v7 = &OBJC_IVAR___REUpNextThumbnailCell__standardFont;
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      if (!REIsCurrentLocaleCJK())
      {
        v7 = &OBJC_IVAR___REUpNextThumbnailCell__italicFont;
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
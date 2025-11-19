@interface REUpNextThumbnailCell
+ (void)initialize;
- (REUpNextThumbnailCell)initWithFrame:(CGRect)a3;
- (void)configureWithContent:(id)a3;
- (void)defaultTextColorDidChange;
- (void)updateConstraints;
@end

@implementation REUpNextThumbnailCell

+ (void)initialize
{
  if (objc_opt_class() == a1)
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

- (REUpNextThumbnailCell)initWithFrame:(CGRect)a3
{
  v125[14] = *MEMORY[0x277D85DE8];
  v120.receiver = self;
  v120.super_class = REUpNextThumbnailCell;
  v3 = [(REUpNextBaseCell *)&v120 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_0];
    v5 = [v4 fontDescriptor];
    v118 = [v5 fontDescriptorWithSymbolicTraits:1];

    v6 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5_0];
    v7 = [v6 fontDescriptor];
    v119 = [v7 fontDescriptorWithSymbolicTraits:2];

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
    v18 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v17 setTextColor:v18];

    [(CLKUIColoringLabel *)v3->_headerLabel setNumberOfLines:2];
    v117 = v14;
    [(CLKUIColoringLabel *)v3->_headerLabel setParagraphStyle:v14];
    v19 = __39__REUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine1Label = v3->_descriptionLine1Label;
    v3->_descriptionLine1Label = v19;

    v21 = v3->_descriptionLine1Label;
    v22 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v21 setTextColor:v22];

    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setFont:v3->_standardFont];
    [(CLKUIColoringLabel *)v3->_descriptionLine1Label setParagraphStyle:v14];
    v23 = __39__REUpNextThumbnailCell_initWithFrame___block_invoke();
    descriptionLine2Label = v3->_descriptionLine2Label;
    v3->_descriptionLine2Label = v23;

    v25 = v3->_descriptionLine2Label;
    v26 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v25 setTextColor:v26];

    [(CLKUIColoringLabel *)v3->_descriptionLine2Label setFont:v3->_italicFont];
    [(CLKUIColoringLabel *)v3->_descriptionLine2Label setNumberOfLines:1];
    v27 = objc_alloc(MEMORY[0x277D755E8]);
    v28 = [v27 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    imageView = v3->_imageView;
    v3->_imageView = v28;

    [(UIImageView *)v3->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_imageView setContentMode:1];
    v30 = [(UIImageView *)v3->_imageView layer];
    [v30 setCornerRadius:*&kActiveLayout_0_0];

    [(UIImageView *)v3->_imageView setClipsToBounds:1];
    v31 = objc_alloc_init(MEMORY[0x277D756D0]);
    labelLayoutGuide = v3->_labelLayoutGuide;
    v3->_labelLayoutGuide = v31;

    v33 = [(REUpNextThumbnailCell *)v3 contentView];
    [v33 addLayoutGuide:v3->_labelLayoutGuide];

    v34 = [(REUpNextThumbnailCell *)v3 contentView];
    [v34 addSubview:v3->_imageView];

    v35 = [(REUpNextThumbnailCell *)v3 contentView];
    [v35 addSubview:v3->_headerLabel];

    v36 = [(REUpNextThumbnailCell *)v3 contentView];
    [v36 addSubview:v3->_descriptionLine1Label];

    v37 = [(REUpNextThumbnailCell *)v3 contentView];
    [v37 addSubview:v3->_descriptionLine2Label];

    v38 = [(UIImageView *)v3->_imageView widthAnchor];
    v39 = [v38 constraintEqualToConstant:1.0];
    imageWidthConstraint = v3->_imageWidthConstraint;
    v3->_imageWidthConstraint = v39;

    v41 = [(UIImageView *)v3->_imageView heightAnchor];
    v42 = [v41 constraintEqualToConstant:1.0];
    imageHeightConstraint = v3->_imageHeightConstraint;
    v3->_imageHeightConstraint = v42;

    v114 = [(UIImageView *)v3->_imageView leadingAnchor];
    v115 = [(REUpNextThumbnailCell *)v3 contentView];
    v113 = [v115 leadingAnchor];
    v112 = [v114 constraintEqualToAnchor:v113 constant:*&kActiveLayout_4_0];
    v125[0] = v112;
    v110 = [(UIImageView *)v3->_imageView centerYAnchor];
    v111 = [(REUpNextThumbnailCell *)v3 contentView];
    v109 = [v111 centerYAnchor];
    v108 = [v110 constraintEqualToAnchor:v109];
    v125[1] = v108;
    v106 = [(UILayoutGuide *)v3->_labelLayoutGuide topAnchor];
    v107 = [(REUpNextThumbnailCell *)v3 contentView];
    v105 = [v107 topAnchor];
    v104 = [v106 constraintEqualToAnchor:v105 constant:0.0];
    v125[2] = v104;
    v102 = [(UILayoutGuide *)v3->_labelLayoutGuide bottomAnchor];
    v103 = [(REUpNextThumbnailCell *)v3 contentView];
    v101 = [v103 bottomAnchor];
    v100 = [v102 constraintEqualToAnchor:v101 constant:-0.0];
    v125[3] = v100;
    v99 = [(UILayoutGuide *)v3->_labelLayoutGuide leadingAnchor];
    v98 = [(UIImageView *)v3->_imageView trailingAnchor];
    v97 = [v99 constraintEqualToAnchor:v98 constant:*&kActiveLayout_9];
    v125[4] = v97;
    v95 = [(UILayoutGuide *)v3->_labelLayoutGuide trailingAnchor];
    v96 = [(REUpNextThumbnailCell *)v3 contentView];
    v94 = [v96 trailingAnchor];
    v93 = [v95 constraintEqualToAnchor:v94 constant:-*&kActiveLayout_11];
    v125[5] = v93;
    v92 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    v91 = [(UILayoutGuide *)v3->_labelLayoutGuide leadingAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    v125[6] = v90;
    v89 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    v88 = [(UILayoutGuide *)v3->_labelLayoutGuide trailingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v125[7] = v87;
    v86 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label leadingAnchor];
    v85 = [(UILayoutGuide *)v3->_labelLayoutGuide leadingAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v125[8] = v84;
    v44 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label trailingAnchor];
    v45 = [(UILayoutGuide *)v3->_labelLayoutGuide trailingAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    v125[9] = v46;
    v47 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label leadingAnchor];
    v48 = [(UILayoutGuide *)v3->_labelLayoutGuide leadingAnchor];
    v49 = [v47 constraintEqualToAnchor:v48];
    v125[10] = v49;
    v50 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label trailingAnchor];
    v51 = [(UILayoutGuide *)v3->_labelLayoutGuide trailingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];
    v125[11] = v52;
    v125[12] = v3->_imageHeightConstraint;
    v125[13] = v3->_imageWidthConstraint;
    v116 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:14];

    v53 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    v54 = [(UILayoutGuide *)v3->_labelLayoutGuide topAnchor];
    v55 = [v53 constraintEqualToAnchor:v54 constant:*&kActiveLayout_1_0];
    v124 = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:&v124 count:1];
    withoutHeaderConstraints = v3->_withoutHeaderConstraints;
    v3->_withoutHeaderConstraints = v56;

    v58 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v59 = [(UILayoutGuide *)v3->_labelLayoutGuide topAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:*&kActiveLayout_1_0];
    v123[0] = v60;
    v61 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label firstBaselineAnchor];
    v62 = [(CLKUIColoringLabel *)v3->_headerLabel lastBaselineAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:*&kActiveLayout_2_0];
    v123[1] = v63;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
    withHeaderConstraints = v3->_withHeaderConstraints;
    v3->_withHeaderConstraints = v64;

    v66 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label firstBaselineAnchor];
    v67 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:*&kActiveLayout_3_0];
    v122[0] = v68;
    v69 = [(CLKUIColoringLabel *)v3->_descriptionLine2Label lastBaselineAnchor];
    v70 = [(UILayoutGuide *)v3->_labelLayoutGuide bottomAnchor];
    v71 = [v69 constraintLessThanOrEqualToAnchor:v70 constant:-*&kActiveLayout_6_0];
    v122[1] = v71;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:2];
    withDescription2Constraints = v3->_withDescription2Constraints;
    v3->_withDescription2Constraints = v72;

    v74 = [(CLKUIColoringLabel *)v3->_descriptionLine1Label lastBaselineAnchor];
    v75 = [(UILayoutGuide *)v3->_labelLayoutGuide bottomAnchor];
    v76 = [v74 constraintLessThanOrEqualToAnchor:v75 constant:-*&kActiveLayout_6_0];
    v121[0] = v76;
    v77 = [(CLKUIColoringLabel *)v3->_headerLabel lastBaselineAnchor];
    v78 = [(UILayoutGuide *)v3->_labelLayoutGuide bottomAnchor];
    v79 = [v77 constraintLessThanOrEqualToAnchor:v78 constant:-*&kActiveLayout_6_0];
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
  v4 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)headerLabel setTextColor:v4];

  descriptionLine1Label = self->_descriptionLine1Label;
  v6 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextColor:v6];

  descriptionLine2Label = self->_descriptionLine2Label;
  v8 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextColor:v8];

  imageView = self->_imageView;
  v10 = [(REUpNextBaseCell *)self defaultTextColor];
  [(UIImageView *)imageView setTintColor:v10];
}

- (void)updateConstraints
{
  v3 = [(REUpNextBaseCell *)self content];
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = *&kActiveLayout_7_0 - (*&kActiveLayout_4_0 * 2.0 + 0.0 + 0.0);
  v7 = [v3 overrideBodyImage];
  [v7 size];
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
  v11 = [v3 description2TextProvider];
  v12 = v11 != 0;

  if (self->_showingThreeLineLayout != v12)
  {
    self->_showingThreeLineLayout = v12;
    [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:v11 == 0];
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

  v15 = [v3 headerTextProvider];
  v16 = v15 != 0;

  if (self->_showingHeader != v16)
  {
    v17 = v15 == 0;
    v18 = v15 == 0;
    self->_showingHeader = v16;
    if (v15)
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
      v23 = [v3 description1TextProvider];

      headerLabel = self->_headerLabel;
      if (v23)
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

- (void)configureWithContent:(id)a3
{
  v18.receiver = self;
  v18.super_class = REUpNextThumbnailCell;
  v4 = a3;
  [(REUpNextBaseCell *)&v18 configureWithContent:v4];
  headerLabel = self->_headerLabel;
  v6 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:v6];

  descriptionLine1Label = self->_descriptionLine1Label;
  v8 = [v4 description1TextProvider];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextProvider:v8];

  descriptionLine2Label = self->_descriptionLine2Label;
  v10 = [v4 description2TextProvider];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextProvider:v10];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__REUpNextThumbnailCell_configureWithContent___block_invoke;
  v17[3] = &unk_279AF61C0;
  v17[4] = self;
  v11 = MEMORY[0x2667182D0](v17);
  (v11)[2](v11, self->_headerLabel, [v4 headerFontStyle]);
  (v11)[2](v11, self->_descriptionLine1Label, [v4 description1FontStyle]);
  (v11)[2](v11, self->_descriptionLine2Label, [v4 description2FontStyle]);
  imageView = self->_imageView;
  v13 = [v4 overrideBodyImage];
  [(UIImageView *)imageView setImage:v13];

  v14 = [v4 headerTextProvider];
  [v14 setPaused:0];

  v15 = [v4 description1TextProvider];
  [v15 setPaused:0];

  v16 = [v4 description2TextProvider];

  [v16 setPaused:0];
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
@interface SBUIActionView
- (SBUIActionView)initWithAction:(id)a3;
- (SBUIActionView)initWithCoder:(id)a3;
- (SBUIActionView)initWithFrame:(CGRect)a3;
- (double)leadingContentMargin;
- (void)_invalidateVisualStyling;
- (void)_setupSubviews;
- (void)_updateImageViewLayoutConstraints;
- (void)_updateVisualStylingIfNecessary;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setImagePosition:(int64_t)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation SBUIActionView

- (SBUIActionView)initWithAction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBUIActionView;
  v6 = [(SBUIActionView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
    v7->_imagePosition = 0;
    v7->_highlighted = 0;
    v7->_interfaceOrientationIsPortrait = ([*MEMORY[0x277D76620] activeInterfaceOrientation] - 1) < 2;
    [(SBUIActionView *)v7 _setupSubviews];
  }

  return v7;
}

- (SBUIActionView)initWithFrame:(CGRect)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE648];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"%s is not a valid initializer. You must call -[%@ initWithAction:].", "-[SBUIActionView initWithFrame:]", v7}];

  return [(SBUIActionView *)self initWithAction:0];
}

- (SBUIActionView)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v6 = a3;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBUIActionView;
  v9 = [(SBUIActionView *)&v11 initWithCoder:v6];

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBUIActionView;
  [(SBUIActionView *)&v3 layoutSubviews];
  [(SBUIActionView *)self _updateVisualStylingIfNecessary];
}

- (void)willMoveToSuperview:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBUIActionView;
  [(SBUIActionView *)&v4 willMoveToSuperview:a3];
  [(SBUIActionView *)self _invalidateVisualStyling];
}

- (void)setImagePosition:(int64_t)a3
{
  if (self->_imagePosition != a3)
  {
    self->_imagePosition = a3;
    [(SBUIActionView *)self _updateImageViewLayoutConstraints];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(UIView *)self->_highlightView setHidden:!a3];
  }
}

- (double)leadingContentMargin
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = 12.0;
  if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 16.0;
  }

  return result;
}

- (void)_setupSubviews
{
  v156[7] = *MEMORY[0x277D85DE8];
  v3 = [(SBUIActionView *)self action];
  v155 = [v3 title];
  v4 = [v3 subtitle];
  v5 = [v3 image];
  v6 = [v3 systemImageName];
  v151 = v3;
  v7 = [v3 badgeView];
  v154 = v4;
  v146 = [v4 length];
  v8 = *MEMORY[0x277D76918];
  v9 = *MEMORY[0x277D76968];
  v10 = *MEMORY[0x277D76828];
  if (self->_interfaceOrientationIsPortrait)
  {
    v152 = v7;
    v11 = v8;
    v12 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
    v13 = *MEMORY[0x277D76820];
    v14 = *MEMORY[0x277D76818];
    v156[0] = *MEMORY[0x277D76820];
    v156[1] = v14;
    v15 = *MEMORY[0x277D76800];
    v156[2] = *MEMORY[0x277D76808];
    v156[3] = v15;
    v16 = *MEMORY[0x277D767F0];
    v156[4] = *MEMORY[0x277D767F8];
    v156[5] = v16;
    v156[6] = *MEMORY[0x277D767E8];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:7];
    v18 = [v17 containsObject:v12];

    if (v18)
    {
      v19 = v13;

      v10 = v19;
    }

    v153 = v9;

    v20 = v11;
    v7 = v152;
    v21 = v10;
  }

  else
  {
    v22 = *MEMORY[0x277D76840];

    v20 = *MEMORY[0x277D76A28];
    v23 = *MEMORY[0x277D76920];

    v21 = v22;
    v153 = v23;
  }

  v149 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:{v21, v146}];
  v24 = [MEMORY[0x277D74300] preferredFontForTextStyle:v20 compatibleWithTraitCollection:?];
  v150 = v20;
  if (v5)
  {
    [v5 size];
    if (v25 < v26)
    {
      v25 = v26;
    }

    if (v25 >= 35.0)
    {
      v27 = 1;
    }

    else
    {
      v27 = 4;
    }

    goto LABEL_14;
  }

  v28 = [MEMORY[0x277D755B8] systemImageNamed:v6];
  if (v28)
  {
    v5 = v28;
    v27 = 1;
LABEL_14:
    v29 = objc_alloc(MEMORY[0x277D755E8]);
    v30 = *MEMORY[0x277CBF3A0];
    v31 = *(MEMORY[0x277CBF3A0] + 8);
    v32 = *(MEMORY[0x277CBF3A0] + 16);
    v33 = *(MEMORY[0x277CBF3A0] + 24);
    v34 = [v29 initWithFrame:{*MEMORY[0x277CBF3A0], v31, v32, v33}];
    imageView = self->_imageView;
    self->_imageView = v34;

    [(UIImageView *)self->_imageView setContentMode:v27];
    [(UIImageView *)self->_imageView setImage:v5];
    [(UIImageView *)self->_imageView setPreferredSymbolConfiguration:0];
    LODWORD(v36) = 1148846080;
    [(UIImageView *)self->_imageView setContentHuggingPriority:0 forAxis:v36];
    [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBUIActionView *)self addSubview:self->_imageView];

    goto LABEL_15;
  }

  v30 = *MEMORY[0x277CBF3A0];
  v31 = *(MEMORY[0x277CBF3A0] + 8);
  v32 = *(MEMORY[0x277CBF3A0] + 16);
  v33 = *(MEMORY[0x277CBF3A0] + 24);
LABEL_15:
  v37 = objc_alloc_init(MEMORY[0x277D75D18]);
  textContainer = self->_textContainer;
  self->_textContainer = v37;

  [(UIView *)self->_textContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBUIActionView *)self addSubview:self->_textContainer];
  v39 = [[SBUIActionViewLabel alloc] initWithFrame:v30, v31, v32, v33];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v39;

  [(SBUIActionViewLabel *)self->_titleLabel _setLayoutDebuggingIdentifier:@"titleLabel"];
  v148 = v24;
  [(SBUIActionViewLabel *)self->_titleLabel setFont:v24];
  [(SBUIActionViewLabel *)self->_titleLabel setLineBreakMode:4];
  if (v147)
  {
    v41 = 1;
  }

  else
  {
    v41 = 2;
  }

  [(SBUIActionViewLabel *)self->_titleLabel setNumberOfLines:v41];
  [(SBUIActionViewLabel *)self->_titleLabel setText:v155];
  [(SBUIActionViewLabel *)self->_titleLabel setTextAlignment:4];
  [(SBUIActionViewLabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_textContainer addSubview:self->_titleLabel];
  if (v147)
  {
    v42 = [[SBUIActionViewLabel alloc] initWithFrame:v30, v31, v32, v33];
    subtitleLabel = self->_subtitleLabel;
    self->_subtitleLabel = v42;

    [(SBUIActionViewLabel *)self->_subtitleLabel _setLayoutDebuggingIdentifier:@"subtitleLabel"];
    v44 = self->_subtitleLabel;
    v45 = MEMORY[0x277D74300];
    v46 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v21];
    v47 = [v45 preferredFontForTextStyle:v153 compatibleWithTraitCollection:v46];
    [(SBUIActionViewLabel *)v44 setFont:v47];

    [(SBUIActionViewLabel *)self->_subtitleLabel setLineBreakMode:4];
    [(SBUIActionViewLabel *)self->_subtitleLabel setNumberOfLines:1];
    [(SBUIActionViewLabel *)self->_subtitleLabel setText:v154];
    [(SBUIActionViewLabel *)self->_subtitleLabel setTextAlignment:4];
    [(SBUIActionViewLabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_textContainer addSubview:self->_subtitleLabel];
  }

  if (v7)
  {
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_textContainer addSubview:v7];
    [v7 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = [v7 widthAnchor];
    v157.origin.x = v49;
    v157.origin.y = v51;
    v157.size.width = v53;
    v157.size.height = v55;
    v57 = [v56 constraintEqualToConstant:CGRectGetWidth(v157)];
    [v57 setActive:1];

    v58 = [v7 heightAnchor];
    v158.origin.x = v49;
    v158.origin.y = v51;
    v158.size.width = v53;
    v158.size.height = v55;
    v59 = [v58 constraintEqualToConstant:CGRectGetHeight(v158)];
    [v59 setActive:1];
  }

  if (self->_imageView)
  {
    [(SBUIActionView *)self _updateImageViewLayoutConstraints];
    v60 = [(UIImageView *)self->_imageView centerYAnchor];
    v61 = [(SBUIActionView *)self centerYAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];
    [v62 setActive:1];

    v63 = [(UIImageView *)self->_imageView widthAnchor];
    v64 = [v63 constraintEqualToConstant:35.0];
    [v64 setActive:1];

    v65 = [(UIImageView *)self->_imageView heightAnchor];
    v66 = [v65 constraintEqualToConstant:35.0];
    [v66 setActive:1];
  }

  else
  {
    v67 = [(UIView *)self->_textContainer leadingAnchor];
    v68 = [(SBUIActionView *)self leadingAnchor];
    [(SBUIActionView *)self trailingContentMargin];
    v69 = [v67 constraintEqualToAnchor:v68 constant:?];
    [v69 setActive:1];

    v65 = [(UIView *)self->_textContainer trailingAnchor];
    v66 = [(SBUIActionView *)self trailingAnchor];
    [(SBUIActionView *)self trailingContentMargin];
    v70 = [v65 constraintEqualToAnchor:v66 constant:?];
    [v70 setActive:1];
  }

  v71 = [(UIView *)self->_textContainer centerYAnchor];
  v72 = [(SBUIActionView *)self centerYAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  [v73 setActive:1];

  v74 = [(SBUIActionViewLabel *)self->_titleLabel leadingAnchor];
  v75 = [(UIView *)self->_textContainer leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];
  [v76 setActive:1];

  v77 = [(SBUIActionViewLabel *)self->_titleLabel trailingAnchor];
  if (v7)
  {
    v78 = [v7 leadingAnchor];
    v79 = [MEMORY[0x277D75418] currentDevice];
    v80 = [v79 userInterfaceIdiom];

    v81 = -12.0;
    if ((v80 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v81 = -16.0;
    }

    v82 = [v77 constraintEqualToAnchor:v78 constant:v81];
  }

  else
  {
    v78 = [(UIView *)self->_textContainer trailingAnchor];
    v82 = [v77 constraintEqualToAnchor:v78];
  }

  v83 = v82;
  [v82 setActive:1];

  v84 = [(SBUIActionViewLabel *)self->_titleLabel font];
  [v84 _bodyLeading];
  v86 = v85;

  v87 = self->_subtitleLabel;
  if (v87)
  {
    v88 = [(SBUIActionViewLabel *)v87 leadingAnchor];
    v89 = [(UIView *)self->_textContainer leadingAnchor];
    v90 = [v88 constraintEqualToAnchor:v89];
    [v90 setActive:1];

    v91 = [(SBUIActionViewLabel *)self->_subtitleLabel trailingAnchor];
    if (v7)
    {
      v92 = [v7 leadingAnchor];
      v93 = [MEMORY[0x277D75418] currentDevice];
      v94 = [v93 userInterfaceIdiom];

      v95 = -12.0;
      if ((v94 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v95 = -16.0;
      }

      v96 = [v91 constraintEqualToAnchor:v92 constant:v95];
    }

    else
    {
      v92 = [(UIView *)self->_textContainer trailingAnchor];
      v96 = [v91 constraintEqualToAnchor:v92];
    }

    v112 = v96;
    [v96 setActive:1];

    v113 = [(SBUIActionViewLabel *)self->_subtitleLabel font];
    [v113 _bodyLeading];
    v115 = v114;

    v116 = [(SBUIActionViewLabel *)self->_titleLabel firstBaselineAnchor];
    v117 = [(SBUIActionView *)self topAnchor];
    v118 = 1.173913;
    if (self->_interfaceOrientationIsPortrait)
    {
      v118 = 1.125;
    }

    v119 = [v116 constraintEqualToAnchor:v117 constant:v86 * v118];
    [v119 setActive:1];

    v120 = [(SBUIActionViewLabel *)self->_subtitleLabel firstBaselineAnchor];
    v121 = [(SBUIActionViewLabel *)self->_titleLabel firstBaselineAnchor];
    v122 = 0.949999988;
    if (self->_interfaceOrientationIsPortrait)
    {
      v122 = 1.0;
    }

    v123 = [v120 constraintEqualToAnchor:v121 constant:v115 * v122];
    [v123 setActive:1];

    v108 = [(SBUIActionViewLabel *)self->_subtitleLabel firstBaselineAnchor];
    v109 = [(SBUIActionView *)self bottomAnchor];
    v124 = -0.608695626;
    if (self->_interfaceOrientationIsPortrait)
    {
      v124 = -0.625;
    }

    v111 = [v108 constraintEqualToAnchor:v109 constant:v86 * v124];
    [v111 setActive:1];
  }

  else
  {
    v97 = [(SBUIActionViewLabel *)self->_titleLabel firstBaselineAnchor];
    v98 = [(SBUIActionView *)self topAnchor];
    v99 = 1.0869565;
    if (self->_interfaceOrientationIsPortrait)
    {
      v99 = 1.04166663;
    }

    v100 = [v97 constraintGreaterThanOrEqualToAnchor:v98 constant:v86 * v99];
    [v100 setActive:1];

    v101 = [(SBUIActionViewLabel *)self->_titleLabel firstBaselineAnchor];
    v102 = [(SBUIActionView *)self bottomAnchor];
    v103 = [v101 constraintEqualToAnchor:v102 constant:-v86];
    __32__SBUIActionView__setupSubviews__block_invoke(250.0, v103, v103);
    objc_claimAutoreleasedReturnValue();
    [v103 setActive:1];

    v104 = [(SBUIActionViewLabel *)self->_titleLabel lastBaselineAnchor];
    v105 = [(SBUIActionView *)self bottomAnchor];
    v106 = -0.521739125;
    if (self->_interfaceOrientationIsPortrait)
    {
      v106 = -0.541666687;
    }

    v107 = [v104 constraintLessThanOrEqualToAnchor:v105 constant:v86 * v106];
    [v107 setActive:1];

    v108 = [(SBUIActionViewLabel *)self->_titleLabel lastBaselineAnchor];
    v109 = [(SBUIActionView *)self topAnchor];
    v110 = 1.60869563;
    if (self->_interfaceOrientationIsPortrait)
    {
      v110 = 1.58333337;
    }

    v111 = [v108 constraintEqualToAnchor:v109 constant:v86 * v110];
    __32__SBUIActionView__setupSubviews__block_invoke(250.0, v111, v111);
    objc_claimAutoreleasedReturnValue();
    [v111 setActive:1];
  }

  if (v7)
  {
    v125 = [v7 trailingAnchor];
    v126 = [(UIView *)self->_textContainer trailingAnchor];
    v127 = [v125 constraintEqualToAnchor:v126];
    [v127 setActive:1];

    v128 = [v7 centerYAnchor];
    v129 = [(SBUIActionView *)self centerYAnchor];
    v130 = [v128 constraintEqualToAnchor:v129];
    [v130 setActive:1];
  }

  v131 = objc_alloc_init(MEMORY[0x277D75D18]);
  highlightView = self->_highlightView;
  self->_highlightView = v131;

  [(UIView *)self->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBUIActionView *)self addSubview:self->_highlightView];
  v133 = [(UIView *)self->_highlightView leadingAnchor];
  v134 = [(SBUIActionView *)self leadingAnchor];
  v135 = [v133 constraintEqualToAnchor:v134];
  [v135 setActive:1];

  v136 = [(UIView *)self->_highlightView trailingAnchor];
  v137 = [(SBUIActionView *)self trailingAnchor];
  v138 = [v136 constraintEqualToAnchor:v137];
  [v138 setActive:1];

  v139 = [(UIView *)self->_highlightView topAnchor];
  v140 = [(SBUIActionView *)self topAnchor];
  v141 = [v139 constraintEqualToAnchor:v140];
  [v141 setActive:1];

  v142 = [(UIView *)self->_highlightView bottomAnchor];
  v143 = [(SBUIActionView *)self bottomAnchor];
  v144 = [v142 constraintEqualToAnchor:v143];
  [v144 setActive:1];

  [(UIView *)self->_highlightView setHidden:!self->_highlighted];
  v145 = *MEMORY[0x277D85DE8];
}

id __32__SBUIActionView__setupSubviews__block_invoke(float a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *&v5 = a1;
  [v4 setPriority:v5];

  return v4;
}

- (void)_updateImageViewLayoutConstraints
{
  v20[2] = *MEMORY[0x277D85DE8];
  if (self->_imageView && self->_textContainer)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:self->_imageViewLayoutConstraints];
    v3 = [(SBUIActionView *)self imagePosition];
    if (v3 == 1)
    {
      v4 = 0x10000;
    }

    else
    {
      v4 = (v3 == 2) << 17;
    }

    v5 = MEMORY[0x277CCAAD0];
    v19[0] = @"trailingContentOffset";
    v6 = MEMORY[0x277CCABB0];
    [(SBUIActionView *)self trailingContentMargin];
    v7 = [v6 numberWithDouble:?];
    v19[1] = @"leadingContentOffset";
    v20[0] = v7;
    v8 = MEMORY[0x277CCABB0];
    [(SBUIActionView *)self leadingContentMargin];
    v9 = [v8 numberWithDouble:?];
    v20[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    imageView = self->_imageView;
    v17[0] = @"imageView";
    v17[1] = @"textContainer";
    textContainer = self->_textContainer;
    v18[0] = imageView;
    v18[1] = textContainer;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = [v5 constraintsWithVisualFormat:@"H:|-(leadingContentOffset)-[imageView]-(leadingContentOffset)-[textContainer]-(trailingContentOffset)-|" options:v4 metrics:v10 views:v13];
    imageViewLayoutConstraints = self->_imageViewLayoutConstraints;
    self->_imageViewLayoutConstraints = v14;

    [MEMORY[0x277CCAAD0] activateConstraints:self->_imageViewLayoutConstraints];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateVisualStyling
{
  [(MTVisualStylingProvider *)self->_visualStylingProviderStroke stopAutomaticallyUpdatingView:self->_imageView];
  [(MTVisualStylingProvider *)self->_visualStylingProviderStroke stopAutomaticallyUpdatingView:self->_titleLabel];
  [(MTVisualStylingProvider *)self->_visualStylingProviderStroke stopAutomaticallyUpdatingView:self->_subtitleLabel];
  visualStylingProviderStroke = self->_visualStylingProviderStroke;
  self->_visualStylingProviderStroke = 0;

  [(MTVisualStylingProvider *)self->_visualStylingProviderFill stopAutomaticallyUpdatingView:self->_highlightView];
  visualStylingProviderFill = self->_visualStylingProviderFill;
  self->_visualStylingProviderFill = 0;

  [(SBUIActionView *)self setNeedsLayout];
}

- (void)_updateVisualStylingIfNecessary
{
  if (!self->_visualStylingProviderStroke)
  {
    v3 = [(SBUIActionView *)self visualStylingProviderForCategory:1];
    visualStylingProviderStroke = self->_visualStylingProviderStroke;
    self->_visualStylingProviderStroke = v3;

    [(MTVisualStylingProvider *)self->_visualStylingProviderStroke automaticallyUpdateView:self->_imageView withStyle:0];
    [(MTVisualStylingProvider *)self->_visualStylingProviderStroke automaticallyUpdateView:self->_titleLabel withStyle:0];
    [(MTVisualStylingProvider *)self->_visualStylingProviderStroke automaticallyUpdateView:self->_subtitleLabel withStyle:0];
    v5 = [(SBUIActionView *)self visualStylingProviderForCategory:2];
    visualStylingProviderFill = self->_visualStylingProviderFill;
    self->_visualStylingProviderFill = v5;

    v7 = self->_visualStylingProviderFill;
    highlightView = self->_highlightView;

    [(MTVisualStylingProvider *)v7 automaticallyUpdateView:highlightView withStyle:4];
  }
}

@end
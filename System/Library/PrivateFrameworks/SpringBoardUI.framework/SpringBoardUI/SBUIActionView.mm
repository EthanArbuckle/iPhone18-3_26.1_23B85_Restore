@interface SBUIActionView
- (SBUIActionView)initWithAction:(id)action;
- (SBUIActionView)initWithCoder:(id)coder;
- (SBUIActionView)initWithFrame:(CGRect)frame;
- (double)leadingContentMargin;
- (void)_invalidateVisualStyling;
- (void)_setupSubviews;
- (void)_updateImageViewLayoutConstraints;
- (void)_updateVisualStylingIfNecessary;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImagePosition:(int64_t)position;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation SBUIActionView

- (SBUIActionView)initWithAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = SBUIActionView;
  v6 = [(SBUIActionView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
    v7->_imagePosition = 0;
    v7->_highlighted = 0;
    v7->_interfaceOrientationIsPortrait = ([*MEMORY[0x277D76620] activeInterfaceOrientation] - 1) < 2;
    [(SBUIActionView *)v7 _setupSubviews];
  }

  return v7;
}

- (SBUIActionView)initWithFrame:(CGRect)frame
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE648];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 raise:v5 format:{@"%s is not a valid initializer. You must call -[%@ initWithAction:].", "-[SBUIActionView initWithFrame:]", v7}];

  return [(SBUIActionView *)self initWithAction:0];
}

- (SBUIActionView)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  coderCopy = coder;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v4 raise:v5 format:{@"%@ does not support unarchiving from a nib.", v8}];

  v11.receiver = self;
  v11.super_class = SBUIActionView;
  v9 = [(SBUIActionView *)&v11 initWithCoder:coderCopy];

  return v9;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBUIActionView;
  [(SBUIActionView *)&v3 layoutSubviews];
  [(SBUIActionView *)self _updateVisualStylingIfNecessary];
}

- (void)willMoveToSuperview:(id)superview
{
  v4.receiver = self;
  v4.super_class = SBUIActionView;
  [(SBUIActionView *)&v4 willMoveToSuperview:superview];
  [(SBUIActionView *)self _invalidateVisualStyling];
}

- (void)setImagePosition:(int64_t)position
{
  if (self->_imagePosition != position)
  {
    self->_imagePosition = position;
    [(SBUIActionView *)self _updateImageViewLayoutConstraints];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(UIView *)self->_highlightView setHidden:!highlighted];
  }
}

- (double)leadingContentMargin
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 12.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    return 16.0;
  }

  return result;
}

- (void)_setupSubviews
{
  v156[7] = *MEMORY[0x277D85DE8];
  action = [(SBUIActionView *)self action];
  title = [action title];
  subtitle = [action subtitle];
  image = [action image];
  systemImageName = [action systemImageName];
  v151 = action;
  badgeView = [action badgeView];
  v154 = subtitle;
  v146 = [subtitle length];
  v8 = *MEMORY[0x277D76918];
  v9 = *MEMORY[0x277D76968];
  v10 = *MEMORY[0x277D76828];
  if (self->_interfaceOrientationIsPortrait)
  {
    v152 = badgeView;
    v11 = v8;
    preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
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
    v18 = [v17 containsObject:preferredContentSizeCategory];

    if (v18)
    {
      v19 = v13;

      v10 = v19;
    }

    v153 = v9;

    v20 = v11;
    badgeView = v152;
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
  if (image)
  {
    [image size];
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

  v28 = [MEMORY[0x277D755B8] systemImageNamed:systemImageName];
  if (v28)
  {
    image = v28;
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
    [(UIImageView *)self->_imageView setImage:image];
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
  [(SBUIActionViewLabel *)self->_titleLabel setText:title];
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

  if (badgeView)
  {
    [badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_textContainer addSubview:badgeView];
    [badgeView bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    widthAnchor = [badgeView widthAnchor];
    v157.origin.x = v49;
    v157.origin.y = v51;
    v157.size.width = v53;
    v157.size.height = v55;
    v57 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v157)];
    [v57 setActive:1];

    heightAnchor = [badgeView heightAnchor];
    v158.origin.x = v49;
    v158.origin.y = v51;
    v158.size.width = v53;
    v158.size.height = v55;
    v59 = [heightAnchor constraintEqualToConstant:CGRectGetHeight(v158)];
    [v59 setActive:1];
  }

  if (self->_imageView)
  {
    [(SBUIActionView *)self _updateImageViewLayoutConstraints];
    centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
    centerYAnchor2 = [(SBUIActionView *)self centerYAnchor];
    v62 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v62 setActive:1];

    widthAnchor2 = [(UIImageView *)self->_imageView widthAnchor];
    v64 = [widthAnchor2 constraintEqualToConstant:35.0];
    [v64 setActive:1];

    heightAnchor2 = [(UIImageView *)self->_imageView heightAnchor];
    trailingAnchor = [heightAnchor2 constraintEqualToConstant:35.0];
    [trailingAnchor setActive:1];
  }

  else
  {
    leadingAnchor = [(UIView *)self->_textContainer leadingAnchor];
    leadingAnchor2 = [(SBUIActionView *)self leadingAnchor];
    [(SBUIActionView *)self trailingContentMargin];
    v69 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    [v69 setActive:1];

    heightAnchor2 = [(UIView *)self->_textContainer trailingAnchor];
    trailingAnchor = [(SBUIActionView *)self trailingAnchor];
    [(SBUIActionView *)self trailingContentMargin];
    v70 = [heightAnchor2 constraintEqualToAnchor:trailingAnchor constant:?];
    [v70 setActive:1];
  }

  centerYAnchor3 = [(UIView *)self->_textContainer centerYAnchor];
  centerYAnchor4 = [(SBUIActionView *)self centerYAnchor];
  v73 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [v73 setActive:1];

  leadingAnchor3 = [(SBUIActionViewLabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_textContainer leadingAnchor];
  v76 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v76 setActive:1];

  trailingAnchor2 = [(SBUIActionViewLabel *)self->_titleLabel trailingAnchor];
  if (badgeView)
  {
    leadingAnchor5 = [badgeView leadingAnchor];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v81 = -12.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v81 = -16.0;
    }

    v82 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor5 constant:v81];
  }

  else
  {
    leadingAnchor5 = [(UIView *)self->_textContainer trailingAnchor];
    v82 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor5];
  }

  v83 = v82;
  [v82 setActive:1];

  font = [(SBUIActionViewLabel *)self->_titleLabel font];
  [font _bodyLeading];
  v86 = v85;

  v87 = self->_subtitleLabel;
  if (v87)
  {
    leadingAnchor6 = [(SBUIActionViewLabel *)v87 leadingAnchor];
    leadingAnchor7 = [(UIView *)self->_textContainer leadingAnchor];
    v90 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    [v90 setActive:1];

    trailingAnchor3 = [(SBUIActionViewLabel *)self->_subtitleLabel trailingAnchor];
    if (badgeView)
    {
      leadingAnchor8 = [badgeView leadingAnchor];
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

      v95 = -12.0;
      if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v95 = -16.0;
      }

      v96 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor8 constant:v95];
    }

    else
    {
      leadingAnchor8 = [(UIView *)self->_textContainer trailingAnchor];
      v96 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor8];
    }

    v112 = v96;
    [v96 setActive:1];

    font2 = [(SBUIActionViewLabel *)self->_subtitleLabel font];
    [font2 _bodyLeading];
    v115 = v114;

    firstBaselineAnchor = [(SBUIActionViewLabel *)self->_titleLabel firstBaselineAnchor];
    topAnchor = [(SBUIActionView *)self topAnchor];
    v118 = 1.173913;
    if (self->_interfaceOrientationIsPortrait)
    {
      v118 = 1.125;
    }

    v118 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:v86 * v118];
    [v118 setActive:1];

    firstBaselineAnchor2 = [(SBUIActionViewLabel *)self->_subtitleLabel firstBaselineAnchor];
    firstBaselineAnchor3 = [(SBUIActionViewLabel *)self->_titleLabel firstBaselineAnchor];
    v122 = 0.949999988;
    if (self->_interfaceOrientationIsPortrait)
    {
      v122 = 1.0;
    }

    v122 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:v115 * v122];
    [v122 setActive:1];

    firstBaselineAnchor4 = [(SBUIActionViewLabel *)self->_subtitleLabel firstBaselineAnchor];
    bottomAnchor = [(SBUIActionView *)self bottomAnchor];
    v124 = -0.608695626;
    if (self->_interfaceOrientationIsPortrait)
    {
      v124 = -0.625;
    }

    v124 = [firstBaselineAnchor4 constraintEqualToAnchor:bottomAnchor constant:v86 * v124];
    [v124 setActive:1];
  }

  else
  {
    firstBaselineAnchor5 = [(SBUIActionViewLabel *)self->_titleLabel firstBaselineAnchor];
    topAnchor2 = [(SBUIActionView *)self topAnchor];
    v99 = 1.0869565;
    if (self->_interfaceOrientationIsPortrait)
    {
      v99 = 1.04166663;
    }

    v100 = [firstBaselineAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:v86 * v99];
    [v100 setActive:1];

    firstBaselineAnchor6 = [(SBUIActionViewLabel *)self->_titleLabel firstBaselineAnchor];
    bottomAnchor2 = [(SBUIActionView *)self bottomAnchor];
    v103 = [firstBaselineAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:-v86];
    __32__SBUIActionView__setupSubviews__block_invoke(250.0, v103, v103);
    objc_claimAutoreleasedReturnValue();
    [v103 setActive:1];

    lastBaselineAnchor = [(SBUIActionViewLabel *)self->_titleLabel lastBaselineAnchor];
    bottomAnchor3 = [(SBUIActionView *)self bottomAnchor];
    v106 = -0.521739125;
    if (self->_interfaceOrientationIsPortrait)
    {
      v106 = -0.541666687;
    }

    v106 = [lastBaselineAnchor constraintLessThanOrEqualToAnchor:bottomAnchor3 constant:v86 * v106];
    [v106 setActive:1];

    firstBaselineAnchor4 = [(SBUIActionViewLabel *)self->_titleLabel lastBaselineAnchor];
    bottomAnchor = [(SBUIActionView *)self topAnchor];
    v110 = 1.60869563;
    if (self->_interfaceOrientationIsPortrait)
    {
      v110 = 1.58333337;
    }

    v124 = [firstBaselineAnchor4 constraintEqualToAnchor:bottomAnchor constant:v86 * v110];
    __32__SBUIActionView__setupSubviews__block_invoke(250.0, v124, v124);
    objc_claimAutoreleasedReturnValue();
    [v124 setActive:1];
  }

  if (badgeView)
  {
    trailingAnchor4 = [badgeView trailingAnchor];
    trailingAnchor5 = [(UIView *)self->_textContainer trailingAnchor];
    v127 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    [v127 setActive:1];

    centerYAnchor5 = [badgeView centerYAnchor];
    centerYAnchor6 = [(SBUIActionView *)self centerYAnchor];
    v130 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v130 setActive:1];
  }

  v131 = objc_alloc_init(MEMORY[0x277D75D18]);
  highlightView = self->_highlightView;
  self->_highlightView = v131;

  [(UIView *)self->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(SBUIActionView *)self addSubview:self->_highlightView];
  leadingAnchor9 = [(UIView *)self->_highlightView leadingAnchor];
  leadingAnchor10 = [(SBUIActionView *)self leadingAnchor];
  v135 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v135 setActive:1];

  trailingAnchor6 = [(UIView *)self->_highlightView trailingAnchor];
  trailingAnchor7 = [(SBUIActionView *)self trailingAnchor];
  v138 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
  [v138 setActive:1];

  topAnchor3 = [(UIView *)self->_highlightView topAnchor];
  topAnchor4 = [(SBUIActionView *)self topAnchor];
  v141 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v141 setActive:1];

  bottomAnchor4 = [(UIView *)self->_highlightView bottomAnchor];
  bottomAnchor5 = [(SBUIActionView *)self bottomAnchor];
  v144 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
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
    imagePosition = [(SBUIActionView *)self imagePosition];
    if (imagePosition == 1)
    {
      v4 = 0x10000;
    }

    else
    {
      v4 = (imagePosition == 2) << 17;
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
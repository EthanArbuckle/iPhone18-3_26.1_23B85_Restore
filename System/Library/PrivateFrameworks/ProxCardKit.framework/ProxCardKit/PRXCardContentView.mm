@interface PRXCardContentView
- (NSArray)actionButtons;
- (PRXButton)dismissButton;
- (PRXCardContentView)initWithCardStyle:(int64_t)style;
- (PRXCardContentView)initWithFrame:(CGRect)frame cardStyle:(int64_t)style;
- (PRXCardContentViewDelegate)delegate;
- (PRXLabel)titleLabel;
- (PRXTextView)titleTextView;
- (id)auxiliaryViews;
- (void)_invalidateMainContentConstraints;
- (void)setActionButtons:(id)buttons;
- (void)setDismissButton:(id)button;
- (void)setSubtitleLabel:(id)label;
- (void)setTitleView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)updateTitleTextViewExclusionPathsForCardWidth:(double)width;
@end

@implementation PRXCardContentView

- (PRXCardContentView)initWithCardStyle:(int64_t)style
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = PRXCardPreferredSizeClassForContainerBounds(v6, v7, v8, v9);

  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = PRXCardPreferredSize(0, v10);

  return [(PRXCardContentView *)self initWithFrame:style cardStyle:v11, v12, v14, v13];
}

- (PRXCardContentView)initWithFrame:(CGRect)frame cardStyle:(int64_t)style
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = PRXCardContentView;
  v5 = [(PRXCardContentView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756D0]);
    styleCopy = style;
    mainContentGuide = v5->_mainContentGuide;
    v5->_mainContentGuide = v6;

    [(UILayoutGuide *)v5->_mainContentGuide setIdentifier:@"PRXCardMainContent"];
    [(PRXCardContentView *)v5 addLayoutGuide:v5->_mainContentGuide];
    v8 = objc_alloc_init(MEMORY[0x277D756D0]);
    internalContentGuide = v5->_internalContentGuide;
    v5->_internalContentGuide = v8;

    [(UILayoutGuide *)v5->_internalContentGuide setIdentifier:@"PRXCardInternalContent"];
    [(PRXCardContentView *)v5 addLayoutGuide:v5->_internalContentGuide];
    layoutMarginsGuide = [(PRXCardContentView *)v5 layoutMarginsGuide];
    v22 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UILayoutGuide *)v5->_mainContentGuide leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[0] = v25;
    trailingAnchor = [(UILayoutGuide *)v5->_mainContentGuide trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[1] = v11;
    leadingAnchor3 = [(UILayoutGuide *)v5->_internalContentGuide leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v14 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v30[2] = v14;
    trailingAnchor3 = [(UILayoutGuide *)v5->_internalContentGuide trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v17 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v30[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    [v22 activateConstraints:v18];

    v5->_cardStyle = styleCopy;
    [(PRXCardContentView *)v5 setDirectionalLayoutMargins:*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PRXCardContentView *)v5 setBackgroundColor:systemBackgroundColor];

    v20 = v5;
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v20.receiver = self;
  v20.super_class = PRXCardContentView;
  changeCopy = change;
  [(PRXCardContentView *)&v20 traitCollectionDidChange:changeCopy];
  v5 = [(PRXCardContentView *)self traitCollection:v20.receiver];
  prx_cardSizeClass = [v5 prx_cardSizeClass];

  prx_cardSizeClass2 = [changeCopy prx_cardSizeClass];
  if (prx_cardSizeClass != prx_cardSizeClass2)
  {
    v8 = &PRXCardCompactLayoutMargins;
    v9 = &unk_260F85308;
    if (prx_cardSizeClass != 1)
    {
      v9 = &unk_260F852E8;
    }

    v10 = *v9;
    v11 = &unk_260F85300;
    if (prx_cardSizeClass != 1)
    {
      v11 = &unk_260F852E0;
    }

    v12 = *v11;
    v13 = &unk_260F852F8;
    if (prx_cardSizeClass != 1)
    {
      v13 = &unk_260F852D8;
      v8 = &PRXCardDefaultLayoutMargins;
    }

    [(PRXCardContentView *)self setDirectionalLayoutMargins:*v8, *v13, v12, v10];
    [(PRXCardContentView *)self bounds];
    [(PRXCardContentView *)self updateTitleTextViewExclusionPathsForCardWidth:v14];
    [(PRXCardContentView *)self invalidateIntrinsicContentSize];
  }

  if (self->_titleViewConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:?];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    [(PRXCardContentView *)self setNeedsUpdateConstraints];
  }

  traitCollection = [(PRXCardContentView *)self traitCollection];
  customBackgroundColor = [traitCollection customBackgroundColor];

  if (customBackgroundColor)
  {
    traitCollection2 = [(PRXCardContentView *)self traitCollection];
    customBackgroundColor2 = [traitCollection2 customBackgroundColor];
    [(PRXCardContentView *)self setBackgroundColor:customBackgroundColor2];
  }
}

- (void)updateConstraints
{
  v62[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = PRXCardContentView;
  [(PRXCardContentView *)&v59 updateConstraints];
  layoutMarginsGuide = [(PRXCardContentView *)self layoutMarginsGuide];
  if (!self->_titleViewConstraints && self->_titleView)
  {
    [(PRXCardContentView *)self frame];
    v5 = v4;
    [(PRXCardContentView *)self layoutMargins];
    v7 = v6;
    [(PRXCardContentView *)self layoutMargins];
    [(PRXTextContainer *)self->_titleView sizeThatFits:v5 - (v7 + v8), 1.79769313e308];
    v10 = v9;
    heightAnchor = [(PRXTextContainer *)self->_titleView heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:v10];
    titleViewHeightConstraint = self->_titleViewHeightConstraint;
    self->_titleViewHeightConstraint = v12;

    leadingAnchor = [(PRXTextContainer *)self->_titleView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v62[0] = v52;
    trailingAnchor = [(PRXTextContainer *)self->_titleView trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v62[1] = v16;
    topAnchor = [(PRXTextContainer *)self->_titleView topAnchor];
    [layoutMarginsGuide topAnchor];
    v19 = v18 = layoutMarginsGuide;
    v20 = [topAnchor constraintEqualToAnchor:v19];
    v21 = self->_titleViewHeightConstraint;
    v62[2] = v20;
    v62[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = v22;

    layoutMarginsGuide = v18;
    [MEMORY[0x277CCAAD0] activateConstraints:self->_titleViewConstraints];
  }

  if (!self->_subtitleLabelConstraints)
  {
    subtitleLabel = self->_subtitleLabel;
    if (subtitleLabel)
    {
      v25 = MEMORY[0x277CBEB18];
      leadingAnchor3 = [(PRXLabel *)subtitleLabel leadingAnchor];
      leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
      v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v61[0] = v27;
      trailingAnchor3 = [(PRXLabel *)self->_subtitleLabel trailingAnchor];
      trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
      v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v61[1] = v30;
      [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
      v31 = v57 = layoutMarginsGuide;
      v32 = [v25 arrayWithArray:v31];

      titleView = self->_titleView;
      topAnchor2 = [(PRXLabel *)self->_subtitleLabel topAnchor];
      if (titleView)
      {
        bottomAnchor = [(PRXTextContainer *)self->_titleView bottomAnchor];
        v36 = [topAnchor2 constraintEqualToAnchor:bottomAnchor constant:4.0];
        layoutMarginsGuide = v57;
      }

      else
      {
        layoutMarginsGuide = v57;
        bottomAnchor = [v57 topAnchor];
        v36 = [topAnchor2 constraintEqualToAnchor:bottomAnchor];
      }

      [(NSArray *)v32 addObject:v36];

      subtitleLabelConstraints = self->_subtitleLabelConstraints;
      self->_subtitleLabelConstraints = v32;
      v38 = v32;

      [MEMORY[0x277CCAAD0] activateConstraints:self->_subtitleLabelConstraints];
    }
  }

  if (!self->_mainContentConstraints)
  {
    v39 = 20.0;
    v40 = self->_subtitleLabel;
    if (v40 || (v40 = self->_titleView) != 0)
    {
      bottomAnchor2 = [v40 bottomAnchor];
    }

    else
    {
      bottomAnchor2 = [layoutMarginsGuide topAnchor];
      v39 = 0.0;
    }

    v55 = bottomAnchor2;
    topAnchor3 = [(UILayoutGuide *)self->_mainContentGuide topAnchor];
    v42 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:v39];
    v60[0] = v42;
    topAnchor4 = [(UILayoutGuide *)self->_internalContentGuide topAnchor];
    bottomAnchor3 = [(UILayoutGuide *)self->_mainContentGuide bottomAnchor];
    v45 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3];
    v60[1] = v45;
    bottomAnchor4 = [(UILayoutGuide *)self->_internalContentGuide bottomAnchor];
    [layoutMarginsGuide bottomAnchor];
    v48 = v47 = layoutMarginsGuide;
    v49 = [bottomAnchor4 constraintEqualToAnchor:v48];
    v60[2] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
    mainContentConstraints = self->_mainContentConstraints;
    self->_mainContentConstraints = v50;

    layoutMarginsGuide = v47;
    [MEMORY[0x277CCAAD0] activateConstraints:self->_mainContentConstraints];
  }
}

- (PRXButton)dismissButton
{
  delegate = [(PRXCardContentView *)self delegate];
  dismissButton = [delegate dismissButton];

  return dismissButton;
}

- (void)setDismissButton:(id)button
{
  buttonCopy = button;
  delegate = [(PRXCardContentView *)self delegate];
  [delegate setDismissButton:buttonCopy];
}

- (void)setTitleView:(id)view
{
  viewCopy = view;
  if (self->_titleView != viewCopy)
  {
    v8 = viewCopy;
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    [(PRXTextContainer *)self->_titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, view);
    titleView = self->_titleView;
    if (titleView)
    {
      [(PRXTextContainer *)titleView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXCardContentView *)self addSubview:self->_titleView];
    }

    [(PRXCardContentView *)self _invalidateMainContentConstraints];
    viewCopy = v8;
  }
}

- (void)setSubtitleLabel:(id)label
{
  labelCopy = label;
  if (self->_subtitleLabel != labelCopy)
  {
    v8 = labelCopy;
    subtitleLabelConstraints = self->_subtitleLabelConstraints;
    self->_subtitleLabelConstraints = 0;

    [(PRXLabel *)self->_subtitleLabel removeFromSuperview];
    objc_storeStrong(&self->_subtitleLabel, label);
    subtitleLabel = self->_subtitleLabel;
    if (subtitleLabel)
    {
      [(PRXLabel *)subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXCardContentView *)self addSubview:self->_subtitleLabel];
    }

    [(PRXCardContentView *)self _invalidateMainContentConstraints];
    labelCopy = v8;
  }
}

- (PRXLabel)titleLabel
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    titleView = self->_titleView;
  }

  else
  {
    titleView = 0;
  }

  return titleView;
}

- (PRXTextView)titleTextView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    titleView = self->_titleView;
  }

  else
  {
    titleView = 0;
  }

  return titleView;
}

- (NSArray)actionButtons
{
  delegate = [(PRXCardContentView *)self delegate];
  actionButtons = [delegate actionButtons];

  return actionButtons;
}

- (void)setActionButtons:(id)buttons
{
  buttonsCopy = buttons;
  delegate = [(PRXCardContentView *)self delegate];
  [delegate setActionButtons:buttonsCopy];
}

- (void)_invalidateMainContentConstraints
{
  if (self->_mainContentConstraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:?];
    mainContentConstraints = self->_mainContentConstraints;
    self->_mainContentConstraints = 0;

    [(PRXCardContentView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateTitleTextViewExclusionPathsForCardWidth:(double)width
{
  v34[2] = *MEMORY[0x277D85DE8];
  delegate = [(PRXCardContentView *)self delegate];
  dismissButton = [delegate dismissButton];

  titleTextView = [(PRXCardContentView *)self titleTextView];
  textContainer = [titleTextView textContainer];
  v9 = textContainer;
  if (dismissButton && titleTextView)
  {
    if (width == 0.0)
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      prx_cardSizeClass = PRXCardPreferredSizeClassForContainerBounds(v13, v14, v15, v16);

      PRXExpectedCardWidthForStyle([(PRXCardContentView *)self cardStyle]);
      width = v17;
    }

    else
    {
      traitCollection = [(PRXCardContentView *)self traitCollection];
      prx_cardSizeClass = [traitCollection prx_cardSizeClass];
    }

    if (prx_cardSizeClass == 1)
    {
      v18 = &PRXCardCompactLayoutMargins;
    }

    else
    {
      v18 = &PRXCardDefaultLayoutMargins;
    }

    v19 = *v18;
    v20 = &unk_260F852F8;
    if (prx_cardSizeClass != 1)
    {
      v20 = &unk_260F852D8;
    }

    v21 = *v20;
    v22 = &unk_260F85308;
    if (prx_cardSizeClass != 1)
    {
      v22 = &unk_260F852E8;
    }

    v23 = width - (v21 + *v22);
    v24 = 62.0 - v21;
    v25 = *MEMORY[0x277CBF3A0];
    v26 = *(MEMORY[0x277CBF3A0] + 8);
    v27 = 28.0 + 30.0 - v19;
    v35.origin.x = *MEMORY[0x277CBF3A0];
    v35.origin.y = v26;
    v35.size.width = v24;
    v35.size.height = v27;
    v28 = v23 - CGRectGetWidth(v35);
    v29 = [MEMORY[0x277D75208] bezierPathWithRect:{v25, v26, v24, v27}];
    v34[0] = v29;
    v30 = [MEMORY[0x277D75208] bezierPathWithRect:{v28, v26, v24, v27}];
    v34[1] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    [v9 setExclusionPaths:v31];

    titleTextView2 = [(PRXCardContentView *)self titleTextView];
    [titleTextView2 sizeThatFits:{v23, 1.79769313e308}];
    [(NSLayoutConstraint *)self->_titleViewHeightConstraint setConstant:v33];
  }

  else
  {
    [textContainer setExclusionPaths:MEMORY[0x277CBEBF8]];
  }
}

- (id)auxiliaryViews
{
  delegate = [(PRXCardContentView *)self delegate];
  auxiliaryViews = [delegate auxiliaryViews];

  return auxiliaryViews;
}

- (PRXCardContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
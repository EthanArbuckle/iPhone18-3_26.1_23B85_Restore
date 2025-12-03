@interface PRXFeatureTourContentView
- (CGSize)intrinsicContentSize;
- (PRXFeatureTourContentView)init;
- (PRXFeatureTourContentView)initWithFrame:(CGRect)frame;
- (void)setBodyView:(id)view;
- (void)setDismissButton:(id)button;
- (void)setTitleView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation PRXFeatureTourContentView

- (PRXFeatureTourContentView)init
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v8 = PRXCardPreferredSizeClassForContainerBounds(v4, v5, v6, v7);

  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = PRXCardPreferredSize(0, v8);

  return [(PRXFeatureTourContentView *)self initWithFrame:v9, v10, v12, v11];
}

- (PRXFeatureTourContentView)initWithFrame:(CGRect)frame
{
  v30[3] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = PRXFeatureTourContentView;
  v3 = [(PRXFeatureTourContentView *)&v29 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756D0]);
    mainContentGuide = v3->_mainContentGuide;
    v3->_mainContentGuide = v4;

    [(PRXFeatureTourContentView *)v3 addLayoutGuide:v3->_mainContentGuide];
    layoutMarginsGuide = [(PRXFeatureTourContentView *)v3 layoutMarginsGuide];
    v26 = MEMORY[0x277CCAAD0];
    topAnchor = [(UILayoutGuide *)v3->_mainContentGuide topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v30[0] = v8;
    leadingAnchor = [(UILayoutGuide *)v3->_mainContentGuide leadingAnchor];
    v28 = layoutMarginsGuide;
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[1] = v11;
    trailingAnchor = [(UILayoutGuide *)v3->_mainContentGuide trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    [v26 activateConstraints:v15];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v21 = PRXCardPreferredSizeClassForContainerBounds(v17, v18, v19, v20);
    v22 = 40.0;
    if (v21 == 1)
    {
      v22 = 20.0;
    }

    [(PRXFeatureTourContentView *)v3 setDirectionalLayoutMargins:v22, v22, v22, v22];

    [(PRXFeatureTourContentView *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PRXFeatureTourContentView *)v3 setBackgroundColor:systemBackgroundColor];

    v24 = v3;
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)change
{
  v13.receiver = self;
  v13.super_class = PRXFeatureTourContentView;
  changeCopy = change;
  [(PRXFeatureTourContentView *)&v13 traitCollectionDidChange:changeCopy];
  v5 = [(PRXFeatureTourContentView *)self traitCollection:v13.receiver];
  prx_cardSizeClass = [v5 prx_cardSizeClass];

  prx_cardSizeClass2 = [changeCopy prx_cardSizeClass];
  if (prx_cardSizeClass != prx_cardSizeClass2)
  {
    v8 = 40.0;
    if (prx_cardSizeClass)
    {
      v8 = 20.0;
    }

    [(PRXFeatureTourContentView *)self setDirectionalLayoutMargins:v8, v8, v8, v8];
  }

  traitCollection = [(PRXFeatureTourContentView *)self traitCollection];
  customBackgroundColor = [traitCollection customBackgroundColor];

  if (customBackgroundColor)
  {
    traitCollection2 = [(PRXFeatureTourContentView *)self traitCollection];
    customBackgroundColor2 = [traitCollection2 customBackgroundColor];
    [(PRXFeatureTourContentView *)self setBackgroundColor:customBackgroundColor2];
  }
}

- (CGSize)intrinsicContentSize
{
  traitCollection = [(PRXFeatureTourContentView *)self traitCollection];
  v3 = PRXCardPreferredSize(0, [traitCollection prx_cardSizeClass]);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)updateConstraints
{
  v53[3] = *MEMORY[0x277D85DE8];
  v49.receiver = self;
  v49.super_class = PRXFeatureTourContentView;
  [(PRXFeatureTourContentView *)&v49 updateConstraints];
  layoutMarginsGuide = [(PRXFeatureTourContentView *)self layoutMarginsGuide];
  titleView = self->_titleView;
  if (titleView && !self->_titleViewConstraints)
  {
    leadingAnchor = [(PRXTextContainer *)titleView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v46 = leadingAnchor;
    v6 = [leadingAnchor constraintEqualToAnchor:?];
    v53[0] = v6;
    trailingAnchor = [(PRXTextContainer *)self->_titleView trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v53[1] = v9;
    bodyView = self->_bodyView;
    v48 = layoutMarginsGuide;
    if (bodyView)
    {
      topAnchor = [(PRXTextContainer *)bodyView topAnchor];
      bottomAnchor = [(PRXTextContainer *)self->_titleView bottomAnchor];
      [topAnchor constraintEqualToAnchor:bottomAnchor constant:4.0];
    }

    else
    {
      topAnchor = [(PRXTextContainer *)self->_titleView bottomAnchor];
      bottomAnchor = [layoutMarginsGuide bottomAnchor];
      [topAnchor constraintEqualToAnchor:bottomAnchor];
    }
    v13 = ;
    v53[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = v14;

    [MEMORY[0x277CCAAD0] activateConstraints:self->_titleViewConstraints];
    layoutMarginsGuide = v48;
  }

  v16 = self->_bodyView;
  if (v16 && !self->_bodyViewConstraints)
  {
    leadingAnchor3 = [(PRXTextContainer *)v16 leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v43 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v52[0] = v43;
    trailingAnchor3 = [(PRXTextContainer *)self->_bodyView trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v52[1] = v19;
    bottomAnchor2 = [(PRXTextContainer *)self->_bodyView bottomAnchor];
    [layoutMarginsGuide bottomAnchor];
    v22 = v21 = layoutMarginsGuide;
    v23 = [bottomAnchor2 constraintEqualToAnchor:v22];
    v52[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    bodyViewConstraints = self->_bodyViewConstraints;
    self->_bodyViewConstraints = v24;

    layoutMarginsGuide = v21;
    [MEMORY[0x277CCAAD0] activateConstraints:self->_bodyViewConstraints];
  }

  dismissButton = self->_dismissButton;
  if (dismissButton && !self->_dismissButtonConstraints)
  {
    trailingAnchor5 = [(PRXButton *)dismissButton trailingAnchor];
    trailingAnchor6 = [(PRXFeatureTourContentView *)self trailingAnchor];
    v29 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-28.0];
    v51[0] = v29;
    topAnchor2 = [(PRXButton *)self->_dismissButton topAnchor];
    topAnchor3 = [(PRXFeatureTourContentView *)self topAnchor];
    v32 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:28.0];
    v51[1] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    dismissButtonConstraints = self->_dismissButtonConstraints;
    self->_dismissButtonConstraints = v33;

    [MEMORY[0x277CCAAD0] activateConstraints:self->_dismissButtonConstraints];
  }

  if (self->_mainContentGuide && !self->_mainContentGuideConstraints)
  {
    v35 = self->_titleView;
    if (v35)
    {
      v36 = v35;
    }

    else
    {
      v36 = self->_bodyView;
      if (!v36)
      {
        bottomAnchor3 = [(UILayoutGuide *)self->_mainContentGuide bottomAnchor];
        bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
        v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        goto LABEL_19;
      }
    }

    bottomAnchor3 = [(PRXTextContainer *)v36 topAnchor];
    bottomAnchor4 = [(UILayoutGuide *)self->_mainContentGuide bottomAnchor];
    v39 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:20.0];
LABEL_19:
    v40 = v39;

    v50 = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];

    mainContentGuideConstraints = self->_mainContentGuideConstraints;
    self->_mainContentGuideConstraints = v41;

    [MEMORY[0x277CCAAD0] activateConstraints:self->_mainContentGuideConstraints];
  }
}

- (void)setTitleView:(id)view
{
  viewCopy = view;
  titleView = self->_titleView;
  if (titleView != viewCopy)
  {
    v9 = viewCopy;
    [(PRXTextContainer *)titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, view);
    [(PRXTextContainer *)self->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXFeatureTourContentView *)self addSubview:self->_titleView];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    mainContentGuideConstraints = self->_mainContentGuideConstraints;
    self->_mainContentGuideConstraints = 0;

    titleView = [(PRXFeatureTourContentView *)self setNeedsUpdateConstraints];
    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](titleView, viewCopy);
}

- (void)setBodyView:(id)view
{
  viewCopy = view;
  bodyView = self->_bodyView;
  if (bodyView != viewCopy)
  {
    v9 = viewCopy;
    [(PRXTextContainer *)bodyView removeFromSuperview];
    objc_storeStrong(&self->_bodyView, view);
    [(PRXTextContainer *)self->_bodyView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXFeatureTourContentView *)self addSubview:self->_bodyView];
    bodyViewConstraints = self->_bodyViewConstraints;
    self->_bodyViewConstraints = 0;

    mainContentGuideConstraints = self->_mainContentGuideConstraints;
    self->_mainContentGuideConstraints = 0;

    bodyView = [(PRXFeatureTourContentView *)self setNeedsUpdateConstraints];
    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](bodyView, viewCopy);
}

- (void)setDismissButton:(id)button
{
  buttonCopy = button;
  dismissButton = self->_dismissButton;
  if (dismissButton != buttonCopy)
  {
    v8 = buttonCopy;
    [(PRXButton *)dismissButton removeFromSuperview];
    objc_storeStrong(&self->_dismissButton, button);
    [(PRXButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXFeatureTourContentView *)self addSubview:self->_dismissButton];
    dismissButtonConstraints = self->_dismissButtonConstraints;
    self->_dismissButtonConstraints = 0;

    dismissButton = [(PRXFeatureTourContentView *)self setNeedsUpdateConstraints];
    buttonCopy = v8;
  }

  MEMORY[0x2821F96F8](dismissButton, buttonCopy);
}

@end
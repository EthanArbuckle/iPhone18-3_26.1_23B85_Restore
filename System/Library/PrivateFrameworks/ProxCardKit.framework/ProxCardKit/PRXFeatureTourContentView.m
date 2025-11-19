@interface PRXFeatureTourContentView
- (CGSize)intrinsicContentSize;
- (PRXFeatureTourContentView)init;
- (PRXFeatureTourContentView)initWithFrame:(CGRect)a3;
- (void)setBodyView:(id)a3;
- (void)setDismissButton:(id)a3;
- (void)setTitleView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation PRXFeatureTourContentView

- (PRXFeatureTourContentView)init
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v8 = PRXCardPreferredSizeClassForContainerBounds(v4, v5, v6, v7);

  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = PRXCardPreferredSize(0, v8);

  return [(PRXFeatureTourContentView *)self initWithFrame:v9, v10, v12, v11];
}

- (PRXFeatureTourContentView)initWithFrame:(CGRect)a3
{
  v30[3] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = PRXFeatureTourContentView;
  v3 = [(PRXFeatureTourContentView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756D0]);
    mainContentGuide = v3->_mainContentGuide;
    v3->_mainContentGuide = v4;

    [(PRXFeatureTourContentView *)v3 addLayoutGuide:v3->_mainContentGuide];
    v6 = [(PRXFeatureTourContentView *)v3 layoutMarginsGuide];
    v26 = MEMORY[0x277CCAAD0];
    v27 = [(UILayoutGuide *)v3->_mainContentGuide topAnchor];
    v7 = [v6 topAnchor];
    v8 = [v27 constraintEqualToAnchor:v7];
    v30[0] = v8;
    v9 = [(UILayoutGuide *)v3->_mainContentGuide leadingAnchor];
    v28 = v6;
    v10 = [v6 leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v30[1] = v11;
    v12 = [(UILayoutGuide *)v3->_mainContentGuide trailingAnchor];
    v13 = [v6 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v30[2] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
    [v26 activateConstraints:v15];

    v16 = [MEMORY[0x277D759A0] mainScreen];
    [v16 bounds];
    v21 = PRXCardPreferredSizeClassForContainerBounds(v17, v18, v19, v20);
    v22 = 40.0;
    if (v21 == 1)
    {
      v22 = 20.0;
    }

    [(PRXFeatureTourContentView *)v3 setDirectionalLayoutMargins:v22, v22, v22, v22];

    [(PRXFeatureTourContentView *)v3 setInsetsLayoutMarginsFromSafeArea:0];
    v23 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PRXFeatureTourContentView *)v3 setBackgroundColor:v23];

    v24 = v3;
  }

  return v3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v13.receiver = self;
  v13.super_class = PRXFeatureTourContentView;
  v4 = a3;
  [(PRXFeatureTourContentView *)&v13 traitCollectionDidChange:v4];
  v5 = [(PRXFeatureTourContentView *)self traitCollection:v13.receiver];
  v6 = [v5 prx_cardSizeClass];

  v7 = [v4 prx_cardSizeClass];
  if (v6 != v7)
  {
    v8 = 40.0;
    if (v6)
    {
      v8 = 20.0;
    }

    [(PRXFeatureTourContentView *)self setDirectionalLayoutMargins:v8, v8, v8, v8];
  }

  v9 = [(PRXFeatureTourContentView *)self traitCollection];
  v10 = [v9 customBackgroundColor];

  if (v10)
  {
    v11 = [(PRXFeatureTourContentView *)self traitCollection];
    v12 = [v11 customBackgroundColor];
    [(PRXFeatureTourContentView *)self setBackgroundColor:v12];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(PRXFeatureTourContentView *)self traitCollection];
  v3 = PRXCardPreferredSize(0, [v2 prx_cardSizeClass]);
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
  v3 = [(PRXFeatureTourContentView *)self layoutMarginsGuide];
  titleView = self->_titleView;
  if (titleView && !self->_titleViewConstraints)
  {
    v5 = [(PRXTextContainer *)titleView leadingAnchor];
    v44 = [v3 leadingAnchor];
    v46 = v5;
    v6 = [v5 constraintEqualToAnchor:?];
    v53[0] = v6;
    v7 = [(PRXTextContainer *)self->_titleView trailingAnchor];
    v8 = [v3 trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    v53[1] = v9;
    bodyView = self->_bodyView;
    v48 = v3;
    if (bodyView)
    {
      v11 = [(PRXTextContainer *)bodyView topAnchor];
      v12 = [(PRXTextContainer *)self->_titleView bottomAnchor];
      [v11 constraintEqualToAnchor:v12 constant:4.0];
    }

    else
    {
      v11 = [(PRXTextContainer *)self->_titleView bottomAnchor];
      v12 = [v3 bottomAnchor];
      [v11 constraintEqualToAnchor:v12];
    }
    v13 = ;
    v53[2] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:3];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = v14;

    [MEMORY[0x277CCAAD0] activateConstraints:self->_titleViewConstraints];
    v3 = v48;
  }

  v16 = self->_bodyView;
  if (v16 && !self->_bodyViewConstraints)
  {
    v47 = [(PRXTextContainer *)v16 leadingAnchor];
    v45 = [v3 leadingAnchor];
    v43 = [v47 constraintEqualToAnchor:v45];
    v52[0] = v43;
    v17 = [(PRXTextContainer *)self->_bodyView trailingAnchor];
    v18 = [v3 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v52[1] = v19;
    v20 = [(PRXTextContainer *)self->_bodyView bottomAnchor];
    [v3 bottomAnchor];
    v22 = v21 = v3;
    v23 = [v20 constraintEqualToAnchor:v22];
    v52[2] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    bodyViewConstraints = self->_bodyViewConstraints;
    self->_bodyViewConstraints = v24;

    v3 = v21;
    [MEMORY[0x277CCAAD0] activateConstraints:self->_bodyViewConstraints];
  }

  dismissButton = self->_dismissButton;
  if (dismissButton && !self->_dismissButtonConstraints)
  {
    v27 = [(PRXButton *)dismissButton trailingAnchor];
    v28 = [(PRXFeatureTourContentView *)self trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-28.0];
    v51[0] = v29;
    v30 = [(PRXButton *)self->_dismissButton topAnchor];
    v31 = [(PRXFeatureTourContentView *)self topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:28.0];
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
        v37 = [(UILayoutGuide *)self->_mainContentGuide bottomAnchor];
        v38 = [v3 bottomAnchor];
        v39 = [v37 constraintEqualToAnchor:v38];
        goto LABEL_19;
      }
    }

    v37 = [(PRXTextContainer *)v36 topAnchor];
    v38 = [(UILayoutGuide *)self->_mainContentGuide bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:20.0];
LABEL_19:
    v40 = v39;

    v50 = v40;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];

    mainContentGuideConstraints = self->_mainContentGuideConstraints;
    self->_mainContentGuideConstraints = v41;

    [MEMORY[0x277CCAAD0] activateConstraints:self->_mainContentGuideConstraints];
  }
}

- (void)setTitleView:(id)a3
{
  v5 = a3;
  titleView = self->_titleView;
  if (titleView != v5)
  {
    v9 = v5;
    [(PRXTextContainer *)titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, a3);
    [(PRXTextContainer *)self->_titleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXFeatureTourContentView *)self addSubview:self->_titleView];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    mainContentGuideConstraints = self->_mainContentGuideConstraints;
    self->_mainContentGuideConstraints = 0;

    titleView = [(PRXFeatureTourContentView *)self setNeedsUpdateConstraints];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](titleView, v5);
}

- (void)setBodyView:(id)a3
{
  v5 = a3;
  bodyView = self->_bodyView;
  if (bodyView != v5)
  {
    v9 = v5;
    [(PRXTextContainer *)bodyView removeFromSuperview];
    objc_storeStrong(&self->_bodyView, a3);
    [(PRXTextContainer *)self->_bodyView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXFeatureTourContentView *)self addSubview:self->_bodyView];
    bodyViewConstraints = self->_bodyViewConstraints;
    self->_bodyViewConstraints = 0;

    mainContentGuideConstraints = self->_mainContentGuideConstraints;
    self->_mainContentGuideConstraints = 0;

    bodyView = [(PRXFeatureTourContentView *)self setNeedsUpdateConstraints];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](bodyView, v5);
}

- (void)setDismissButton:(id)a3
{
  v5 = a3;
  dismissButton = self->_dismissButton;
  if (dismissButton != v5)
  {
    v8 = v5;
    [(PRXButton *)dismissButton removeFromSuperview];
    objc_storeStrong(&self->_dismissButton, a3);
    [(PRXButton *)self->_dismissButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PRXFeatureTourContentView *)self addSubview:self->_dismissButton];
    dismissButtonConstraints = self->_dismissButtonConstraints;
    self->_dismissButtonConstraints = 0;

    dismissButton = [(PRXFeatureTourContentView *)self setNeedsUpdateConstraints];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](dismissButton, v5);
}

@end
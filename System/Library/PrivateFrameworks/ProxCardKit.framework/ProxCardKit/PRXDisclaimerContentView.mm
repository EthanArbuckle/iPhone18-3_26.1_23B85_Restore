@interface PRXDisclaimerContentView
- (PRXDisclaimerContentView)initWithCardStyle:(int64_t)style;
- (void)setMoreInfoButton:(id)button;
- (void)updateConstraints;
@end

@implementation PRXDisclaimerContentView

- (PRXDisclaimerContentView)initWithCardStyle:(int64_t)style
{
  v44[8] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = PRXDisclaimerContentView;
  v3 = [(PRXScrollableContentView *)&v43 initWithCardStyle:style];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    disclaimerContainerView = v3->_disclaimerContainerView;
    v3->_disclaimerContainerView = v4;

    [(UIView *)v3->_disclaimerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    scrollView = [(PRXScrollableContentView *)v3 scrollView];
    [scrollView addSubview:v3->_disclaimerContainerView];

    v7 = [PRXLabel labelWithStyle:3];
    disclaimerLabel = v3->_disclaimerLabel;
    v3->_disclaimerLabel = v7;

    [(PRXLabel *)v3->_disclaimerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_disclaimerContainerView addSubview:v3->_disclaimerLabel];
    scrollView2 = [(PRXScrollableContentView *)v3 scrollView];
    contentLayoutGuide = [scrollView2 contentLayoutGuide];

    layoutMarginsGuide = [(PRXDisclaimerContentView *)v3 layoutMarginsGuide];
    v32 = MEMORY[0x277CCAAD0];
    topAnchor = [(PRXLabel *)v3->_disclaimerLabel topAnchor];
    topAnchor2 = [(UIView *)v3->_disclaimerContainerView topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v44[0] = v40;
    leadingAnchor = [(PRXLabel *)v3->_disclaimerLabel leadingAnchor];
    leadingAnchor2 = [(UIView *)v3->_disclaimerContainerView leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v44[1] = v37;
    trailingAnchor = [(PRXLabel *)v3->_disclaimerLabel trailingAnchor];
    trailingAnchor2 = [(UIView *)v3->_disclaimerContainerView trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v44[2] = v33;
    topAnchor3 = [(UIView *)v3->_disclaimerContainerView topAnchor];
    topAnchor4 = [contentLayoutGuide topAnchor];
    v29 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
    v44[3] = v29;
    centerYAnchor = [(UIView *)v3->_disclaimerContainerView centerYAnchor];
    v34 = contentLayoutGuide;
    centerYAnchor2 = [contentLayoutGuide centerYAnchor];
    v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v44[4] = v25;
    bottomAnchor = [(UIView *)v3->_disclaimerContainerView bottomAnchor];
    bottomAnchor2 = [contentLayoutGuide bottomAnchor];
    v13 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
    v44[5] = v13;
    leadingAnchor3 = [(UIView *)v3->_disclaimerContainerView leadingAnchor];
    v15 = layoutMarginsGuide;
    v28 = layoutMarginsGuide;
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v17 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v44[6] = v17;
    trailingAnchor3 = [(UIView *)v3->_disclaimerContainerView trailingAnchor];
    trailingAnchor4 = [v15 trailingAnchor];
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v44[7] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:8];
    [v32 activateConstraints:v21];

    v22 = v3;
  }

  return v3;
}

- (void)updateConstraints
{
  v28[5] = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = PRXDisclaimerContentView;
  [(PRXCardContentView *)&v26 updateConstraints];
  if (!self->_contentConstraints)
  {
    moreInfoButton = self->_moreInfoButton;
    if (moreInfoButton)
    {
      topAnchor = [(PRXButton *)moreInfoButton topAnchor];
      bottomAnchor = [(PRXLabel *)self->_disclaimerLabel bottomAnchor];
      v20 = [topAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor];
      v28[0] = v20;
      leadingAnchor = [(PRXButton *)self->_moreInfoButton leadingAnchor];
      leadingAnchor2 = [(UIView *)self->_disclaimerContainerView leadingAnchor];
      v21 = [(NSArray *)leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      v28[1] = v21;
      trailingAnchor = [(PRXButton *)self->_moreInfoButton trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_disclaimerContainerView trailingAnchor];
      v5 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      v28[2] = v5;
      centerXAnchor = [(PRXButton *)self->_moreInfoButton centerXAnchor];
      centerXAnchor2 = [(UIView *)self->_disclaimerContainerView centerXAnchor];
      v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v28[3] = v8;
      bottomAnchor2 = [(PRXButton *)self->_moreInfoButton bottomAnchor];
      bottomAnchor3 = [(UIView *)self->_disclaimerContainerView bottomAnchor];
      v11 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v28[4] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
      contentConstraints = self->_contentConstraints;
      self->_contentConstraints = v12;

      v14 = v20;
      bottomAnchor5 = bottomAnchor;

      bottomAnchor4 = topAnchor;
      v17 = leadingAnchor;
    }

    else
    {
      bottomAnchor4 = [(PRXLabel *)self->_disclaimerLabel bottomAnchor];
      bottomAnchor5 = [(UIView *)self->_disclaimerContainerView bottomAnchor];
      v14 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
      v27 = v14;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v17 = self->_contentConstraints;
      self->_contentConstraints = v18;
    }

    [MEMORY[0x277CCAAD0] activateConstraints:self->_contentConstraints];
  }
}

- (void)setMoreInfoButton:(id)button
{
  buttonCopy = button;
  moreInfoButton = self->_moreInfoButton;
  v9 = buttonCopy;
  if (moreInfoButton != buttonCopy)
  {
    [(PRXButton *)moreInfoButton removeFromSuperview];
    objc_storeStrong(&self->_moreInfoButton, button);
    v7 = self->_moreInfoButton;
    if (v7)
    {
      [(PRXButton *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIView *)self->_disclaimerContainerView addSubview:self->_moreInfoButton];
    }

    if (self->_contentConstraints)
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:?];
      contentConstraints = self->_contentConstraints;
      self->_contentConstraints = 0;

      [(PRXDisclaimerContentView *)self setNeedsUpdateConstraints];
    }
  }
}

@end
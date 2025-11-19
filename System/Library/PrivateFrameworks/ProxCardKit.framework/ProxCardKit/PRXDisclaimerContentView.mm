@interface PRXDisclaimerContentView
- (PRXDisclaimerContentView)initWithCardStyle:(int64_t)a3;
- (void)setMoreInfoButton:(id)a3;
- (void)updateConstraints;
@end

@implementation PRXDisclaimerContentView

- (PRXDisclaimerContentView)initWithCardStyle:(int64_t)a3
{
  v44[8] = *MEMORY[0x277D85DE8];
  v43.receiver = self;
  v43.super_class = PRXDisclaimerContentView;
  v3 = [(PRXScrollableContentView *)&v43 initWithCardStyle:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    disclaimerContainerView = v3->_disclaimerContainerView;
    v3->_disclaimerContainerView = v4;

    [(UIView *)v3->_disclaimerContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [(PRXScrollableContentView *)v3 scrollView];
    [v6 addSubview:v3->_disclaimerContainerView];

    v7 = [PRXLabel labelWithStyle:3];
    disclaimerLabel = v3->_disclaimerLabel;
    v3->_disclaimerLabel = v7;

    [(PRXLabel *)v3->_disclaimerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_disclaimerContainerView addSubview:v3->_disclaimerLabel];
    v9 = [(PRXScrollableContentView *)v3 scrollView];
    v10 = [v9 contentLayoutGuide];

    v11 = [(PRXDisclaimerContentView *)v3 layoutMarginsGuide];
    v32 = MEMORY[0x277CCAAD0];
    v42 = [(PRXLabel *)v3->_disclaimerLabel topAnchor];
    v41 = [(UIView *)v3->_disclaimerContainerView topAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v44[0] = v40;
    v39 = [(PRXLabel *)v3->_disclaimerLabel leadingAnchor];
    v38 = [(UIView *)v3->_disclaimerContainerView leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v44[1] = v37;
    v36 = [(PRXLabel *)v3->_disclaimerLabel trailingAnchor];
    v35 = [(UIView *)v3->_disclaimerContainerView trailingAnchor];
    v33 = [v36 constraintEqualToAnchor:v35];
    v44[2] = v33;
    v31 = [(UIView *)v3->_disclaimerContainerView topAnchor];
    v30 = [v10 topAnchor];
    v29 = [v31 constraintGreaterThanOrEqualToAnchor:v30];
    v44[3] = v29;
    v27 = [(UIView *)v3->_disclaimerContainerView centerYAnchor];
    v34 = v10;
    v26 = [v10 centerYAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v44[4] = v25;
    v24 = [(UIView *)v3->_disclaimerContainerView bottomAnchor];
    v12 = [v10 bottomAnchor];
    v13 = [v24 constraintLessThanOrEqualToAnchor:v12];
    v44[5] = v13;
    v14 = [(UIView *)v3->_disclaimerContainerView leadingAnchor];
    v15 = v11;
    v28 = v11;
    v16 = [v11 leadingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v44[6] = v17;
    v18 = [(UIView *)v3->_disclaimerContainerView trailingAnchor];
    v19 = [v15 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
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
      v25 = [(PRXButton *)moreInfoButton topAnchor];
      v22 = [(PRXLabel *)self->_disclaimerLabel bottomAnchor];
      v20 = [v25 constraintGreaterThanOrEqualToAnchor:v22];
      v28[0] = v20;
      v24 = [(PRXButton *)self->_moreInfoButton leadingAnchor];
      v23 = [(UIView *)self->_disclaimerContainerView leadingAnchor];
      v21 = [(NSArray *)v24 constraintGreaterThanOrEqualToAnchor:v23];
      v28[1] = v21;
      v19 = [(PRXButton *)self->_moreInfoButton trailingAnchor];
      v4 = [(UIView *)self->_disclaimerContainerView trailingAnchor];
      v5 = [v19 constraintLessThanOrEqualToAnchor:v4];
      v28[2] = v5;
      v6 = [(PRXButton *)self->_moreInfoButton centerXAnchor];
      v7 = [(UIView *)self->_disclaimerContainerView centerXAnchor];
      v8 = [v6 constraintEqualToAnchor:v7];
      v28[3] = v8;
      v9 = [(PRXButton *)self->_moreInfoButton bottomAnchor];
      v10 = [(UIView *)self->_disclaimerContainerView bottomAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v28[4] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
      contentConstraints = self->_contentConstraints;
      self->_contentConstraints = v12;

      v14 = v20;
      v15 = v22;

      v16 = v25;
      v17 = v24;
    }

    else
    {
      v16 = [(PRXLabel *)self->_disclaimerLabel bottomAnchor];
      v15 = [(UIView *)self->_disclaimerContainerView bottomAnchor];
      v14 = [v16 constraintEqualToAnchor:v15];
      v27 = v14;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v17 = self->_contentConstraints;
      self->_contentConstraints = v18;
    }

    [MEMORY[0x277CCAAD0] activateConstraints:self->_contentConstraints];
  }
}

- (void)setMoreInfoButton:(id)a3
{
  v5 = a3;
  moreInfoButton = self->_moreInfoButton;
  v9 = v5;
  if (moreInfoButton != v5)
  {
    [(PRXButton *)moreInfoButton removeFromSuperview];
    objc_storeStrong(&self->_moreInfoButton, a3);
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
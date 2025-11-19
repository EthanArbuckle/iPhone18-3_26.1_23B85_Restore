@interface PRXCardContentView
- (NSArray)actionButtons;
- (PRXButton)dismissButton;
- (PRXCardContentView)initWithCardStyle:(int64_t)a3;
- (PRXCardContentView)initWithFrame:(CGRect)a3 cardStyle:(int64_t)a4;
- (PRXCardContentViewDelegate)delegate;
- (PRXLabel)titleLabel;
- (PRXTextView)titleTextView;
- (id)auxiliaryViews;
- (void)_invalidateMainContentConstraints;
- (void)setActionButtons:(id)a3;
- (void)setDismissButton:(id)a3;
- (void)setSubtitleLabel:(id)a3;
- (void)setTitleView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)updateTitleTextViewExclusionPathsForCardWidth:(double)a3;
@end

@implementation PRXCardContentView

- (PRXCardContentView)initWithCardStyle:(int64_t)a3
{
  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 bounds];
  v10 = PRXCardPreferredSizeClassForContainerBounds(v6, v7, v8, v9);

  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v14 = PRXCardPreferredSize(0, v10);

  return [(PRXCardContentView *)self initWithFrame:a3 cardStyle:v11, v12, v14, v13];
}

- (PRXCardContentView)initWithFrame:(CGRect)a3 cardStyle:(int64_t)a4
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = PRXCardContentView;
  v5 = [(PRXCardContentView *)&v29 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D756D0]);
    v28 = a4;
    mainContentGuide = v5->_mainContentGuide;
    v5->_mainContentGuide = v6;

    [(UILayoutGuide *)v5->_mainContentGuide setIdentifier:@"PRXCardMainContent"];
    [(PRXCardContentView *)v5 addLayoutGuide:v5->_mainContentGuide];
    v8 = objc_alloc_init(MEMORY[0x277D756D0]);
    internalContentGuide = v5->_internalContentGuide;
    v5->_internalContentGuide = v8;

    [(UILayoutGuide *)v5->_internalContentGuide setIdentifier:@"PRXCardInternalContent"];
    [(PRXCardContentView *)v5 addLayoutGuide:v5->_internalContentGuide];
    v10 = [(PRXCardContentView *)v5 layoutMarginsGuide];
    v22 = MEMORY[0x277CCAAD0];
    v27 = [(UILayoutGuide *)v5->_mainContentGuide leadingAnchor];
    v26 = [v10 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v30[0] = v25;
    v24 = [(UILayoutGuide *)v5->_mainContentGuide trailingAnchor];
    v23 = [v10 trailingAnchor];
    v11 = [v24 constraintEqualToAnchor:v23];
    v30[1] = v11;
    v12 = [(UILayoutGuide *)v5->_internalContentGuide leadingAnchor];
    v13 = [v10 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v30[2] = v14;
    v15 = [(UILayoutGuide *)v5->_internalContentGuide trailingAnchor];
    v16 = [v10 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v30[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    [v22 activateConstraints:v18];

    v5->_cardStyle = v28;
    [(PRXCardContentView *)v5 setDirectionalLayoutMargins:*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)];
    v19 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(PRXCardContentView *)v5 setBackgroundColor:v19];

    v20 = v5;
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v20.receiver = self;
  v20.super_class = PRXCardContentView;
  v4 = a3;
  [(PRXCardContentView *)&v20 traitCollectionDidChange:v4];
  v5 = [(PRXCardContentView *)self traitCollection:v20.receiver];
  v6 = [v5 prx_cardSizeClass];

  v7 = [v4 prx_cardSizeClass];
  if (v6 != v7)
  {
    v8 = &PRXCardCompactLayoutMargins;
    v9 = &unk_260F85308;
    if (v6 != 1)
    {
      v9 = &unk_260F852E8;
    }

    v10 = *v9;
    v11 = &unk_260F85300;
    if (v6 != 1)
    {
      v11 = &unk_260F852E0;
    }

    v12 = *v11;
    v13 = &unk_260F852F8;
    if (v6 != 1)
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

  v16 = [(PRXCardContentView *)self traitCollection];
  v17 = [v16 customBackgroundColor];

  if (v17)
  {
    v18 = [(PRXCardContentView *)self traitCollection];
    v19 = [v18 customBackgroundColor];
    [(PRXCardContentView *)self setBackgroundColor:v19];
  }
}

- (void)updateConstraints
{
  v62[4] = *MEMORY[0x277D85DE8];
  v59.receiver = self;
  v59.super_class = PRXCardContentView;
  [(PRXCardContentView *)&v59 updateConstraints];
  v3 = [(PRXCardContentView *)self layoutMarginsGuide];
  if (!self->_titleViewConstraints && self->_titleView)
  {
    [(PRXCardContentView *)self frame];
    v5 = v4;
    [(PRXCardContentView *)self layoutMargins];
    v7 = v6;
    [(PRXCardContentView *)self layoutMargins];
    [(PRXTextContainer *)self->_titleView sizeThatFits:v5 - (v7 + v8), 1.79769313e308];
    v10 = v9;
    v11 = [(PRXTextContainer *)self->_titleView heightAnchor];
    v12 = [v11 constraintEqualToConstant:v10];
    titleViewHeightConstraint = self->_titleViewHeightConstraint;
    self->_titleViewHeightConstraint = v12;

    v56 = [(PRXTextContainer *)self->_titleView leadingAnchor];
    v53 = [v3 leadingAnchor];
    v52 = [v56 constraintEqualToAnchor:v53];
    v62[0] = v52;
    v14 = [(PRXTextContainer *)self->_titleView trailingAnchor];
    v15 = [v3 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v62[1] = v16;
    v17 = [(PRXTextContainer *)self->_titleView topAnchor];
    [v3 topAnchor];
    v19 = v18 = v3;
    v20 = [v17 constraintEqualToAnchor:v19];
    v21 = self->_titleViewHeightConstraint;
    v62[2] = v20;
    v62[3] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = v22;

    v3 = v18;
    [MEMORY[0x277CCAAD0] activateConstraints:self->_titleViewConstraints];
  }

  if (!self->_subtitleLabelConstraints)
  {
    subtitleLabel = self->_subtitleLabel;
    if (subtitleLabel)
    {
      v25 = MEMORY[0x277CBEB18];
      v54 = [(PRXLabel *)subtitleLabel leadingAnchor];
      v26 = [v3 leadingAnchor];
      v27 = [v54 constraintEqualToAnchor:v26];
      v61[0] = v27;
      v28 = [(PRXLabel *)self->_subtitleLabel trailingAnchor];
      v29 = [v3 trailingAnchor];
      v30 = [v28 constraintEqualToAnchor:v29];
      v61[1] = v30;
      [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:2];
      v31 = v57 = v3;
      v32 = [v25 arrayWithArray:v31];

      titleView = self->_titleView;
      v34 = [(PRXLabel *)self->_subtitleLabel topAnchor];
      if (titleView)
      {
        v35 = [(PRXTextContainer *)self->_titleView bottomAnchor];
        v36 = [v34 constraintEqualToAnchor:v35 constant:4.0];
        v3 = v57;
      }

      else
      {
        v3 = v57;
        v35 = [v57 topAnchor];
        v36 = [v34 constraintEqualToAnchor:v35];
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
      v41 = [v40 bottomAnchor];
    }

    else
    {
      v41 = [v3 topAnchor];
      v39 = 0.0;
    }

    v55 = v41;
    v58 = [(UILayoutGuide *)self->_mainContentGuide topAnchor];
    v42 = [v58 constraintEqualToAnchor:v41 constant:v39];
    v60[0] = v42;
    v43 = [(UILayoutGuide *)self->_internalContentGuide topAnchor];
    v44 = [(UILayoutGuide *)self->_mainContentGuide bottomAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    v60[1] = v45;
    v46 = [(UILayoutGuide *)self->_internalContentGuide bottomAnchor];
    [v3 bottomAnchor];
    v48 = v47 = v3;
    v49 = [v46 constraintEqualToAnchor:v48];
    v60[2] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
    mainContentConstraints = self->_mainContentConstraints;
    self->_mainContentConstraints = v50;

    v3 = v47;
    [MEMORY[0x277CCAAD0] activateConstraints:self->_mainContentConstraints];
  }
}

- (PRXButton)dismissButton
{
  v2 = [(PRXCardContentView *)self delegate];
  v3 = [v2 dismissButton];

  return v3;
}

- (void)setDismissButton:(id)a3
{
  v4 = a3;
  v5 = [(PRXCardContentView *)self delegate];
  [v5 setDismissButton:v4];
}

- (void)setTitleView:(id)a3
{
  v5 = a3;
  if (self->_titleView != v5)
  {
    v8 = v5;
    titleViewConstraints = self->_titleViewConstraints;
    self->_titleViewConstraints = 0;

    [(PRXTextContainer *)self->_titleView removeFromSuperview];
    objc_storeStrong(&self->_titleView, a3);
    titleView = self->_titleView;
    if (titleView)
    {
      [(PRXTextContainer *)titleView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXCardContentView *)self addSubview:self->_titleView];
    }

    [(PRXCardContentView *)self _invalidateMainContentConstraints];
    v5 = v8;
  }
}

- (void)setSubtitleLabel:(id)a3
{
  v5 = a3;
  if (self->_subtitleLabel != v5)
  {
    v8 = v5;
    subtitleLabelConstraints = self->_subtitleLabelConstraints;
    self->_subtitleLabelConstraints = 0;

    [(PRXLabel *)self->_subtitleLabel removeFromSuperview];
    objc_storeStrong(&self->_subtitleLabel, a3);
    subtitleLabel = self->_subtitleLabel;
    if (subtitleLabel)
    {
      [(PRXLabel *)subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXCardContentView *)self addSubview:self->_subtitleLabel];
    }

    [(PRXCardContentView *)self _invalidateMainContentConstraints];
    v5 = v8;
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
  v2 = [(PRXCardContentView *)self delegate];
  v3 = [v2 actionButtons];

  return v3;
}

- (void)setActionButtons:(id)a3
{
  v4 = a3;
  v5 = [(PRXCardContentView *)self delegate];
  [v5 setActionButtons:v4];
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

- (void)updateTitleTextViewExclusionPathsForCardWidth:(double)a3
{
  v34[2] = *MEMORY[0x277D85DE8];
  v5 = [(PRXCardContentView *)self delegate];
  v6 = [v5 dismissButton];

  v7 = [(PRXCardContentView *)self titleTextView];
  v8 = [v7 textContainer];
  v9 = v8;
  if (v6 && v7)
  {
    if (a3 == 0.0)
    {
      v12 = [MEMORY[0x277D759A0] mainScreen];
      [v12 bounds];
      v11 = PRXCardPreferredSizeClassForContainerBounds(v13, v14, v15, v16);

      PRXExpectedCardWidthForStyle([(PRXCardContentView *)self cardStyle]);
      a3 = v17;
    }

    else
    {
      v10 = [(PRXCardContentView *)self traitCollection];
      v11 = [v10 prx_cardSizeClass];
    }

    if (v11 == 1)
    {
      v18 = &PRXCardCompactLayoutMargins;
    }

    else
    {
      v18 = &PRXCardDefaultLayoutMargins;
    }

    v19 = *v18;
    v20 = &unk_260F852F8;
    if (v11 != 1)
    {
      v20 = &unk_260F852D8;
    }

    v21 = *v20;
    v22 = &unk_260F85308;
    if (v11 != 1)
    {
      v22 = &unk_260F852E8;
    }

    v23 = a3 - (v21 + *v22);
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

    v32 = [(PRXCardContentView *)self titleTextView];
    [v32 sizeThatFits:{v23, 1.79769313e308}];
    [(NSLayoutConstraint *)self->_titleViewHeightConstraint setConstant:v33];
  }

  else
  {
    [v8 setExclusionPaths:MEMORY[0x277CBEBF8]];
  }
}

- (id)auxiliaryViews
{
  v2 = [(PRXCardContentView *)self delegate];
  v3 = [v2 auxiliaryViews];

  return v3;
}

- (PRXCardContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
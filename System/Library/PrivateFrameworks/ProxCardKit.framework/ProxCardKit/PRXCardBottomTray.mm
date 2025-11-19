@interface PRXCardBottomTray
- (BOOL)containsContents;
- (PRXCardBottomTray)initWithFrame:(CGRect)a3;
- (PRXCardBottomTrayDelegate)delegate;
- (void)layoutSubviews;
- (void)setActionButtons:(id)a3;
- (void)setActivityIndicator:(id)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setImageView:(id)a3;
- (void)setTitle:(id)a3;
- (void)updateConstraints;
@end

@implementation PRXCardBottomTray

- (PRXCardBottomTray)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PRXCardBottomTray;
  v3 = [(PRXCardBottomTray *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PRXCardBottomTray *)v3 setAccessibilityIdentifier:@"PRXCardBottomTray"];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = v3->_titleLabel;
  v3->_titleLabel = v4;

  [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v3->_titleLabel setTextColor:v6];

  [(UILabel *)v3->_titleLabel setTextAlignment:1];
  v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76940]];
  [(UILabel *)v3->_titleLabel setFont:v7];

  [(UILabel *)v3->_titleLabel setNumberOfLines:0];
  [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v3->_titleLabel setMaximumContentSizeCategory:*MEMORY[0x277D76838]];
  [(PRXCardBottomTray *)v3 addSubview:v3->_titleLabel];
  return v3;
}

- (void)updateConstraints
{
  v2 = self;
  v90[4] = *MEMORY[0x277D85DE8];
  v3 = [(PRXCardBottomTray *)self activityIndicator];

  v4 = [(PRXCardBottomTray *)v2 actionButtons];
  v5 = [v4 count];

  v6 = [(PRXCardBottomTray *)v2 title];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(PRXCardBottomTray *)v2 attributedTitle];
    v7 = v8 != 0;
  }

  if (!v3)
  {
    v9 = [(PRXCardBottomTray *)v2 titleConstraints];
    v10 = v9 == 0 && v7;

    v74 = v2;
    if (v10 == 1)
    {
      v11 = [(PRXCardBottomTray *)v2 titleLabel];
      v12 = [v11 bottomAnchor];
      v81 = v5;
      if (v5)
      {
        v13 = [(PRXCardBottomTray *)v2 actionButtons];
        v14 = [v13 firstObject];
        v15 = [v14 topAnchor];
        v16 = [v12 constraintLessThanOrEqualToAnchor:v15 constant:-8.0];
      }

      else
      {
        v13 = [(PRXCardBottomTray *)v2 layoutMarginsGuide];
        v14 = [v13 bottomAnchor];
        v16 = [v12 constraintEqualToAnchor:v14];
      }

      v66 = v16;

      v79 = [(PRXCardBottomTray *)v2 titleLabel];
      v75 = [v79 leadingAnchor];
      v77 = [(PRXCardBottomTray *)v2 layoutMarginsGuide];
      v72 = [v77 leadingAnchor];
      obja = [v75 constraintEqualToAnchor:v72];
      v90[0] = obja;
      v68 = [(PRXCardBottomTray *)v2 titleLabel];
      v17 = [v68 trailingAnchor];
      v18 = [(PRXCardBottomTray *)v2 layoutMarginsGuide];
      v19 = [v18 trailingAnchor];
      v20 = [v17 constraintEqualToAnchor:v19];
      v90[1] = v20;
      v21 = [(PRXCardBottomTray *)v2 titleLabel];
      v22 = [v21 topAnchor];
      v23 = [(PRXCardBottomTray *)v2 topAnchor];
      v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:20.0];
      v90[2] = v24;
      v90[3] = v16;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
      [(PRXCardBottomTray *)v74 setTitleConstraints:v25];

      v2 = v74;
      v26 = MEMORY[0x277CCAAD0];
      v27 = [(PRXCardBottomTray *)v74 titleConstraints];
      [v26 activateConstraints:v27];

      v5 = v81;
    }

    v28 = [(PRXCardBottomTray *)v2 buttonConstraints];

    if (!v28 && v5)
    {
      v29 = [(PRXCardBottomTray *)v2 actionButtons];
      v30 = [v29 firstObject];

      v31 = [MEMORY[0x277CBEB18] array];
      if (!v7)
      {
        v32 = 20.0;
        if ([v30 proximityButtonType])
        {
          v33 = 20.0;
        }

        else
        {
          v33 = 0.0;
        }

        if (!_UISolariumEnabled())
        {
          v32 = v33;
        }

        if ([v30 proximityButtonType] == 6)
        {
          v32 = 0.0;
        }

        v34 = [v30 proximityButtonType];
        v35 = [v30 topAnchor];
        v36 = [(PRXCardBottomTray *)v2 topAnchor];
        if (v34 == 6)
        {
          [v35 constraintEqualToAnchor:v36 constant:v32];
        }

        else
        {
          [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:v32];
        }
        v37 = ;

        [v31 addObject:v37];
      }

      v38 = [(PRXCardBottomTray *)v2 actionButtons];
      v39 = [v38 lastObject];

      if (v30 == v39 && [v39 proximityButtonType] != 6)
      {
        v63 = [(PRXCardBottomTray *)v2 layoutMarginsGuide];
        v40 = [v63 bottomAnchor];

        v41 = 0.0;
      }

      else
      {
        v40 = [(PRXCardBottomTray *)v2 bottomAnchor];
        v41 = -PRXLastButtonOfMultipleToBottomMargin();
      }

      v42 = [v39 proximityButtonType];
      v43 = [v39 bottomAnchor];
      v44 = v43;
      if (v30 == v39 && v42 == 6)
      {
        v45 = [v43 constraintEqualToAnchor:v40 constant:v41];
      }

      else
      {
        v45 = [v43 constraintLessThanOrEqualToAnchor:v40 constant:v41];
      }

      v46 = v45;
      v65 = v40;
      v69 = v30;

      v78 = v31;
      v64 = v46;
      [v31 addObject:v46];
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      obj = [(PRXCardBottomTray *)v2 actionButtons];
      v76 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
      v67 = v39;
      v47 = 0;
      if (v76)
      {
        v73 = *v85;
        do
        {
          v48 = 0;
          v49 = v47;
          do
          {
            if (*v85 != v73)
            {
              objc_enumerationMutation(obj);
            }

            v50 = *(*(&v84 + 1) + 8 * v48);
            v80 = [v50 leadingAnchor];
            v82 = [(PRXCardBottomTray *)v2 layoutMarginsGuide];
            v51 = [v82 leadingAnchor];
            v52 = [v80 constraintEqualToAnchor:v51];
            v88[0] = v52;
            v53 = [v50 trailingAnchor];
            v54 = [(PRXCardBottomTray *)v2 layoutMarginsGuide];
            v55 = [v54 trailingAnchor];
            v56 = [v53 constraintEqualToAnchor:v55];
            v88[1] = v56;
            v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
            [v78 addObjectsFromArray:v57];

            if (v49)
            {
              v58 = [v50 topAnchor];
              v59 = [v49 bottomAnchor];
              v60 = [v58 constraintEqualToAnchor:v59 constant:PRXButtonToButtonMargin()];
              [v78 addObject:v60];
            }

            v47 = v50;

            ++v48;
            v49 = v47;
            v2 = v74;
          }

          while (v76 != v48);
          v76 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
        }

        while (v76);
      }

      [(PRXCardBottomTray *)v2 setButtonConstraints:v78];
      v61 = MEMORY[0x277CCAAD0];
      v62 = [(PRXCardBottomTray *)v2 buttonConstraints];
      [v61 activateConstraints:v62];
    }
  }

  v83.receiver = v2;
  v83.super_class = PRXCardBottomTray;
  [(PRXCardBottomTray *)&v83 updateConstraints];
}

- (void)layoutSubviews
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_260F65000, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

- (void)setActionButtons:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  actionButtons = self->_actionButtons;
  if (actionButtons != v4 && ![(NSArray *)actionButtons isEqualToArray:v4])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = self->_actionButtons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v30 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v8);
    }

    v11 = [(NSArray *)v4 copy];
    v12 = self->_actionButtons;
    self->_actionButtons = v11;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = self->_actionButtons;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * j);
          [v18 setTranslatesAutoresizingMaskIntoConstraints:{0, v26}];
          [(PRXCardBottomTray *)self addSubview:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v15);
    }

    v19 = [(PRXCardBottomTray *)self titleConstraints];

    if (v19)
    {
      v20 = MEMORY[0x277CCAAD0];
      v21 = [(PRXCardBottomTray *)self titleConstraints];
      [v20 deactivateConstraints:v21];

      [(PRXCardBottomTray *)self setTitleConstraints:0];
    }

    v22 = [(PRXCardBottomTray *)self buttonConstraints];

    if (v22)
    {
      v23 = MEMORY[0x277CCAAD0];
      v24 = [(PRXCardBottomTray *)self buttonConstraints];
      [v23 deactivateConstraints:v24];

      [(PRXCardBottomTray *)self setButtonConstraints:0];
    }

    [(PRXCardBottomTray *)self setNeedsUpdateConstraints];
    v25 = [(PRXCardBottomTray *)self delegate];
    [v25 didChangeContentsOfBottomTray:self];
  }
}

- (void)setActivityIndicator:(id)a3
{
  v42[5] = *MEMORY[0x277D85DE8];
  v5 = a3;
  activityIndicator = self->_activityIndicator;
  if (activityIndicator != v5)
  {
    [(UIView *)activityIndicator removeFromSuperview];
    objc_storeStrong(&self->_activityIndicator, a3);
    v7 = self->_activityIndicator;
    if (v7)
    {
      [(UIView *)self->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXCardBottomTray *)self addSubview:self->_activityIndicator];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = 0.0;
      }

      else
      {
        v8 = -14.0;
      }

      v36 = [(UIView *)self->_activityIndicator centerXAnchor];
      v35 = [(PRXCardBottomTray *)self centerXAnchor];
      v34 = [v36 constraintEqualToAnchor:v35];
      v42[0] = v34;
      v32 = [(UIView *)self->_activityIndicator leadingAnchor];
      v33 = [(PRXCardBottomTray *)self layoutMarginsGuide];
      v31 = [v33 leadingAnchor];
      v30 = [v32 constraintGreaterThanOrEqualToAnchor:v31];
      v42[1] = v30;
      v28 = [(UIView *)self->_activityIndicator trailingAnchor];
      v29 = [(PRXCardBottomTray *)self layoutMarginsGuide];
      v27 = [v29 trailingAnchor];
      v26 = [v28 constraintLessThanOrEqualToAnchor:v27];
      v42[2] = v26;
      v9 = [(UIView *)self->_activityIndicator topAnchor];
      v10 = [(PRXCardBottomTray *)self topAnchor];
      v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10 constant:20.0];
      v42[3] = v11;
      v12 = [(UIView *)self->_activityIndicator bottomAnchor];
      v13 = [(PRXCardBottomTray *)self layoutMarginsGuide];
      v14 = [v13 bottomAnchor];
      v15 = [v12 constraintEqualToAnchor:v14 constant:v8];
      v42[4] = v15;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];

      [MEMORY[0x277CCAAD0] activateConstraints:v25];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = [(PRXCardBottomTray *)self actionButtons];
    v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v38;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v37 + 1) + 8 * i) setHidden:v7 != 0];
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v18);
    }

    v21 = v7 != 0;

    v22 = [(PRXCardBottomTray *)self titleLabel];
    [v22 setHidden:v21];

    v23 = [(PRXCardBottomTray *)self imageView];
    [v23 setHidden:v21];

    [(PRXCardBottomTray *)self setNeedsUpdateConstraints];
    v24 = [(PRXCardBottomTray *)self delegate];
    [v24 didChangeContentsOfBottomTray:self];
  }
}

- (void)setImageView:(id)a3
{
  v34[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (self->_imageView != v5)
  {
    [(UIImageView *)v5 removeFromSuperview];
    objc_storeStrong(&self->_imageView, a3);
    imageView = self->_imageView;
    if (imageView)
    {
      [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXCardBottomTray *)self addSubview:self->_imageView];
      v24 = MEMORY[0x277CCAAD0];
      v28 = [(UIImageView *)self->_imageView centerXAnchor];
      v27 = [(PRXCardBottomTray *)self centerXAnchor];
      v26 = [v28 constraintEqualToAnchor:v27];
      v34[0] = v26;
      v25 = [(UIImageView *)self->_imageView topAnchor];
      v8 = [(PRXCardBottomTray *)self topAnchor];
      v9 = [v25 constraintGreaterThanOrEqualToAnchor:v8 constant:20.0];
      v34[1] = v9;
      v10 = [(UIImageView *)self->_imageView bottomAnchor];
      v11 = [(PRXCardBottomTray *)self layoutMarginsGuide];
      v12 = [v11 bottomAnchor];
      v13 = [v10 constraintLessThanOrEqualToAnchor:v12 constant:-8.0];
      v34[2] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
      [v24 activateConstraints:v14];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = [(PRXCardBottomTray *)self actionButtons];
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v29 + 1) + 8 * i) setHidden:imageView != 0];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    v20 = imageView != 0;

    v21 = [(PRXCardBottomTray *)self titleLabel];
    [v21 setHidden:v20];

    v22 = [(PRXCardBottomTray *)self activityIndicator];
    [v22 setHidden:v20];

    v23 = [(PRXCardBottomTray *)self delegate];
    [v23 didChangeContentsOfBottomTray:self];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  title = self->_title;
  self->_title = v5;

  v7 = [(PRXCardBottomTray *)self titleLabel];
  [v7 setText:v4];

  v8 = [(PRXCardBottomTray *)self titleConstraints];

  if (v8)
  {
    v9 = MEMORY[0x277CCAAD0];
    v10 = [(PRXCardBottomTray *)self titleConstraints];
    [v9 deactivateConstraints:v10];

    [(PRXCardBottomTray *)self setTitleConstraints:0];
  }

  v11 = [(PRXCardBottomTray *)self buttonConstraints];

  if (v11)
  {
    v12 = MEMORY[0x277CCAAD0];
    v13 = [(PRXCardBottomTray *)self buttonConstraints];
    [v12 deactivateConstraints:v13];

    [(PRXCardBottomTray *)self setButtonConstraints:0];
  }

  [(PRXCardBottomTray *)self setNeedsUpdateConstraints];
  v14 = [(PRXCardBottomTray *)self delegate];
  [v14 didChangeContentsOfBottomTray:self];
}

- (void)setAttributedTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = v5;

  v7 = [(PRXCardBottomTray *)self titleLabel];
  [v7 setAttributedText:v4];

  v8 = [(PRXCardBottomTray *)self titleConstraints];

  if (v8)
  {
    v9 = MEMORY[0x277CCAAD0];
    v10 = [(PRXCardBottomTray *)self titleConstraints];
    [v9 deactivateConstraints:v10];

    [(PRXCardBottomTray *)self setTitleConstraints:0];
  }

  v11 = [(PRXCardBottomTray *)self buttonConstraints];

  if (v11)
  {
    v12 = MEMORY[0x277CCAAD0];
    v13 = [(PRXCardBottomTray *)self buttonConstraints];
    [v12 deactivateConstraints:v13];

    [(PRXCardBottomTray *)self setButtonConstraints:0];
  }

  [(PRXCardBottomTray *)self setNeedsUpdateConstraints];
  v14 = [(PRXCardBottomTray *)self delegate];
  [v14 didChangeContentsOfBottomTray:self];
}

- (BOOL)containsContents
{
  v4 = [(PRXCardBottomTray *)self title];
  if (v4)
  {
    v2 = [(PRXCardBottomTray *)self title];
    if ([v2 length])
    {
      v5 = 1;
      goto LABEL_9;
    }
  }

  v6 = [(PRXCardBottomTray *)self imageView];
  if (v6)
  {
  }

  else
  {
    v7 = [(PRXCardBottomTray *)self actionButtons];
    if (![v7 count])
    {
      v9 = [(PRXCardBottomTray *)self activityIndicator];
      v5 = v9 != 0;

      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v5 = 1;
  if (v4)
  {
LABEL_9:
  }

LABEL_10:

  return v5;
}

- (PRXCardBottomTrayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface PRXCardBottomTray
- (BOOL)containsContents;
- (PRXCardBottomTray)initWithFrame:(CGRect)frame;
- (PRXCardBottomTrayDelegate)delegate;
- (void)layoutSubviews;
- (void)setActionButtons:(id)buttons;
- (void)setActivityIndicator:(id)indicator;
- (void)setAttributedTitle:(id)title;
- (void)setImageView:(id)view;
- (void)setTitle:(id)title;
- (void)updateConstraints;
@end

@implementation PRXCardBottomTray

- (PRXCardBottomTray)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PRXCardBottomTray;
  v3 = [(PRXCardBottomTray *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PRXCardBottomTray *)v3 setAccessibilityIdentifier:@"PRXCardBottomTray"];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  titleLabel = v3->_titleLabel;
  v3->_titleLabel = v4;

  [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v3->_titleLabel setTextColor:secondaryLabelColor];

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
  selfCopy = self;
  v90[4] = *MEMORY[0x277D85DE8];
  activityIndicator = [(PRXCardBottomTray *)self activityIndicator];

  actionButtons = [(PRXCardBottomTray *)selfCopy actionButtons];
  v5 = [actionButtons count];

  title = [(PRXCardBottomTray *)selfCopy title];
  if (title)
  {
    v7 = 1;
  }

  else
  {
    attributedTitle = [(PRXCardBottomTray *)selfCopy attributedTitle];
    v7 = attributedTitle != 0;
  }

  if (!activityIndicator)
  {
    titleConstraints = [(PRXCardBottomTray *)selfCopy titleConstraints];
    v10 = titleConstraints == 0 && v7;

    v74 = selfCopy;
    if (v10 == 1)
    {
      titleLabel = [(PRXCardBottomTray *)selfCopy titleLabel];
      bottomAnchor = [titleLabel bottomAnchor];
      v81 = v5;
      if (v5)
      {
        actionButtons2 = [(PRXCardBottomTray *)selfCopy actionButtons];
        firstObject = [actionButtons2 firstObject];
        topAnchor = [firstObject topAnchor];
        v16 = [bottomAnchor constraintLessThanOrEqualToAnchor:topAnchor constant:-8.0];
      }

      else
      {
        actionButtons2 = [(PRXCardBottomTray *)selfCopy layoutMarginsGuide];
        firstObject = [actionButtons2 bottomAnchor];
        v16 = [bottomAnchor constraintEqualToAnchor:firstObject];
      }

      v66 = v16;

      titleLabel2 = [(PRXCardBottomTray *)selfCopy titleLabel];
      leadingAnchor = [titleLabel2 leadingAnchor];
      layoutMarginsGuide = [(PRXCardBottomTray *)selfCopy layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      obja = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v90[0] = obja;
      titleLabel3 = [(PRXCardBottomTray *)selfCopy titleLabel];
      trailingAnchor = [titleLabel3 trailingAnchor];
      layoutMarginsGuide2 = [(PRXCardBottomTray *)selfCopy layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v90[1] = v20;
      titleLabel4 = [(PRXCardBottomTray *)selfCopy titleLabel];
      topAnchor2 = [titleLabel4 topAnchor];
      topAnchor3 = [(PRXCardBottomTray *)selfCopy topAnchor];
      v24 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3 constant:20.0];
      v90[2] = v24;
      v90[3] = v16;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
      [(PRXCardBottomTray *)v74 setTitleConstraints:v25];

      selfCopy = v74;
      v26 = MEMORY[0x277CCAAD0];
      titleConstraints2 = [(PRXCardBottomTray *)v74 titleConstraints];
      [v26 activateConstraints:titleConstraints2];

      v5 = v81;
    }

    buttonConstraints = [(PRXCardBottomTray *)selfCopy buttonConstraints];

    if (!buttonConstraints && v5)
    {
      actionButtons3 = [(PRXCardBottomTray *)selfCopy actionButtons];
      firstObject2 = [actionButtons3 firstObject];

      array = [MEMORY[0x277CBEB18] array];
      if (!v7)
      {
        v32 = 20.0;
        if ([firstObject2 proximityButtonType])
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

        if ([firstObject2 proximityButtonType] == 6)
        {
          v32 = 0.0;
        }

        proximityButtonType = [firstObject2 proximityButtonType];
        topAnchor4 = [firstObject2 topAnchor];
        topAnchor5 = [(PRXCardBottomTray *)selfCopy topAnchor];
        if (proximityButtonType == 6)
        {
          [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:v32];
        }

        else
        {
          [topAnchor4 constraintGreaterThanOrEqualToAnchor:topAnchor5 constant:v32];
        }
        v37 = ;

        [array addObject:v37];
      }

      actionButtons4 = [(PRXCardBottomTray *)selfCopy actionButtons];
      lastObject = [actionButtons4 lastObject];

      if (firstObject2 == lastObject && [lastObject proximityButtonType] != 6)
      {
        layoutMarginsGuide3 = [(PRXCardBottomTray *)selfCopy layoutMarginsGuide];
        bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];

        v41 = 0.0;
      }

      else
      {
        bottomAnchor2 = [(PRXCardBottomTray *)selfCopy bottomAnchor];
        v41 = -PRXLastButtonOfMultipleToBottomMargin();
      }

      proximityButtonType2 = [lastObject proximityButtonType];
      bottomAnchor3 = [lastObject bottomAnchor];
      v44 = bottomAnchor3;
      if (firstObject2 == lastObject && proximityButtonType2 == 6)
      {
        v45 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:v41];
      }

      else
      {
        v45 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:v41];
      }

      v46 = v45;
      v65 = bottomAnchor2;
      v69 = firstObject2;

      v78 = array;
      v64 = v46;
      [array addObject:v46];
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      obj = [(PRXCardBottomTray *)selfCopy actionButtons];
      v76 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
      v67 = lastObject;
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
            leadingAnchor3 = [v50 leadingAnchor];
            layoutMarginsGuide4 = [(PRXCardBottomTray *)selfCopy layoutMarginsGuide];
            leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
            v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
            v88[0] = v52;
            trailingAnchor3 = [v50 trailingAnchor];
            layoutMarginsGuide5 = [(PRXCardBottomTray *)selfCopy layoutMarginsGuide];
            trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
            v56 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
            v88[1] = v56;
            v57 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
            [v78 addObjectsFromArray:v57];

            if (v49)
            {
              topAnchor6 = [v50 topAnchor];
              bottomAnchor4 = [v49 bottomAnchor];
              v60 = [topAnchor6 constraintEqualToAnchor:bottomAnchor4 constant:PRXButtonToButtonMargin()];
              [v78 addObject:v60];
            }

            v47 = v50;

            ++v48;
            v49 = v47;
            selfCopy = v74;
          }

          while (v76 != v48);
          v76 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
        }

        while (v76);
      }

      [(PRXCardBottomTray *)selfCopy setButtonConstraints:v78];
      v61 = MEMORY[0x277CCAAD0];
      buttonConstraints2 = [(PRXCardBottomTray *)selfCopy buttonConstraints];
      [v61 activateConstraints:buttonConstraints2];
    }
  }

  v83.receiver = selfCopy;
  v83.super_class = PRXCardBottomTray;
  [(PRXCardBottomTray *)&v83 updateConstraints];
}

- (void)layoutSubviews
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_260F65000, a2, OS_LOG_TYPE_DEBUG, "%@", &v2, 0xCu);
}

- (void)setActionButtons:(id)buttons
{
  v36 = *MEMORY[0x277D85DE8];
  buttonsCopy = buttons;
  actionButtons = self->_actionButtons;
  if (actionButtons != buttonsCopy && ![(NSArray *)actionButtons isEqualToArray:buttonsCopy])
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

    v11 = [(NSArray *)buttonsCopy copy];
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

    titleConstraints = [(PRXCardBottomTray *)self titleConstraints];

    if (titleConstraints)
    {
      v20 = MEMORY[0x277CCAAD0];
      titleConstraints2 = [(PRXCardBottomTray *)self titleConstraints];
      [v20 deactivateConstraints:titleConstraints2];

      [(PRXCardBottomTray *)self setTitleConstraints:0];
    }

    buttonConstraints = [(PRXCardBottomTray *)self buttonConstraints];

    if (buttonConstraints)
    {
      v23 = MEMORY[0x277CCAAD0];
      buttonConstraints2 = [(PRXCardBottomTray *)self buttonConstraints];
      [v23 deactivateConstraints:buttonConstraints2];

      [(PRXCardBottomTray *)self setButtonConstraints:0];
    }

    [(PRXCardBottomTray *)self setNeedsUpdateConstraints];
    delegate = [(PRXCardBottomTray *)self delegate];
    [delegate didChangeContentsOfBottomTray:self];
  }
}

- (void)setActivityIndicator:(id)indicator
{
  v42[5] = *MEMORY[0x277D85DE8];
  indicatorCopy = indicator;
  activityIndicator = self->_activityIndicator;
  if (activityIndicator != indicatorCopy)
  {
    [(UIView *)activityIndicator removeFromSuperview];
    objc_storeStrong(&self->_activityIndicator, indicator);
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

      centerXAnchor = [(UIView *)self->_activityIndicator centerXAnchor];
      centerXAnchor2 = [(PRXCardBottomTray *)self centerXAnchor];
      v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v42[0] = v34;
      leadingAnchor = [(UIView *)self->_activityIndicator leadingAnchor];
      layoutMarginsGuide = [(PRXCardBottomTray *)self layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v30 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      v42[1] = v30;
      trailingAnchor = [(UIView *)self->_activityIndicator trailingAnchor];
      layoutMarginsGuide2 = [(PRXCardBottomTray *)self layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
      v26 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
      v42[2] = v26;
      topAnchor = [(UIView *)self->_activityIndicator topAnchor];
      topAnchor2 = [(PRXCardBottomTray *)self topAnchor];
      v11 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:20.0];
      v42[3] = v11;
      bottomAnchor = [(UIView *)self->_activityIndicator bottomAnchor];
      layoutMarginsGuide3 = [(PRXCardBottomTray *)self layoutMarginsGuide];
      bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v8];
      v42[4] = v15;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];

      [MEMORY[0x277CCAAD0] activateConstraints:v25];
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    actionButtons = [(PRXCardBottomTray *)self actionButtons];
    v17 = [actionButtons countByEnumeratingWithState:&v37 objects:v41 count:16];
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
            objc_enumerationMutation(actionButtons);
          }

          [*(*(&v37 + 1) + 8 * i) setHidden:v7 != 0];
        }

        v18 = [actionButtons countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v18);
    }

    v21 = v7 != 0;

    titleLabel = [(PRXCardBottomTray *)self titleLabel];
    [titleLabel setHidden:v21];

    imageView = [(PRXCardBottomTray *)self imageView];
    [imageView setHidden:v21];

    [(PRXCardBottomTray *)self setNeedsUpdateConstraints];
    delegate = [(PRXCardBottomTray *)self delegate];
    [delegate didChangeContentsOfBottomTray:self];
  }
}

- (void)setImageView:(id)view
{
  v34[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v6 = viewCopy;
  if (self->_imageView != viewCopy)
  {
    [(UIImageView *)viewCopy removeFromSuperview];
    objc_storeStrong(&self->_imageView, view);
    imageView = self->_imageView;
    if (imageView)
    {
      [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PRXCardBottomTray *)self addSubview:self->_imageView];
      v24 = MEMORY[0x277CCAAD0];
      centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
      centerXAnchor2 = [(PRXCardBottomTray *)self centerXAnchor];
      v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v34[0] = v26;
      topAnchor = [(UIImageView *)self->_imageView topAnchor];
      topAnchor2 = [(PRXCardBottomTray *)self topAnchor];
      v9 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:20.0];
      v34[1] = v9;
      bottomAnchor = [(UIImageView *)self->_imageView bottomAnchor];
      layoutMarginsGuide = [(PRXCardBottomTray *)self layoutMarginsGuide];
      bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
      v13 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-8.0];
      v34[2] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
      [v24 activateConstraints:v14];
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    actionButtons = [(PRXCardBottomTray *)self actionButtons];
    v16 = [actionButtons countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(actionButtons);
          }

          [*(*(&v29 + 1) + 8 * i) setHidden:imageView != 0];
        }

        v17 = [actionButtons countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v17);
    }

    v20 = imageView != 0;

    titleLabel = [(PRXCardBottomTray *)self titleLabel];
    [titleLabel setHidden:v20];

    activityIndicator = [(PRXCardBottomTray *)self activityIndicator];
    [activityIndicator setHidden:v20];

    delegate = [(PRXCardBottomTray *)self delegate];
    [delegate didChangeContentsOfBottomTray:self];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  title = self->_title;
  self->_title = v5;

  titleLabel = [(PRXCardBottomTray *)self titleLabel];
  [titleLabel setText:titleCopy];

  titleConstraints = [(PRXCardBottomTray *)self titleConstraints];

  if (titleConstraints)
  {
    v9 = MEMORY[0x277CCAAD0];
    titleConstraints2 = [(PRXCardBottomTray *)self titleConstraints];
    [v9 deactivateConstraints:titleConstraints2];

    [(PRXCardBottomTray *)self setTitleConstraints:0];
  }

  buttonConstraints = [(PRXCardBottomTray *)self buttonConstraints];

  if (buttonConstraints)
  {
    v12 = MEMORY[0x277CCAAD0];
    buttonConstraints2 = [(PRXCardBottomTray *)self buttonConstraints];
    [v12 deactivateConstraints:buttonConstraints2];

    [(PRXCardBottomTray *)self setButtonConstraints:0];
  }

  [(PRXCardBottomTray *)self setNeedsUpdateConstraints];
  delegate = [(PRXCardBottomTray *)self delegate];
  [delegate didChangeContentsOfBottomTray:self];
}

- (void)setAttributedTitle:(id)title
{
  titleCopy = title;
  v5 = [titleCopy copy];
  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = v5;

  titleLabel = [(PRXCardBottomTray *)self titleLabel];
  [titleLabel setAttributedText:titleCopy];

  titleConstraints = [(PRXCardBottomTray *)self titleConstraints];

  if (titleConstraints)
  {
    v9 = MEMORY[0x277CCAAD0];
    titleConstraints2 = [(PRXCardBottomTray *)self titleConstraints];
    [v9 deactivateConstraints:titleConstraints2];

    [(PRXCardBottomTray *)self setTitleConstraints:0];
  }

  buttonConstraints = [(PRXCardBottomTray *)self buttonConstraints];

  if (buttonConstraints)
  {
    v12 = MEMORY[0x277CCAAD0];
    buttonConstraints2 = [(PRXCardBottomTray *)self buttonConstraints];
    [v12 deactivateConstraints:buttonConstraints2];

    [(PRXCardBottomTray *)self setButtonConstraints:0];
  }

  [(PRXCardBottomTray *)self setNeedsUpdateConstraints];
  delegate = [(PRXCardBottomTray *)self delegate];
  [delegate didChangeContentsOfBottomTray:self];
}

- (BOOL)containsContents
{
  title = [(PRXCardBottomTray *)self title];
  if (title)
  {
    title2 = [(PRXCardBottomTray *)self title];
    if ([title2 length])
    {
      v5 = 1;
      goto LABEL_9;
    }
  }

  imageView = [(PRXCardBottomTray *)self imageView];
  if (imageView)
  {
  }

  else
  {
    actionButtons = [(PRXCardBottomTray *)self actionButtons];
    if (![actionButtons count])
    {
      activityIndicator = [(PRXCardBottomTray *)self activityIndicator];
      v5 = activityIndicator != 0;

      if (!title)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  v5 = 1;
  if (title)
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
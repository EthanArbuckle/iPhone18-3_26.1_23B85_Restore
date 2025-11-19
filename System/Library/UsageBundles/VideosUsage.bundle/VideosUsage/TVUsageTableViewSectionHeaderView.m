@interface TVUsageTableViewSectionHeaderView
- (TVUsageTableViewSectionHeaderView)initWithReuseIdentifier:(id)a3;
- (void)configureForUsageItem:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateConstraints;
@end

@implementation TVUsageTableViewSectionHeaderView

- (TVUsageTableViewSectionHeaderView)initWithReuseIdentifier:(id)a3
{
  v77.receiver = self;
  v77.super_class = TVUsageTableViewSectionHeaderView;
  v3 = [(TVUsageTableViewSectionHeaderView *)&v77 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = [[UIImageView alloc] initForAutolayout];
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(UIImageView *)v3->_imageView setContentMode:1];
    objc_storeStrong(&v3->_leadingView, v3->_imageView);
    v6 = [[UILabel alloc] initForAutolayout];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v6;

    LODWORD(v8) = 1144750080;
    [(UILabel *)v3->_titleLabel setContentHuggingPriority:1 forAxis:v8];
    v9 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_titleLabel setTextColor:v9];

    v10 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_titleLabel setFont:v10];

    [(UILabel *)v3->_titleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    v11 = [[UILabel alloc] initForAutolayout];
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v11;

    LODWORD(v13) = 1144750080;
    [(UILabel *)v3->_subtitleLabel setContentHuggingPriority:1 forAxis:v13];
    v14 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_subtitleLabel setTextColor:v14];

    v15 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_subtitleLabel setFont:v15];

    [(UILabel *)v3->_subtitleLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    v16 = [[UILabel alloc] initForAutolayout];
    sizeLabel = v3->_sizeLabel;
    v3->_sizeLabel = v16;

    LODWORD(v18) = 1144750080;
    [(UILabel *)v3->_sizeLabel setContentHuggingPriority:1 forAxis:v18];
    v19 = PreferencesTableViewHeaderColor();
    [(UILabel *)v3->_sizeLabel setTextColor:v19];

    v20 = PreferencesTableViewHeaderFont();
    [(UILabel *)v3->_sizeLabel setFont:v20];

    [(UILabel *)v3->_sizeLabel MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:1];
    v21 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    [v21 addSubview:v3->_imageView];

    v22 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    [v22 addSubview:v3->_titleLabel];

    v23 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    [v23 addSubview:v3->_subtitleLabel];

    v24 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    [v24 addSubview:v3->_sizeLabel];

    v25 = v3->_imageView;
    v26 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v72 = [NSLayoutConstraint constraintWithItem:v25 attribute:10 relatedBy:0 toItem:v26 attribute:10 multiplier:1.0 constant:0.0];

    v27 = v3->_imageView;
    v28 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v71 = [NSLayoutConstraint constraintWithItem:v27 attribute:3 relatedBy:1 toItem:v28 attribute:3 multiplier:1.0 constant:0.0];

    v29 = v3->_imageView;
    v30 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v70 = [NSLayoutConstraint constraintWithItem:v29 attribute:4 relatedBy:-1 toItem:v30 attribute:4 multiplier:1.0 constant:-8.0];

    v31 = [NSLayoutConstraint constraintsBySizingView:v3->_imageView toSize:CGSizeZero.width, CGSizeZero.height];
    imageSizeConstraints = v3->_imageSizeConstraints;
    v3->_imageSizeConstraints = v31;

    v33 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    [v33 addConstraints:v3->_imageSizeConstraints];

    v34 = v3->_subtitleLabel;
    v35 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v69 = [NSLayoutConstraint constraintWithItem:v34 attribute:4 relatedBy:0 toItem:v35 attribute:4 multiplier:1.0 constant:-8.0];

    v68 = [NSLayoutConstraint constraintWithItem:v3->_subtitleLabel attribute:6 relatedBy:-1 toItem:v3->_sizeLabel attribute:5 multiplier:1.0 constant:-8.0];
    v36 = v3->_subtitleLabel;
    v37 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v67 = [NSLayoutConstraint constraintWithItem:v36 attribute:3 relatedBy:1 toItem:v37 attribute:3 multiplier:1.0 constant:0.0];

    v38 = v3->_titleLabel;
    v39 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v66 = [NSLayoutConstraint constraintWithItem:v38 attribute:3 relatedBy:1 toItem:v39 attribute:3 multiplier:1.0 constant:0.0];

    v65 = [NSLayoutConstraint constraintWithItem:v3->_titleLabel attribute:4 relatedBy:0 toItem:v3->_subtitleLabel attribute:3 multiplier:1.0 constant:0.0];
    v40 = [NSLayoutConstraint constraintWithItem:v3->_titleLabel attribute:6 relatedBy:-1 toItem:v3->_sizeLabel attribute:5 multiplier:1.0 constant:-8.0];
    v41 = [NSLayoutConstraint constraintWithItem:v3->_titleLabel attribute:5 relatedBy:0 toItem:v3->_subtitleLabel attribute:5 multiplier:1.0 constant:0.0];
    v42 = v3->_sizeLabel;
    v43 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v44 = [NSLayoutConstraint constraintWithItem:v42 attribute:3 relatedBy:1 toItem:v43 attribute:3 multiplier:1.0 constant:0.0];

    v45 = v3->_sizeLabel;
    v46 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v47 = [NSLayoutConstraint constraintWithItem:v45 attribute:4 relatedBy:-1 toItem:v46 attribute:4 multiplier:1.0 constant:-8.0];

    v48 = [NSLayoutConstraint constraintWithItem:v3->_sizeLabel attribute:11 relatedBy:0 toItem:v3->_subtitleLabel attribute:11 multiplier:1.0 constant:0.0];
    v49 = v3->_sizeLabel;
    v50 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v51 = [NSLayoutConstraint constraintWithItem:v49 attribute:6 relatedBy:0 toItem:v50 attribute:6 multiplier:1.0 constant:-8.0];

    v52 = [(TVUsageTableViewSectionHeaderView *)v3 contentView];
    v53 = [NSLayoutConstraint constraintWithItem:v52 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:34.0];

    v79[0] = v72;
    v79[1] = v71;
    v79[2] = v70;
    v79[3] = v69;
    v79[4] = v67;
    v79[5] = v66;
    v79[6] = v65;
    v79[7] = v41;
    v63 = v40;
    v64 = v41;
    v62 = v44;
    v79[8] = v44;
    v79[9] = v47;
    v79[10] = v48;
    v79[11] = v51;
    v79[12] = v53;
    v79[13] = v40;
    v79[14] = v68;
    [NSArray arrayWithObjects:v79 count:15];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v54 = v76 = 0u;
    v55 = [v54 countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v55)
    {
      v57 = v55;
      v58 = *v74;
      do
      {
        for (i = 0; i != v57; i = i + 1)
        {
          if (*v74 != v58)
          {
            objc_enumerationMutation(v54);
          }

          v60 = *(*(&v73 + 1) + 8 * i);
          LODWORD(v56) = 1148829696;
          [v60 setPriority:v56];
          [v60 setActive:1];
        }

        v57 = [v54 countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v57);
    }
  }

  return v3;
}

- (void)updateConstraints
{
  v3 = [(TVUsageTableViewSectionHeaderView *)self traitCollection];
  v4 = 8.0;
  if ([v3 horizontalSizeClass] == &dword_0 + 2)
  {
    PSTableViewSideInset();
    v4 = v5 + 8.0;
  }

  leadingViewConstraint = self->_leadingViewConstraint;
  if (!leadingViewConstraint)
  {
    goto LABEL_7;
  }

  v7 = [(NSLayoutConstraint *)leadingViewConstraint firstItem];
  leadingView = self->_leadingView;

  if (v7 != leadingView)
  {
    v9 = [(TVUsageTableViewSectionHeaderView *)self contentView];
    [v9 removeConstraint:self->_leadingViewConstraint];

    v10 = self->_leadingViewConstraint;
    self->_leadingViewConstraint = 0;
  }

  v11 = self->_leadingViewConstraint;
  if (!v11)
  {
LABEL_7:
    v12 = self->_leadingView;
    v13 = [(TVUsageTableViewSectionHeaderView *)self contentView];
    v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:5 relatedBy:0 toItem:v13 attribute:5 multiplier:1.0 constant:v4];
    v15 = self->_leadingViewConstraint;
    self->_leadingViewConstraint = v14;

    v16 = [(TVUsageTableViewSectionHeaderView *)self contentView];
    [v16 addConstraint:self->_leadingViewConstraint];

    v11 = self->_leadingViewConstraint;
  }

  [(NSLayoutConstraint *)v11 setConstant:v4];
  v17 = self->_leadingView;
  subtitleLabel = self->_subtitleLabel;
  if (v17 != subtitleLabel)
  {
    subtitleLeadingConstraint = self->_subtitleLeadingConstraint;
    if (!subtitleLeadingConstraint)
    {
LABEL_14:
      v24 = [NSLayoutConstraint constraintWithItem:subtitleLabel attribute:5 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:8.0];
      v25 = self->_subtitleLeadingConstraint;
      self->_subtitleLeadingConstraint = v24;

      v26 = [(TVUsageTableViewSectionHeaderView *)self contentView];
      [v26 addConstraint:self->_subtitleLeadingConstraint];

      goto LABEL_15;
    }

    v20 = [(NSLayoutConstraint *)subtitleLeadingConstraint secondItem];
    v21 = self->_leadingView;

    if (v20 != v21)
    {
      v22 = [(TVUsageTableViewSectionHeaderView *)self contentView];
      [v22 removeConstraint:self->_subtitleLeadingConstraint];

      v23 = self->_subtitleLeadingConstraint;
      self->_subtitleLeadingConstraint = 0;
    }

    if (!self->_subtitleLeadingConstraint)
    {
      subtitleLabel = self->_subtitleLabel;
      v17 = self->_leadingView;
      goto LABEL_14;
    }
  }

LABEL_15:
  v27.receiver = self;
  v27.super_class = TVUsageTableViewSectionHeaderView;
  [(TVUsageTableViewSectionHeaderView *)&v27 updateConstraints];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TVUsageTableViewSectionHeaderView;
  [(TVUsageTableViewSectionHeaderView *)&v3 layoutSubviews];
  [(TVUsageTableViewSectionHeaderView *)self setNeedsUpdateConstraints];
  [(TVUsageTableViewSectionHeaderView *)self updateConstraintsIfNeeded];
}

- (void)configureForUsageItem:(id)a3
{
  v4 = a3;
  v5 = [v4 artworkCatalog];
  v6 = &OBJC_IVAR___TVUsageTableViewSectionHeaderView__imageView;
  if (!v5)
  {
    v6 = &OBJC_IVAR___TVUsageTableViewSectionHeaderView__subtitleLabel;
  }

  objc_storeStrong(&self->_leadingView, *(&self->super.super.super.super.isa + *v6));
  if (v5)
  {
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v7 = self->_imageSizeConstraints;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v31;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v30 + 1) + 8 * i) setConstant:44.0];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v9);
    }

    v12 = +[UIColor blackColor];
    v13 = PSPointImageOfColor();
    [(UIImageView *)self->_imageView setImage:v13];

    v14 = [(TVUsageTableViewSectionHeaderView *)self window];
    v15 = [v14 screen];
    [v15 scale];
    if (v16)
    {
      [v5 setDestinationScale:v16];
    }

    else
    {
      v22 = +[UIScreen mainScreen];
      [v22 scale];
      [v5 setDestinationScale:?];
    }

    [v5 setFittingSize:{44.0, 44.0}];
    [v5 setDestination:self->_imageView configurationBlock:&stru_C400];
  }

  else
  {
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v17 = self->_imageSizeConstraints;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v26 + 1) + 8 * j) setConstant:{0.0, v26}];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }
  }

  v23 = [v4 title];
  [(UILabel *)self->_titleLabel setText:v23];

  v24 = [v4 subtitle];
  [(UILabel *)self->_subtitleLabel setText:v24];

  v25 = [v4 fileSizeString];
  [(UILabel *)self->_sizeLabel setText:v25];

  [(TVUsageTableViewSectionHeaderView *)self setNeedsUpdateConstraints];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TVUsageTableViewSectionHeaderView;
  [(TVUsageTableViewSectionHeaderView *)&v3 prepareForReuse];
  [(UIImageView *)self->_imageView clearArtworkCatalogs];
  [(UIImageView *)self->_imageView setImage:0];
  [(UILabel *)self->_titleLabel setText:0];
  [(UILabel *)self->_subtitleLabel setText:0];
  [(UILabel *)self->_sizeLabel setText:0];
}

@end
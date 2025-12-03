@interface NBUsageTableViewCell
- (NBUsageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)prepareForReuse;
- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated;
- (void)updateConstraints;
@end

@implementation NBUsageTableViewCell

- (NBUsageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v86.receiver = self;
  v86.super_class = NBUsageTableViewCell;
  v9 = [(NBUsageTableViewCell *)&v86 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(NBUsageTableViewCell *)v9 setSpecifier:specifierCopy];
    v85 = specifierCopy;
    v11 = [UILabel alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v15 = [v11 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(NBUsageTableViewCell *)v10 setTextLabel:v15];

    textLabel = [(NBUsageTableViewCell *)v10 textLabel];
    [textLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    textLabel2 = [(NBUsageTableViewCell *)v10 textLabel];
    [textLabel2 setFont:v17];

    textLabel3 = [(NBUsageTableViewCell *)v10 textLabel];
    LODWORD(v20) = 1148846080;
    [textLabel3 setContentHuggingPriority:1 forAxis:v20];

    textLabel4 = [(NBUsageTableViewCell *)v10 textLabel];
    LODWORD(v22) = 1148846080;
    [textLabel4 setContentCompressionResistancePriority:1 forAxis:v22];

    contentView = [(NBUsageTableViewCell *)v10 contentView];
    textLabel5 = [(NBUsageTableViewCell *)v10 textLabel];
    [contentView addSubview:textLabel5];

    v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(NBUsageTableViewCell *)v10 setDetailTextLabel:v25];

    detailTextLabel = [(NBUsageTableViewCell *)v10 detailTextLabel];
    [detailTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v27 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    detailTextLabel2 = [(NBUsageTableViewCell *)v10 detailTextLabel];
    [detailTextLabel2 setFont:v27];

    detailTextLabel3 = [(NBUsageTableViewCell *)v10 detailTextLabel];
    LODWORD(v30) = 1148846080;
    [detailTextLabel3 setContentHuggingPriority:1 forAxis:v30];

    detailTextLabel4 = [(NBUsageTableViewCell *)v10 detailTextLabel];
    LODWORD(v32) = 1148846080;
    [detailTextLabel4 setContentCompressionResistancePriority:1 forAxis:v32];

    contentView2 = [(NBUsageTableViewCell *)v10 contentView];
    detailTextLabel5 = [(NBUsageTableViewCell *)v10 detailTextLabel];
    [contentView2 addSubview:detailTextLabel5];

    v35 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(NBUsageTableViewCell *)v10 setSizeLabel:v35];

    sizeLabel = [(NBUsageTableViewCell *)v10 sizeLabel];
    [sizeLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    v37 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    sizeLabel2 = [(NBUsageTableViewCell *)v10 sizeLabel];
    [sizeLabel2 setFont:v37];

    v39 = +[UIColor lightGrayColor];
    sizeLabel3 = [(NBUsageTableViewCell *)v10 sizeLabel];
    [sizeLabel3 setTextColor:v39];

    sizeLabel4 = [(NBUsageTableViewCell *)v10 sizeLabel];
    LODWORD(v42) = 1148846080;
    [sizeLabel4 setContentHuggingPriority:1 forAxis:v42];

    sizeLabel5 = [(NBUsageTableViewCell *)v10 sizeLabel];
    LODWORD(v44) = 1148846080;
    [sizeLabel5 setContentCompressionResistancePriority:1 forAxis:v44];

    sizeLabel6 = [(NBUsageTableViewCell *)v10 sizeLabel];
    LODWORD(v46) = 1148846080;
    [sizeLabel6 setContentCompressionResistancePriority:0 forAxis:v46];

    contentView3 = [(NBUsageTableViewCell *)v10 contentView];
    sizeLabel7 = [(NBUsageTableViewCell *)v10 sizeLabel];
    [contentView3 addSubview:sizeLabel7];

    contentView4 = [(NBUsageTableViewCell *)v10 contentView];
    v84 = [NSLayoutConstraint constraintWithItem:contentView4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];

    contentView5 = [(NBUsageTableViewCell *)v10 contentView];
    [contentView5 addConstraint:v84];

    textLabel6 = [(NBUsageTableViewCell *)v10 textLabel];
    contentView6 = [(NBUsageTableViewCell *)v10 contentView];
    v83 = [NSLayoutConstraint constraintWithItem:textLabel6 attribute:3 relatedBy:1 toItem:contentView6 attribute:3 multiplier:1.0 constant:0.0];

    textLabel7 = [(NBUsageTableViewCell *)v10 textLabel];
    contentView7 = [(NBUsageTableViewCell *)v10 contentView];
    v55 = [NSLayoutConstraint constraintWithItem:textLabel7 attribute:5 relatedBy:0 toItem:contentView7 attribute:6 multiplier:1.0 constant:16.0];
    textLeadingConstraint = v10->_textLeadingConstraint;
    v10->_textLeadingConstraint = v55;

    textLabel8 = [(NBUsageTableViewCell *)v10 textLabel];
    v82 = [NSLayoutConstraint constraintWithItem:textLabel8 attribute:6 relatedBy:-1 toItem:v10->_sizeLabel attribute:5 multiplier:1.0 constant:-8.0];

    contentView8 = [(NBUsageTableViewCell *)v10 contentView];
    v89[0] = v83;
    v89[1] = v10->_textLeadingConstraint;
    v89[2] = v82;
    v59 = [NSArray arrayWithObjects:v89 count:3];
    [contentView8 addConstraints:v59];

    detailTextLabel6 = [(NBUsageTableViewCell *)v10 detailTextLabel];
    textLabel9 = [(NBUsageTableViewCell *)v10 textLabel];
    v81 = [NSLayoutConstraint constraintWithItem:detailTextLabel6 attribute:3 relatedBy:0 toItem:textLabel9 attribute:4 multiplier:1.0 constant:0.0];

    detailTextLabel7 = [(NBUsageTableViewCell *)v10 detailTextLabel];
    contentView9 = [(NBUsageTableViewCell *)v10 contentView];
    v64 = [NSLayoutConstraint constraintWithItem:detailTextLabel7 attribute:4 relatedBy:-1 toItem:contentView9 attribute:4 multiplier:1.0 constant:0.0];

    detailTextLabel8 = [(NBUsageTableViewCell *)v10 detailTextLabel];
    textLabel10 = [(NBUsageTableViewCell *)v10 textLabel];
    v67 = [NSLayoutConstraint constraintWithItem:detailTextLabel8 attribute:5 relatedBy:0 toItem:textLabel10 attribute:5 multiplier:1.0 constant:0.0];

    detailTextLabel9 = [(NBUsageTableViewCell *)v10 detailTextLabel];
    v69 = [NSLayoutConstraint constraintWithItem:detailTextLabel9 attribute:6 relatedBy:-1 toItem:v10->_sizeLabel attribute:5 multiplier:1.0 constant:-8.0];

    contentView10 = [(NBUsageTableViewCell *)v10 contentView];
    v88[0] = v81;
    v88[1] = v64;
    v88[2] = v67;
    v88[3] = v69;
    v71 = [NSArray arrayWithObjects:v88 count:4];
    [contentView10 addConstraints:v71];

    sizeLabel = v10->_sizeLabel;
    contentView11 = [(NBUsageTableViewCell *)v10 contentView];
    v74 = [NSLayoutConstraint constraintWithItem:sizeLabel attribute:10 relatedBy:0 toItem:contentView11 attribute:10 multiplier:1.0 constant:0.0];

    v75 = v10->_sizeLabel;
    contentView12 = [(NBUsageTableViewCell *)v10 contentView];
    v77 = [NSLayoutConstraint constraintWithItem:v75 attribute:6 relatedBy:0 toItem:contentView12 attribute:6 multiplier:1.0 constant:-8.0];

    contentView13 = [(NBUsageTableViewCell *)v10 contentView];
    v87[0] = v74;
    v87[1] = v77;
    v79 = [NSArray arrayWithObjects:v87 count:2];
    [contentView13 addConstraints:v79];

    specifierCopy = v85;
  }

  return v10;
}

- (void)updateConstraints
{
  textBottomConstraint = self->_textBottomConstraint;
  if (textBottomConstraint)
  {
    [(NSLayoutConstraint *)textBottomConstraint setActive:0];
    v4 = self->_textBottomConstraint;
    self->_textBottomConstraint = 0;
  }

  detailTextLabel = [(NBUsageTableViewCell *)self detailTextLabel];
  text = [detailTextLabel text];
  if ([text length])
  {
    v7 = 11;
  }

  else
  {
    v7 = 10;
  }

  textLabel = [(NBUsageTableViewCell *)self textLabel];
  contentView = [(NBUsageTableViewCell *)self contentView];
  v10 = [NSLayoutConstraint constraintWithItem:textLabel attribute:v7 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
  v11 = self->_textBottomConstraint;
  self->_textBottomConstraint = v10;

  [(NSLayoutConstraint *)self->_textBottomConstraint setActive:1];
  textLeadingConstraint = self->_textLeadingConstraint;
  if (textLeadingConstraint)
  {
    [(NSLayoutConstraint *)textLeadingConstraint setActive:0];
    v13 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = 0;
  }

  textLabel2 = [(NBUsageTableViewCell *)self textLabel];
  contentView2 = [(NBUsageTableViewCell *)self contentView];
  v16 = [NSLayoutConstraint constraintWithItem:textLabel2 attribute:5 relatedBy:0 toItem:contentView2 attribute:5 multiplier:1.0 constant:16.0];
  v17 = self->_textLeadingConstraint;
  self->_textLeadingConstraint = v16;

  [(NSLayoutConstraint *)self->_textLeadingConstraint setActive:1];
  v18.receiver = self;
  v18.super_class = NBUsageTableViewCell;
  [(NBUsageTableViewCell *)&v18 updateConstraints];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = NBUsageTableViewCell;
  [(NBUsageTableViewCell *)&v5 prepareForReuse];
  textLabel = [(NBUsageTableViewCell *)self textLabel];
  [textLabel setText:0];

  detailTextLabel = [(NBUsageTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:0];

  [(UILabel *)self->_sizeLabel setText:0];
}

- (void)reloadWithSpecifier:(id)specifier animated:(BOOL)animated
{
  specifierCopy = specifier;
  [(NBUsageTableViewCell *)self setSpecifier:specifierCopy];
  v33 = [specifierCopy propertyForKey:@"NBBackup"];
  specifier = [(NBUsageTableViewCell *)self specifier];
  v7 = *&specifier[OBJC_IVAR___PSSpecifier_getter];

  specifier2 = [(NBUsageTableViewCell *)self specifier];
  WeakRetained = objc_loadWeakRetained(&specifier2[OBJC_IVAR___PSSpecifier_target]);
  v10 = [WeakRetained methodForSelector:v7];

  specifier3 = [(NBUsageTableViewCell *)self specifier];
  v12 = objc_loadWeakRetained(&specifier3[OBJC_IVAR___PSSpecifier_target]);
  specifier4 = [(NBUsageTableViewCell *)self specifier];
  v14 = *&specifier4[OBJC_IVAR___PSSpecifier_getter];
  specifier5 = [(NBUsageTableViewCell *)self specifier];
  v16 = v10(v12, v14, specifier5);

  name = [v33 name];
  textLabel = [(NBUsageTableViewCell *)self textLabel];
  [textLabel setText:name];

  productType = [v33 productType];
  v20 = BPSLocalizedVariantSizeForProductType();

  topEnclosureMaterial = [v33 topEnclosureMaterial];
  [topEnclosureMaterial integerValue];

  BPSPBMaterialForMGMaterial();
  v22 = BPSLocalizedNameForMaterial();
  v23 = objc_alloc_init(NSDateFormatter);
  [v23 setTimeStyle:0];
  [v23 setDateStyle:1];
  lastModificationDate = [v33 lastModificationDate];
  v25 = [v23 stringFromDate:lastModificationDate];

  v26 = [NSBundle bundleForClass:objc_opt_class()];
  v27 = [v26 localizedStringForKey:@"DESCRIPTION_FORMAT_%@_%@_%@" value:&stru_8480 table:@"Localization"];
  v28 = [NSString stringWithFormat:v27, v20, v22, v25];
  detailTextLabel = [(NBUsageTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:v28];

  v30 = [UIColor colorWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  detailTextLabel2 = [(NBUsageTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setTextColor:v30];

  v32 = +[UIColor systemGrayColor];
  [(UILabel *)self->_sizeLabel setText:v16];
  [(NBUsageTableViewCell *)self setAccessoryType:0];
  [(NBUsageTableViewCell *)self setSelectionStyle:0];
  [(NBUsageTableViewCell *)self setNeedsUpdateConstraints];
}

@end
@interface TVUsageTableViewCell
- (TVUsageEntityItem)item;
- (TVUsageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureForUsageItem:(id)item;
- (void)prepareForReuse;
- (void)updateConstraints;
@end

@implementation TVUsageTableViewCell

- (TVUsageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v68.receiver = self;
  v68.super_class = TVUsageTableViewCell;
  v4 = [(TVUsageTableViewCell *)&v68 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    initForAutolayout = [[UIImageView alloc] initForAutolayout];
    imageView = v4->_imageView;
    v4->_imageView = initForAutolayout;

    [(UIImageView *)v4->_imageView setContentMode:1];
    contentView = [(TVUsageTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_imageView];

    initForAutolayout2 = [[UILabel alloc] initForAutolayout];
    textLabel = v4->_textLabel;
    v4->_textLabel = initForAutolayout2;

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_textLabel setFont:v10];

    LODWORD(v11) = 1148846080;
    [(UILabel *)v4->_textLabel setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v4->_textLabel setContentCompressionResistancePriority:1 forAxis:v12];
    contentView2 = [(TVUsageTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_textLabel];

    initForAutolayout3 = [[UILabel alloc] initForAutolayout];
    detailTextLabel = v4->_detailTextLabel;
    v4->_detailTextLabel = initForAutolayout3;

    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v4->_detailTextLabel setFont:v16];

    LODWORD(v17) = 1148846080;
    [(UILabel *)v4->_detailTextLabel setContentHuggingPriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v4->_detailTextLabel setContentCompressionResistancePriority:1 forAxis:v18];
    contentView3 = [(TVUsageTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_detailTextLabel];

    initForAutolayout4 = [[UILabel alloc] initForAutolayout];
    sizeLabel = v4->_sizeLabel;
    v4->_sizeLabel = initForAutolayout4;

    v22 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_sizeLabel setFont:v22];

    v23 = +[UIColor lightGrayColor];
    [(UILabel *)v4->_sizeLabel setTextColor:v23];

    LODWORD(v24) = 1148846080;
    [(UILabel *)v4->_sizeLabel setContentHuggingPriority:1 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UILabel *)v4->_sizeLabel setContentCompressionResistancePriority:1 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(UILabel *)v4->_sizeLabel setContentCompressionResistancePriority:0 forAxis:v26];
    contentView4 = [(TVUsageTableViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_sizeLabel];

    v28 = v4->_imageView;
    contentView5 = [(TVUsageTableViewCell *)v4 contentView];
    v67 = [NSLayoutConstraint constraintWithItem:v28 attribute:5 relatedBy:0 toItem:contentView5 attribute:5 multiplier:1.0 constant:8.0];

    v30 = v4->_imageView;
    contentView6 = [(TVUsageTableViewCell *)v4 contentView];
    v66 = [NSLayoutConstraint constraintWithItem:v30 attribute:10 relatedBy:0 toItem:contentView6 attribute:10 multiplier:1.0 constant:0.0];

    v65 = [NSLayoutConstraint constraintWithItem:v4->_imageView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    LODWORD(v32) = 1148829696;
    [v65 setPriority:v32];
    v64 = [NSLayoutConstraint constraintWithItem:v4->_imageView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    LODWORD(v33) = 1148829696;
    [v64 setPriority:v33];
    v34 = v4->_imageView;
    contentView7 = [(TVUsageTableViewCell *)v4 contentView];
    v63 = [NSLayoutConstraint constraintWithItem:v34 attribute:8 relatedBy:-1 toItem:contentView7 attribute:8 multiplier:1.0 constant:0.0];

    contentView8 = [(TVUsageTableViewCell *)v4 contentView];
    v72[0] = v67;
    v72[1] = v66;
    v72[2] = v65;
    v72[3] = v64;
    v72[4] = v63;
    v37 = [NSArray arrayWithObjects:v72 count:5];
    [contentView8 addConstraints:v37];

    v38 = v4->_textLabel;
    contentView9 = [(TVUsageTableViewCell *)v4 contentView];
    v62 = [NSLayoutConstraint constraintWithItem:v38 attribute:3 relatedBy:1 toItem:contentView9 attribute:3 multiplier:1.0 constant:0.0];

    v40 = [NSLayoutConstraint constraintWithItem:v4->_textLabel attribute:5 relatedBy:0 toItem:v4->_imageView attribute:6 multiplier:1.0 constant:16.0];
    textLeadingConstraint = v4->_textLeadingConstraint;
    v4->_textLeadingConstraint = v40;

    v61 = [NSLayoutConstraint constraintWithItem:v4->_textLabel attribute:6 relatedBy:-1 toItem:v4->_sizeLabel attribute:5 multiplier:1.0 constant:-8.0];
    contentView10 = [(TVUsageTableViewCell *)v4 contentView];
    v71[0] = v62;
    v71[1] = v4->_textLeadingConstraint;
    v71[2] = v61;
    v43 = [NSArray arrayWithObjects:v71 count:3];
    [contentView10 addConstraints:v43];

    v60 = [NSLayoutConstraint constraintWithItem:v4->_detailTextLabel attribute:3 relatedBy:0 toItem:v4->_textLabel attribute:4 multiplier:1.0 constant:0.0];
    v44 = v4->_detailTextLabel;
    contentView11 = [(TVUsageTableViewCell *)v4 contentView];
    v46 = [NSLayoutConstraint constraintWithItem:v44 attribute:4 relatedBy:-1 toItem:contentView11 attribute:4 multiplier:1.0 constant:0.0];

    v47 = [NSLayoutConstraint constraintWithItem:v4->_detailTextLabel attribute:5 relatedBy:0 toItem:v4->_textLabel attribute:5 multiplier:1.0 constant:0.0];
    v48 = [NSLayoutConstraint constraintWithItem:v4->_detailTextLabel attribute:6 relatedBy:-1 toItem:v4->_sizeLabel attribute:5 multiplier:1.0 constant:-8.0];
    contentView12 = [(TVUsageTableViewCell *)v4 contentView];
    v70[0] = v60;
    v70[1] = v46;
    v70[2] = v47;
    v70[3] = v48;
    v50 = [NSArray arrayWithObjects:v70 count:4];
    [contentView12 addConstraints:v50];

    v51 = v4->_sizeLabel;
    contentView13 = [(TVUsageTableViewCell *)v4 contentView];
    v53 = [NSLayoutConstraint constraintWithItem:v51 attribute:10 relatedBy:0 toItem:contentView13 attribute:10 multiplier:1.0 constant:0.0];

    v54 = v4->_sizeLabel;
    contentView14 = [(TVUsageTableViewCell *)v4 contentView];
    v56 = [NSLayoutConstraint constraintWithItem:v54 attribute:6 relatedBy:0 toItem:contentView14 attribute:6 multiplier:1.0 constant:-8.0];

    contentView15 = [(TVUsageTableViewCell *)v4 contentView];
    v69[0] = v53;
    v69[1] = v56;
    v58 = [NSArray arrayWithObjects:v69 count:2];
    [contentView15 addConstraints:v58];
  }

  return v4;
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

  text = [(UILabel *)self->_detailTextLabel text];
  if ([text length])
  {
    v6 = 11;
  }

  else
  {
    v6 = 10;
  }

  textLabel = self->_textLabel;
  contentView = [(TVUsageTableViewCell *)self contentView];
  v9 = [NSLayoutConstraint constraintWithItem:textLabel attribute:v6 relatedBy:0 toItem:contentView attribute:10 multiplier:1.0 constant:0.0];
  v10 = self->_textBottomConstraint;
  self->_textBottomConstraint = v9;

  [(NSLayoutConstraint *)self->_textBottomConstraint setActive:1];
  textLeadingConstraint = self->_textLeadingConstraint;
  if (textLeadingConstraint)
  {
    [(NSLayoutConstraint *)textLeadingConstraint setActive:0];
    v12 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = 0;
  }

  image = [(UIImageView *)self->_imageView image];

  v14 = self->_textLabel;
  if (image)
  {
    v15 = [NSLayoutConstraint constraintWithItem:self->_textLabel attribute:5 relatedBy:0 toItem:self->_imageView attribute:6 multiplier:1.0 constant:16.0];
    contentView2 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = v15;
  }

  else
  {
    contentView2 = [(TVUsageTableViewCell *)self contentView];
    v17 = [NSLayoutConstraint constraintWithItem:v14 attribute:5 relatedBy:0 toItem:contentView2 attribute:5 multiplier:1.0 constant:16.0];
    v18 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = v17;
  }

  [(NSLayoutConstraint *)self->_textLeadingConstraint setActive:1];
  v19.receiver = self;
  v19.super_class = TVUsageTableViewCell;
  [(TVUsageTableViewCell *)&v19 updateConstraints];
}

- (void)configureForUsageItem:(id)item
{
  itemCopy = item;
  objc_storeWeak(&self->_item, itemCopy);
  title = [itemCopy title];
  [(UILabel *)self->_textLabel setText:title];

  subtitle = [itemCopy subtitle];
  [(UILabel *)self->_detailTextLabel setText:subtitle];

  fileSizeString = [itemCopy fileSizeString];
  [(UILabel *)self->_sizeLabel setText:fileSizeString];

  placeholderImage = [itemCopy placeholderImage];
  [(UIImageView *)self->_imageView setImage:placeholderImage];

  artworkCatalog = [itemCopy artworkCatalog];
  if (artworkCatalog)
  {
    window = [(TVUsageTableViewCell *)self window];
    screen = [window screen];
    [screen scale];
    if (v12 == 0.0)
    {
      v13 = +[UIScreen mainScreen];
      [v13 scale];
      [artworkCatalog setDestinationScale:?];
    }

    else
    {
      [artworkCatalog setDestinationScale:1.0];
    }

    [artworkCatalog setFittingSize:{44.0, 44.0}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_460C;
    v14[3] = &unk_C578;
    v15 = itemCopy;
    [artworkCatalog setDestination:self configurationBlock:v14];
  }

  [(TVUsageTableViewCell *)self setNeedsUpdateConstraints];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TVUsageTableViewCell;
  [(TVUsageTableViewCell *)&v3 prepareForReuse];
  objc_storeWeak(&self->_item, 0);
  [(UILabel *)self->_textLabel setText:0];
  [(UILabel *)self->_detailTextLabel setText:0];
  [(UILabel *)self->_sizeLabel setText:0];
  [(UIImageView *)self->_imageView clearArtworkCatalogs];
  [(UIImageView *)self->_imageView setImage:0];
}

- (TVUsageEntityItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

@end
@interface TVUsageTableViewCell
- (TVUsageEntityItem)item;
- (TVUsageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureForUsageItem:(id)a3;
- (void)prepareForReuse;
- (void)updateConstraints;
@end

@implementation TVUsageTableViewCell

- (TVUsageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v68.receiver = self;
  v68.super_class = TVUsageTableViewCell;
  v4 = [(TVUsageTableViewCell *)&v68 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [[UIImageView alloc] initForAutolayout];
    imageView = v4->_imageView;
    v4->_imageView = v5;

    [(UIImageView *)v4->_imageView setContentMode:1];
    v7 = [(TVUsageTableViewCell *)v4 contentView];
    [v7 addSubview:v4->_imageView];

    v8 = [[UILabel alloc] initForAutolayout];
    textLabel = v4->_textLabel;
    v4->_textLabel = v8;

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v4->_textLabel setFont:v10];

    LODWORD(v11) = 1148846080;
    [(UILabel *)v4->_textLabel setContentHuggingPriority:1 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v4->_textLabel setContentCompressionResistancePriority:1 forAxis:v12];
    v13 = [(TVUsageTableViewCell *)v4 contentView];
    [v13 addSubview:v4->_textLabel];

    v14 = [[UILabel alloc] initForAutolayout];
    detailTextLabel = v4->_detailTextLabel;
    v4->_detailTextLabel = v14;

    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    [(UILabel *)v4->_detailTextLabel setFont:v16];

    LODWORD(v17) = 1148846080;
    [(UILabel *)v4->_detailTextLabel setContentHuggingPriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(UILabel *)v4->_detailTextLabel setContentCompressionResistancePriority:1 forAxis:v18];
    v19 = [(TVUsageTableViewCell *)v4 contentView];
    [v19 addSubview:v4->_detailTextLabel];

    v20 = [[UILabel alloc] initForAutolayout];
    sizeLabel = v4->_sizeLabel;
    v4->_sizeLabel = v20;

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
    v27 = [(TVUsageTableViewCell *)v4 contentView];
    [v27 addSubview:v4->_sizeLabel];

    v28 = v4->_imageView;
    v29 = [(TVUsageTableViewCell *)v4 contentView];
    v67 = [NSLayoutConstraint constraintWithItem:v28 attribute:5 relatedBy:0 toItem:v29 attribute:5 multiplier:1.0 constant:8.0];

    v30 = v4->_imageView;
    v31 = [(TVUsageTableViewCell *)v4 contentView];
    v66 = [NSLayoutConstraint constraintWithItem:v30 attribute:10 relatedBy:0 toItem:v31 attribute:10 multiplier:1.0 constant:0.0];

    v65 = [NSLayoutConstraint constraintWithItem:v4->_imageView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    LODWORD(v32) = 1148829696;
    [v65 setPriority:v32];
    v64 = [NSLayoutConstraint constraintWithItem:v4->_imageView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:44.0];
    LODWORD(v33) = 1148829696;
    [v64 setPriority:v33];
    v34 = v4->_imageView;
    v35 = [(TVUsageTableViewCell *)v4 contentView];
    v63 = [NSLayoutConstraint constraintWithItem:v34 attribute:8 relatedBy:-1 toItem:v35 attribute:8 multiplier:1.0 constant:0.0];

    v36 = [(TVUsageTableViewCell *)v4 contentView];
    v72[0] = v67;
    v72[1] = v66;
    v72[2] = v65;
    v72[3] = v64;
    v72[4] = v63;
    v37 = [NSArray arrayWithObjects:v72 count:5];
    [v36 addConstraints:v37];

    v38 = v4->_textLabel;
    v39 = [(TVUsageTableViewCell *)v4 contentView];
    v62 = [NSLayoutConstraint constraintWithItem:v38 attribute:3 relatedBy:1 toItem:v39 attribute:3 multiplier:1.0 constant:0.0];

    v40 = [NSLayoutConstraint constraintWithItem:v4->_textLabel attribute:5 relatedBy:0 toItem:v4->_imageView attribute:6 multiplier:1.0 constant:16.0];
    textLeadingConstraint = v4->_textLeadingConstraint;
    v4->_textLeadingConstraint = v40;

    v61 = [NSLayoutConstraint constraintWithItem:v4->_textLabel attribute:6 relatedBy:-1 toItem:v4->_sizeLabel attribute:5 multiplier:1.0 constant:-8.0];
    v42 = [(TVUsageTableViewCell *)v4 contentView];
    v71[0] = v62;
    v71[1] = v4->_textLeadingConstraint;
    v71[2] = v61;
    v43 = [NSArray arrayWithObjects:v71 count:3];
    [v42 addConstraints:v43];

    v60 = [NSLayoutConstraint constraintWithItem:v4->_detailTextLabel attribute:3 relatedBy:0 toItem:v4->_textLabel attribute:4 multiplier:1.0 constant:0.0];
    v44 = v4->_detailTextLabel;
    v45 = [(TVUsageTableViewCell *)v4 contentView];
    v46 = [NSLayoutConstraint constraintWithItem:v44 attribute:4 relatedBy:-1 toItem:v45 attribute:4 multiplier:1.0 constant:0.0];

    v47 = [NSLayoutConstraint constraintWithItem:v4->_detailTextLabel attribute:5 relatedBy:0 toItem:v4->_textLabel attribute:5 multiplier:1.0 constant:0.0];
    v48 = [NSLayoutConstraint constraintWithItem:v4->_detailTextLabel attribute:6 relatedBy:-1 toItem:v4->_sizeLabel attribute:5 multiplier:1.0 constant:-8.0];
    v49 = [(TVUsageTableViewCell *)v4 contentView];
    v70[0] = v60;
    v70[1] = v46;
    v70[2] = v47;
    v70[3] = v48;
    v50 = [NSArray arrayWithObjects:v70 count:4];
    [v49 addConstraints:v50];

    v51 = v4->_sizeLabel;
    v52 = [(TVUsageTableViewCell *)v4 contentView];
    v53 = [NSLayoutConstraint constraintWithItem:v51 attribute:10 relatedBy:0 toItem:v52 attribute:10 multiplier:1.0 constant:0.0];

    v54 = v4->_sizeLabel;
    v55 = [(TVUsageTableViewCell *)v4 contentView];
    v56 = [NSLayoutConstraint constraintWithItem:v54 attribute:6 relatedBy:0 toItem:v55 attribute:6 multiplier:1.0 constant:-8.0];

    v57 = [(TVUsageTableViewCell *)v4 contentView];
    v69[0] = v53;
    v69[1] = v56;
    v58 = [NSArray arrayWithObjects:v69 count:2];
    [v57 addConstraints:v58];
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

  v5 = [(UILabel *)self->_detailTextLabel text];
  if ([v5 length])
  {
    v6 = 11;
  }

  else
  {
    v6 = 10;
  }

  textLabel = self->_textLabel;
  v8 = [(TVUsageTableViewCell *)self contentView];
  v9 = [NSLayoutConstraint constraintWithItem:textLabel attribute:v6 relatedBy:0 toItem:v8 attribute:10 multiplier:1.0 constant:0.0];
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

  v13 = [(UIImageView *)self->_imageView image];

  v14 = self->_textLabel;
  if (v13)
  {
    v15 = [NSLayoutConstraint constraintWithItem:self->_textLabel attribute:5 relatedBy:0 toItem:self->_imageView attribute:6 multiplier:1.0 constant:16.0];
    v16 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = v15;
  }

  else
  {
    v16 = [(TVUsageTableViewCell *)self contentView];
    v17 = [NSLayoutConstraint constraintWithItem:v14 attribute:5 relatedBy:0 toItem:v16 attribute:5 multiplier:1.0 constant:16.0];
    v18 = self->_textLeadingConstraint;
    self->_textLeadingConstraint = v17;
  }

  [(NSLayoutConstraint *)self->_textLeadingConstraint setActive:1];
  v19.receiver = self;
  v19.super_class = TVUsageTableViewCell;
  [(TVUsageTableViewCell *)&v19 updateConstraints];
}

- (void)configureForUsageItem:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_item, v4);
  v5 = [v4 title];
  [(UILabel *)self->_textLabel setText:v5];

  v6 = [v4 subtitle];
  [(UILabel *)self->_detailTextLabel setText:v6];

  v7 = [v4 fileSizeString];
  [(UILabel *)self->_sizeLabel setText:v7];

  v8 = [v4 placeholderImage];
  [(UIImageView *)self->_imageView setImage:v8];

  v9 = [v4 artworkCatalog];
  if (v9)
  {
    v10 = [(TVUsageTableViewCell *)self window];
    v11 = [v10 screen];
    [v11 scale];
    if (v12 == 0.0)
    {
      v13 = +[UIScreen mainScreen];
      [v13 scale];
      [v9 setDestinationScale:?];
    }

    else
    {
      [v9 setDestinationScale:1.0];
    }

    [v9 setFittingSize:{44.0, 44.0}];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_460C;
    v14[3] = &unk_C578;
    v15 = v4;
    [v9 setDestination:self configurationBlock:v14];
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
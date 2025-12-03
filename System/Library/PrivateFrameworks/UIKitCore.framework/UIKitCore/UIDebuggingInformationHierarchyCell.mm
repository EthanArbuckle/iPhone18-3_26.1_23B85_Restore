@interface UIDebuggingInformationHierarchyCell
- (UIDebuggingInformationHierarchyCellDelegate)delegate;
- (void)applyLayoutAttributes:(id)attributes;
- (void)deliverToggle;
- (void)displayDetailsForCell;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setName:(id)name;
@end

@implementation UIDebuggingInformationHierarchyCell

- (void)layoutSubviews
{
  if (!self->_disclosureButton)
  {
    v3 = [UIButton alloc];
    [(UIView *)self bounds];
    v4 = [(UIButton *)v3 initWithFrame:?];
    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [off_1E70ECC18 fontWithName:@"Menlo" size:12.0];
    titleLabel = [(UIButton *)v4 titleLabel];
    [titleLabel setFont:v5];

    contentView = [(UICollectionViewCell *)self contentView];
    [contentView addSubview:v4];

    leadingAnchor = [(UIView *)v4 leadingAnchor];
    contentView2 = [(UICollectionViewCell *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v11 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:leadingAnchor2 multiplier:1.0];
    [v11 setActive:1];

    widthAnchor = [(UIView *)v4 widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:10.0];
    [v13 setActive:1];

    topAnchor = [(UIView *)v4 topAnchor];
    contentView3 = [(UICollectionViewCell *)self contentView];
    topAnchor2 = [contentView3 topAnchor];
    v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v17 setActive:1];

    bottomAnchor = [(UIView *)v4 bottomAnchor];
    contentView4 = [(UICollectionViewCell *)self contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v21 setActive:1];

    [(UIButton *)v4 setTitle:@"▶︎" forState:0];
    [(UIControl *)v4 addTarget:self action:sel_deliverToggle forControlEvents:64];
    v22 = +[UIColor blackColor];
    [(UIButton *)v4 setTitleColor:v22 forState:0];

    disclosureButton = self->_disclosureButton;
    self->_disclosureButton = v4;
  }

  if (self->_collapsedBeneath)
  {
    v24 = *(MEMORY[0x1E695EFD0] + 16);
    *&v77.a = *MEMORY[0x1E695EFD0];
    *&v77.c = v24;
    *&v77.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeRotation(&v77, 1.57079633);
  }

  v25 = self->_disclosureButton;
  v76 = v77;
  [(UIView *)v25 setTransform:&v76];
  [(UIView *)self->_disclosureButton setHidden:self->_disclosureIndicatorHidden];
  if (!self->_infoButton)
  {
    v26 = [UIButton alloc];
    v27 = [(UIButton *)v26 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v28 = [UIImage kitImageNamed:@"UIAccessoryButtonInfo"];
    [(UIButton *)v27 setImage:v28 forState:0];
    [(UIView *)v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView5 = [(UICollectionViewCell *)self contentView];
    [contentView5 addSubview:v27];

    trailingAnchor = [(UIView *)v27 trailingAnchor];
    trailingAnchor2 = [(UIView *)self trailingAnchor];
    v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
    [v32 setActive:1];

    centerYAnchor = [(UIView *)v27 centerYAnchor];
    contentView6 = [(UICollectionViewCell *)self contentView];
    centerYAnchor2 = [contentView6 centerYAnchor];
    v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v36 setActive:1];

    heightAnchor = [(UIView *)v27 heightAnchor];
    v38 = [heightAnchor constraintEqualToConstant:24.0];
    [v38 setActive:1];

    widthAnchor2 = [(UIView *)v27 widthAnchor];
    v40 = [widthAnchor2 constraintEqualToConstant:24.0];
    [v40 setActive:1];

    [(UIControl *)v27 addTarget:self action:sel_displayDetailsForCell forControlEvents:64];
    infoButton = self->_infoButton;
    self->_infoButton = v27;
  }

  mainLabel = self->_mainLabel;
  if (!mainLabel)
  {
    v43 = [UILabel alloc];
    [(UIView *)self bounds];
    v44 = [(UILabel *)v43 initWithFrame:?];
    [(UIView *)v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = [off_1E70ECC18 fontWithName:@"Menlo" size:12.0];
    [(UILabel *)v44 setFont:v45];

    contentView7 = [(UICollectionViewCell *)self contentView];
    [contentView7 addSubview:v44];

    leadingAnchor3 = [(UIView *)v44 leadingAnchor];
    trailingAnchor3 = [(UIView *)self->_disclosureButton trailingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:3.0];
    disclosureButtonAvailableConstraint = self->_disclosureButtonAvailableConstraint;
    self->_disclosureButtonAvailableConstraint = v49;

    leadingAnchor4 = [(UIView *)v44 leadingAnchor];
    leadingAnchor5 = [(UIView *)self leadingAnchor];
    v53 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:8.0];
    disclosureButtonUnavailableConstraint = self->_disclosureButtonUnavailableConstraint;
    self->_disclosureButtonUnavailableConstraint = v53;

    trailingAnchor4 = [(UIView *)v44 trailingAnchor];
    trailingAnchor5 = [(UIView *)self->_infoButton trailingAnchor];
    v57 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-3.0];
    [v57 setActive:1];

    topAnchor3 = [(UIView *)v44 topAnchor];
    contentView8 = [(UICollectionViewCell *)self contentView];
    topAnchor4 = [contentView8 topAnchor];
    v61 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v61 setActive:1];

    bottomAnchor3 = [(UIView *)v44 bottomAnchor];
    contentView9 = [(UICollectionViewCell *)self contentView];
    bottomAnchor4 = [contentView9 bottomAnchor];
    v65 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [v65 setActive:1];

    v66 = self->_mainLabel;
    self->_mainLabel = v44;

    mainLabel = self->_mainLabel;
  }

  [(UILabel *)mainLabel setText:self->_name];
  v67 = [UIColor colorWithWhite:0.9 alpha:1.0];
  [(UICollectionViewCell *)self setBackgroundColor:v67];

  v68 = +[UIColor redColor];
  cGColor = [v68 CGColor];
  layer = [(UIView *)self layer];
  [layer setBorderColor:cGColor];

  if (!-[UICollectionViewCell isSelected](self, "isSelected") || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v72 = [WeakRetained shouldHighlightSelectedCells], WeakRetained, v73 = 2.0, (v72 & 1) == 0))
  {
    v73 = 0.0;
  }

  layer2 = [(UIView *)self layer];
  [layer2 setBorderWidth:v73];

  [(NSLayoutConstraint *)self->_disclosureButtonUnavailableConstraint setActive:self->_disclosureIndicatorHidden];
  [(NSLayoutConstraint *)self->_disclosureButtonAvailableConstraint setActive:!self->_disclosureIndicatorHidden];
  contentView10 = [(UICollectionViewCell *)self contentView];
  [contentView10 bringSubviewToFront:self->_disclosureButton];
}

- (void)deliverToggle
{
  collapsedBeneath = self->_collapsedBeneath;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = WeakRetained;
  if (collapsedBeneath)
  {
    [WeakRetained expandBeneathCell:self];
  }

  else
  {
    [WeakRetained collapseBeneathCell:self];
  }

  self->_collapsedBeneath ^= 1u;

  [(UIView *)self setNeedsLayout];
}

- (void)displayDetailsForCell
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained displayDetailsForCell:self];
}

- (void)setName:(id)name
{
  objc_storeStrong(&self->_name, name);

  [(UIView *)self setNeedsLayout];
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = UIDebuggingInformationHierarchyCell;
  attributesCopy = attributes;
  [(UICollectionReusableView *)&v7 applyLayoutAttributes:attributesCopy];
  indexPath = [attributesCopy indexPath];

  indexPath = self->_indexPath;
  self->_indexPath = indexPath;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = UIDebuggingInformationHierarchyCell;
  [(UICollectionViewCell *)&v5 prepareForReuse];
  [(UIView *)self->_mainLabel removeFromSuperview];
  mainLabel = self->_mainLabel;
  self->_mainLabel = 0;

  indexPath = self->_indexPath;
  self->_indexPath = 0;

  self->_disclosureIndicatorHidden = 0;
}

- (UIDebuggingInformationHierarchyCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface WFTriggerImageCell
- (WFTriggerImageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)prepareForReuse;
- (void)setCornerRadius:(double)radius;
- (void)setImage:(id)image width:(double)width height:(double)height;
- (void)setImageTopPadding:(double)padding bottomPadding:(double)bottomPadding;
@end

@implementation WFTriggerImageCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = WFTriggerImageCell;
  [(WFTriggerImageCell *)&v4 prepareForReuse];
  [(WFTriggerImageCell *)self setAccessoryType:0];
  textLabel = [(WFTriggerImageCell *)self textLabel];
  [textLabel setText:0];
}

- (void)setCornerRadius:(double)radius
{
  [(UIImageView *)self->_iconView _setContinuousCornerRadius:radius];
  iconView = self->_iconView;

  [(UIImageView *)iconView setClipsToBounds:1];
}

- (void)setImageTopPadding:(double)padding bottomPadding:(double)bottomPadding
{
  [(NSLayoutConstraint *)self->_imagePaddingTopConstraint setConstant:padding];
  [(NSLayoutConstraint *)self->_imagePaddingBottomConstraint setConstant:bottomPadding];

  [(WFTriggerImageCell *)self setNeedsUpdateConstraints];
}

- (void)setImage:(id)image width:(double)width height:(double)height
{
  widthConstraint = self->_widthConstraint;
  imageCopy = image;
  [(NSLayoutConstraint *)widthConstraint setConstant:width];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:height];
  [(UIImageView *)self->_iconView setImage:imageCopy];

  [(WFTriggerImageCell *)self separatorInset];
  v11 = v10;
  [(WFTriggerImageCell *)self separatorInset];
  v13 = v12;
  [(WFTriggerImageCell *)self separatorInset];
  [(WFTriggerImageCell *)self setSeparatorInset:v11, width + 30.0, v13];

  [(WFTriggerImageCell *)self setNeedsUpdateConstraints];
}

- (WFTriggerImageCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v64[11] = *MEMORY[0x277D85DE8];
  v63.receiver = self;
  v63.super_class = WFTriggerImageCell;
  v4 = [(WFTriggerImageCell *)&v63 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D755E8]);
    iconView = v4->_iconView;
    v4->_iconView = v5;

    [(UIImageView *)v4->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconView setContentMode:1];
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v4->_label;
    v4->_label = v7;

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_label setFont:v9];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v4->_label setTextColor:labelColor];

    [(UILabel *)v4->_label setNumberOfLines:0];
    contentView = [(WFTriggerImageCell *)v4 contentView];
    [contentView addSubview:v4->_iconView];

    contentView2 = [(WFTriggerImageCell *)v4 contentView];
    [contentView2 addSubview:v4->_label];

    widthAnchor = [(UIImageView *)v4->_iconView widthAnchor];
    v14 = [widthAnchor constraintEqualToConstant:42.0];
    widthConstraint = v4->_widthConstraint;
    v4->_widthConstraint = v14;

    heightAnchor = [(UIImageView *)v4->_iconView heightAnchor];
    v17 = [heightAnchor constraintEqualToConstant:42.0];
    heightConstraint = v4->_heightConstraint;
    v4->_heightConstraint = v17;

    topAnchor = [(UIImageView *)v4->_iconView topAnchor];
    contentView3 = [(WFTriggerImageCell *)v4 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v22 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:15.0];
    imagePaddingTopConstraint = v4->_imagePaddingTopConstraint;
    v4->_imagePaddingTopConstraint = v22;

    bottomAnchor = [(UIImageView *)v4->_iconView bottomAnchor];
    contentView4 = [(WFTriggerImageCell *)v4 contentView];
    bottomAnchor2 = [contentView4 bottomAnchor];
    v27 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:15.0];
    imagePaddingBottomConstraint = v4->_imagePaddingBottomConstraint;
    v4->_imagePaddingBottomConstraint = v27;

    v50 = MEMORY[0x277CCAAD0];
    centerYAnchor = [(UIImageView *)v4->_iconView centerYAnchor];
    contentView5 = [(WFTriggerImageCell *)v4 contentView];
    centerYAnchor2 = [contentView5 centerYAnchor];
    v59 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v64[0] = v59;
    leadingAnchor = [(UIImageView *)v4->_iconView leadingAnchor];
    contentView6 = [(WFTriggerImageCell *)v4 contentView];
    leadingAnchor2 = [contentView6 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
    v64[1] = v55;
    centerYAnchor3 = [(UILabel *)v4->_label centerYAnchor];
    contentView7 = [(WFTriggerImageCell *)v4 contentView];
    centerYAnchor4 = [contentView7 centerYAnchor];
    v51 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v64[2] = v51;
    leadingAnchor3 = [(UILabel *)v4->_label leadingAnchor];
    trailingAnchor = [(UIImageView *)v4->_iconView trailingAnchor];
    v47 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:15.0];
    v64[3] = v47;
    trailingAnchor2 = [(UILabel *)v4->_label trailingAnchor];
    contentView8 = [(WFTriggerImageCell *)v4 contentView];
    layoutMarginsGuide = [contentView8 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v42 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v64[4] = v42;
    topAnchor3 = [(UILabel *)v4->_label topAnchor];
    contentView9 = [(WFTriggerImageCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView9 layoutMarginsGuide];
    topAnchor4 = [layoutMarginsGuide2 topAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v64[5] = v31;
    bottomAnchor3 = [(UILabel *)v4->_label bottomAnchor];
    contentView10 = [(WFTriggerImageCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView10 layoutMarginsGuide];
    bottomAnchor4 = [layoutMarginsGuide3 bottomAnchor];
    v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v64[6] = v36;
    v64[7] = v4->_widthConstraint;
    v64[8] = v4->_heightConstraint;
    v64[9] = v4->_imagePaddingTopConstraint;
    v64[10] = v4->_imagePaddingBottomConstraint;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:11];
    [v50 activateConstraints:v37];

    v38 = v4;
  }

  return v4;
}

@end
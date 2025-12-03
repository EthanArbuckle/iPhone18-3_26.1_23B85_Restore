@interface NCAppPickerViewCell
+ (double)preferredHeightForText:(id)text cellWidth:(double)width;
+ (double)preferredImageDimension;
- (NCAppPickerViewCell)initWithFrame:(CGRect)frame;
- (id)_frequencyTextForCount:(unint64_t)count;
- (void)_layoutLine;
- (void)configureWithName:(id)name image:(id)image avgNumberOfNotificationsCount:(unint64_t)count maxAvgNumberOfNotificationsCount:(unint64_t)notificationsCount selected:(BOOL)selected;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation NCAppPickerViewCell

- (NCAppPickerViewCell)initWithFrame:(CGRect)frame
{
  v142.receiver = self;
  v142.super_class = NCAppPickerViewCell;
  v3 = [(NCAppPickerViewCell *)&v142 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(NCAppPickerViewCell *)v3 traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] systemGray5Color];
    }

    else
    {
      [MEMORY[0x277D75348] systemGray6Color];
    }
    v141 = ;

    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    backgroundView = v4->_backgroundView;
    v4->_backgroundView = v11;

    [(UIView *)v4->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_backgroundView _setContinuousCornerRadius:12.0];
    [(UIView *)v4->_backgroundView setBackgroundColor:v141];
    contentView = [(NCAppPickerViewCell *)v4 contentView];
    [contentView addSubview:v4->_backgroundView];

    v14 = +[NCCheckmarkButton button];
    checkmarkButton = v4->_checkmarkButton;
    v4->_checkmarkButton = v14;

    [(NCCheckmarkButton *)v4->_checkmarkButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NCCheckmarkButton *)v4->_checkmarkButton setUserInteractionEnabled:0];
    contentView2 = [(NCAppPickerViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_checkmarkButton];

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v17;

    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(NCAppPickerViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_iconImageView];

    v20 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    titleAndFrequencyContainer = v4->_titleAndFrequencyContainer;
    v4->_titleAndFrequencyContainer = v20;

    [(UIView *)v4->_titleAndFrequencyContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(NCAppPickerViewCell *)v4 contentView];
    [contentView4 addSubview:v4->_titleAndFrequencyContainer];

    v23 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v23;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = v4->_titleLabel;
    _titleFont = [objc_opt_class() _titleFont];
    [(UILabel *)v25 setFont:_titleFont];

    v27 = v4->_titleLabel;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v27 setTextColor:labelColor];

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setMinimumScaleFactor:0.8];
    [(UIView *)v4->_titleAndFrequencyContainer addSubview:v4->_titleLabel];
    v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    frequencyLineView = v4->_frequencyLineView;
    v4->_frequencyLineView = v29;

    [(UIView *)v4->_frequencyLineView setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = v4->_frequencyLineView;
    systemGray3Color = [MEMORY[0x277D75348] systemGray3Color];
    [(UIView *)v31 setBackgroundColor:systemGray3Color];

    [(UIView *)v4->_frequencyLineView _setContinuousCornerRadius:2.0];
    [(UIView *)v4->_titleAndFrequencyContainer addSubview:v4->_frequencyLineView];
    v33 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v7, v8, v9, v10}];
    frequencyDotView = v4->_frequencyDotView;
    v4->_frequencyDotView = v33;

    [(UIView *)v4->_frequencyDotView setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = v4->_frequencyDotView;
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(UIView *)v35 setBackgroundColor:systemRedColor];

    [(UIView *)v4->_frequencyDotView _setCornerRadius:4.5];
    [(UIView *)v4->_titleAndFrequencyContainer addSubview:v4->_frequencyDotView];
    v37 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v7, v8, v9, v10}];
    frequencyLabel = v4->_frequencyLabel;
    v4->_frequencyLabel = v37;

    [(UILabel *)v4->_frequencyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = v4->_frequencyLabel;
    _frequencyFont = [objc_opt_class() _frequencyFont];
    [(UILabel *)v39 setFont:_frequencyFont];

    v41 = v4->_frequencyLabel;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v41 setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_frequencyLabel setMinimumScaleFactor:0.5];
    [(UILabel *)v4->_frequencyLabel setAdjustsFontSizeToFitWidth:1];
    [(UIView *)v4->_titleAndFrequencyContainer addSubview:v4->_frequencyLabel];
    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    topAnchor = [(UIView *)v4->_backgroundView topAnchor];
    contentView5 = [(NCAppPickerViewCell *)v4 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v43 addObject:v47];

    contentView6 = [(NCAppPickerViewCell *)v4 contentView];
    trailingAnchor = [contentView6 trailingAnchor];
    trailingAnchor2 = [(UIView *)v4->_backgroundView trailingAnchor];
    v51 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v43 addObject:v51];

    leadingAnchor = [(UIView *)v4->_backgroundView leadingAnchor];
    contentView7 = [(NCAppPickerViewCell *)v4 contentView];
    leadingAnchor2 = [contentView7 leadingAnchor];
    v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v43 addObject:v55];

    contentView8 = [(NCAppPickerViewCell *)v4 contentView];
    bottomAnchor = [contentView8 bottomAnchor];
    bottomAnchor2 = [(UIView *)v4->_backgroundView bottomAnchor];
    v59 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v43 addObject:v59];

    leadingAnchor3 = [(NCCheckmarkButton *)v4->_checkmarkButton leadingAnchor];
    contentView9 = [(NCAppPickerViewCell *)v4 contentView];
    leadingAnchor4 = [contentView9 leadingAnchor];
    v63 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:2.0];
    [v43 addObject:v63];

    heightAnchor = [(NCCheckmarkButton *)v4->_checkmarkButton heightAnchor];
    contentView10 = [(NCAppPickerViewCell *)v4 contentView];
    heightAnchor2 = [contentView10 heightAnchor];
    v67 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v43 addObject:v67];

    centerYAnchor = [(NCCheckmarkButton *)v4->_checkmarkButton centerYAnchor];
    contentView11 = [(NCAppPickerViewCell *)v4 contentView];
    centerYAnchor2 = [contentView11 centerYAnchor];
    v71 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v43 addObject:v71];

    widthAnchor = [(NCCheckmarkButton *)v4->_checkmarkButton widthAnchor];
    v73 = [widthAnchor constraintEqualToConstant:44.0];
    [v43 addObject:v73];

    heightAnchor3 = [(UIImageView *)v4->_iconImageView heightAnchor];
    v75 = [heightAnchor3 constraintEqualToConstant:29.0];
    [v43 addObject:v75];

    widthAnchor2 = [(UIImageView *)v4->_iconImageView widthAnchor];
    v77 = [widthAnchor2 constraintEqualToConstant:29.0];
    [v43 addObject:v77];

    leadingAnchor5 = [(UIImageView *)v4->_iconImageView leadingAnchor];
    contentView12 = [(NCAppPickerViewCell *)v4 contentView];
    leadingAnchor6 = [contentView12 leadingAnchor];
    v81 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:47.0];
    [v43 addObject:v81];

    centerYAnchor3 = [(UIImageView *)v4->_iconImageView centerYAnchor];
    contentView13 = [(NCAppPickerViewCell *)v4 contentView];
    centerYAnchor4 = [contentView13 centerYAnchor];
    v85 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v43 addObject:v85];

    centerYAnchor5 = [(UIView *)v4->_titleAndFrequencyContainer centerYAnchor];
    contentView14 = [(NCAppPickerViewCell *)v4 contentView];
    centerYAnchor6 = [contentView14 centerYAnchor];
    v89 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    [v43 addObject:v89];

    leadingAnchor7 = [(UIView *)v4->_titleAndFrequencyContainer leadingAnchor];
    trailingAnchor3 = [(UIImageView *)v4->_iconImageView trailingAnchor];
    v92 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor3 constant:12.0];
    [v43 addObject:v92];

    contentView15 = [(NCAppPickerViewCell *)v4 contentView];
    trailingAnchor4 = [contentView15 trailingAnchor];
    trailingAnchor5 = [(UIView *)v4->_titleAndFrequencyContainer trailingAnchor];
    v96 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:14.0];
    [v43 addObject:v96];

    topAnchor3 = [(UILabel *)v4->_titleLabel topAnchor];
    topAnchor4 = [(UIView *)v4->_titleAndFrequencyContainer topAnchor];
    v99 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [v43 addObject:v99];

    trailingAnchor6 = [(UIView *)v4->_titleAndFrequencyContainer trailingAnchor];
    trailingAnchor7 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v102 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    [v43 addObject:v102];

    leadingAnchor8 = [(UILabel *)v4->_titleLabel leadingAnchor];
    leadingAnchor9 = [(UIView *)v4->_titleAndFrequencyContainer leadingAnchor];
    v105 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    [v43 addObject:v105];

    topAnchor5 = [(UILabel *)v4->_frequencyLabel topAnchor];
    bottomAnchor3 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v108 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:2.0];
    [v43 addObject:v108];

    leadingAnchor10 = [(UILabel *)v4->_frequencyLabel leadingAnchor];
    trailingAnchor8 = [(UIView *)v4->_frequencyDotView trailingAnchor];
    v111 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8 constant:4.0];
    [v43 addObject:v111];

    trailingAnchor9 = [(UIView *)v4->_titleAndFrequencyContainer trailingAnchor];
    trailingAnchor10 = [(UILabel *)v4->_frequencyLabel trailingAnchor];
    v114 = [trailingAnchor9 constraintGreaterThanOrEqualToAnchor:trailingAnchor10 constant:0.0];
    [v43 addObject:v114];

    bottomAnchor4 = [(UIView *)v4->_titleAndFrequencyContainer bottomAnchor];
    bottomAnchor5 = [(UILabel *)v4->_frequencyLabel bottomAnchor];
    v117 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    [v43 addObject:v117];

    centerYAnchor7 = [(UIView *)v4->_frequencyLineView centerYAnchor];
    centerYAnchor8 = [(UILabel *)v4->_frequencyLabel centerYAnchor];
    v120 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    [v43 addObject:v120];

    leadingAnchor11 = [(UIView *)v4->_frequencyLineView leadingAnchor];
    leadingAnchor12 = [(UIView *)v4->_titleAndFrequencyContainer leadingAnchor];
    v123 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    [v43 addObject:v123];

    heightAnchor4 = [(UIView *)v4->_frequencyLineView heightAnchor];
    v125 = [heightAnchor4 constraintEqualToConstant:4.0];
    [v43 addObject:v125];

    widthAnchor3 = [(UIView *)v4->_frequencyLineView widthAnchor];
    v127 = [widthAnchor3 constraintEqualToConstant:0.0];
    frequencyLineWidthConstraint = v4->_frequencyLineWidthConstraint;
    v4->_frequencyLineWidthConstraint = v127;

    [v43 addObject:v4->_frequencyLineWidthConstraint];
    centerYAnchor9 = [(UIView *)v4->_frequencyDotView centerYAnchor];
    centerYAnchor10 = [(UIView *)v4->_frequencyLineView centerYAnchor];
    v131 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
    [v43 addObject:v131];

    heightAnchor5 = [(UIView *)v4->_frequencyDotView heightAnchor];
    v133 = [heightAnchor5 constraintEqualToConstant:9.0];
    [v43 addObject:v133];

    widthAnchor4 = [(UIView *)v4->_frequencyDotView widthAnchor];
    v135 = [widthAnchor4 constraintEqualToConstant:9.0];
    [v43 addObject:v135];

    leadingAnchor13 = [(UIView *)v4->_frequencyDotView leadingAnchor];
    trailingAnchor11 = [(UIView *)v4->_frequencyLineView trailingAnchor];
    v138 = [leadingAnchor13 constraintEqualToAnchor:trailingAnchor11];
    frequencyDotLeadingConstraint = v4->_frequencyDotLeadingConstraint;
    v4->_frequencyDotLeadingConstraint = v138;

    [v43 addObject:v4->_frequencyDotLeadingConstraint];
    [MEMORY[0x277CCAAD0] activateConstraints:v43];
  }

  return v4;
}

+ (double)preferredHeightForText:(id)text cellWidth:(double)width
{
  v24[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  _titleFont = [self _titleFont];
  if (!preferredHeightForText_cellWidth____drawingContext)
  {
    v8 = objc_alloc_init(MEMORY[0x277D74260]);
    v9 = preferredHeightForText_cellWidth____drawingContext;
    preferredHeightForText_cellWidth____drawingContext = v8;

    [preferredHeightForText_cellWidth____drawingContext setWantsNumberOfLineFragments:1];
  }

  v23 = *MEMORY[0x277D740A8];
  v24[0] = _titleFont;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [textCopy boundingRectWithSize:1 options:v10 attributes:preferredHeightForText_cellWidth____drawingContext context:{width + -102.0, 0.0}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v25.origin.x = v12;
  v25.origin.y = v14;
  v25.size.width = v16;
  v25.size.height = v18;
  CGRectGetHeight(v25);

  _frequencyFont = [self _frequencyFont];
  [_frequencyFont lineHeight];

  _NCMainScreenScale();
  UICeilToScale();
  if (v20 >= 62.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 62.0;
  }

  return v21;
}

+ (double)preferredImageDimension
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v4 = ceil(v3 * 29.0);

  return v4;
}

- (void)configureWithName:(id)name image:(id)image avgNumberOfNotificationsCount:(unint64_t)count maxAvgNumberOfNotificationsCount:(unint64_t)notificationsCount selected:(BOOL)selected
{
  selectedCopy = selected;
  titleLabel = self->_titleLabel;
  imageCopy = image;
  [(UILabel *)titleLabel setText:name];
  [(UIImageView *)self->_iconImageView setImage:imageCopy];

  [(NCCheckmarkButton *)self->_checkmarkButton setSelected:selectedCopy];
  frequencyLabel = self->_frequencyLabel;
  v15 = [(NCAppPickerViewCell *)self _frequencyTextForCount:count];
  [(UILabel *)frequencyLabel setText:v15];

  self->_avgNumberOfNotificationsCount = count;
  self->_maxAvgNumberOfNotificationsCount = notificationsCount;
  [(NCAppPickerViewCell *)self setNeedsLayout];

  [(NCAppPickerViewCell *)self layoutIfNeeded];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NCAppPickerViewCell;
  [(NCAppPickerViewCell *)&v3 prepareForReuse];
  [(UIImageView *)self->_iconImageView setImage:0];
  [(UILabel *)self->_frequencyLabel setText:0];
  [(UILabel *)self->_titleLabel setText:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCAppPickerViewCell;
  [(NCAppPickerViewCell *)&v3 layoutSubviews];
  [(NCAppPickerViewCell *)self _layoutLine];
}

- (id)_frequencyTextForCount:(unint64_t)count
{
  v3 = MEMORY[0x277CCABB8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v5 = [v3 localizedStringFromNumber:v4 numberStyle:0];

  return v5;
}

- (void)_layoutLine
{
  v18[1] = *MEMORY[0x277D85DE8];
  [(UIView *)self->_titleAndFrequencyContainer frame];
  v4 = v3;
  v5 = [(NCAppPickerViewCell *)self _frequencyTextForCount:self->_maxAvgNumberOfNotificationsCount];
  [(UIView *)self->_titleAndFrequencyContainer frame];
  v7 = v6;
  v9 = v8;
  v17 = *MEMORY[0x277D740A8];
  _frequencyFont = [objc_opt_class() _frequencyFont];
  v18[0] = _frequencyFont;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v5 boundingRectWithSize:1 options:v11 attributes:0 context:{v7, v9}];
  Width = CGRectGetWidth(v19);

  maxAvgNumberOfNotificationsCount = self->_maxAvgNumberOfNotificationsCount;
  v14 = 0.0;
  if (maxAvgNumberOfNotificationsCount)
  {
    v14 = self->_avgNumberOfNotificationsCount / maxAvgNumberOfNotificationsCount;
  }

  v15 = floor(fmax(v4 - Width + -4.0 + -4.5, 0.0) * v14);
  [(NSLayoutConstraint *)self->_frequencyLineWidthConstraint setConstant:v15];
  if (v15 >= 4.5)
  {
    v16 = -4.5;
  }

  else
  {
    v16 = 0.0;
  }

  [(NSLayoutConstraint *)self->_frequencyDotLeadingConstraint setConstant:v16];
  [(UIView *)self->_frequencyLineView setHidden:v15 < 4.5];
}

@end
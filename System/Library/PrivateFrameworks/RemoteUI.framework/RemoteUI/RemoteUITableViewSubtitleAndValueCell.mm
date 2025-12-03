@interface RemoteUITableViewSubtitleAndValueCell
- (id)detailTextLabel;
- (id)effectiveDetailTextLabel;
- (id)effectiveValueTextLabel;
- (id)textLabel;
- (id)valueLabel;
- (void)_setUpViews;
- (void)_updateLeadingConstraint;
- (void)setBackgroundColor:(id)color;
- (void)setHTMLSubLabelData:(id)data sourceURL:(id)l delegate:(id)delegate;
- (void)setImage:(id)image;
- (void)setImage:(id)image padding:(UIEdgeInsets)padding tintColor:(id)color;
@end

@implementation RemoteUITableViewSubtitleAndValueCell

- (id)effectiveDetailTextLabel
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [(RemoteUITableViewSubtitleAndValueCell *)self detailTextLabel];
  }

  else
  {
    [(RemoteUITableViewSubtitleAndValueCell *)self valueLabel];
  }
  v5 = ;

  return v5;
}

- (id)effectiveValueTextLabel
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [(RemoteUITableViewSubtitleAndValueCell *)self valueLabel];
  }

  else
  {
    [(RemoteUITableViewSubtitleAndValueCell *)self detailTextLabel];
  }
  v5 = ;

  return v5;
}

- (id)textLabel
{
  [(RemoteUITableViewSubtitleAndValueCell *)self _setUpViews];
  titleLabel = self->_titleLabel;

  return titleLabel;
}

- (id)detailTextLabel
{
  [(RemoteUITableViewSubtitleAndValueCell *)self _setUpViews];
  detailLabel = self->_detailLabel;

  return detailLabel;
}

- (void)_updateLeadingConstraint
{
  imageView = [(RemoteUITableViewSubtitleAndValueCell *)self imageView];
  image = [imageView image];
  v5 = image == 0;
  v6 = image != 0;

  [(NSLayoutConstraint *)self->_imageConstraint setActive:v6];
  leadingConstraint = self->_leadingConstraint;

  [(NSLayoutConstraint *)leadingConstraint setActive:v5];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  _tableView = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
  [_tableView beginUpdates];

  v7.receiver = self;
  v7.super_class = RemoteUITableViewSubtitleAndValueCell;
  [(RemoteUITableViewSubtitleAndValueCell *)&v7 setImage:imageCopy];

  [(RemoteUITableViewSubtitleAndValueCell *)self _updateLeadingConstraint];
  _tableView2 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
  [_tableView2 endUpdates];
}

- (void)setImage:(id)image padding:(UIEdgeInsets)padding tintColor:(id)color
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  colorCopy = color;
  imageCopy = image;
  _tableView = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
  [_tableView beginUpdates];

  v15.receiver = self;
  v15.super_class = RemoteUITableViewSubtitleAndValueCell;
  [(RemoteUITableViewCell *)&v15 setImage:imageCopy padding:colorCopy tintColor:top, left, bottom, right];

  [(RemoteUITableViewSubtitleAndValueCell *)self _updateLeadingConstraint];
  _tableView2 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
  [_tableView2 endUpdates];
}

- (void)_setUpViews
{
  v79[3] = *MEMORY[0x277D85DE8];
  if (!self->_titleLabel)
  {
    v3 = objc_alloc(MEMORY[0x277D756B8]);
    v4 = *MEMORY[0x277CBF3A0];
    v5 = *(MEMORY[0x277CBF3A0] + 8);
    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v7 = *(MEMORY[0x277CBF3A0] + 24);
    v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v8;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = *MEMORY[0x277D76918];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)self->_titleLabel setFont:v11];

    v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
    detailLabel = self->_detailLabel;
    self->_detailLabel = v12;

    [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    [(UILabel *)self->_detailLabel setFont:v14];

    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
    valueLabel = self->_valueLabel;
    self->_valueLabel = v15;

    [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [[RUIWebContainerView alloc] initWithContent:0 baseURL:0];
    htmlSublabelContainer = self->_htmlSublabelContainer;
    self->_htmlSublabelContainer = v17;

    [(RUIWebContainerView *)self->_htmlSublabelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RUIWebContainerView *)self->_htmlSublabelContainer setHidden:1];
    LODWORD(v19) = 1148846080;
    [(RUIWebContainerView *)self->_htmlSublabelContainer setContentCompressionResistancePriority:2 forAxis:v19];
    [(RUIWebContainerView *)self->_htmlSublabelContainer setUserStyleSheet:@"body { color: -apple-system-secondary-label; font: -apple-system-footnote; line-height: 1.5em }"];
    LODWORD(v20) = 1148846080;
    [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:2 forAxis:v20];
    LODWORD(v21) = 1148846080;
    [(UILabel *)self->_valueLabel setContentCompressionResistancePriority:2 forAxis:v21];
    v22 = objc_alloc(MEMORY[0x277D75A68]);
    v23 = self->_valueLabel;
    v79[0] = self->_titleLabel;
    v79[1] = v23;
    v79[2] = self->_htmlSublabelContainer;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
    v25 = [v22 initWithArrangedSubviews:v24];

    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v25 setAlignment:1];
    [v25 setAxis:1];
    [v25 setSpacing:2.0];
    [v25 setDistribution:0];
    v26 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    [(UILabel *)self->_titleLabel setFont:v26];

    v27 = [MEMORY[0x277D74300] preferredFontForTextStyle:v10];
    [(UILabel *)self->_detailLabel setFont:v27];

    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [(UILabel *)self->_valueLabel setFont:v28];

    [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_detailLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)self->_valueLabel setAdjustsFontForContentSizeCategory:1];
    v29 = objc_alloc(MEMORY[0x277D75A68]);
    v30 = self->_detailLabel;
    v78[0] = v25;
    v78[1] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
    v32 = [v29 initWithArrangedSubviews:v31];

    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v32 setAlignment:3];
    [v32 setAxis:0];
    [v32 setSpacing:8.0];
    [v32 setDistribution:0];
    contentView = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    [contentView addSubview:v32];

    leadingAnchor = [v32 leadingAnchor];
    imageView = [(RemoteUITableViewSubtitleAndValueCell *)self imageView];
    trailingAnchor = [imageView trailingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:16.0];
    imageConstraint = self->_imageConstraint;
    self->_imageConstraint = v37;

    leadingAnchor2 = [v32 leadingAnchor];
    contentView2 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    readableContentGuide = [contentView2 readableContentGuide];
    leadingAnchor3 = [readableContentGuide leadingAnchor];
    v43 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    leadingConstraint = self->_leadingConstraint;
    self->_leadingConstraint = v43;

    v66 = MEMORY[0x277CCAAD0];
    leadingAnchor4 = [(RUIWebContainerView *)self->_htmlSublabelContainer leadingAnchor];
    v76 = v25;
    leadingAnchor5 = [v25 leadingAnchor];
    v73 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v77[0] = v73;
    trailingAnchor2 = [(RUIWebContainerView *)self->_htmlSublabelContainer trailingAnchor];
    trailingAnchor3 = [v25 trailingAnchor];
    v70 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v77[1] = v70;
    topAnchor = [v32 topAnchor];
    contentView3 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    readableContentGuide2 = [contentView3 readableContentGuide];
    topAnchor2 = [readableContentGuide2 topAnchor];
    v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v77[2] = v64;
    trailingAnchor4 = [v32 trailingAnchor];
    contentView4 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    readableContentGuide3 = [contentView4 readableContentGuide];
    trailingAnchor5 = [readableContentGuide3 trailingAnchor];
    v46 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v77[3] = v46;
    bottomAnchor = [v32 bottomAnchor];
    contentView5 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    readableContentGuide4 = [contentView5 readableContentGuide];
    bottomAnchor2 = [readableContentGuide4 bottomAnchor];
    v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v77[4] = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:5];
    [v66 activateConstraints:v52];

    LODWORD(v53) = 1148846080;
    [(RUIWebContainerView *)self->_htmlSublabelContainer setContentCompressionResistancePriority:2 forAxis:v53];
    LODWORD(v54) = 1148846080;
    [(RUIWebContainerView *)self->_htmlSublabelContainer setContentCompressionResistancePriority:1 forAxis:v54];
    LODWORD(v55) = 1132068864;
    [v76 setContentHuggingPriority:3 forAxis:v55];
    LODWORD(v56) = 1148846080;
    [v76 setContentCompressionResistancePriority:3 forAxis:v56];
    LODWORD(v57) = 1148846080;
    [(UILabel *)self->_valueLabel setContentCompressionResistancePriority:1 forAxis:v57];
    LODWORD(v58) = 1144750080;
    [(UILabel *)self->_detailLabel setContentHuggingPriority:1 forAxis:v58];
    _tableView = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
    [_tableView beginUpdates];

    [(RemoteUITableViewSubtitleAndValueCell *)self _updateLeadingConstraint];
    _tableView2 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
    [_tableView2 endUpdates];
  }
}

- (id)valueLabel
{
  [(RemoteUITableViewSubtitleAndValueCell *)self _setUpViews];
  valueLabel = self->_valueLabel;

  return valueLabel;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundColor = [(RemoteUITableViewSubtitleAndValueCell *)self backgroundColor];
  cGColor = [backgroundColor CGColor];
  v8.receiver = self;
  v8.super_class = RemoteUITableViewSubtitleAndValueCell;
  [(RemoteUITableViewSubtitleAndValueCell *)&v8 setBackgroundColor:colorCopy];
  if ([(RemoteUITableViewSubtitleAndValueCell *)self selectionStyle]&& ([(RemoteUITableViewSubtitleAndValueCell *)self isSelected]& 1) != 0 || ([(RemoteUITableViewSubtitleAndValueCell *)self isHighlighted]& 1) != 0 || !CGColorEqualToColor([(UILabel *)self->_valueLabel _backgroundCGColor], cGColor))
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_valueLabel setBackgroundColor:clearColor];
  }

  else
  {
    [(UILabel *)self->_valueLabel setBackgroundColor:colorCopy];
  }
}

- (void)setHTMLSubLabelData:(id)data sourceURL:(id)l delegate:(id)delegate
{
  if (data)
  {
    htmlSublabelContainer = self->_htmlSublabelContainer;
    delegateCopy = delegate;
    lCopy = l;
    dataCopy = data;
    [(RUIWebContainerView *)htmlSublabelContainer setHidden:0];
    [(RUIWebContainerView *)self->_htmlSublabelContainer setDelegate:delegateCopy];

    [(RUIWebContainerView *)self->_htmlSublabelContainer updateContent:dataCopy baseURL:lCopy];
  }
}

@end
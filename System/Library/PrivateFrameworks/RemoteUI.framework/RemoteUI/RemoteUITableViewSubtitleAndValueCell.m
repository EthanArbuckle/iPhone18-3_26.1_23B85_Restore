@interface RemoteUITableViewSubtitleAndValueCell
- (id)detailTextLabel;
- (id)effectiveDetailTextLabel;
- (id)effectiveValueTextLabel;
- (id)textLabel;
- (id)valueLabel;
- (void)_setUpViews;
- (void)_updateLeadingConstraint;
- (void)setBackgroundColor:(id)a3;
- (void)setHTMLSubLabelData:(id)a3 sourceURL:(id)a4 delegate:(id)a5;
- (void)setImage:(id)a3;
- (void)setImage:(id)a3 padding:(UIEdgeInsets)a4 tintColor:(id)a5;
@end

@implementation RemoteUITableViewSubtitleAndValueCell

- (id)effectiveDetailTextLabel
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
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
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
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
  v3 = [(RemoteUITableViewSubtitleAndValueCell *)self imageView];
  v4 = [v3 image];
  v5 = v4 == 0;
  v6 = v4 != 0;

  [(NSLayoutConstraint *)self->_imageConstraint setActive:v6];
  leadingConstraint = self->_leadingConstraint;

  [(NSLayoutConstraint *)leadingConstraint setActive:v5];
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
  [v5 beginUpdates];

  v7.receiver = self;
  v7.super_class = RemoteUITableViewSubtitleAndValueCell;
  [(RemoteUITableViewSubtitleAndValueCell *)&v7 setImage:v4];

  [(RemoteUITableViewSubtitleAndValueCell *)self _updateLeadingConstraint];
  v6 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
  [v6 endUpdates];
}

- (void)setImage:(id)a3 padding:(UIEdgeInsets)a4 tintColor:(id)a5
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v11 = a5;
  v12 = a3;
  v13 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
  [v13 beginUpdates];

  v15.receiver = self;
  v15.super_class = RemoteUITableViewSubtitleAndValueCell;
  [(RemoteUITableViewCell *)&v15 setImage:v12 padding:v11 tintColor:top, left, bottom, right];

  [(RemoteUITableViewSubtitleAndValueCell *)self _updateLeadingConstraint];
  v14 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
  [v14 endUpdates];
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
    v33 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    [v33 addSubview:v32];

    v34 = [v32 leadingAnchor];
    v35 = [(RemoteUITableViewSubtitleAndValueCell *)self imageView];
    v36 = [v35 trailingAnchor];
    v37 = [v34 constraintEqualToAnchor:v36 constant:16.0];
    imageConstraint = self->_imageConstraint;
    self->_imageConstraint = v37;

    v39 = [v32 leadingAnchor];
    v40 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    v41 = [v40 readableContentGuide];
    v42 = [v41 leadingAnchor];
    v43 = [v39 constraintEqualToAnchor:v42];
    leadingConstraint = self->_leadingConstraint;
    self->_leadingConstraint = v43;

    v66 = MEMORY[0x277CCAAD0];
    v75 = [(RUIWebContainerView *)self->_htmlSublabelContainer leadingAnchor];
    v76 = v25;
    v74 = [v25 leadingAnchor];
    v73 = [v75 constraintEqualToAnchor:v74];
    v77[0] = v73;
    v72 = [(RUIWebContainerView *)self->_htmlSublabelContainer trailingAnchor];
    v71 = [v25 trailingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v77[1] = v70;
    v68 = [v32 topAnchor];
    v69 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    v67 = [v69 readableContentGuide];
    v65 = [v67 topAnchor];
    v64 = [v68 constraintEqualToAnchor:v65];
    v77[2] = v64;
    v62 = [v32 trailingAnchor];
    v63 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    v61 = [v63 readableContentGuide];
    v45 = [v61 trailingAnchor];
    v46 = [v62 constraintEqualToAnchor:v45];
    v77[3] = v46;
    v47 = [v32 bottomAnchor];
    v48 = [(RemoteUITableViewSubtitleAndValueCell *)self contentView];
    v49 = [v48 readableContentGuide];
    v50 = [v49 bottomAnchor];
    v51 = [v47 constraintEqualToAnchor:v50];
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
    v59 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
    [v59 beginUpdates];

    [(RemoteUITableViewSubtitleAndValueCell *)self _updateLeadingConstraint];
    v60 = [(RemoteUITableViewSubtitleAndValueCell *)self _tableView];
    [v60 endUpdates];
  }
}

- (id)valueLabel
{
  [(RemoteUITableViewSubtitleAndValueCell *)self _setUpViews];
  valueLabel = self->_valueLabel;

  return valueLabel;
}

- (void)setBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(RemoteUITableViewSubtitleAndValueCell *)self backgroundColor];
  v6 = [v5 CGColor];
  v8.receiver = self;
  v8.super_class = RemoteUITableViewSubtitleAndValueCell;
  [(RemoteUITableViewSubtitleAndValueCell *)&v8 setBackgroundColor:v4];
  if ([(RemoteUITableViewSubtitleAndValueCell *)self selectionStyle]&& ([(RemoteUITableViewSubtitleAndValueCell *)self isSelected]& 1) != 0 || ([(RemoteUITableViewSubtitleAndValueCell *)self isHighlighted]& 1) != 0 || !CGColorEqualToColor([(UILabel *)self->_valueLabel _backgroundCGColor], v6))
  {
    v7 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_valueLabel setBackgroundColor:v7];
  }

  else
  {
    [(UILabel *)self->_valueLabel setBackgroundColor:v4];
  }
}

- (void)setHTMLSubLabelData:(id)a3 sourceURL:(id)a4 delegate:(id)a5
{
  if (a3)
  {
    htmlSublabelContainer = self->_htmlSublabelContainer;
    v9 = a5;
    v10 = a4;
    v11 = a3;
    [(RUIWebContainerView *)htmlSublabelContainer setHidden:0];
    [(RUIWebContainerView *)self->_htmlSublabelContainer setDelegate:v9];

    [(RUIWebContainerView *)self->_htmlSublabelContainer updateContent:v11 baseURL:v10];
  }
}

@end
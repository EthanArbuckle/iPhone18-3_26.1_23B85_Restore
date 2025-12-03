@interface RUIHeaderView
+ (UIImageSymbolConfiguration)symbolConfiguration;
- (BOOL)_shouldHideLeadingSpacerForLabel:(id)label;
- (BOOL)_shouldHideTrailingSpacerForLabel:(id)label;
- (RUIHeaderView)initWithAttributes:(id)attributes;
- (UIEdgeInsets)margins;
- (double)_headerOffsetInView:(id)view;
- (id)_makeSpacer;
- (id)_paddedStackViewWithArrangedSubviews:(id)subviews;
- (id)navSubHeaderLabel;
- (id)navTitleLabel;
- (id)subHeaderLabel;
- (void)_arrangeItems;
- (void)layoutSubviews;
- (void)setDetailHeaderColor:(id)color;
- (void)setDetailText:(id)text attributes:(id)attributes;
- (void)setHeaderAlignment:(int64_t)alignment;
- (void)setHeaderColor:(id)color;
- (void)setIconImage:(id)image;
- (void)setImageSize:(CGSize)size;
- (void)setNavSubHeaderTitle:(id)title;
- (void)setNavTitle:(id)title;
- (void)setSectionIsFirst:(BOOL)first;
- (void)setSubHeaderAlignment:(int64_t)alignment;
- (void)setSubHeaderColor:(id)color;
- (void)setSubHeaderText:(id)text baseURL:(id)l attributes:(id)attributes;
- (void)setText:(id)text baseURL:(id)l attributes:(id)attributes;
@end

@implementation RUIHeaderView

- (double)_headerOffsetInView:(id)view
{
  traitCollection = [view traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  result = 36.0;
  if (horizontalSizeClass == 1)
  {
    result = 26.0;
  }

  if (!self->_isFirstSection)
  {
    return 16.0;
  }

  return result;
}

- (id)_makeSpacer
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v2 setUserInteractionEnabled:0];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [v2 heightAnchor];
  v4 = [heightAnchor constraintEqualToConstant:1.0];

  LODWORD(v5) = 1132068864;
  [v4 setPriority:v5];
  [v4 setActive:1];
  LODWORD(v6) = 1112014848;
  [v2 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1112014848;
  [v2 setContentCompressionResistancePriority:0 forAxis:v7];

  return v2;
}

- (RUIHeaderView)initWithAttributes:(id)attributes
{
  v103[3] = *MEMORY[0x277D85DE8];
  v95.receiver = self;
  v95.super_class = RUIHeaderView;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(RUIHeaderView *)&v95 initWithFrame:attributes, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    headerLabel = v7->_headerLabel;
    v7->_headerLabel = v8;

    v10 = RemoteUIHeaderFont();
    [(UILabel *)v7->_headerLabel setFont:v10];

    v11 = RemoteUIHeaderTextColor();
    [(UILabel *)v7->_headerLabel setTextColor:v11];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v7->_headerLabel setBackgroundColor:clearColor];

    [(UILabel *)v7->_headerLabel setNumberOfLines:0];
    [(UILabel *)v7->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(UILabel *)v7->_headerLabel setContentCompressionResistancePriority:0 forAxis:v13];
    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v3, v4, v5, v6}];
    iconView = v7->_iconView;
    v7->_iconView = v14;

    _makeSpacer = [(RUIHeaderView *)v7 _makeSpacer];
    iconLeadingSpacer = v7->_iconLeadingSpacer;
    v7->_iconLeadingSpacer = _makeSpacer;

    _makeSpacer2 = [(RUIHeaderView *)v7 _makeSpacer];
    iconTrailingSpacer = v7->_iconTrailingSpacer;
    v7->_iconTrailingSpacer = _makeSpacer2;

    v103[0] = v7->_iconLeadingSpacer;
    v103[1] = v7->_iconView;
    v103[2] = v7->_iconTrailingSpacer;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:3];
    v21 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v20];
    iconStackView = v7->_iconStackView;
    v7->_iconStackView = v21;

    LODWORD(v23) = 1148846080;
    [(UIStackView *)v7->_iconStackView setContentHuggingPriority:0 forAxis:v23];
    _makeSpacer3 = [(RUIHeaderView *)v7 _makeSpacer];
    headerLeadingSpacer = v7->_headerLeadingSpacer;
    v7->_headerLeadingSpacer = _makeSpacer3;

    _makeSpacer4 = [(RUIHeaderView *)v7 _makeSpacer];
    headerTrailingSpacer = v7->_headerTrailingSpacer;
    v7->_headerTrailingSpacer = _makeSpacer4;

    v102[0] = v7->_headerLeadingSpacer;
    v102[1] = v7->_headerLabel;
    v102[2] = v7->_headerTrailingSpacer;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:3];
    v29 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v28];
    headerStackView = v7->_headerStackView;
    v7->_headerStackView = v29;

    _makeSpacer5 = [(RUIHeaderView *)v7 _makeSpacer];
    subHeaderLeadingSpacer = v7->_subHeaderLeadingSpacer;
    v7->_subHeaderLeadingSpacer = _makeSpacer5;

    _makeSpacer6 = [(RUIHeaderView *)v7 _makeSpacer];
    subHeaderTrailingSpacer = v7->_subHeaderTrailingSpacer;
    v7->_subHeaderTrailingSpacer = _makeSpacer6;

    v101[0] = v7->_subHeaderLeadingSpacer;
    subHeaderLabel = [(RUIHeaderView *)v7 subHeaderLabel];
    v101[1] = subHeaderLabel;
    v101[2] = v7->_subHeaderTrailingSpacer;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:3];
    v37 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v36];
    subHeaderStackView = v7->_subHeaderStackView;
    v7->_subHeaderStackView = v37;

    _makeSpacer7 = [(RUIHeaderView *)v7 _makeSpacer];
    navTitleLeadingSpacer = v7->_navTitleLeadingSpacer;
    v7->_navTitleLeadingSpacer = _makeSpacer7;

    _makeSpacer8 = [(RUIHeaderView *)v7 _makeSpacer];
    navTitleTrailingSpacer = v7->_navTitleTrailingSpacer;
    v7->_navTitleTrailingSpacer = _makeSpacer8;

    v100[0] = v7->_navTitleLeadingSpacer;
    navTitleLabel = [(RUIHeaderView *)v7 navTitleLabel];
    v100[1] = navTitleLabel;
    v100[2] = v7->_navTitleTrailingSpacer;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:3];
    v45 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v44];
    navTitleStackView = v7->_navTitleStackView;
    v7->_navTitleStackView = v45;

    [(UIStackView *)v7->_navTitleStackView setHidden:1];
    _makeSpacer9 = [(RUIHeaderView *)v7 _makeSpacer];
    navSubtitleLeadingSpacer = v7->_navSubtitleLeadingSpacer;
    v7->_navSubtitleLeadingSpacer = _makeSpacer9;

    _makeSpacer10 = [(RUIHeaderView *)v7 _makeSpacer];
    navSubtitleTrailingSpacer = v7->_navSubtitleTrailingSpacer;
    v7->_navSubtitleTrailingSpacer = _makeSpacer10;

    v99[0] = v7->_navSubtitleLeadingSpacer;
    navSubHeaderLabel = [(RUIHeaderView *)v7 navSubHeaderLabel];
    v99[1] = navSubHeaderLabel;
    v99[2] = v7->_navSubtitleTrailingSpacer;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:3];
    v53 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v52];
    navSubtitleStackView = v7->_navSubtitleStackView;
    v7->_navSubtitleStackView = v53;

    [(UIStackView *)v7->_navSubtitleStackView setHidden:1];
    v55 = objc_alloc(MEMORY[0x277D75A68]);
    _makeSpacer11 = [(RUIHeaderView *)v7 _makeSpacer];
    v98[0] = _makeSpacer11;
    v98[1] = v7->_navTitleStackView;
    v98[2] = v7->_navSubtitleStackView;
    v98[3] = v7->_headerStackView;
    v98[4] = v7->_subHeaderStackView;
    _makeSpacer12 = [(RUIHeaderView *)v7 _makeSpacer];
    v98[5] = _makeSpacer12;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v98 count:6];
    v59 = [v55 initWithArrangedSubviews:v58];
    labelsStackView = v7->_labelsStackView;
    v7->_labelsStackView = v59;

    [(UIStackView *)v7->_labelsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v7->_labelsStackView setAxis:1];
    [(UIStackView *)v7->_labelsStackView setAlignment:0];
    [(UIStackView *)v7->_labelsStackView setDistribution:3];
    LODWORD(v61) = 1132068864;
    [(UIStackView *)v7->_labelsStackView setContentHuggingPriority:0 forAxis:v61];
    v62 = [[RUILinkLabel alloc] initWithFrame:v3, v4, v5, v6];
    detailHeaderLabel = v7->_detailHeaderLabel;
    v7->_detailHeaderLabel = v62;

    v64 = RemoteUIHeaderFont();
    textLabel = [(RUILinkLabel *)v7->_detailHeaderLabel textLabel];
    [textLabel setFont:v64];

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    textLabel2 = [(RUILinkLabel *)v7->_detailHeaderLabel textLabel];
    [textLabel2 setBackgroundColor:clearColor2];

    [(RUILinkLabel *)v7->_detailHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RUILinkLabel *)v7->_detailHeaderLabel setNumberOfLines:1];
    [(RUILinkLabel *)v7->_detailHeaderLabel setLineBreakMode:5];
    textLabel3 = [(RUILinkLabel *)v7->_detailHeaderLabel textLabel];
    LODWORD(v69) = 1148846080;
    [textLabel3 setContentCompressionResistancePriority:0 forAxis:v69];

    textLabel4 = [(RUILinkLabel *)v7->_detailHeaderLabel textLabel];
    LODWORD(v71) = 1132068864;
    [textLabel4 setContentHuggingPriority:0 forAxis:v71];

    [(RUILinkLabel *)v7->_detailHeaderLabel setHidden:1];
    v72 = objc_alloc(MEMORY[0x277D75A68]);
    v97[0] = v7->_iconStackView;
    v97[1] = v7->_labelsStackView;
    v97[2] = v7->_detailHeaderLabel;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:3];
    v74 = [v72 initWithArrangedSubviews:v73];
    mainStackView = v7->_mainStackView;
    v7->_mainStackView = v74;

    [(UIStackView *)v7->_mainStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v7->_mainStackView setAlignment:0];
    [(UIStackView *)v7->_mainStackView setDistribution:0];
    [(UIImageView *)v7->_iconView setContentMode:1];
    [(UIImageView *)v7->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RUIHeaderView *)v7 setLayoutMargins:0.0, 0.0, 8.0, 0.0];
    [(RUIHeaderView *)v7 setLayoutMarginsFollowReadableWidth:0];
    [(RUIHeaderView *)v7 setPreservesSuperviewLayoutMargins:0];
    [(UIStackView *)v7->_iconStackView setHidden:1];
    v7->_imageLabelPadding = 12.0;
    [(RUIHeaderView *)v7 addSubview:v7->_mainStackView];
    v87 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIStackView *)v7->_mainStackView leadingAnchor];
    layoutMarginsGuide = [(RUIHeaderView *)v7 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v91 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v96[0] = v91;
    topAnchor = [(UIStackView *)v7->_mainStackView topAnchor];
    layoutMarginsGuide2 = [(RUIHeaderView *)v7 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v86 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v96[1] = v86;
    bottomAnchor = [(UIStackView *)v7->_mainStackView bottomAnchor];
    layoutMarginsGuide3 = [(RUIHeaderView *)v7 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
    v79 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v96[2] = v79;
    trailingAnchor = [(UIStackView *)v7->_mainStackView trailingAnchor];
    layoutMarginsGuide4 = [(RUIHeaderView *)v7 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide4 trailingAnchor];
    v83 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v96[3] = v83;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
    [v87 activateConstraints:v84];

    [(RUIHeaderView *)v7 _arrangeItems];
  }

  return v7;
}

- (id)_paddedStackViewWithArrangedSubviews:(id)subviews
{
  v3 = MEMORY[0x277D75A68];
  subviewsCopy = subviews;
  v5 = [[v3 alloc] initWithArrangedSubviews:subviewsCopy];

  [v5 setAxis:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAlignment:3];
  [v5 setDistribution:3];

  return v5;
}

- (void)setText:(id)text baseURL:(id)l attributes:(id)attributes
{
  headerLabel = self->_headerLabel;
  attributesCopy = attributes;
  [(UILabel *)headerLabel setMarkdown:text baseURL:l];
  v10 = [attributesCopy objectForKeyedSubscript:@"largeFont"];

  LODWORD(text) = [v10 isEqualToString:@"true"];
  if (text)
  {
    self->_hasLargeIcon = 1;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:24.0 weight:*MEMORY[0x277D74420]];
    v12 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76A20]];
    v13 = self->_headerLabel;
    v14 = [v12 scaledFontForFont:v11];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)self->_headerLabel setNumberOfLines:5];
    [(UILabel *)self->_headerLabel setMinimumScaleFactor:0.5];
    [(UILabel *)self->_headerLabel setAdjustsFontSizeToFitWidth:1];
  }

  [(RUIHeaderView *)self setNeedsLayout];
}

- (void)setHeaderAlignment:(int64_t)alignment
{
  [(UILabel *)self->_headerLabel setTextAlignment:alignment];

  [(RUIHeaderView *)self _arrangeItems];
}

- (void)setHeaderColor:(id)color
{
  if (color)
  {
    [(UILabel *)self->_headerLabel setTextColor:?];
  }
}

- (id)subHeaderLabel
{
  subHeaderLabel = self->_subHeaderLabel;
  if (!subHeaderLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_subHeaderLabel;
    self->_subHeaderLabel = v5;

    v7 = RemoteUISubheaderFont();
    [(UILabel *)self->_subHeaderLabel setFont:v7];

    v8 = RemoteUISubheaderTextColor();
    [(UILabel *)self->_subHeaderLabel setTextColor:v8];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_subHeaderLabel setBackgroundColor:clearColor];

    [(UILabel *)self->_subHeaderLabel setLineBreakMode:0];
    [(UILabel *)self->_subHeaderLabel setNumberOfLines:0];
    [(UILabel *)self->_subHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    subHeaderLabel = self->_subHeaderLabel;
  }

  return subHeaderLabel;
}

- (void)setSubHeaderText:(id)text baseURL:(id)l attributes:(id)attributes
{
  lCopy = l;
  textCopy = text;
  subHeaderLabel = [(RUIHeaderView *)self subHeaderLabel];
  [subHeaderLabel setMarkdown:textCopy baseURL:lCopy];

  [(RUIHeaderView *)self setNeedsLayout];
}

- (void)setSubHeaderAlignment:(int64_t)alignment
{
  subHeaderLabel = [(RUIHeaderView *)self subHeaderLabel];
  [subHeaderLabel setTextAlignment:alignment];

  [(RUIHeaderView *)self _arrangeItems];
}

- (void)setSubHeaderColor:(id)color
{
  if (color)
  {
    colorCopy = color;
    subHeaderLabel = [(RUIHeaderView *)self subHeaderLabel];
    [subHeaderLabel setTextColor:colorCopy];
  }
}

- (void)setDetailText:(id)text attributes:(id)attributes
{
  [(RUILinkLabel *)self->_detailHeaderLabel setText:text, attributes];
  [(RUILinkLabel *)self->_detailHeaderLabel setHidden:0];

  [(RUIHeaderView *)self _arrangeItems];
}

- (void)setDetailHeaderColor:(id)color
{
  if (color)
  {
    detailHeaderLabel = self->_detailHeaderLabel;
    colorCopy = color;
    textLabel = [(RUILinkLabel *)detailHeaderLabel textLabel];
    [textLabel setTextColor:colorCopy];
  }
}

- (void)setIconImage:(id)image
{
  [(UIImageView *)self->_iconView setImage:image];
  [(UIStackView *)self->_iconStackView setHidden:0];

  [(RUIHeaderView *)self _arrangeItems];
}

+ (UIImageSymbolConfiguration)symbolConfiguration
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:3 weight:3 scale:46.0];
  v3 = [MEMORY[0x277D755D0] configurationWithColorRenderingMode:2];
  v4 = [v2 configurationByApplyingConfiguration:v3];

  return v4;
}

- (void)setImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12[2] = *MEMORY[0x277D85DE8];
  [(UIImageView *)self->_iconView frame];
  [(UIImageView *)self->_iconView setFrame:?];
  self->_customIconSize = 1;
  [(UIStackView *)self->_iconStackView setHidden:0];
  v6 = MEMORY[0x277CCAAD0];
  widthAnchor = [(UIImageView *)self->_iconView widthAnchor];
  v8 = [widthAnchor constraintEqualToConstant:width];
  v12[0] = v8;
  heightAnchor = [(UIImageView *)self->_iconView heightAnchor];
  v10 = [heightAnchor constraintEqualToConstant:height];
  v12[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  [v6 activateConstraints:v11];

  [(RUIHeaderView *)self setNeedsLayout];
}

- (void)_arrangeItems
{
  p_iconStackView = &self->_iconStackView;
  [(UIStackView *)self->_iconStackView removeFromSuperview];
  [(UIStackView *)self->_labelsStackView removeFromSuperview];
  p_detailHeaderLabel = &self->_detailHeaderLabel;
  [(RUILinkLabel *)self->_detailHeaderLabel removeFromSuperview];
  imageAlignment = self->_imageAlignment;
  if (imageAlignment == 3)
  {
    v6 = 0;
    imageAlignment = 1;
    v7 = &self->_detailHeaderLabel;
    p_detailHeaderLabel = p_iconStackView;
  }

  else
  {
    if (imageAlignment == 1)
    {
      v6 = 0;
    }

    else if (imageAlignment || ([(UIStackView *)*p_iconStackView isHidden]& 1) == 0)
    {
      imageAlignment = 0;
      v6 = 1;
    }

    else
    {
      v6 = 0;
      imageAlignment = 1;
    }

    v7 = p_iconStackView;
  }

  [(UIStackView *)*p_iconStackView setAxis:imageAlignment];
  [(UIStackView *)self->_mainStackView setAxis:v6];
  [(UIStackView *)self->_mainStackView addArrangedSubview:*v7];
  [(UIStackView *)self->_mainStackView addArrangedSubview:self->_labelsStackView];
  [(UIStackView *)self->_mainStackView addArrangedSubview:*p_detailHeaderLabel];

  [(RUIHeaderView *)self setNeedsLayout];
}

- (BOOL)_shouldHideLeadingSpacerForLabel:(id)label
{
  textAlignment = [label textAlignment];
  if ((textAlignment - 3) < 2)
  {
    return 1;
  }

  if (textAlignment == 2)
  {
    return ![(RUIHeaderView *)self _isLeftToRight];
  }

  if (textAlignment)
  {
    return 0;
  }

  return [(RUIHeaderView *)self _isLeftToRight];
}

- (BOOL)_shouldHideTrailingSpacerForLabel:(id)label
{
  textAlignment = [label textAlignment];
  if (textAlignment == 2)
  {

    return [(RUIHeaderView *)self _isLeftToRight];
  }

  else if (textAlignment)
  {
    return 0;
  }

  else
  {
    return ![(RUIHeaderView *)self _isLeftToRight];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = RUIHeaderView;
  [(RUIHeaderView *)&v13 layoutSubviews];
  [(UIStackView *)self->_mainStackView setSpacing:self->_imageLabelPadding];
  [(UIView *)self->_headerLeadingSpacer setHidden:[(RUIHeaderView *)self _shouldHideLeadingSpacerForLabel:self->_headerLabel]];
  [(UIView *)self->_headerTrailingSpacer setHidden:[(RUIHeaderView *)self _shouldHideTrailingSpacerForLabel:self->_headerLabel]];
  subHeaderLabel = [(RUIHeaderView *)self subHeaderLabel];
  [(UIView *)self->_subHeaderLeadingSpacer setHidden:[(RUIHeaderView *)self _shouldHideLeadingSpacerForLabel:subHeaderLabel]];

  subHeaderLabel2 = [(RUIHeaderView *)self subHeaderLabel];
  [(UIView *)self->_subHeaderTrailingSpacer setHidden:[(RUIHeaderView *)self _shouldHideTrailingSpacerForLabel:subHeaderLabel2]];

  navTitleLabel = [(RUIHeaderView *)self navTitleLabel];
  [(UIView *)self->_navTitleLeadingSpacer setHidden:[(RUIHeaderView *)self _shouldHideLeadingSpacerForLabel:navTitleLabel]];

  navTitleLabel2 = [(RUIHeaderView *)self navTitleLabel];
  [(UIView *)self->_navTitleTrailingSpacer setHidden:[(RUIHeaderView *)self _shouldHideTrailingSpacerForLabel:navTitleLabel2]];

  navSubHeaderLabel = [(RUIHeaderView *)self navSubHeaderLabel];
  [(UIView *)self->_navSubtitleLeadingSpacer setHidden:[(RUIHeaderView *)self _shouldHideLeadingSpacerForLabel:navSubHeaderLabel]];

  navSubHeaderLabel2 = [(RUIHeaderView *)self navSubHeaderLabel];
  [(UIView *)self->_navSubtitleTrailingSpacer setHidden:[(RUIHeaderView *)self _shouldHideTrailingSpacerForLabel:navSubHeaderLabel2]];

  navTitleLabel3 = [(RUIHeaderView *)self navTitleLabel];
  text = [navTitleLabel3 text];
  -[UIStackView setHidden:](self->_navTitleStackView, "setHidden:", [text length] != 0);

  navSubHeaderLabel3 = [(RUIHeaderView *)self navSubHeaderLabel];
  text2 = [navSubHeaderLabel3 text];
  -[UIStackView setHidden:](self->_navSubtitleStackView, "setHidden:", [text2 length] != 0);
}

- (void)setSectionIsFirst:(BOOL)first
{
  if (self->_isFirstSection != first)
  {
    self->_isFirstSection = first;
    [(RUIHeaderView *)self setNeedsLayout];
  }
}

- (void)setNavTitle:(id)title
{
  titleCopy = title;
  navTitleLabel = [(RUIHeaderView *)self navTitleLabel];
  [navTitleLabel setText:titleCopy];

  [(RUIHeaderView *)self _arrangeItems];
}

- (id)navTitleLabel
{
  navTitleLabel = self->_navTitleLabel;
  if (!navTitleLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_navTitleLabel;
    self->_navTitleLabel = v5;

    v7 = RemoteUINavHeaderFont([(UILabel *)self->_navTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0]);
    [(UILabel *)self->_navTitleLabel setFont:v7];

    v8 = RemoteUINavHeaderTextColor();
    [(UILabel *)self->_navTitleLabel setTextColor:v8];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_navTitleLabel setBackgroundColor:clearColor];

    [(UILabel *)self->_navTitleLabel setLineBreakMode:0];
    [(UILabel *)self->_navTitleLabel setTextAlignment:1];
    [(UILabel *)self->_navTitleLabel setNumberOfLines:0];
    navTitleLabel = self->_navTitleLabel;
  }

  return navTitleLabel;
}

- (void)setNavSubHeaderTitle:(id)title
{
  titleCopy = title;
  navSubHeaderLabel = [(RUIHeaderView *)self navSubHeaderLabel];
  [navSubHeaderLabel setText:titleCopy];

  [(RUIHeaderView *)self _arrangeItems];
}

- (id)navSubHeaderLabel
{
  navSubHeaderLabel = self->_navSubHeaderLabel;
  if (!navSubHeaderLabel)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_navSubHeaderLabel;
    self->_navSubHeaderLabel = v5;

    v7 = RemoteUINavHeaderFont([(UILabel *)self->_navSubHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0]);
    [(UILabel *)self->_navSubHeaderLabel setFont:v7];

    v8 = RemoteUINavSubHeaderTextColor();
    [(UILabel *)self->_navSubHeaderLabel setTextColor:v8];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_navSubHeaderLabel setBackgroundColor:clearColor];

    [(UILabel *)self->_navSubHeaderLabel setLineBreakMode:0];
    [(UILabel *)self->_navSubHeaderLabel setTextAlignment:1];
    [(UILabel *)self->_navSubHeaderLabel setNumberOfLines:0];
    navSubHeaderLabel = self->_navSubHeaderLabel;
  }

  return navSubHeaderLabel;
}

- (UIEdgeInsets)margins
{
  top = self->_margins.top;
  left = self->_margins.left;
  bottom = self->_margins.bottom;
  right = self->_margins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end
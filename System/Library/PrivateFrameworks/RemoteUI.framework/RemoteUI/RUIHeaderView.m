@interface RUIHeaderView
+ (UIImageSymbolConfiguration)symbolConfiguration;
- (BOOL)_shouldHideLeadingSpacerForLabel:(id)a3;
- (BOOL)_shouldHideTrailingSpacerForLabel:(id)a3;
- (RUIHeaderView)initWithAttributes:(id)a3;
- (UIEdgeInsets)margins;
- (double)_headerOffsetInView:(id)a3;
- (id)_makeSpacer;
- (id)_paddedStackViewWithArrangedSubviews:(id)a3;
- (id)navSubHeaderLabel;
- (id)navTitleLabel;
- (id)subHeaderLabel;
- (void)_arrangeItems;
- (void)layoutSubviews;
- (void)setDetailHeaderColor:(id)a3;
- (void)setDetailText:(id)a3 attributes:(id)a4;
- (void)setHeaderAlignment:(int64_t)a3;
- (void)setHeaderColor:(id)a3;
- (void)setIconImage:(id)a3;
- (void)setImageSize:(CGSize)a3;
- (void)setNavSubHeaderTitle:(id)a3;
- (void)setNavTitle:(id)a3;
- (void)setSectionIsFirst:(BOOL)a3;
- (void)setSubHeaderAlignment:(int64_t)a3;
- (void)setSubHeaderColor:(id)a3;
- (void)setSubHeaderText:(id)a3 baseURL:(id)a4 attributes:(id)a5;
- (void)setText:(id)a3 baseURL:(id)a4 attributes:(id)a5;
@end

@implementation RUIHeaderView

- (double)_headerOffsetInView:(id)a3
{
  v4 = [a3 traitCollection];
  v5 = [v4 horizontalSizeClass];

  result = 36.0;
  if (v5 == 1)
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
  v3 = [v2 heightAnchor];
  v4 = [v3 constraintEqualToConstant:1.0];

  LODWORD(v5) = 1132068864;
  [v4 setPriority:v5];
  [v4 setActive:1];
  LODWORD(v6) = 1112014848;
  [v2 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1112014848;
  [v2 setContentCompressionResistancePriority:0 forAxis:v7];

  return v2;
}

- (RUIHeaderView)initWithAttributes:(id)a3
{
  v103[3] = *MEMORY[0x277D85DE8];
  v95.receiver = self;
  v95.super_class = RUIHeaderView;
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  v5 = *(MEMORY[0x277CBF3A0] + 16);
  v6 = *(MEMORY[0x277CBF3A0] + 24);
  v7 = [(RUIHeaderView *)&v95 initWithFrame:a3, *MEMORY[0x277CBF3A0], v4, v5, v6];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v3, v4, v5, v6}];
    headerLabel = v7->_headerLabel;
    v7->_headerLabel = v8;

    v10 = RemoteUIHeaderFont();
    [(UILabel *)v7->_headerLabel setFont:v10];

    v11 = RemoteUIHeaderTextColor();
    [(UILabel *)v7->_headerLabel setTextColor:v11];

    v12 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v7->_headerLabel setBackgroundColor:v12];

    [(UILabel *)v7->_headerLabel setNumberOfLines:0];
    [(UILabel *)v7->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v13) = 1148846080;
    [(UILabel *)v7->_headerLabel setContentCompressionResistancePriority:0 forAxis:v13];
    v14 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v3, v4, v5, v6}];
    iconView = v7->_iconView;
    v7->_iconView = v14;

    v16 = [(RUIHeaderView *)v7 _makeSpacer];
    iconLeadingSpacer = v7->_iconLeadingSpacer;
    v7->_iconLeadingSpacer = v16;

    v18 = [(RUIHeaderView *)v7 _makeSpacer];
    iconTrailingSpacer = v7->_iconTrailingSpacer;
    v7->_iconTrailingSpacer = v18;

    v103[0] = v7->_iconLeadingSpacer;
    v103[1] = v7->_iconView;
    v103[2] = v7->_iconTrailingSpacer;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:3];
    v21 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v20];
    iconStackView = v7->_iconStackView;
    v7->_iconStackView = v21;

    LODWORD(v23) = 1148846080;
    [(UIStackView *)v7->_iconStackView setContentHuggingPriority:0 forAxis:v23];
    v24 = [(RUIHeaderView *)v7 _makeSpacer];
    headerLeadingSpacer = v7->_headerLeadingSpacer;
    v7->_headerLeadingSpacer = v24;

    v26 = [(RUIHeaderView *)v7 _makeSpacer];
    headerTrailingSpacer = v7->_headerTrailingSpacer;
    v7->_headerTrailingSpacer = v26;

    v102[0] = v7->_headerLeadingSpacer;
    v102[1] = v7->_headerLabel;
    v102[2] = v7->_headerTrailingSpacer;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v102 count:3];
    v29 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v28];
    headerStackView = v7->_headerStackView;
    v7->_headerStackView = v29;

    v31 = [(RUIHeaderView *)v7 _makeSpacer];
    subHeaderLeadingSpacer = v7->_subHeaderLeadingSpacer;
    v7->_subHeaderLeadingSpacer = v31;

    v33 = [(RUIHeaderView *)v7 _makeSpacer];
    subHeaderTrailingSpacer = v7->_subHeaderTrailingSpacer;
    v7->_subHeaderTrailingSpacer = v33;

    v101[0] = v7->_subHeaderLeadingSpacer;
    v35 = [(RUIHeaderView *)v7 subHeaderLabel];
    v101[1] = v35;
    v101[2] = v7->_subHeaderTrailingSpacer;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v101 count:3];
    v37 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v36];
    subHeaderStackView = v7->_subHeaderStackView;
    v7->_subHeaderStackView = v37;

    v39 = [(RUIHeaderView *)v7 _makeSpacer];
    navTitleLeadingSpacer = v7->_navTitleLeadingSpacer;
    v7->_navTitleLeadingSpacer = v39;

    v41 = [(RUIHeaderView *)v7 _makeSpacer];
    navTitleTrailingSpacer = v7->_navTitleTrailingSpacer;
    v7->_navTitleTrailingSpacer = v41;

    v100[0] = v7->_navTitleLeadingSpacer;
    v43 = [(RUIHeaderView *)v7 navTitleLabel];
    v100[1] = v43;
    v100[2] = v7->_navTitleTrailingSpacer;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:3];
    v45 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v44];
    navTitleStackView = v7->_navTitleStackView;
    v7->_navTitleStackView = v45;

    [(UIStackView *)v7->_navTitleStackView setHidden:1];
    v47 = [(RUIHeaderView *)v7 _makeSpacer];
    navSubtitleLeadingSpacer = v7->_navSubtitleLeadingSpacer;
    v7->_navSubtitleLeadingSpacer = v47;

    v49 = [(RUIHeaderView *)v7 _makeSpacer];
    navSubtitleTrailingSpacer = v7->_navSubtitleTrailingSpacer;
    v7->_navSubtitleTrailingSpacer = v49;

    v99[0] = v7->_navSubtitleLeadingSpacer;
    v51 = [(RUIHeaderView *)v7 navSubHeaderLabel];
    v99[1] = v51;
    v99[2] = v7->_navSubtitleTrailingSpacer;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:3];
    v53 = [(RUIHeaderView *)v7 _paddedStackViewWithArrangedSubviews:v52];
    navSubtitleStackView = v7->_navSubtitleStackView;
    v7->_navSubtitleStackView = v53;

    [(UIStackView *)v7->_navSubtitleStackView setHidden:1];
    v55 = objc_alloc(MEMORY[0x277D75A68]);
    v56 = [(RUIHeaderView *)v7 _makeSpacer];
    v98[0] = v56;
    v98[1] = v7->_navTitleStackView;
    v98[2] = v7->_navSubtitleStackView;
    v98[3] = v7->_headerStackView;
    v98[4] = v7->_subHeaderStackView;
    v57 = [(RUIHeaderView *)v7 _makeSpacer];
    v98[5] = v57;
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
    v65 = [(RUILinkLabel *)v7->_detailHeaderLabel textLabel];
    [v65 setFont:v64];

    v66 = [MEMORY[0x277D75348] clearColor];
    v67 = [(RUILinkLabel *)v7->_detailHeaderLabel textLabel];
    [v67 setBackgroundColor:v66];

    [(RUILinkLabel *)v7->_detailHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RUILinkLabel *)v7->_detailHeaderLabel setNumberOfLines:1];
    [(RUILinkLabel *)v7->_detailHeaderLabel setLineBreakMode:5];
    v68 = [(RUILinkLabel *)v7->_detailHeaderLabel textLabel];
    LODWORD(v69) = 1148846080;
    [v68 setContentCompressionResistancePriority:0 forAxis:v69];

    v70 = [(RUILinkLabel *)v7->_detailHeaderLabel textLabel];
    LODWORD(v71) = 1132068864;
    [v70 setContentHuggingPriority:0 forAxis:v71];

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
    v93 = [(UIStackView *)v7->_mainStackView leadingAnchor];
    v94 = [(RUIHeaderView *)v7 layoutMarginsGuide];
    v92 = [v94 leadingAnchor];
    v91 = [v93 constraintEqualToAnchor:v92];
    v96[0] = v91;
    v89 = [(UIStackView *)v7->_mainStackView topAnchor];
    v90 = [(RUIHeaderView *)v7 layoutMarginsGuide];
    v88 = [v90 topAnchor];
    v86 = [v89 constraintEqualToAnchor:v88];
    v96[1] = v86;
    v76 = [(UIStackView *)v7->_mainStackView bottomAnchor];
    v77 = [(RUIHeaderView *)v7 layoutMarginsGuide];
    v78 = [v77 bottomAnchor];
    v79 = [v76 constraintEqualToAnchor:v78];
    v96[2] = v79;
    v80 = [(UIStackView *)v7->_mainStackView trailingAnchor];
    v81 = [(RUIHeaderView *)v7 layoutMarginsGuide];
    v82 = [v81 trailingAnchor];
    v83 = [v80 constraintEqualToAnchor:v82];
    v96[3] = v83;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:4];
    [v87 activateConstraints:v84];

    [(RUIHeaderView *)v7 _arrangeItems];
  }

  return v7;
}

- (id)_paddedStackViewWithArrangedSubviews:(id)a3
{
  v3 = MEMORY[0x277D75A68];
  v4 = a3;
  v5 = [[v3 alloc] initWithArrangedSubviews:v4];

  [v5 setAxis:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAlignment:3];
  [v5 setDistribution:3];

  return v5;
}

- (void)setText:(id)a3 baseURL:(id)a4 attributes:(id)a5
{
  headerLabel = self->_headerLabel;
  v9 = a5;
  [(UILabel *)headerLabel setMarkdown:a3 baseURL:a4];
  v10 = [v9 objectForKeyedSubscript:@"largeFont"];

  LODWORD(a3) = [v10 isEqualToString:@"true"];
  if (a3)
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

- (void)setHeaderAlignment:(int64_t)a3
{
  [(UILabel *)self->_headerLabel setTextAlignment:a3];

  [(RUIHeaderView *)self _arrangeItems];
}

- (void)setHeaderColor:(id)a3
{
  if (a3)
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

    v9 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_subHeaderLabel setBackgroundColor:v9];

    [(UILabel *)self->_subHeaderLabel setLineBreakMode:0];
    [(UILabel *)self->_subHeaderLabel setNumberOfLines:0];
    [(UILabel *)self->_subHeaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    subHeaderLabel = self->_subHeaderLabel;
  }

  return subHeaderLabel;
}

- (void)setSubHeaderText:(id)a3 baseURL:(id)a4 attributes:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(RUIHeaderView *)self subHeaderLabel];
  [v9 setMarkdown:v8 baseURL:v7];

  [(RUIHeaderView *)self setNeedsLayout];
}

- (void)setSubHeaderAlignment:(int64_t)a3
{
  v5 = [(RUIHeaderView *)self subHeaderLabel];
  [v5 setTextAlignment:a3];

  [(RUIHeaderView *)self _arrangeItems];
}

- (void)setSubHeaderColor:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(RUIHeaderView *)self subHeaderLabel];
    [v5 setTextColor:v4];
  }
}

- (void)setDetailText:(id)a3 attributes:(id)a4
{
  [(RUILinkLabel *)self->_detailHeaderLabel setText:a3, a4];
  [(RUILinkLabel *)self->_detailHeaderLabel setHidden:0];

  [(RUIHeaderView *)self _arrangeItems];
}

- (void)setDetailHeaderColor:(id)a3
{
  if (a3)
  {
    detailHeaderLabel = self->_detailHeaderLabel;
    v4 = a3;
    v5 = [(RUILinkLabel *)detailHeaderLabel textLabel];
    [v5 setTextColor:v4];
  }
}

- (void)setIconImage:(id)a3
{
  [(UIImageView *)self->_iconView setImage:a3];
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

- (void)setImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v12[2] = *MEMORY[0x277D85DE8];
  [(UIImageView *)self->_iconView frame];
  [(UIImageView *)self->_iconView setFrame:?];
  self->_customIconSize = 1;
  [(UIStackView *)self->_iconStackView setHidden:0];
  v6 = MEMORY[0x277CCAAD0];
  v7 = [(UIImageView *)self->_iconView widthAnchor];
  v8 = [v7 constraintEqualToConstant:width];
  v12[0] = v8;
  v9 = [(UIImageView *)self->_iconView heightAnchor];
  v10 = [v9 constraintEqualToConstant:height];
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

- (BOOL)_shouldHideLeadingSpacerForLabel:(id)a3
{
  v4 = [a3 textAlignment];
  if ((v4 - 3) < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    return ![(RUIHeaderView *)self _isLeftToRight];
  }

  if (v4)
  {
    return 0;
  }

  return [(RUIHeaderView *)self _isLeftToRight];
}

- (BOOL)_shouldHideTrailingSpacerForLabel:(id)a3
{
  v4 = [a3 textAlignment];
  if (v4 == 2)
  {

    return [(RUIHeaderView *)self _isLeftToRight];
  }

  else if (v4)
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
  v3 = [(RUIHeaderView *)self subHeaderLabel];
  [(UIView *)self->_subHeaderLeadingSpacer setHidden:[(RUIHeaderView *)self _shouldHideLeadingSpacerForLabel:v3]];

  v4 = [(RUIHeaderView *)self subHeaderLabel];
  [(UIView *)self->_subHeaderTrailingSpacer setHidden:[(RUIHeaderView *)self _shouldHideTrailingSpacerForLabel:v4]];

  v5 = [(RUIHeaderView *)self navTitleLabel];
  [(UIView *)self->_navTitleLeadingSpacer setHidden:[(RUIHeaderView *)self _shouldHideLeadingSpacerForLabel:v5]];

  v6 = [(RUIHeaderView *)self navTitleLabel];
  [(UIView *)self->_navTitleTrailingSpacer setHidden:[(RUIHeaderView *)self _shouldHideTrailingSpacerForLabel:v6]];

  v7 = [(RUIHeaderView *)self navSubHeaderLabel];
  [(UIView *)self->_navSubtitleLeadingSpacer setHidden:[(RUIHeaderView *)self _shouldHideLeadingSpacerForLabel:v7]];

  v8 = [(RUIHeaderView *)self navSubHeaderLabel];
  [(UIView *)self->_navSubtitleTrailingSpacer setHidden:[(RUIHeaderView *)self _shouldHideTrailingSpacerForLabel:v8]];

  v9 = [(RUIHeaderView *)self navTitleLabel];
  v10 = [v9 text];
  -[UIStackView setHidden:](self->_navTitleStackView, "setHidden:", [v10 length] != 0);

  v11 = [(RUIHeaderView *)self navSubHeaderLabel];
  v12 = [v11 text];
  -[UIStackView setHidden:](self->_navSubtitleStackView, "setHidden:", [v12 length] != 0);
}

- (void)setSectionIsFirst:(BOOL)a3
{
  if (self->_isFirstSection != a3)
  {
    self->_isFirstSection = a3;
    [(RUIHeaderView *)self setNeedsLayout];
  }
}

- (void)setNavTitle:(id)a3
{
  v4 = a3;
  v5 = [(RUIHeaderView *)self navTitleLabel];
  [v5 setText:v4];

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

    v9 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_navTitleLabel setBackgroundColor:v9];

    [(UILabel *)self->_navTitleLabel setLineBreakMode:0];
    [(UILabel *)self->_navTitleLabel setTextAlignment:1];
    [(UILabel *)self->_navTitleLabel setNumberOfLines:0];
    navTitleLabel = self->_navTitleLabel;
  }

  return navTitleLabel;
}

- (void)setNavSubHeaderTitle:(id)a3
{
  v4 = a3;
  v5 = [(RUIHeaderView *)self navSubHeaderLabel];
  [v5 setText:v4];

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

    v9 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_navSubHeaderLabel setBackgroundColor:v9];

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
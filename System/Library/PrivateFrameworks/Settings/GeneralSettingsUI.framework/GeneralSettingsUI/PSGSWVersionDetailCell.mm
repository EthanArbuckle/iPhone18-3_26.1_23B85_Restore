@interface PSGSWVersionDetailCell
- (PSGSWVersionDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (double)computeHeightForWidth:(double)width forAccessibilitySupportedWebContainer:(id)container;
- (double)preferredHeightWithTable:(id)table;
- (id)deviceNameString;
- (id)preparingRollbackString;
- (id)releaseNotesSummary;
- (id)releaseNotesSummaryString;
- (id)releaseNotesSummaryView;
- (id)revokedSplatView;
- (id)systemVersionValueForKey:(id)key;
- (id)titleLabelString;
- (id)titleLabelView;
- (void)configureContentView;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PSGSWVersionDetailCell

- (PSGSWVersionDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v24.receiver = self;
  v24.super_class = PSGSWVersionDetailCell;
  v9 = [(PSTableCell *)&v24 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    v9->_osUpdateType = 0;
    documentationData = v9->_documentationData;
    v9->_documentationData = 0;

    v12 = [specifierCopy propertyForKey:@"OSUpdateType"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10->_osUpdateType = [v12 integerValue];
      }
    }

    v13 = [specifierCopy propertyForKey:@"SUManagerClient"];
    suClient = v10->_suClient;
    v10->_suClient = v13;

    if (!v10->_suClient || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v15 = [objc_alloc(MEMORY[0x277D648B8]) initWithDelegate:0];
      v16 = v10->_suClient;
      v10->_suClient = v15;
    }

    v17 = [specifierCopy propertyForKey:@"SUDocumentationData"];
    v18 = v10->_documentationData;
    v10->_documentationData = v17;

    if (!v10->_documentationData)
    {
      v19 = _PSGLoggingFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PSGSWVersionDetailCell initWithStyle:v19 reuseIdentifier:? specifier:?];
      }
    }

    v20 = [(PSGSWVersionDetailCell *)v10 systemVersionValueForKey:@"ProductBuildVersion"];
    buildVersion = v10->_buildVersion;
    v10->_buildVersion = v20;

    if (!v10->_buildVersion)
    {
      v22 = _PSGLoggingFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [PSGSWVersionDetailCell initWithStyle:v22 reuseIdentifier:? specifier:?];
      }
    }

    [(PSGSWVersionDetailCell *)v10 setupMargins];
    [(PSGSWVersionDetailCell *)v10 configureContentView];
  }

  return v10;
}

- (void)configureContentView
{
  v55[3] = *MEMORY[0x277D85DE8];
  titleLabelView = [(PSGSWVersionDetailCell *)self titleLabelView];
  titleLabelView = self->_titleLabelView;
  self->_titleLabelView = titleLabelView;

  if (self->_titleLabelView)
  {
    contentView = [(PSGSWVersionDetailCell *)self contentView];
    [contentView addSubview:self->_titleLabelView];

    v6 = self->_titleLabelView;
  }

  else
  {
    v6 = 0;
  }

  v39 = MEMORY[0x277CCAAD0];
  topAnchor = [(UILabel *)v6 topAnchor];
  contentView2 = [(PSGSWVersionDetailCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v41 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[0] = v41;
  leadingAnchor = [(UILabel *)self->_titleLabelView leadingAnchor];
  contentView3 = [(PSGSWVersionDetailCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v55[1] = v9;
  trailingAnchor = [(UILabel *)self->_titleLabelView trailingAnchor];
  contentView4 = [(PSGSWVersionDetailCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v55[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  [v39 activateConstraints:v15];

  releaseNotesSummaryView = [(PSGSWVersionDetailCell *)self releaseNotesSummaryView];
  releaseNotesSummaryView = self->_releaseNotesSummaryView;
  self->_releaseNotesSummaryView = releaseNotesSummaryView;

  if (self->_releaseNotesSummaryView)
  {
    contentView5 = [(PSGSWVersionDetailCell *)self contentView];
    [contentView5 addSubview:self->_releaseNotesSummaryView];
  }

  if (self->_osUpdateType == 1 && [(SUManagerClient *)self->_suClient isSplatOnlyUpdateRollbackSuggested])
  {
    revokedSplatView = [(PSGSWVersionDetailCell *)self revokedSplatView];
    revokedSplatView = self->_revokedSplatView;
    self->_revokedSplatView = revokedSplatView;

    v21 = MEMORY[0x277CCAAD0];
    bottomAnchor = [(PSWebContainerView *)self->_releaseNotesSummaryView bottomAnchor];
    topAnchor3 = [(UIView *)self->_revokedSplatView topAnchor];
    bottomAnchor2 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-5.0];
    v54 = bottomAnchor2;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    [v21 activateConstraints:v25];
  }

  else
  {
    v26 = MEMORY[0x277CCAAD0];
    bottomAnchor = [(PSWebContainerView *)self->_releaseNotesSummaryView bottomAnchor];
    topAnchor3 = [(PSGSWVersionDetailCell *)self contentView];
    bottomAnchor2 = [topAnchor3 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-5.0];
    v53 = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    [v26 activateConstraints:v27];
  }

  v42 = MEMORY[0x277CCAAD0];
  topAnchor4 = [(PSWebContainerView *)self->_releaseNotesSummaryView topAnchor];
  bottomAnchor3 = [(UILabel *)self->_titleLabelView bottomAnchor];
  v48 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3 constant:5.0];
  v52[0] = v48;
  leadingAnchor3 = [(PSWebContainerView *)self->_releaseNotesSummaryView leadingAnchor];
  contentView6 = [(PSGSWVersionDetailCell *)self contentView];
  layoutMarginsGuide4 = [contentView6 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v52[1] = v30;
  trailingAnchor3 = [(PSWebContainerView *)self->_releaseNotesSummaryView trailingAnchor];
  contentView7 = [(PSGSWVersionDetailCell *)self contentView];
  layoutMarginsGuide5 = [contentView7 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
  v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v52[2] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
  [v42 activateConstraints:v36];

  [(PSGSWVersionDetailCell *)self updateConstraints];
  [(PSGSWVersionDetailCell *)self setNeedsDisplay];
  v37 = *MEMORY[0x277D85DE8];
}

- (id)revokedSplatView
{
  v54[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = PSG_LocalizedStringForGeneral(@"REVOKE_SPLAT_INFO");
  [v2 setText:v3];

  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v2 setFont:v4];

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection userInterfaceStyle] == 2)
  {
    [MEMORY[0x277D75348] colorWithRed:0.62 green:0.6 blue:0.58 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlackColor];
  }
  v6 = ;
  [v2 setTextColor:v6];

  [v2 setTextAlignment:4];
  [v2 setNumberOfLines:0];
  v7 = objc_opt_new();
  currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection2 userInterfaceStyle] == 2)
  {
    v9 = 0.24;
    v10 = 0.22;
    v11 = 0.11;
  }

  else
  {
    v10 = 0.97;
    v11 = 0.84;
    v9 = 1.0;
  }

  v12 = [MEMORY[0x277D75348] colorWithRed:v9 green:v10 blue:v11 alpha:1.0];
  [v7 setBackgroundColor:v12];

  layer = [v7 layer];
  [layer setCornerRadius:5.0];

  layer2 = [v7 layer];
  [layer2 setMasksToBounds:1];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v2];
  v41 = MEMORY[0x277CCAAD0];
  topAnchor = [v2 topAnchor];
  topAnchor2 = [v7 topAnchor];
  v45 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:10.0];
  v54[0] = v45;
  leadingAnchor = [v2 leadingAnchor];
  leadingAnchor2 = [v7 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
  v54[1] = v16;
  trailingAnchor = [v2 trailingAnchor];
  trailingAnchor2 = [v7 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
  v54[2] = v19;
  [v2 bottomAnchor];
  v20 = v51 = v2;
  bottomAnchor = [v7 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:bottomAnchor constant:-10.0];
  v54[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
  [v41 activateConstraints:v23];

  contentView = [(PSGSWVersionDetailCell *)self contentView];
  [contentView addSubview:v7];

  v38 = MEMORY[0x277CCAAD0];
  topAnchor3 = [v7 topAnchor];
  bottomAnchor2 = [(PSWebContainerView *)self->_releaseNotesSummaryView bottomAnchor];
  v46 = [topAnchor3 constraintEqualToAnchor:bottomAnchor2 constant:30.0];
  v53[0] = v46;
  leadingAnchor3 = [v7 leadingAnchor];
  contentView2 = [(PSGSWVersionDetailCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
  v53[1] = v37;
  trailingAnchor3 = [v7 trailingAnchor];
  contentView3 = [(PSGSWVersionDetailCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
  v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-5.0];
  v53[2] = v28;
  bottomAnchor3 = [v7 bottomAnchor];
  contentView4 = [(PSGSWVersionDetailCell *)self contentView];
  bottomAnchor4 = [contentView4 bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-15.0];
  v53[3] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
  [v38 activateConstraints:v33];

  v34 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)titleLabelView
{
  v3 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] maximumContentSizeCategory:*MEMORY[0x277D76800]];
  fontDescriptor = [v3 fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabelString = [(PSGSWVersionDetailCell *)self titleLabelString];
  [v6 setText:titleLabelString];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
  [v6 setFont:v8];

  labelColor = [MEMORY[0x277D75348] labelColor];
  [v6 setTextColor:labelColor];

  [v6 setTextAlignment:4];
  [v6 setNumberOfLines:0];

  return v6;
}

- (id)titleLabelString
{
  v3 = [(PSGSWVersionDetailCell *)self systemVersionValueForKey:*MEMORY[0x277CBEC90]];
  v4 = MEMORY[0x277CCACA8];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  systemName = [currentDevice systemName];
  v7 = [(PSGSWVersionDetailCell *)self systemVersionValueForKey:@"ProductBuildVersion"];
  v8 = [v4 stringWithFormat:@"%@ %@ (%@)", systemName, v3, v7];

  return v8;
}

- (id)releaseNotesSummaryView
{
  v3 = objc_alloc_init(MEMORY[0x277D3FBB0]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAutoresizesSubviews:0];
  releaseNotesSummary = [(PSGSWVersionDetailCell *)self releaseNotesSummary];
  [v3 setContent:releaseNotesSummary];

  return v3;
}

- (id)releaseNotesSummary
{
  releaseNotesSummaryString = [(PSGSWVersionDetailCell *)self releaseNotesSummaryString];
  v3 = [releaseNotesSummaryString stringByAppendingString:@"<style type=text/css>body { margin: 0px padding: 0px; }</style>"];;

  v4 = [v3 dataUsingEncoding:4];

  return v4;
}

- (id)deviceNameString
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (id)releaseNotesSummaryString
{
  readmeSummary = [(SUDocumentationData *)self->_documentationData readmeSummary];
  v4 = readmeSummary;
  if (readmeSummary && [readmeSummary length])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    if (self->_osUpdateType == 1)
    {
      v7 = @"SW_DETAIL_SECURITY";
    }

    else
    {
      v7 = @"SW_DETAIL_OS";
    }

    v8 = PSG_LocalizedStringForGeneral(v7);
    deviceNameString = [(PSGSWVersionDetailCell *)self deviceNameString];
    v10 = [v6 stringWithFormat:v8, deviceNameString];

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];
    v13 = @"ltr";
    if (userInterfaceLayoutDirection == 1)
    {
      v13 = @"rtl";
    }

    v14 = v13;

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"<!DOCTYPE html PUBLIC -//W3C//DTD HTML 4.01//EN http://www.w3.org/TR/html4/strict.dtd><meta http-equiv=Content-Type content=text/html charset=utf-8><meta http-equiv=Content-Style-Type content=text/css><meta name=supported-color-schemes content=light dark><title></title><style type=text/css>p.plain { margin: 0.0px 0.0px 0.0px 0.0px; font: 12.0px; -webkit-text-size-adjust: 100%; font-family: -apple-system, HelveticaNeue, LucidaGrande; color: -apple-system-secondary-label; }</style><body dir=%@><p class=plain>{CONTENT}</p></body></html>", v14];;

    v5 = [v15 stringByReplacingOccurrencesOfString:@"{CONTENT}" withString:v10];
  }

  return v5;
}

- (id)preparingRollbackString
{
  if (self->_osUpdateType == 1)
  {
    v3 = PSG_LocalizedStringForGeneral(@"PREPARING_REMOVAL");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)systemVersionValueForKey:(id)key
{
  osUpdateType = self->_osUpdateType;
  keyCopy = key;
  if (osUpdateType == 1)
  {
    v5 = _CFCopySupplementalVersionDictionary();
  }

  else
  {
    v5 = _CFCopySystemVersionDictionary();
  }

  v6 = v5;
  v7 = [v5 objectForKey:keyCopy];

  return v7;
}

- (double)preferredHeightWithTable:(id)table
{
  [(PSGSWVersionDetailCell *)self bounds];
  v5 = v4;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v8 = v7;

  webView = [(PSWebContainerView *)self->_releaseNotesSummaryView webView];
  scrollView = [webView scrollView];
  [scrollView contentOffset];
  v12 = v11;
  v14 = v13;

  [(PSGSWVersionDetailCell *)self computeHeightForWidth:self->_releaseNotesSummaryView forAccessibilitySupportedWebContainer:v5];
  v16 = v15;
  webView2 = [(PSWebContainerView *)self->_releaseNotesSummaryView webView];
  scrollView2 = [webView2 scrollView];
  [scrollView2 setContentOffset:{v12, v14}];

  v19 = v8 * 0.330000013;
  webView3 = [(PSWebContainerView *)self->_releaseNotesSummaryView webView];
  scrollView3 = [webView3 scrollView];
  [scrollView3 setScrollEnabled:v16 > v19];

  webView4 = [(PSWebContainerView *)self->_releaseNotesSummaryView webView];
  scrollView4 = [webView4 scrollView];
  [scrollView4 setBounces:v16 > v19];

  revokedSplatView = self->_revokedSplatView;
  if (revokedSplatView)
  {
    subviews = [(UIView *)revokedSplatView subviews];
    v26 = [subviews objectAtIndex:0];

    [v26 intrinsicContentSize];
    v28 = v27 + 45.0;
  }

  else
  {
    v28 = 0.0;
  }

  if (v16 <= v19)
  {
    v19 = v16;
  }

  contentView = [(PSGSWVersionDetailCell *)self contentView];
  [contentView layoutMargins];
  v31 = v30;
  [(UILabel *)self->_titleLabelView frame];
  v33 = v28 + v19 + v31 + v32;
  contentView2 = [(PSGSWVersionDetailCell *)self contentView];
  [contentView2 layoutMargins];
  v36 = v35 + v33;

  return v36;
}

- (void)traitCollectionDidChange:(id)change
{
  v15.receiver = self;
  v15.super_class = PSGSWVersionDetailCell;
  [(PSGSWVersionDetailCell *)&v15 traitCollectionDidChange:change];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection userInterfaceStyle] == 2)
  {
    v5 = 0.24;
    v6 = 0.22;
    v7 = 0.11;
  }

  else
  {
    v6 = 0.97;
    v7 = 0.84;
    v5 = 1.0;
  }

  v8 = [MEMORY[0x277D75348] colorWithRed:v5 green:v6 blue:v7 alpha:1.0];
  [(UIView *)self->_revokedSplatView setBackgroundColor:v8];

  subviews = [(UIView *)self->_revokedSplatView subviews];
  v10 = [subviews count];

  if (v10)
  {
    subviews2 = [(UIView *)self->_revokedSplatView subviews];
    v12 = [subviews2 objectAtIndex:0];

    if (v12)
    {
      currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
      if ([currentTraitCollection2 userInterfaceStyle] == 2)
      {
        [MEMORY[0x277D75348] colorWithRed:0.62 green:0.6 blue:0.58 alpha:1.0];
      }

      else
      {
        [MEMORY[0x277D75348] systemBlackColor];
      }
      v14 = ;
      [v12 setTextColor:v14];
    }
  }
}

- (double)computeHeightForWidth:(double)width forAccessibilitySupportedWebContainer:(id)container
{
  containerCopy = container;
  webView = [containerCopy webView];
  v7 = [webView stringByEvaluatingJavaScriptFromString:{@"function get_height(){var e=documentreturn Math.max(e.body.scrollHeight, e.documentElement.scrollHeight, e.body.offsetHeight, e.documentElement.offsetHeight, e.body.clientHeight, e.documentElement.clientHeight)}; get_height();"}];;

  if (!v7 || [v7 isEqualToString:&stru_282E88A90] || (objc_msgSend(v7, "floatValue"), v8 <= 0.0))
  {
    [containerCopy heightForWidth:width];
    v9 = v10;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)initWithStyle:(unsigned int *)a1 reuseIdentifier:(NSObject *)a2 specifier:.cold.1(unsigned int *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = SUStringFromOSUpdateType();
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = 0;
  _os_log_error_impl(&dword_21CF20000, a2, OS_LOG_TYPE_ERROR, "Failed to get documentation data for %@ update: %@", &v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

@end
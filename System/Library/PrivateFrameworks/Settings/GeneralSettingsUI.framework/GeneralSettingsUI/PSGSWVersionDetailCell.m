@interface PSGSWVersionDetailCell
- (PSGSWVersionDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (double)computeHeightForWidth:(double)a3 forAccessibilitySupportedWebContainer:(id)a4;
- (double)preferredHeightWithTable:(id)a3;
- (id)deviceNameString;
- (id)preparingRollbackString;
- (id)releaseNotesSummary;
- (id)releaseNotesSummaryString;
- (id)releaseNotesSummaryView;
- (id)revokedSplatView;
- (id)systemVersionValueForKey:(id)a3;
- (id)titleLabelString;
- (id)titleLabelView;
- (void)configureContentView;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation PSGSWVersionDetailCell

- (PSGSWVersionDetailCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v24.receiver = self;
  v24.super_class = PSGSWVersionDetailCell;
  v9 = [(PSTableCell *)&v24 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v9->_osUpdateType = 0;
    documentationData = v9->_documentationData;
    v9->_documentationData = 0;

    v12 = [v8 propertyForKey:@"OSUpdateType"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10->_osUpdateType = [v12 integerValue];
      }
    }

    v13 = [v8 propertyForKey:@"SUManagerClient"];
    suClient = v10->_suClient;
    v10->_suClient = v13;

    if (!v10->_suClient || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v15 = [objc_alloc(MEMORY[0x277D648B8]) initWithDelegate:0];
      v16 = v10->_suClient;
      v10->_suClient = v15;
    }

    v17 = [v8 propertyForKey:@"SUDocumentationData"];
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
  v3 = [(PSGSWVersionDetailCell *)self titleLabelView];
  titleLabelView = self->_titleLabelView;
  self->_titleLabelView = v3;

  if (self->_titleLabelView)
  {
    v5 = [(PSGSWVersionDetailCell *)self contentView];
    [v5 addSubview:self->_titleLabelView];

    v6 = self->_titleLabelView;
  }

  else
  {
    v6 = 0;
  }

  v39 = MEMORY[0x277CCAAD0];
  v47 = [(UILabel *)v6 topAnchor];
  v49 = [(PSGSWVersionDetailCell *)self contentView];
  v45 = [v49 layoutMarginsGuide];
  v43 = [v45 topAnchor];
  v41 = [v47 constraintEqualToAnchor:v43];
  v55[0] = v41;
  v38 = [(UILabel *)self->_titleLabelView leadingAnchor];
  v40 = [(PSGSWVersionDetailCell *)self contentView];
  v7 = [v40 layoutMarginsGuide];
  v8 = [v7 leadingAnchor];
  v9 = [v38 constraintEqualToAnchor:v8];
  v55[1] = v9;
  v10 = [(UILabel *)self->_titleLabelView trailingAnchor];
  v11 = [(PSGSWVersionDetailCell *)self contentView];
  v12 = [v11 layoutMarginsGuide];
  v13 = [v12 trailingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  v55[2] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
  [v39 activateConstraints:v15];

  v16 = [(PSGSWVersionDetailCell *)self releaseNotesSummaryView];
  releaseNotesSummaryView = self->_releaseNotesSummaryView;
  self->_releaseNotesSummaryView = v16;

  if (self->_releaseNotesSummaryView)
  {
    v18 = [(PSGSWVersionDetailCell *)self contentView];
    [v18 addSubview:self->_releaseNotesSummaryView];
  }

  if (self->_osUpdateType == 1 && [(SUManagerClient *)self->_suClient isSplatOnlyUpdateRollbackSuggested])
  {
    v19 = [(PSGSWVersionDetailCell *)self revokedSplatView];
    revokedSplatView = self->_revokedSplatView;
    self->_revokedSplatView = v19;

    v21 = MEMORY[0x277CCAAD0];
    v22 = [(PSWebContainerView *)self->_releaseNotesSummaryView bottomAnchor];
    v23 = [(UIView *)self->_revokedSplatView topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-5.0];
    v54 = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    [v21 activateConstraints:v25];
  }

  else
  {
    v26 = MEMORY[0x277CCAAD0];
    v22 = [(PSWebContainerView *)self->_releaseNotesSummaryView bottomAnchor];
    v23 = [(PSGSWVersionDetailCell *)self contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:-5.0];
    v53 = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
    [v26 activateConstraints:v27];
  }

  v42 = MEMORY[0x277CCAAD0];
  v50 = [(PSWebContainerView *)self->_releaseNotesSummaryView topAnchor];
  v51 = [(UILabel *)self->_titleLabelView bottomAnchor];
  v48 = [v50 constraintEqualToAnchor:v51 constant:5.0];
  v52[0] = v48;
  v44 = [(PSWebContainerView *)self->_releaseNotesSummaryView leadingAnchor];
  v46 = [(PSGSWVersionDetailCell *)self contentView];
  v28 = [v46 layoutMarginsGuide];
  v29 = [v28 leadingAnchor];
  v30 = [v44 constraintEqualToAnchor:v29];
  v52[1] = v30;
  v31 = [(PSWebContainerView *)self->_releaseNotesSummaryView trailingAnchor];
  v32 = [(PSGSWVersionDetailCell *)self contentView];
  v33 = [v32 layoutMarginsGuide];
  v34 = [v33 trailingAnchor];
  v35 = [v31 constraintEqualToAnchor:v34];
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

  v5 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([v5 userInterfaceStyle] == 2)
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
  v8 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([v8 userInterfaceStyle] == 2)
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

  v13 = [v7 layer];
  [v13 setCornerRadius:5.0];

  v14 = [v7 layer];
  [v14 setMasksToBounds:1];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v2];
  v41 = MEMORY[0x277CCAAD0];
  v49 = [v2 topAnchor];
  v47 = [v7 topAnchor];
  v45 = [v49 constraintEqualToAnchor:v47 constant:10.0];
  v54[0] = v45;
  v43 = [v2 leadingAnchor];
  v15 = [v7 leadingAnchor];
  v16 = [v43 constraintEqualToAnchor:v15 constant:10.0];
  v54[1] = v16;
  v17 = [v2 trailingAnchor];
  v18 = [v7 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-10.0];
  v54[2] = v19;
  [v2 bottomAnchor];
  v20 = v51 = v2;
  v21 = [v7 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-10.0];
  v54[3] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
  [v41 activateConstraints:v23];

  v24 = [(PSGSWVersionDetailCell *)self contentView];
  [v24 addSubview:v7];

  v38 = MEMORY[0x277CCAAD0];
  v50 = [v7 topAnchor];
  v48 = [(PSWebContainerView *)self->_releaseNotesSummaryView bottomAnchor];
  v46 = [v50 constraintEqualToAnchor:v48 constant:30.0];
  v53[0] = v46;
  v42 = [v7 leadingAnchor];
  v44 = [(PSGSWVersionDetailCell *)self contentView];
  v40 = [v44 layoutMarginsGuide];
  v39 = [v40 leadingAnchor];
  v37 = [v42 constraintEqualToAnchor:v39 constant:10.0];
  v53[1] = v37;
  v36 = [v7 trailingAnchor];
  v25 = [(PSGSWVersionDetailCell *)self contentView];
  v26 = [v25 layoutMarginsGuide];
  v27 = [v26 trailingAnchor];
  v28 = [v36 constraintEqualToAnchor:v27 constant:-5.0];
  v53[2] = v28;
  v29 = [v7 bottomAnchor];
  v30 = [(PSGSWVersionDetailCell *)self contentView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:-15.0];
  v53[3] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
  [v38 activateConstraints:v33];

  v34 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)titleLabelView
{
  v3 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76988] maximumContentSizeCategory:*MEMORY[0x277D76800]];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits:2];

  v6 = objc_opt_new();
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(PSGSWVersionDetailCell *)self titleLabelString];
  [v6 setText:v7];

  v8 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];
  [v6 setFont:v8];

  v9 = [MEMORY[0x277D75348] labelColor];
  [v6 setTextColor:v9];

  [v6 setTextAlignment:4];
  [v6 setNumberOfLines:0];

  return v6;
}

- (id)titleLabelString
{
  v3 = [(PSGSWVersionDetailCell *)self systemVersionValueForKey:*MEMORY[0x277CBEC90]];
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 systemName];
  v7 = [(PSGSWVersionDetailCell *)self systemVersionValueForKey:@"ProductBuildVersion"];
  v8 = [v4 stringWithFormat:@"%@ %@ (%@)", v6, v3, v7];

  return v8;
}

- (id)releaseNotesSummaryView
{
  v3 = objc_alloc_init(MEMORY[0x277D3FBB0]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAutoresizesSubviews:0];
  v4 = [(PSGSWVersionDetailCell *)self releaseNotesSummary];
  [v3 setContent:v4];

  return v3;
}

- (id)releaseNotesSummary
{
  v2 = [(PSGSWVersionDetailCell *)self releaseNotesSummaryString];
  v3 = [v2 stringByAppendingString:@"<style type=text/css>body { margin: 0px padding: 0px; }</style>"];;

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
  v3 = [(SUDocumentationData *)self->_documentationData readmeSummary];
  v4 = v3;
  if (v3 && [v3 length])
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
    v9 = [(PSGSWVersionDetailCell *)self deviceNameString];
    v10 = [v6 stringWithFormat:v8, v9];

    v11 = [MEMORY[0x277D75128] sharedApplication];
    v12 = [v11 userInterfaceLayoutDirection];
    v13 = @"ltr";
    if (v12 == 1)
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

- (id)systemVersionValueForKey:(id)a3
{
  osUpdateType = self->_osUpdateType;
  v4 = a3;
  if (osUpdateType == 1)
  {
    v5 = _CFCopySupplementalVersionDictionary();
  }

  else
  {
    v5 = _CFCopySystemVersionDictionary();
  }

  v6 = v5;
  v7 = [v5 objectForKey:v4];

  return v7;
}

- (double)preferredHeightWithTable:(id)a3
{
  [(PSGSWVersionDetailCell *)self bounds];
  v5 = v4;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v8 = v7;

  v9 = [(PSWebContainerView *)self->_releaseNotesSummaryView webView];
  v10 = [v9 scrollView];
  [v10 contentOffset];
  v12 = v11;
  v14 = v13;

  [(PSGSWVersionDetailCell *)self computeHeightForWidth:self->_releaseNotesSummaryView forAccessibilitySupportedWebContainer:v5];
  v16 = v15;
  v17 = [(PSWebContainerView *)self->_releaseNotesSummaryView webView];
  v18 = [v17 scrollView];
  [v18 setContentOffset:{v12, v14}];

  v19 = v8 * 0.330000013;
  v20 = [(PSWebContainerView *)self->_releaseNotesSummaryView webView];
  v21 = [v20 scrollView];
  [v21 setScrollEnabled:v16 > v19];

  v22 = [(PSWebContainerView *)self->_releaseNotesSummaryView webView];
  v23 = [v22 scrollView];
  [v23 setBounces:v16 > v19];

  revokedSplatView = self->_revokedSplatView;
  if (revokedSplatView)
  {
    v25 = [(UIView *)revokedSplatView subviews];
    v26 = [v25 objectAtIndex:0];

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

  v29 = [(PSGSWVersionDetailCell *)self contentView];
  [v29 layoutMargins];
  v31 = v30;
  [(UILabel *)self->_titleLabelView frame];
  v33 = v28 + v19 + v31 + v32;
  v34 = [(PSGSWVersionDetailCell *)self contentView];
  [v34 layoutMargins];
  v36 = v35 + v33;

  return v36;
}

- (void)traitCollectionDidChange:(id)a3
{
  v15.receiver = self;
  v15.super_class = PSGSWVersionDetailCell;
  [(PSGSWVersionDetailCell *)&v15 traitCollectionDidChange:a3];
  v4 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([v4 userInterfaceStyle] == 2)
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

  v9 = [(UIView *)self->_revokedSplatView subviews];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [(UIView *)self->_revokedSplatView subviews];
    v12 = [v11 objectAtIndex:0];

    if (v12)
    {
      v13 = [MEMORY[0x277D75C80] currentTraitCollection];
      if ([v13 userInterfaceStyle] == 2)
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

- (double)computeHeightForWidth:(double)a3 forAccessibilitySupportedWebContainer:(id)a4
{
  v5 = a4;
  v6 = [v5 webView];
  v7 = [v6 stringByEvaluatingJavaScriptFromString:{@"function get_height(){var e=documentreturn Math.max(e.body.scrollHeight, e.documentElement.scrollHeight, e.body.offsetHeight, e.documentElement.offsetHeight, e.body.clientHeight, e.documentElement.clientHeight)}; get_height();"}];;

  if (!v7 || [v7 isEqualToString:&stru_282E88A90] || (objc_msgSend(v7, "floatValue"), v8 <= 0.0))
  {
    [v5 heightForWidth:a3];
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
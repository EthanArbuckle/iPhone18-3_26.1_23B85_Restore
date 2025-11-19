@interface PSUIAppInstallLockupViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PSUIAppInstallLockupViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)presentingViewControllerForLockupView:(id)a3;
- (void)_setupView;
- (void)installButtonAction;
- (void)layoutSubviews;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidBeginRequest:(id)a3;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)lockupViewFailed:(id)a3;
- (void)openButtonAction;
- (void)updateConstraints;
@end

@implementation PSUIAppInstallLockupViewCell

- (PSUIAppInstallLockupViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v28.receiver = self;
  v28.super_class = PSUIAppInstallLockupViewCell;
  v9 = [(PSTableCell *)&v28 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  if (v9)
  {
    v10 = [v8 propertyForKey:@"PSUIAppOpenURL"];
    openAppURL = v9->_openAppURL;
    v9->_openAppURL = v10;

    v12 = [v8 propertyForKey:@"PSUIAppId"];
    appId = v9->_appId;
    v9->_appId = v12;

    v14 = [v8 propertyForKey:@"PSUIAnalyticsEventForApp"];
    analyticsEventForApp = v9->_analyticsEventForApp;
    v9->_analyticsEventForApp = v14;

    v16 = [v8 propertyForKey:@"PSUIAnalyticsEventDetailsCode"];
    analyticsEventDetailsCode = v9->_analyticsEventDetailsCode;
    v9->_analyticsEventDetailsCode = v16;

    v18 = [v8 propertyForKey:@"PSUIAnalyticsEventDetailsSubCode"];
    analyticsEventDetailsSubCode = v9->_analyticsEventDetailsSubCode;
    v9->_analyticsEventDetailsSubCode = v18;

    if (!v9->_analyticsEventDetailsCode)
    {
      v9->_analyticsEventDetailsCode = &unk_287749170;
      v20 = v9->_analyticsEventDetailsSubCode;
      v9->_analyticsEventDetailsSubCode = &unk_287749188;
    }

    [(PSUIAppInstallLockupViewCell *)v9 _setupView];
    v21 = [(PSUIAppInstallLockupViewCell *)v9 getLogger];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v9->_appId;
      v23 = v9->_analyticsEventForApp;
      v24 = v9->_analyticsEventDetailsCode;
      v25 = v9->_analyticsEventDetailsSubCode;
      *buf = 136316162;
      v30 = "[PSUIAppInstallLockupViewCell initWithStyle:reuseIdentifier:specifier:]";
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      v37 = 2112;
      v38 = v25;
      _os_log_impl(&dword_2658DE000, v21, OS_LOG_TYPE_DEFAULT, "%s appId:%@ AnalyticsEvent:[%@, Code=%@, SubCode=%@]", buf, 0x34u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PSUIAppInstallLockupViewCell;
  [(PSTableCell *)&v14 layoutSubviews];
  [(PSUIAppInstallLockupViewCell *)self setNeedsUpdateConstraints];
  [(PSTableCell *)self setCellEnabled:1];
  v3 = [(PSUIAppInstallLockupViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [v13 setLayoutMargins:{8.0, 15.0, 8.0, 12.0}];
}

- (void)updateConstraints
{
  v22[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCAAD0];
  v20 = [(PSUIAppInstallLockupViewCell *)self contentView];
  v18 = [v20 leadingAnchor];
  v19 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v22[0] = v16;
  v15 = [(PSUIAppInstallLockupViewCell *)self contentView];
  v13 = [v15 trailingAnchor];
  v3 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  v4 = [v3 trailingAnchor];
  v5 = [v13 constraintEqualToAnchor:v4];
  v22[1] = v5;
  v6 = [(PSUIAppInstallLockupViewCell *)self contentView];
  v7 = [v6 topAnchor];
  v8 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v22[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [v14 activateConstraints:v11];

  v21.receiver = self;
  v21.super_class = PSUIAppInstallLockupViewCell;
  [(PSUIAppInstallLockupViewCell *)&v21 updateConstraints];
  v12 = *MEMORY[0x277D85DE8];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_setupView
{
  v3 = objc_alloc(MEMORY[0x277CEC298]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(PSUIAppInstallLockupViewCell *)self setLockupView:v4];

  v5 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [v5 setDelegate:self];

  v6 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = *MEMORY[0x277CEC248];
  v8 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [v8 setLockupSize:v7];

  v14 = [objc_alloc(MEMORY[0x277CEC258]) initWithStringValue:self->_appId];
  v9 = objc_alloc(MEMORY[0x277CEC290]);
  v10 = [v9 _initWithID:v14 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC218] clientID:@"SettingsView"];
  v11 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [v11 setRequest:v10];

  v12 = [(PSUIAppInstallLockupViewCell *)self contentView];
  v13 = [(PSUIAppInstallLockupViewCell *)self lockupView];
  [v12 addSubview:v13];

  [(PSUIAppInstallLockupViewCell *)self layoutSubviews];
}

- (void)openButtonAction
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  openAppURL = self->_openAppURL;
  v5 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v6 = [(NSString *)openAppURL stringByAddingPercentEncodingWithAllowedCharacters:v5];
  v7 = [v3 URLWithString:v6];

  v8 = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[PSUIAppInstallLockupViewCell openButtonAction]";
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s for URL: %@", buf, 0x16u);
  }

  v9 = [MEMORY[0x277D75128] sharedApplication];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __48__PSUIAppInstallLockupViewCell_openButtonAction__block_invoke;
  v18 = &unk_279BAA7F8;
  v19 = self;
  v10 = v7;
  v20 = v10;
  [v9 openURL:v10 options:MEMORY[0x277CBEC10] completionHandler:&v15];

  analyticsEventForApp = self->_analyticsEventForApp;
  if (analyticsEventForApp)
  {
    v21[0] = 0x2877399F8;
    v21[1] = 0x287739A18;
    analyticsEventDetailsCode = self->_analyticsEventDetailsCode;
    v22[0] = @"OpenSupportApp";
    v22[1] = analyticsEventDetailsCode;
    v21[2] = 0x287739A38;
    v22[2] = self->_analyticsEventDetailsSubCode;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:{3, v15, v16, v17, v18, v19}];
    PSAnalyticsSendEvent_0(analyticsEventForApp, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __48__PSUIAppInstallLockupViewCell_openButtonAction__block_invoke(uint64_t a1, char a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ((a2 & 1) == 0)
  {
    v3 = [*(a1 + 32) getLogger];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_2658DE000, v3, OS_LOG_TYPE_ERROR, "Could not open URL: %@!!", &v6, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)installButtonAction
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    appId = self->_appId;
    *buf = 136315650;
    v12 = "[PSUIAppInstallLockupViewCell installButtonAction]";
    v13 = 2112;
    v14 = appId;
    v15 = 1024;
    v16 = installButtonAction_installStarted;
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s appId:%@ installStarted=%d", buf, 0x1Cu);
  }

  analyticsEventForApp = self->_analyticsEventForApp;
  if (analyticsEventForApp && (installButtonAction_installStarted & 1) == 0)
  {
    v9[0] = 0x2877399F8;
    v9[1] = 0x287739A18;
    analyticsEventDetailsCode = self->_analyticsEventDetailsCode;
    v10[0] = @"InstallSupportApp";
    v10[1] = analyticsEventDetailsCode;
    v9[2] = 0x287739A38;
    v10[2] = self->_analyticsEventDetailsSubCode;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
    PSAnalyticsSendEvent_0(analyticsEventForApp, v7);
  }

  installButtonAction_installStarted = 1;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)lockupViewFailed:(id)a3
{
  v4 = *MEMORY[0x277D3FCE0];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + v4));
  [WeakRetained handleLockupViewFailure:v5];
}

- (void)lockupViewDidBeginRequest:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSUIAppInstallLockupViewCell lockupViewDidBeginRequest:]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[PSUIAppInstallLockupViewCell lockupViewDidFinishRequest:]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[PSUIAppInstallLockupViewCell lockupView:didFailRequestWithError:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "%s with error: %@", &v8, 0x16u);
  }

  [(PSUIAppInstallLockupViewCell *)self lockupViewFailed:v5];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[PSUIAppInstallLockupViewCell lockupView:appStateDidChange:]";
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_2658DE000, v8, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  if (([v7 isEqual:*MEMORY[0x277CEC1A0]] & 1) != 0 || objc_msgSend(v7, "isEqual:", *MEMORY[0x277CEC1A8]))
  {
    v9 = MEMORY[0x277CEC2B0];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"OPEN" value:&stru_287733598 table:@"AppInstallCell"];
    v12 = [v9 textMetadataWithTitle:v11 subtitle:0];

    v13 = objc_alloc(MEMORY[0x277CEC278]);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __61__PSUIAppInstallLockupViewCell_lockupView_appStateDidChange___block_invoke;
    v18[3] = &unk_279BA9D58;
    v18[4] = self;
    v14 = [v13 initWithMetadata:v12 action:v18];
    v15 = [v6 lockup];
    v16 = [v15 lockupWithOffer:v14];
    [v6 setLockup:v16];
  }

  else if ([v7 isEqual:*MEMORY[0x277CEC198]])
  {
    [(PSUIAppInstallLockupViewCell *)self installButtonAction];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)presentingViewControllerForLockupView:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(PSUIAppInstallLockupViewCell *)self getLogger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[PSUIAppInstallLockupViewCell presentingViewControllerForLockupView:]";
    _os_log_impl(&dword_2658DE000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

@end
@interface WFOtherNetworkViewController
- (BOOL)_canShowModes;
- (WFOtherNetworkViewController)initWithCredentialsProviderContext:(id)a3 deviceCapability:(int64_t)a4 appearanceProxy:(id)a5;
- (WFOtherNetworkViewController)initWithOtherNetworkProviderContext:(id)a3 deviceCapability:(int64_t)a4 appearanceProxy:(id)a5;
- (WFOtherNetworkViewController)initWithOtherNetworkStyle:(int64_t)a3 withTableStyle:(int64_t)a4 networkName:(id)a5;
- (WFOtherNetworkViewController)initWithStyle:(int64_t)a3 appearanceProxy:(id)a4 context:(id)a5 networkName:(id)a6 deviceCapability:(int64_t)a7;
- (WFOtherNetworkViewControllerDelegate)delegate;
- (id)_TLSIdentityDescription;
- (id)_WAPIIdentityDescription;
- (id)_WAPIRootCertificateDescription;
- (id)_availableProfileModeTitles;
- (id)_availableSecurityModes;
- (id)_availableSecurityTitles;
- (id)_profileModeStringFromType:(int64_t)a3;
- (id)_sectionsForStyle:(int64_t)a3;
- (id)_securityRowsForStyle:(int64_t)a3;
- (id)_securityStringFromType:(int64_t)a3;
- (id)_selectedPrivateModeForOption:(unint64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)_profileModeFromTitle:(id)a3;
- (int64_t)_returnKeyType;
- (int64_t)_securityModeFromTitle:(id)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (unint64_t)_selectedPrivateModeForString:(id)a3;
- (void)_dismiss:(id)a3;
- (void)_join:(id)a3;
- (void)_scrollToCellAndBecomeFirstResponder:(id)a3;
- (void)_setFirstResponderAfterCell:(id)a3;
- (void)_setTLSIdentity:(id)a3 specifier:(id)a4;
- (void)_setWAPIIdentity:(id)a3 specifier:(id)a4;
- (void)_setWAPIRootCertificate:(id)a3 specifier:(id)a4;
- (void)_updateJoinable;
- (void)_updateSections;
- (void)dealloc;
- (void)orientationChanged:(id)a3;
- (void)receiveSharedPassword:(id)a3;
- (void)resetFirstResponder;
- (void)setActivityString:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setJoining:(BOOL)a3;
- (void)setNetworkName:(id)a3;
- (void)setPasswordRequired:(BOOL)a3;
- (void)setProfileMode:(int64_t)a3;
- (void)setSecurityMode:(int64_t)a3;
- (void)setTLSIdentities:(id)a3;
- (void)setTLSIdentity:(__SecIdentity *)a3;
- (void)setUsername:(id)a3;
- (void)setWAPIIdentity:(id)a3;
- (void)setWAPIRootCertificate:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFOtherNetworkViewController

- (WFOtherNetworkViewController)initWithStyle:(int64_t)a3 appearanceProxy:(id)a4 context:(id)a5 networkName:(id)a6 deviceCapability:(int64_t)a7
{
  v13 = a4;
  v32 = a5;
  v14 = a6;
  if (a3 == 3)
  {
    IsChinaDevice = WFCapabilityIsChinaDevice(a7);
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v16;
    if (IsChinaDevice)
    {
      v18 = @"kWFLocOtherNetworksTitleOBKCH";
    }

    else
    {
      v18 = @"kWFLocOtherNetworksTitleOBK";
    }

    v19 = [v16 localizedStringForKey:v18 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v20 = 0;
  }

  else
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"kWFLocOtherNetworksPasswordTitleOBK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v19 = [v21 stringWithFormat:v23, v14];

    LOBYTE(v23) = WFCapabilityIsChinaDevice(a7);
    v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = v24;
    if (v23)
    {
      v25 = @"kWFLocPasswordAlertTitleOBKCH";
    }

    else
    {
      v25 = @"kWFLocPasswordAlertTitleOBK";
    }

    v20 = [v24 localizedStringForKey:v25 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  v33.receiver = self;
  v33.super_class = WFOtherNetworkViewController;
  v26 = [(OBTableWelcomeController *)&v33 initWithTitle:v19 detailText:v20 symbolName:@"wifi" adoptTableViewScrollView:1];
  [(WFOtherNetworkViewController *)v26 setShouldAdjustScrollViewInsetForKeyboard:1];
  if (v26)
  {
    v26->_style = a3;
    objc_storeStrong(&v26->_appearanceProxy, a4);
    objc_storeStrong(&v26->_context, a5);
    v26->_passwordRequired = 1;
    v26->_firstResponderCell = -1;
    v26->_profileMode = -1;
    v26->_WAPIEnabled = 0;
    v26->_wantsModalPresentation = 1;
    v26->_overrideDefaultSecurity = 1;
    v26->_shouldCancelContextWhenViewDisappear = 1;
    v27 = [(WFOtherNetworkViewController *)v26 _sectionsForStyle:a3];
    sections = v26->_sections;
    v26->_sections = v27;

    v29 = [(WFOtherNetworkViewController *)v26 _securityRowsForStyle:a3];
    securityRows = v26->_securityRows;
    v26->_securityRows = v29;
  }

  return v26;
}

- (WFOtherNetworkViewController)initWithOtherNetworkStyle:(int64_t)a3 withTableStyle:(int64_t)a4 networkName:(id)a5
{
  v6 = [(WFOtherNetworkViewController *)self initWithStyle:a3 appearanceProxy:0 context:0 networkName:a5 deviceCapability:1];
  v7 = v6;
  if (v6)
  {
    v6->_style = a3;
    v6->_passwordRequired = 1;
    v6->_firstResponderCell = -1;
    v6->_profileMode = -1;
    v6->_WAPIEnabled = 0;
    v6->_wantsModalPresentation = 1;
    v6->_overrideDefaultSecurity = 1;
    v8 = [(WFOtherNetworkViewController *)v6 _sectionsForStyle:a3];
    sections = v7->_sections;
    v7->_sections = v8;

    v10 = [(WFOtherNetworkViewController *)v7 _securityRowsForStyle:a3];
    securityRows = v7->_securityRows;
    v7->_securityRows = v10;

    v7->_shouldCancelContextWhenViewDisappear = 1;
  }

  return v7;
}

- (WFOtherNetworkViewController)initWithOtherNetworkProviderContext:(id)a3 deviceCapability:(int64_t)a4 appearanceProxy:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(WFOtherNetworkViewController *)self initWithStyle:3 appearanceProxy:v10 context:v9 networkName:0 deviceCapability:a4];
  v12 = v11;
  if (v11)
  {
    v11->_deviceCapability = a4;
    objc_storeStrong(&v11->_context, a3);
    v12->_isUsingRandomAddress = [v9 isUsingRandomMACAddress];
    v13 = [v9 randomMACAddress];
    randomMACAddress = v12->_randomMACAddress;
    v12->_randomMACAddress = v13;

    v15 = [v9 hardwareMACAddress];
    hardwareMACAddress = v12->_hardwareMACAddress;
    v12->_hardwareMACAddress = v15;

    v12->_WAPIEnabled = [v9 availableAuthTraits] & 1;
    v12->_WPA3PersonalEnabled = ([v9 availableAuthTraits] & 2) != 0;
    v12->_WPA3EnterpriseEnabled = ([v9 availableAuthTraits] & 4) != 0;
    v12->_WPA2EnterpriseEnabledMFPCapable = ([v9 availableAuthTraits] & 8) != 0;
    v17 = [v9 availableTLSIdentities];
    TLSIdentities = v12->_TLSIdentities;
    v12->_TLSIdentities = v17;

    v19 = [v9 WAPIRootCertificates];
    WAPIRootCertificates = v12->_WAPIRootCertificates;
    v12->_WAPIRootCertificates = v19;

    v21 = [v9 WAPIIdentities];
    WAPIIdentities = v12->_WAPIIdentities;
    v12->_WAPIIdentities = v21;

    v12->_overrideDefaultSecurity = 1;
    v12->_profileMode = 0;
    objc_storeStrong(&v12->_appearanceProxy, a5);
  }

  return v12;
}

- (WFOtherNetworkViewController)initWithCredentialsProviderContext:(id)a3 deviceCapability:(int64_t)a4 appearanceProxy:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = [v9 isEnterprise];
  v12 = [v9 network];
  v13 = [v12 ssid];
  v14 = [(WFOtherNetworkViewController *)self initWithStyle:v11 appearanceProxy:v10 context:v9 networkName:v13 deviceCapability:a4];

  if (v14)
  {
    v14->_deviceCapability = a4;
    objc_storeStrong(&v14->_context, a3);
    v15 = [v9 network];
    v16 = [v15 ssid];
    networkName = v14->_networkName;
    v14->_networkName = v16;

    objc_storeStrong(&v14->_appearanceProxy, a5);
    if ([v9 isEnterprise])
    {
      v18 = [v9 username];
      username = v14->_username;
      v14->_username = v18;

      v14->_securityMode = 5;
      v14->_overrideDefaultSecurity = 0;
      [(WFOtherNetworkViewController *)v14 _updateSections];
      v20 = WFLogForCategory(0);
      v21 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v20 && os_log_type_enabled(v20, v21))
      {
        *buf = 136315138;
        v47 = "[WFOtherNetworkViewController initWithCredentialsProviderContext:deviceCapability:appearanceProxy:]";
        _os_log_impl(&dword_273FB9000, v20, v21, "%s: enterprise context", buf, 0xCu);
      }
    }

    v14->_WAPIEnabled = [v9 availableAuthTraits] & 1;
    v14->_WPA3PersonalEnabled = ([v9 availableAuthTraits] & 2) != 0;
    v14->_WPA3EnterpriseEnabled = ([v9 availableAuthTraits] & 4) != 0;
    v14->_WPA2EnterpriseEnabledMFPCapable = ([v9 availableAuthTraits] & 8) != 0;
    v22 = [v9 requestedFields];
    v14->_passwordRequired = v22 & 1;
    if ((v22 & 1) == 0)
    {
      v23 = WFLogForCategory(0);
      v24 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v23)
      {
        v25 = v23;
        if (os_log_type_enabled(v25, v24))
        {
          v26 = [v9 network];
          *buf = 136315394;
          v47 = "[WFOtherNetworkViewController initWithCredentialsProviderContext:deviceCapability:appearanceProxy:]";
          v48 = 2112;
          v49 = v26;
          _os_log_impl(&dword_273FB9000, v25, v24, "%s: password not required for %@", buf, 0x16u);
        }
      }
    }

    v27 = [v9 availableTLSIdentities];
    TLSIdentities = v14->_TLSIdentities;
    v14->_TLSIdentities = v27;

    if (v14->_TLSIdentities && v14->_profileMode == -1)
    {
      v14->_profileMode = 0;
      [(WFOtherNetworkViewController *)v14 _updateSections];
      v29 = WFLogForCategory(0);
      v30 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v29 && os_log_type_enabled(v29, v30))
      {
        *buf = 136315138;
        v47 = "[WFOtherNetworkViewController initWithCredentialsProviderContext:deviceCapability:appearanceProxy:]";
        _os_log_impl(&dword_273FB9000, v29, v30, "%s: profileMode is automatic due to TLSIdentities", buf, 0xCu);
      }
    }

    v31 = WFLogForCategory(0);
    v32 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v31)
    {
      v33 = v31;
      if (os_log_type_enabled(v33, v32))
      {
        v34 = [v9 isPasswordSharingSupported];
        *buf = 136315394;
        v47 = "[WFOtherNetworkViewController initWithCredentialsProviderContext:deviceCapability:appearanceProxy:]";
        v48 = 1024;
        LODWORD(v49) = v34;
        _os_log_impl(&dword_273FB9000, v33, v32, "%s: passwordSharingSupported %d", buf, 0x12u);
      }
    }

    if ([v9 isPasswordSharingSupported])
    {
      if (WFCapabilityIsChinaDevice(a4))
      {
        v35 = [@"kWFLocPasswordSharingDetails" stringByAppendingString:@"_CH"];
      }

      else
      {
        v35 = @"kWFLocPasswordSharingDetails";
      }

      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [v38 localizedStringForKey:v35 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    }

    else
    {
      v36 = [v9 securityIssue];

      if (!v36)
      {
        v41 = 0;
        goto LABEL_35;
      }

      v37 = MEMORY[0x277CCACA8];
      v35 = [v9 securityIssue];
      v38 = [(__CFString *)v35 issueDescription];
      v39 = [v9 securityIssue];
      v40 = [v39 issueRecommendation];
      v41 = [v37 stringWithFormat:@"%@\n\n%@", v38, v40];
    }

LABEL_35:
    details = v14->_details;
    v14->_details = v41;
    v43 = v41;

    [(WFAppearanceProxy *)v14->_appearanceProxy apply];
  }

  v44 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WFOtherNetworkViewController;
  [(WFOtherNetworkViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v49 = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = WFOtherNetworkViewController;
  [(OBTableWelcomeController *)&v40 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  v4 = [v3 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(OBTableWelcomeController *)self setTableView:v4];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = *MEMORY[0x277D76F30];
  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setRowHeight:v6];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setDataSource:self];

  v9 = [(WFOtherNetworkViewController *)self backgroundColor];

  if (v9)
  {
    v10 = [(WFOtherNetworkViewController *)self backgroundColor];
    v11 = [(OBTableWelcomeController *)self tableView];
    [v11 setBackgroundColor:v10];
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel__updateJoinable name:*MEMORY[0x277D76C60] object:0];

  if (self->_overrideDefaultSecurity)
  {
    if ([(WFOtherNetworkViewController *)self WPA3PersonalEnabled])
    {
      v13 = 9;
    }

    else
    {
      v13 = 3;
    }

    [(WFOtherNetworkViewController *)self setSecurityMode:v13];
  }

  style = self->_style;
  switch(style)
  {
    case 0:
      v15 = 2;
      goto LABEL_14;
    case 3:
      v15 = 0;
      goto LABEL_14;
    case 1:
      v15 = 1;
LABEL_14:
      [(WFOtherNetworkViewController *)self setFirstResponderCell:v15];
      break;
  }

  v16 = MEMORY[0x277D757B0];
  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v16 nibWithNibName:@"WFTextFieldCell" bundle:v17];

  v19 = [(OBTableWelcomeController *)self tableView];
  [v19 registerNib:v18 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  v20 = [(OBTableWelcomeController *)self tableView];
  [v20 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFOtherNetworkHeaderIdentifier"];

  v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__dismiss_];
  v22 = [(OBBaseWelcomeController *)self navigationItem];
  [v22 setLeftBarButtonItem:v21];

  v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__join_];
  v24 = [(OBBaseWelcomeController *)self navigationItem];
  [v24 setRightBarButtonItem:v23];

  v25 = [(OBBaseWelcomeController *)self navigationItem];
  v26 = [v25 rightBarButtonItem];
  [v26 setEnabled:0];

  [(WFOtherNetworkViewController *)self setJoinable:0];
  v27 = [MEMORY[0x277D75418] currentDevice];
  [v27 beginGeneratingDeviceOrientationNotifications];

  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  v29 = *MEMORY[0x277D76878];
  v30 = [MEMORY[0x277D75418] currentDevice];
  [v28 addObserver:self selector:sel_orientationChanged_ name:v29 object:v30];

  self->_privateAddressMode = 1;
  v31 = WFLogForCategory(0);
  v32 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v31)
  {
    v33 = v31;
    if (os_log_type_enabled(v33, v32))
    {
      v34 = [(WFOtherNetworkViewController *)self style];
      v35 = [(WFOtherNetworkViewController *)self securityMode];
      v36 = [(WFOtherNetworkViewController *)self networkName];
      *buf = 136315906;
      v42 = "[WFOtherNetworkViewController viewDidLoad]";
      v43 = 1024;
      v44 = v34;
      v45 = 1024;
      v46 = v35;
      v47 = 2112;
      v48 = v36;
      _os_log_impl(&dword_273FB9000, v33, v32, "%s: style %d security type %d network %@", buf, 0x22u);
    }
  }

  v37 = [(OBTableWelcomeController *)self tableView];
  [v37 setAlwaysBounceVertical:1];

  v38 = [(OBTableWelcomeController *)self tableView];
  [v38 setKeyboardDismissMode:2];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_scrollToCellAndBecomeFirstResponder:(id)a3
{
  v4 = a3;
  v5 = [(OBTableWelcomeController *)self tableView];
  [(WFTextFieldCell *)v4 frame];
  v7 = v6;
  [(WFTextFieldCell *)v4 frame];
  v9 = v8 + 20.0;
  [(WFTextFieldCell *)v4 frame];
  v11 = v10;
  [(WFTextFieldCell *)v4 frame];
  [v5 scrollRectToVisible:0 animated:{v7, v9, v11}];

  v12 = [(WFTextFieldCell *)v4 textField];
  [v12 performSelectorOnMainThread:sel_becomeFirstResponder withObject:0 waitUntilDone:1];

  v13 = [(WFTextFieldCell *)v4 textField];
  [v13 performSelector:sel_becomeFirstResponder withObject:0 afterDelay:0.1];

  self->_mostRecentFirstResponder = v4;
}

- (void)orientationChanged:(id)a3
{
  v4 = [a3 object];
  if (([v4 orientation] - 3) <= 1)
  {
    [(WFOtherNetworkViewController *)self _scrollToCellAndBecomeFirstResponder:self->_mostRecentFirstResponder];
  }
}

- (void)_dismiss:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(WFOtherNetworkViewController *)self view];
  v5 = [v4 firstResponder];

  if (v5)
  {
    [v5 resignFirstResponder];
  }

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v13 = 136315138;
    v14 = "[WFOtherNetworkViewController _dismiss:]";
    _os_log_impl(&dword_273FB9000, v6, v7, "%s: user tapped cancel", &v13, 0xCu);
  }

  v8 = [(WFOtherNetworkViewController *)self context];
  [v8 cancel];

  v9 = [(WFOtherNetworkViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(WFOtherNetworkViewController *)self delegate];
    [v11 otherNetworkViewControllerUserDidTapCancel:self];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_join:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_shouldCancelContextWhenViewDisappear = 0;
  v5 = [MEMORY[0x277D75658] activeKeyboard];
  v6 = v5;
  if (v5)
  {
    [v5 deactivate];
  }

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    *buf = 136315394;
    v31 = "[WFOtherNetworkViewController _join:]";
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_273FB9000, v7, v8, "%s: join with sender %@", buf, 0x16u);
  }

  v9 = [(WFOtherNetworkViewController *)self view];
  v10 = [v9 firstResponder];

  if (v10)
  {
    [v10 resignFirstResponder];
  }

  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
  {
    *buf = 136315138;
    v31 = "[WFOtherNetworkViewController _join:]";
    _os_log_impl(&dword_273FB9000, v11, v12, "%s: user tapped join", buf, 0xCu);
  }

  v13 = [(WFOtherNetworkViewController *)self context];
  v14 = [v13 conformsToProtocol:&unk_288358520];

  if (v14)
  {
    v15 = [(WFOtherNetworkViewController *)self context];
    if (objc_opt_respondsToSelector())
    {
      [v15 savePrivateAddressMode:{-[WFOtherNetworkViewController privateAddressMode](self, "privateAddressMode")}];
    }
  }

  [(WFOtherNetworkViewController *)self setJoining:1];
  objc_initWeak(&location, self);
  v16 = [(WFOtherNetworkViewController *)self context];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __38__WFOtherNetworkViewController__join___block_invoke;
  v27 = &unk_279EC5CF8;
  objc_copyWeak(&v28, &location);
  [v16 gatherCredentials:&v24];

  v17 = [(WFOtherNetworkViewController *)self delegate:v24];
  LODWORD(v16) = v17 == 0;

  if (v16)
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v18 && os_log_type_enabled(v18, v19))
    {
      *buf = 136315394;
      v31 = "[WFOtherNetworkViewController _join:]";
      v32 = 2112;
      v33 = self;
      _os_log_impl(&dword_273FB9000, v18, v19, "%s: %@ delegate is nil", buf, 0x16u);
    }
  }

  v20 = [(WFOtherNetworkViewController *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    v22 = [(WFOtherNetworkViewController *)self delegate];
    [v22 otherNetworkViewControllerUserDidTapJoin:self];
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  v23 = *MEMORY[0x277D85DE8];
}

void __38__WFOtherNetworkViewController__join___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setJoining:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setShouldCancelContextWhenViewDisappear:1];
}

- (void)_updateJoinable
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [(WFOtherNetworkViewController *)self sections];
  v4 = [v3 containsObject:&unk_2883226C0];

  v5 = [(WFOtherNetworkViewController *)self securityMode];
  v6 = v5 <= 0xA && ((1 << v5) & 0x430) != 0 || [(WFOtherNetworkViewController *)self style]== 1;
  v7 = ([(WFOtherNetworkViewController *)self securityMode]|| [(WFOtherNetworkViewController *)self style]== 1 || ![(WFOtherNetworkViewController *)self style]) && [(WFOtherNetworkViewController *)self passwordRequired];
  if ([(WFOtherNetworkViewController *)self profileMode]== 1)
  {
    v8 = [(WFOtherNetworkViewController *)self securityMode]== 5 || [(WFOtherNetworkViewController *)self securityMode]== 4 || [(WFOtherNetworkViewController *)self securityMode]== 10;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(WFOtherNetworkViewController *)self securityMode]== 7 || [(WFOtherNetworkViewController *)self style]== 2;
  v10 = WFLogForCategory(0);
  v11 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v10 && os_log_type_enabled(v10, v11))
  {
    v30 = 136316418;
    v31 = "[WFOtherNetworkViewController _updateJoinable]";
    v32 = 1024;
    *v33 = v4;
    *&v33[4] = 1024;
    *&v33[6] = v6;
    *v34 = 1024;
    *&v34[2] = v7;
    v35 = 1024;
    v36 = v8;
    v37 = 1024;
    v38 = v9;
    _os_log_impl(&dword_273FB9000, v10, v11, "%s: requiresNetworkName %d requiresUserName %d requiresPassword %d requiresIdentity %d requiresWAPIIdentities %d", &v30, 0x2Au);
  }

  if (v8 && v6)
  {
    if ([(WFOtherNetworkViewController *)self TLSIdentity])
    {
      v12 = WFLogForCategory(0);
      v13 = OSLogForWFLogLevel(4uLL);
      if (WFCurrentLogLevel() >= 4 && v12 && os_log_type_enabled(v12, v13))
      {
        v30 = 136315138;
        v31 = "[WFOtherNetworkViewController _updateJoinable]";
        _os_log_impl(&dword_273FB9000, v12, v13, "%s: username not required with TLSIdentity", &v30, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }
  }

  v14 = [MEMORY[0x277D75658] activeKeyboard];
  if ([(WFOtherNetworkViewController *)self _returnKeyType]== 4)
  {
    [v14 setReturnKeyEnabled:1];
  }

  if (v4 && ![(NSString *)self->_networkName length]|| v6 && ![(NSString *)self->_username length])
  {
    goto LABEL_50;
  }

  v15 = !v8 && !v9 && v7;
  v16 = WFLogForCategory(0);
  v17 = OSLogForWFLogLevel(4uLL);
  if (WFCurrentLogLevel() >= 4 && v16)
  {
    v18 = v16;
    if (os_log_type_enabled(v18, v17))
    {
      v19 = [(WFOtherNetworkViewController *)self context];
      v20 = [(WFOtherNetworkViewController *)self context];
      v21 = [v20 validateCredentials];
      v30 = 136315650;
      v31 = "[WFOtherNetworkViewController _updateJoinable]";
      v32 = 2112;
      *v33 = v19;
      *&v33[8] = 1024;
      *v34 = v21;
      _os_log_impl(&dword_273FB9000, v18, v17, "%s: self.context %@ [self.context validateCredentials] %d", &v30, 0x1Cu);
    }
  }

  if (v15)
  {
    if (![(NSString *)self->_password length])
    {
      goto LABEL_50;
    }

    v22 = [(WFOtherNetworkViewController *)self context];
    v23 = [v22 validateCredentials];

    if ((v23 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((!v8 || [(WFOtherNetworkViewController *)self TLSIdentity]) && (!v9 || ([(WFOtherNetworkViewController *)self WAPIIdentity], (v24 = objc_claimAutoreleasedReturnValue()) != 0) && (v25 = v24, [(WFOtherNetworkViewController *)self WAPIRootCertificate], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26)))
  {
    v27 = self;
    v28 = 1;
  }

  else
  {
LABEL_50:
    v27 = self;
    v28 = 0;
  }

  [(WFOtherNetworkViewController *)v27 setJoinable:v28];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)setBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_backgroundColor, a3);
  v5 = a3;
  backgroundColor = self->_backgroundColor;
  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setBackgroundColor:backgroundColor];
}

- (void)setJoining:(BOOL)a3
{
  v3 = a3;
  self->_joining = a3;
  v5 = [(OBBaseWelcomeController *)self navigationItem];
  v6 = [v5 leftBarButtonItem];
  [v6 setEnabled:!v3];

  joining = self->_joining;
  v8 = [(OBBaseWelcomeController *)self navigationItem];
  v9 = [v8 rightBarButtonItem];
  [v9 setEnabled:!joining];

  v10 = self->_joining;
  v11 = [(WFOtherNetworkViewController *)self nameCell];
  v12 = [v11 textField];
  [v12 setUserInteractionEnabled:!v10];

  v13 = self->_joining;
  v14 = [(WFOtherNetworkViewController *)self passwordCell];
  v15 = [v14 textField];
  [v15 setUserInteractionEnabled:!v13];

  v16 = self->_joining;
  v17 = [(WFOtherNetworkViewController *)self usernameCell];
  v18 = [v17 textField];
  [v18 setUserInteractionEnabled:!v16];

  if (self->_joining)
  {
    v30 = [(WFOtherNetworkViewController *)self headerView];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"kWFLocOtherNetworksJoiningTitleOBK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    [v30 setTitle:v20];
  }

  else
  {
    style = self->_style;
    v22 = [(WFOtherNetworkViewController *)self headerView];
    if (style == 3)
    {
      IsChinaDevice = WFCapabilityIsChinaDevice(self->_deviceCapability);
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = v24;
      if (IsChinaDevice)
      {
        v26 = @"kWFLocOtherNetworksTitleOBKCH";
      }

      else
      {
        v26 = @"kWFLocOtherNetworksTitleOBK";
      }

      v27 = [v24 localizedStringForKey:v26 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      [v22 setTitle:v27];
    }

    else
    {
      v28 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v25 localizedStringForKey:@"kWFLocOtherNetworksPasswordTitleOBK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v29 = [v28 stringWithFormat:v27, self->_networkName];
      [v22 setTitle:v29];
    }

    [(WFOtherNetworkViewController *)self _updateJoinable];
  }
}

- (void)setTLSIdentities:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_TLSIdentities, a3);
  if ([v6 count] && self->_profileMode == -1)
  {
    self->_profileMode = 0;
  }

  [(WFOtherNetworkViewController *)self _updateSections];
  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 reloadData];
}

- (void)setTLSIdentity:(__SecIdentity *)a3
{
  if (self->_TLSIdentity != a3)
  {
    self->_TLSIdentity = a3;
    [(WFOtherNetworkViewController *)self _updateJoinable];
  }
}

- (void)setWAPIIdentity:(id)a3
{
  if (self->_WAPIIdentity != a3)
  {
    self->_WAPIIdentity = a3;
    [(WFOtherNetworkViewController *)self _updateJoinable];
    [(WFOtherNetworkViewController *)self _updateSections];
    v5 = [(OBTableWelcomeController *)self tableView];
    [v5 reloadData];
  }
}

- (void)setWAPIRootCertificate:(id)a3
{
  if (self->_WAPIRootCertificate != a3)
  {
    self->_WAPIRootCertificate = a3;
    [(WFOtherNetworkViewController *)self _updateJoinable];
    [(WFOtherNetworkViewController *)self _updateSections];
    v5 = [(OBTableWelcomeController *)self tableView];
    [v5 reloadData];
  }
}

- (void)setSecurityMode:(int64_t)a3
{
  self->_overrideDefaultSecurity = 0;
  if (self->_securityMode != a3)
  {
    self->_securityMode = a3;
    [(WFOtherNetworkViewController *)self _updateSections];
    v5 = [(OBTableWelcomeController *)self tableView];
    [v5 reloadData];
  }
}

- (void)setProfileMode:(int64_t)a3
{
  if (self->_profileMode != a3)
  {
    self->_profileMode = a3;
    [(WFOtherNetworkViewController *)self _updateSections];
    v5 = [(OBTableWelcomeController *)self tableView];
    [v5 reloadData];
  }
}

- (void)setNetworkName:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_networkName] & 1) == 0)
  {
    objc_storeStrong(&self->_networkName, a3);
    [(WFOtherNetworkViewController *)self _updateJoinable];
  }
}

- (void)setUsername:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToString:self->_username] & 1) == 0)
  {
    objc_storeStrong(&self->_username, a3);
    [(WFOtherNetworkViewController *)self _updateJoinable];
  }
}

- (void)receiveSharedPassword:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
  {
    *buf = 136315394;
    v15 = "[WFOtherNetworkViewController receiveSharedPassword:]";
    v16 = 2048;
    v17 = 0x3FD999999999999ALL;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: entering password with delay %f", buf, 0x16u);
  }

  if (![(WFOtherNetworkViewController *)self style])
  {
    [(WFOtherNetworkViewController *)self setPassword:v4];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"********"];
    v8 = [(WFOtherNetworkViewController *)self passwordCell];
    v9 = [v8 textField];
    [v9 setText:v7];

    [(WFOtherNetworkViewController *)self setJoinable:1];
    objc_initWeak(buf, self);
    v10 = dispatch_time(0, 400000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__WFOtherNetworkViewController_receiveSharedPassword___block_invoke;
    block[3] = &unk_279EC59C0;
    objc_copyWeak(&v13, buf);
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __54__WFOtherNetworkViewController_receiveSharedPassword___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _join:WeakRetained];
}

- (id)_sectionsForStyle:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_15;
      }

      v5 = [(WFOtherNetworkViewController *)self _canShowModes];
      v6 = MEMORY[0x277CBEB70];
      if (v5)
      {
        v7 = &unk_2883226F0;
LABEL_12:
        v9 = v7;
        v10 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v6 = MEMORY[0x277CBEB70];
    }

    v9 = 0;
LABEL_13:
    [v6 orderedSetWithObjects:{&unk_2883226D8, v9, v10}];
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    v6 = MEMORY[0x277CBEB70];
    v7 = &unk_288322708;
    goto LABEL_12;
  }

  if (a3 != 3)
  {
    goto LABEL_15;
  }

  [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2883226C0, &unk_2883226D8, 0}];
  v4 = LABEL_14:;
LABEL_15:

  return v4;
}

- (id)_securityRowsForStyle:(int64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_288322720, 0, v8}];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_15;
      }

      [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2883226C0, 0, v8}];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_15;
    }

    if ([(WFOtherNetworkViewController *)self profileMode]== 1 || ![(WFOtherNetworkViewController *)self passwordRequired])
    {
      v5 = MEMORY[0x277CBEB70];
      v6 = &unk_288322708;
    }

    else
    {
      v5 = MEMORY[0x277CBEB70];
      v6 = &unk_2883226F0;
    }

    [v5 orderedSetWithObjects:{&unk_2883226D8, v6, 0}];
  }

  else
  {
    [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2883226F0, 0, v8}];
  }
  v4 = ;
LABEL_15:

  return v4;
}

- (void)_updateSections
{
  v3 = [(WFOtherNetworkViewController *)self _sectionsForStyle:[(WFOtherNetworkViewController *)self style]];
  v13 = [v3 mutableCopy];

  if ([(WFOtherNetworkViewController *)self style]!= 3)
  {
    if ([(WFOtherNetworkViewController *)self style]!= 1)
    {
      goto LABEL_11;
    }

    v6 = [(WFOtherNetworkViewController *)self _securityRowsForStyle:[(WFOtherNetworkViewController *)self style]];
    goto LABEL_10;
  }

  securityMode = self->_securityMode;
  if (securityMode <= 9 && ((1 << securityMode) & 0x34E) != 0)
  {
    [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2883226C0, &unk_2883226F0, 0, v12}];
    v6 = LABEL_7:;
LABEL_10:
    v7 = v6;
    [(WFOtherNetworkViewController *)self setSecurityRows:v6];

    goto LABEL_11;
  }

  if ((securityMode & 0xFFFFFFFFFFFFFFFELL) != 4 && [(WFOtherNetworkViewController *)self securityMode]!= 10)
  {
    v8 = MEMORY[0x277CBEB70];
    if (securityMode != 7)
    {
      [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2883226C0, 0, v11, v12}];
      goto LABEL_7;
    }

    v9 = &unk_288322738;
    v10 = &unk_288322720;
    goto LABEL_23;
  }

  if (![(WFOtherNetworkViewController *)self _canShowModes])
  {
    v8 = MEMORY[0x277CBEB70];
    v9 = &unk_2883226F0;
    goto LABEL_22;
  }

  if (([v13 containsObject:&unk_2883226F0] & 1) == 0)
  {
    [v13 addObject:&unk_2883226F0];
  }

  if ([(WFOtherNetworkViewController *)self profileMode]== 1)
  {
    v8 = MEMORY[0x277CBEB70];
    v9 = &unk_288322708;
LABEL_22:
    v10 = &unk_2883226D8;
LABEL_23:
    [v8 orderedSetWithObjects:{&unk_2883226C0, v10, v9, 0}];
    goto LABEL_7;
  }

  if (![(WFOtherNetworkViewController *)self profileMode])
  {
    [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2883226C0, &unk_2883226D8, &unk_2883226F0, 0}];
    goto LABEL_7;
  }

LABEL_11:
  [(WFOtherNetworkViewController *)self setSections:v13];
}

- (void)_setFirstResponderAfterCell:(id)a3
{
  v19 = a3;
  if ([(WFOtherNetworkViewController *)self _returnKeyType]== 3)
  {
    goto LABEL_2;
  }

  v5 = [(WFOtherNetworkViewController *)self nameCell];

  if (v5 == v19)
  {
    v11 = [(WFOtherNetworkViewController *)self securityRows];
    if ([v11 containsObject:&unk_2883226D8])
    {
      v12 = [(WFOtherNetworkViewController *)self usernameCell];

      if (v12)
      {
LABEL_12:
        v13 = [(WFOtherNetworkViewController *)self usernameCell];
LABEL_22:
        v16 = v13;
        [(WFOtherNetworkViewController *)self _scrollToCellAndBecomeFirstResponder:v13];
        goto LABEL_23;
      }
    }

    else
    {
    }

    v16 = [(WFOtherNetworkViewController *)self securityRows];
    if (([v16 containsObject:&unk_2883226F0] & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }

    v17 = [(WFOtherNetworkViewController *)self passwordCell];

    v8 = v19;
    if (!v17)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v6 = [(WFOtherNetworkViewController *)self usernameCell];

  if (v6 == v19)
  {
    v14 = [(WFOtherNetworkViewController *)self securityRows];
    if (([v14 containsObject:&unk_2883226F0] & 1) == 0)
    {

      goto LABEL_21;
    }

    v15 = [(WFOtherNetworkViewController *)self passwordCell];

    if (!v15)
    {
      goto LABEL_21;
    }

LABEL_19:
    v13 = [(WFOtherNetworkViewController *)self passwordCell];
    goto LABEL_22;
  }

  v7 = [(WFOtherNetworkViewController *)self passwordCell];

  v4 = v19;
  v8 = v19;
  if (v7 != v19)
  {
    goto LABEL_25;
  }

  if ([(WFOtherNetworkViewController *)self style])
  {
    v9 = [(WFOtherNetworkViewController *)self sections];
    if (([v9 containsObject:&unk_2883226C0] & 1) == 0)
    {

LABEL_31:
      v16 = [(WFOtherNetworkViewController *)self securityRows];
      if (([v16 containsObject:&unk_2883226D8] & 1) == 0)
      {
        goto LABEL_23;
      }

      v18 = [(WFOtherNetworkViewController *)self usernameCell];

      v8 = v19;
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    v10 = [(WFOtherNetworkViewController *)self nameCell];

    if (!v10)
    {
      goto LABEL_31;
    }

LABEL_21:
    v13 = [(WFOtherNetworkViewController *)self nameCell];
    goto LABEL_22;
  }

  v4 = [(WFOtherNetworkViewController *)self joinable];
  v8 = v19;
  if (v4)
  {
LABEL_2:
    v4 = [(WFOtherNetworkViewController *)self _join:self];
LABEL_24:
    v8 = v19;
  }

LABEL_25:

  MEMORY[0x2821F96F8](v4, v8);
}

- (void)_setTLSIdentity:(id)a3 specifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  [(WFOtherNetworkViewController *)self setTLSIdentity:a3, a4];
  v5 = [(WFOtherNetworkViewController *)self sections];
  v6 = [v5 indexOfObject:&unk_2883226D8];

  v7 = [(WFOtherNetworkViewController *)self securityRows];
  v8 = [v7 indexOfObject:&unk_288322708];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v13))
    {
      *buf = 136315650;
      v16 = "[WFOtherNetworkViewController _setTLSIdentity:specifier:]";
      v17 = 2050;
      v18 = v6;
      v19 = 2050;
      v20 = v8;
      _os_log_impl(&dword_273FB9000, v9, v13, "%s- Unable to find section and row for Identity cell (section %{public}lu, row %{public}lu)", buf, 0x20u);
    }
  }

  else
  {
    v9 = [(OBTableWelcomeController *)self tableView];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v6];
    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v9 reloadRowsAtIndexPaths:v11 withRowAnimation:5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setWAPIRootCertificate:(id)a3 specifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  [(WFOtherNetworkViewController *)self setWAPIRootCertificate:a3, a4];
  v5 = [(WFOtherNetworkViewController *)self sections];
  v6 = [v5 indexOfObject:&unk_2883226D8];

  v7 = [(WFOtherNetworkViewController *)self securityRows];
  v8 = [v7 indexOfObject:&unk_288322720];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v9 && os_log_type_enabled(v9, v13))
    {
      *buf = 136315650;
      v16 = "[WFOtherNetworkViewController _setWAPIRootCertificate:specifier:]";
      v17 = 2050;
      v18 = v6;
      v19 = 2050;
      v20 = v8;
      _os_log_impl(&dword_273FB9000, v9, v13, "%s- Unable to find section and row for Identity cell (section %{public}lu, row %{public}lu)", buf, 0x20u);
    }
  }

  else
  {
    v9 = [(OBTableWelcomeController *)self tableView];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v6];
    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [v9 reloadRowsAtIndexPaths:v11 withRowAnimation:5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setWAPIIdentity:(id)a3 specifier:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  [(WFOtherNetworkViewController *)self setWAPIIdentity:a3, a4];
  v5 = [(WFOtherNetworkViewController *)self sections];
  v6 = [v5 indexOfObject:&unk_2883226D8];

  v7 = [(WFOtherNetworkViewController *)self securityRows];
  v8 = [v7 indexOfObject:&unk_288322738];

  if ([(WFOtherNetworkViewController *)self style]== 2)
  {
    v9 = [(WFOtherNetworkViewController *)self sections];
    v6 = [v9 indexOfObject:&unk_288322708];

    v8 = 0;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v10 && os_log_type_enabled(v10, v14))
    {
      *buf = 136315650;
      v17 = "[WFOtherNetworkViewController _setWAPIIdentity:specifier:]";
      v18 = 2050;
      v19 = v6;
      v20 = 2050;
      v21 = v8;
      _os_log_impl(&dword_273FB9000, v10, v14, "%s- Unable to find section and row for Identity cell (section %{public}lu, row %{public}lu)", buf, 0x20u);
    }
  }

  else
  {
    v10 = [(OBTableWelcomeController *)self tableView];
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v6];
    v15 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v10 reloadRowsAtIndexPaths:v12 withRowAnimation:5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v11 = a3;
  v4 = [(WFOtherNetworkViewController *)self nameCell];
  v5 = [v4 textField];

  if (v5 == v11)
  {
    v10 = [(WFOtherNetworkViewController *)self nameCell];
  }

  else
  {
    v6 = [(WFOtherNetworkViewController *)self usernameCell];
    v7 = [v6 textField];

    if (v7 == v11)
    {
      v10 = [(WFOtherNetworkViewController *)self usernameCell];
    }

    else
    {
      v8 = [(WFOtherNetworkViewController *)self passwordCell];
      v9 = [v8 textField];

      if (v9 != v11)
      {
        goto LABEL_8;
      }

      v10 = [(WFOtherNetworkViewController *)self passwordCell];
    }
  }

  self->_mostRecentFirstResponder = v10;
LABEL_8:
  [v11 setReturnKeyType:{-[WFOtherNetworkViewController _returnKeyType](self, "_returnKeyType")}];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(WFOtherNetworkViewController *)self joining])
  {
    v11 = [(WFOtherNetworkViewController *)self sections];
    v12 = [v11 objectAtIndex:{objc_msgSend(v7, "section")}];
    v13 = [v12 integerValue];

    switch(v13)
    {
      case 3:
        goto LABEL_14;
      case 2:
        v18 = [(WFOtherNetworkViewController *)self profileModeTitlesValueVC];

        if (v18)
        {
          v19 = [(WFOtherNetworkViewController *)self profileModeTitlesValueVC];
        }

        else
        {
          v29 = [WFValueListViewController alloc];
          v30 = [(WFOtherNetworkViewController *)self _availableProfileModeTitles];
          v19 = [(WFValueListViewController *)v29 initWithTitles:v30 switchTitle:0];

          v31 = [(WFOtherNetworkViewController *)self _profileModeStringFromType:self->_profileMode];
          [(WFValueListViewController *)v19 setSelectedTitle:v31];

          v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v33 = [v32 localizedStringForKey:@"kWFLocOtherNetworkSecurityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          [(WFValueListViewController *)v19 setTitle:v33];

          objc_initWeak(location, self);
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __66__WFOtherNetworkViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
          v82[3] = &unk_279EC5D48;
          v82[4] = self;
          objc_copyWeak(&v83, location);
          [(WFValueListViewController *)v19 setCompletionHandler:v82];
          v34 = [(OBBaseWelcomeController *)self navigationItem];
          v35 = [v34 prompt];
          v36 = [(WFValueListViewController *)v19 navigationItem];
          [v36 setPrompt:v35];

          [(WFOtherNetworkViewController *)self setProfileModeTitlesValueVC:v19];
          objc_destroyWeak(&v83);
          objc_destroyWeak(location);
        }

        self->_shouldCancelContextWhenViewDisappear = 0;
        v37 = [(WFOtherNetworkViewController *)self navigationController];
        [v37 pushViewController:v19 animated:1];

        goto LABEL_18;
      case 1:
        v14 = [(WFOtherNetworkViewController *)self securityRows];
        v15 = [v14 objectAtIndex:{objc_msgSend(v7, "row")}];
        v16 = [v15 integerValue];

        if (v16 <= 2)
        {
          if ((v16 - 1) >= 2)
          {
            if (!v16)
            {
              v38 = [(WFOtherNetworkViewController *)self securityTitlesValueVC];

              if (v38)
              {
                v39 = [(WFOtherNetworkViewController *)self securityTitlesValueVC];
              }

              else
              {
                IsChinaDevice = WFCapabilityIsChinaDevice([(WFOtherNetworkViewController *)self deviceCapability]);
                v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v44 = v43;
                v78 = IsChinaDevice;
                if (IsChinaDevice)
                {
                  v45 = @"KWFLocSettingRandomMACSwitchChinaTitle";
                }

                else
                {
                  v45 = @"KWFLocSettingRandomMACSwitchTitle";
                }

                v79 = [v43 localizedStringForKey:v45 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

                v80 = MEMORY[0x277CBEA60];
                v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v47 = [v46 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v49 = [v48 localizedStringForKey:@"kWFLocRandomMACStaticOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v51 = [v50 localizedStringForKey:@"kWFLocRandomMACRotatingOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                v81 = [v80 arrayWithObjects:{v47, v49, v51, 0}];

                v52 = 0x279EC4000;
                if (!self->_privateAddressModeTitlesValueVC)
                {
                  v76 = MEMORY[0x277CBEA60];
                  v77 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v75 = [v77 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                  v53 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v54 = [v53 localizedStringForKey:@"kWFLocRandomMACStaticOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                  v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v56 = [v55 localizedStringForKey:@"kWFLocRandomMACRotatingOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                  v57 = [v76 arrayWithObjects:{v75, v54, v56, 0}];

                  v52 = 0x279EC4000uLL;
                  v58 = [[WFValueListViewController alloc] initWithTitles:v57 switchTitle:0];
                  privateAddressModeTitlesValueVC = self->_privateAddressModeTitlesValueVC;
                  self->_privateAddressModeTitlesValueVC = v58;

                  v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v61 = v60;
                  if (v78)
                  {
                    v62 = @"KWFLocSettingRandomMACSwitchChinaTitle";
                  }

                  else
                  {
                    v62 = @"KWFLocSettingRandomMACSwitchTitle";
                  }

                  v63 = [v60 localizedStringForKey:v62 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                  v64 = [(WFValueListViewController *)self->_privateAddressModeTitlesValueVC navigationItem];
                  [v64 setTitle:v63];
                }

                v65 = [(WFOtherNetworkViewController *)self _selectedPrivateModeForOption:self->_privateAddressMode];
                [(WFValueListViewController *)self->_privateAddressModeTitlesValueVC setSelectedTitle:v65];

                v66 = objc_alloc(*(v52 + 2760));
                v67 = [(WFOtherNetworkViewController *)self _availableSecurityTitles];
                v39 = [v66 initWithTitles:v67 switchTitle:0 sublist:self->_privateAddressModeTitlesValueVC];

                v68 = [(WFOtherNetworkViewController *)self _securityStringFromType:self->_securityMode];
                [v39 setSelectedTitle:v68];

                v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v70 = [v69 localizedStringForKey:@"kWFLocOtherNetworkSecurityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                [v39 setTitle:v70];

                objc_initWeak(location, self);
                v84[0] = MEMORY[0x277D85DD0];
                v84[1] = 3221225472;
                v84[2] = __66__WFOtherNetworkViewController_tableView_didSelectRowAtIndexPath___block_invoke;
                v84[3] = &unk_279EC5D20;
                objc_copyWeak(&v85, location);
                v84[4] = self;
                [v39 setCompletionHandler:v84];
                v71 = [(OBBaseWelcomeController *)self navigationItem];
                v72 = [v71 prompt];
                v73 = [v39 navigationItem];
                [v73 setPrompt:v72];

                [(WFOtherNetworkViewController *)self setSecurityTitlesValueVC:v39];
                objc_destroyWeak(&v85);
                objc_destroyWeak(location);
              }

              self->_shouldCancelContextWhenViewDisappear = 0;
              v74 = [(WFOtherNetworkViewController *)self navigationController];
              [v74 pushViewController:v39 animated:1];
            }
          }

          else
          {
            v17 = [v6 cellForRowAtIndexPath:v7];
            [v17 becomeFirstResponder];
          }

          break;
        }

        switch(v16)
        {
          case 3:
            v19 = objc_alloc_init(WFManagedConfigurationUIClassFromString(@"MCCertificatePickerController"));
            v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v40 localizedStringForKey:@"kWFLocOtherNetworkIdentityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

            v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:sel__setTLSIdentity_specifier_ get:sel__getTLSIdentity_ detail:0 cell:-1 edit:0];
            v23 = [(WFOtherNetworkViewController *)self TLSIdentities];
            goto LABEL_15;
          case 4:
            v19 = objc_alloc_init(WFManagedConfigurationUIClassFromString(@"MCCertificatePickerController"));
            v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v41 localizedStringForKey:@"kWFLocOtherNetworkRootCertWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

            v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:sel__setWAPIRootCertificate_specifier_ get:sel__getWAPIRootCertificate_ detail:0 cell:-1 edit:0];
            v23 = [(WFOtherNetworkViewController *)self WAPIRootCertificates];
            goto LABEL_15;
          case 5:
LABEL_14:
            v19 = objc_alloc_init(WFManagedConfigurationUIClassFromString(@"MCCertificatePickerController"));
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v20 localizedStringForKey:@"kWFLocOtherNetworkIdentityWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

            v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:sel__setWAPIIdentity_specifier_ get:sel__getWAPIIdentity_ detail:0 cell:-1 edit:0];
            v23 = [(WFOtherNetworkViewController *)self WAPIIdentities];
LABEL_15:
            v24 = v23;
            [v22 setValues:v23];

            [(WFValueListViewController *)v19 setSpecifier:v22];
            v25 = [(OBBaseWelcomeController *)self navigationItem];
            v26 = [v25 prompt];
            v27 = [(WFValueListViewController *)v19 navigationItem];
            [v27 setPrompt:v26];

            self->_shouldCancelContextWhenViewDisappear = 0;
            v28 = [(WFOtherNetworkViewController *)self navigationController];
            [v28 pushViewController:v19 animated:1];

LABEL_18:
            break;
        }

        break;
    }

    v8 = v6;
    v9 = v7;
    v10 = 1;
    goto LABEL_20;
  }

  v8 = v6;
  v9 = v7;
  v10 = 0;
LABEL_20:
  [v8 deselectRowAtIndexPath:v9 animated:v10];
}

void __66__WFOtherNetworkViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__WFOtherNetworkViewController_tableView_didSelectRowAtIndexPath___block_invoke_2;
  block[3] = &unk_279EC57B8;
  objc_copyWeak(&v9, (a1 + 40));
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __66__WFOtherNetworkViewController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained _securityModeFromTitle:*(a1 + 32)];
  v3 = v2;
  v4 = 2;
  if (v2 == 10)
  {
    v4 = 1;
  }

  if (!v2)
  {
    v4 = 0;
  }

  if ((v2 - 4) >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  [WeakRetained setFirstResponderCell:v5];
  [WeakRetained setSecurityMode:v3];
  [WeakRetained _updateJoinable];
  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = [*(*(a1 + 40) + 1536) selectedTitle];
  v8 = [v6 _selectedPrivateModeForString:v7];

  v9 = objc_loadWeakRetained((a1 + 48));
  [v9 setPrivateAddressMode:v8];
}

void __66__WFOtherNetworkViewController_tableView_didSelectRowAtIndexPath___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _profileModeFromTitle:a2];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setProfileMode:v3];
  [WeakRetained _updateJoinable];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [(WFOtherNetworkViewController *)self sections];
  v10 = [v9 objectAtIndex:{objc_msgSend(v7, "section")}];
  v11 = [v10 integerValue];

  v12 = 0;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
      v56 = [v8 localizedStringForKey:@"kWFLocOtherNetworkModeTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v57 = [v12 textLabel];
      [v57 setText:v56];

      if ([(WFOtherNetworkViewController *)self profileMode])
      {
        if ([(WFOtherNetworkViewController *)self profileMode]!= 1)
        {
LABEL_39:
          [v12 setAccessoryType:1];
          goto LABEL_40;
        }

        v58 = @"kWFLocOtherNetworkModeValueEAPTLS";
      }

      else
      {
        v58 = @"kWFLocOtherNetworkModeValueAuto";
      }

      v59 = [v8 localizedStringForKey:v58 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
LABEL_38:
      v60 = v59;
      v61 = [v12 detailTextLabel];
      [v61 setText:v60];

      goto LABEL_39;
    }

    if (v11 != 3)
    {
      goto LABEL_40;
    }

    goto LABEL_15;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_40;
    }

    v13 = [(WFOtherNetworkViewController *)self securityRows];
    v14 = [v13 objectAtIndex:{objc_msgSend(v7, "row")}];
    v15 = [v14 integerValue];

    v12 = 0;
    if (v15 <= 2)
    {
      if (v15)
      {
        if (v15 != 1)
        {
          if (v15 == 2)
          {
            objc_initWeak(&location, self);
            v16 = [(WFOtherNetworkViewController *)self passwordCell];

            if (!v16)
            {
              v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v18 = [v17 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
              v19 = [v18 objectAtIndex:0];

              v20 = [v8 localizedStringForKey:@"kWFLocOtherNetworkPasswordTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
              v21 = [v19 label];
              [v21 setText:v20];

              v22 = [v19 textField];
              [v22 setSecureTextEntry:1];

              v23 = [v19 textField];
              [v23 setDelegate:self];

              v24 = [v19 textField];
              [v24 setTextContentType:*MEMORY[0x277D77030]];

              v25 = [MEMORY[0x277D75418] currentDevice];
              v26 = [v25 userInterfaceIdiom];

              v27 = 15.0;
              if ((v26 & 0xFFFFFFFFFFFFFFFBLL) != 1)
              {
                v27 = 20.0;
              }

              [v19 setLayoutMargins:{0.0, v27, 0.0, 0.0}];
              v98[0] = MEMORY[0x277D85DD0];
              v98[1] = 3221225472;
              v98[2] = __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_5;
              v98[3] = &unk_279EC5418;
              objc_copyWeak(&v99, &location);
              [v19 setTextChangeHandler:v98];
              v96[0] = MEMORY[0x277D85DD0];
              v96[1] = 3221225472;
              v96[2] = __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_6;
              v96[3] = &unk_279EC5D70;
              objc_copyWeak(&v97, &location);
              [v19 setReturnKeyHandler:v96];
              [(WFOtherNetworkViewController *)self setPasswordCell:v19];
              objc_destroyWeak(&v97);
              objc_destroyWeak(&v99);
            }

            v12 = [(WFOtherNetworkViewController *)self passwordCell];
            v28 = [(WFOtherNetworkViewController *)self _returnKeyType];
            v29 = [(WFOtherNetworkViewController *)self passwordCell];
            v30 = [v29 textField];
            [v30 setReturnKeyType:v28];

            objc_destroyWeak(&location);
          }

          goto LABEL_40;
        }

        v73 = [(WFOtherNetworkViewController *)self usernameCell];

        if (!v73)
        {
          objc_initWeak(&location, self);
          v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v75 = [v74 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
          v76 = [v75 objectAtIndex:0];

          v77 = [v8 localizedStringForKey:@"kWFLocOtherNetworkUsernameTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          v78 = [v76 label];
          [v78 setText:v77];

          v79 = [(WFOtherNetworkViewController *)self style];
          v80 = [v76 textField];
          [v80 setReturnKeyType:4 * (v79 != 0)];

          v81 = [v76 textField];
          [v81 setDelegate:self];

          v82 = [v76 textField];
          [v82 setTextContentType:*MEMORY[0x277D77090]];

          v83 = [MEMORY[0x277D75418] currentDevice];
          v84 = [v83 userInterfaceIdiom];

          v85 = 15.0;
          if ((v84 & 0xFFFFFFFFFFFFFFFBLL) != 1)
          {
            v85 = 20.0;
          }

          [v76 setLayoutMargins:{0.0, v85, 0.0, 0.0}];
          v102[0] = MEMORY[0x277D85DD0];
          v102[1] = 3221225472;
          v102[2] = __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_3;
          v102[3] = &unk_279EC5418;
          objc_copyWeak(&v103, &location);
          [v76 setTextChangeHandler:v102];
          v100[0] = MEMORY[0x277D85DD0];
          v100[1] = 3221225472;
          v100[2] = __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_4;
          v100[3] = &unk_279EC5D70;
          objc_copyWeak(&v101, &location);
          [v76 setReturnKeyHandler:v100];
          [(WFOtherNetworkViewController *)self setUsernameCell:v76];
          v86 = [(WFOtherNetworkViewController *)self username];

          if (v86)
          {
            v87 = [(WFOtherNetworkViewController *)self username];
            v88 = [v76 textField];
            [v88 setText:v87];
          }

          objc_destroyWeak(&v101);
          objc_destroyWeak(&v103);

          objc_destroyWeak(&location);
        }

        v12 = [(WFOtherNetworkViewController *)self usernameCell];
        v89 = [(WFOtherNetworkViewController *)self _returnKeyType];
        v37 = [(WFOtherNetworkViewController *)self usernameCell];
        v90 = [v37 textField];
        [v90 setReturnKeyType:v89];

LABEL_21:
        goto LABEL_40;
      }

      v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFOtherNetworkCellGenericIdentifier"];
      [v12 setPreservesSuperviewLayoutMargins:0];
      v63 = [MEMORY[0x277D75418] currentDevice];
      v64 = [v63 userInterfaceIdiom];

      v65 = 15.0;
      if ((v64 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v65 = 20.0;
      }

      [v12 setLayoutMargins:{0.0, v65, 0.0, 0.0}];
      v66 = [v8 localizedStringForKey:@"kWFLocOtherNetworkSecurityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v67 = [v12 textLabel];
      [v67 setText:v66];

      v59 = [(WFOtherNetworkViewController *)self _securityStringFromType:self->_securityMode];
      goto LABEL_38;
    }

    if (v15 == 3)
    {
      v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFOtherNetworkCellGenericIdentifier"];
      [v12 setPreservesSuperviewLayoutMargins:0];
      v68 = [MEMORY[0x277D75418] currentDevice];
      v69 = [v68 userInterfaceIdiom];

      v70 = 15.0;
      if ((v69 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v70 = 20.0;
      }

      [v12 setLayoutMargins:{0.0, v70, 0.0, 0.0}];
      v71 = [v8 localizedStringForKey:@"kWFLocOtherNetworkIdentityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v72 = [v12 textLabel];
      [v72 setText:v71];

      v36 = [(WFOtherNetworkViewController *)self _TLSIdentityDescription];
      goto LABEL_18;
    }

    if (v15 == 4)
    {
      v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFOtherNetworkCellGenericIdentifier"];
      [v12 setPreservesSuperviewLayoutMargins:0];
      v91 = [MEMORY[0x277D75418] currentDevice];
      v92 = [v91 userInterfaceIdiom];

      v93 = 15.0;
      if ((v92 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v93 = 20.0;
      }

      [v12 setLayoutMargins:{0.0, v93, 0.0, 0.0}];
      v94 = [v8 localizedStringForKey:@"kWFLocOtherNetworkRootCertWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v95 = [v12 textLabel];
      [v95 setText:v94];

      v36 = [(WFOtherNetworkViewController *)self _WAPIRootCertificateDescription];
      goto LABEL_18;
    }

    if (v15 != 5)
    {
      goto LABEL_40;
    }

LABEL_15:
    v12 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFOtherNetworkCellGenericIdentifier"];
    [v12 setPreservesSuperviewLayoutMargins:0];
    v31 = [MEMORY[0x277D75418] currentDevice];
    v32 = [v31 userInterfaceIdiom];

    v33 = 15.0;
    if ((v32 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v33 = 20.0;
    }

    [v12 setLayoutMargins:{0.0, v33, 0.0, 0.0}];
    v34 = [v8 localizedStringForKey:@"kWFLocOtherNetworkIdentityWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v35 = [v12 textLabel];
    [v35 setText:v34];

    v36 = [(WFOtherNetworkViewController *)self _WAPIIdentityDescription];
LABEL_18:
    v37 = v36;
    if (v36)
    {
      v38 = [v12 detailTextLabel];
      [v38 setText:v37];
    }

    [v12 setAccessoryType:1];
    goto LABEL_21;
  }

  v39 = [(WFOtherNetworkViewController *)self nameCell];

  if (!v39)
  {
    objc_initWeak(&location, self);
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v40 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v42 = [v41 objectAtIndex:0];

    v43 = [v8 localizedStringForKey:@"kWFLocOtherNetworkNameTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v44 = [v42 label];
    [v44 setText:v43];

    v45 = [v8 localizedStringForKey:@"kWFLocOtherNetworkNamePlaceholder" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v46 = [v42 textField];
    [v46 setPlaceholder:v45];

    v47 = [v42 textField];
    [v47 setDelegate:self];

    v48 = [MEMORY[0x277D75418] currentDevice];
    v49 = [v48 userInterfaceIdiom];

    v50 = 15.0;
    if ((v49 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v50 = 20.0;
    }

    [v42 setLayoutMargins:{0.0, v50, 0.0, 0.0}];
    v106[0] = MEMORY[0x277D85DD0];
    v106[1] = 3221225472;
    v106[2] = __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v106[3] = &unk_279EC5D70;
    objc_copyWeak(&v107, &location);
    [v42 setReturnKeyHandler:v106];
    networkName = self->_networkName;
    v52 = [v42 textField];
    [v52 setText:networkName];

    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v104[3] = &unk_279EC5418;
    objc_copyWeak(&v105, &location);
    [v42 setTextChangeHandler:v104];
    [(WFOtherNetworkViewController *)self setNameCell:v42];
    if (!self->_mostRecentFirstResponder)
    {
      self->_mostRecentFirstResponder = [(WFOtherNetworkViewController *)self nameCell];
    }

    objc_destroyWeak(&v105);
    objc_destroyWeak(&v107);

    objc_destroyWeak(&location);
  }

  v53 = [(WFOtherNetworkViewController *)self _returnKeyType];
  v54 = [(WFOtherNetworkViewController *)self nameCell];
  v55 = [v54 textField];
  [v55 setReturnKeyType:v53];

  v12 = [(WFOtherNetworkViewController *)self nameCell];
LABEL_40:

  return v12;
}

void __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

void __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNetworkName:v3];
}

void __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setUsername:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _updateJoinable];
}

void __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

void __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setPassword:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _updateJoinable];
}

void __64__WFOtherNetworkViewController_tableView_cellForRowAtIndexPath___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setFirstResponderAfterCell:v3];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v15 = a4;
  if ([(WFOtherNetworkViewController *)self firstResponderCell]!= -1)
  {
    v6 = [(WFOtherNetworkViewController *)self nameCell];
    if (v6 == v15)
    {
      v7 = [(WFOtherNetworkViewController *)self firstResponderCell];

      if (!v7)
      {
        v10 = [(WFOtherNetworkViewController *)self nameCell];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v8 = [(WFOtherNetworkViewController *)self usernameCell];
    if (v8 == v15)
    {
      v9 = [(WFOtherNetworkViewController *)self firstResponderCell];

      if (v9 == 1)
      {
        v10 = [(WFOtherNetworkViewController *)self usernameCell];
LABEL_14:
        v13 = v10;
        v14 = [v10 textField];
        [v14 becomeFirstResponder];

        [(WFOtherNetworkViewController *)self setFirstResponderCell:-1];
        goto LABEL_15;
      }
    }

    else
    {
    }

    v11 = [(WFOtherNetworkViewController *)self passwordCell];
    if (v11 != v15)
    {

      goto LABEL_15;
    }

    v12 = [(WFOtherNetworkViewController *)self firstResponderCell];

    if (v12 == 2)
    {
      v10 = [(WFOtherNetworkViewController *)self passwordCell];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WFOtherNetworkViewController *)self sections];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(WFOtherNetworkViewController *)self sections];
  v7 = [v6 objectAtIndex:a4];
  v8 = [v7 integerValue];

  result = 0;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v10 = [(WFOtherNetworkViewController *)self securityRows];
        v11 = [v10 count];

        return v11;
      }

      return result;
    }

    return 1;
  }

  if (v8 == 3 || v8 == 2)
  {
    return 1;
  }

  return result;
}

- (id)_availableProfileModeTitles
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(WFOtherNetworkViewController *)self _availableProfileModes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[WFOtherNetworkViewController _profileModeStringFromType:](self, "_profileModeStringFromType:", [*(*(&v12 + 1) + 8 * i) integerValue]);
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)_profileModeFromTitle:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocOtherNetworkModeValueAuto" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocOtherNetworkModeValueEAPTLS" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [v3 isEqualToString:v9];

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }
  }

  return v7;
}

- (id)_profileModeStringFromType:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (!a3)
  {
    v6 = @"kWFLocOtherNetworkModeValueAuto";
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = @"kWFLocOtherNetworkModeValueEAPTLS";
LABEL_5:
    v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (id)_availableSecurityModes
{
  v3 = [(WFOtherNetworkViewController *)self WPA3PersonalEnabled];
  v4 = [&unk_288322BB8 mutableCopy];
  v5 = v4;
  if (v3)
  {
    v6 = &unk_288322BD0;
  }

  else
  {
    v6 = &unk_288322BE8;
  }

  [v4 addObjectsFromArray:v6];
  v7 = [v5 mutableCopy];
  [v7 addObjectsFromArray:&unk_288322C00];
  v8 = v7;

  if ([(WFOtherNetworkViewController *)self WPA3EnterpriseEnabled]|| (v9 = v8, [(WFOtherNetworkViewController *)self WPA2EnterpriseEnabledMFPCapable]))
  {
    v9 = [v8 mutableCopy];
    [v9 addObjectsFromArray:&unk_288322C18];
  }

  if ([(WFOtherNetworkViewController *)self WAPIEnabled])
  {
    v10 = [v9 mutableCopy];
    [v10 addObjectsFromArray:&unk_288322C30];

    v9 = v10;
  }

  return v9;
}

- (id)_availableSecurityTitles
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(WFOtherNetworkViewController *)self _availableSecurityModes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[WFOtherNetworkViewController _securityStringFromType:](self, "_securityStringFromType:", [*(*(&v12 + 1) + 8 * i) integerValue]);
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)_securityModeFromTitle:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSecurityNoneTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocSecurityWEPTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [v3 isEqualToString:v9];

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"kWFLocSecurityWPATitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v13 = [v3 isEqualToString:v12];

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"kWFLocSecurityWPA2Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        v16 = [v3 isEqualToString:v15];

        if (v16)
        {
          v7 = 3;
        }

        else
        {
          v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v18 = [v17 localizedStringForKey:@"kWFLocSecurityWPAEnterpriseTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          v19 = [v3 isEqualToString:v18];

          if (v19)
          {
            v7 = 4;
          }

          else
          {
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v20 localizedStringForKey:@"kWFLocSecurityWPA2EnterpriseTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
            v22 = [v3 isEqualToString:v21];

            if (v22)
            {
              v7 = 5;
            }

            else
            {
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v24 = [v23 localizedStringForKey:@"kWFLocSecurityWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
              v25 = [v3 isEqualToString:v24];

              if (v25)
              {
                v7 = 6;
              }

              else
              {
                v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v27 = [v26 localizedStringForKey:@"kWFLocSecurityWAPIEnterpriseTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                v28 = [v3 isEqualToString:v27];

                if (v28)
                {
                  v7 = 7;
                }

                else
                {
                  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v30 = [v29 localizedStringForKey:@"kWFLocSecurityWPA3Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                  v31 = [v3 isEqualToString:v30];

                  if (v31)
                  {
                    v7 = 8;
                  }

                  else
                  {
                    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v33 = [v32 localizedStringForKey:@"kWFLocSecurityWPA2WPA3Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                    v34 = [v3 isEqualToString:v33];

                    if (v34)
                    {
                      v7 = 9;
                    }

                    else
                    {
                      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v36 = [v35 localizedStringForKey:@"kWFLocSecurityWPA3EnterpriseTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                      v37 = [v3 isEqualToString:v36];

                      if (v37)
                      {
                        v7 = 10;
                      }

                      else
                      {
                        v7 = 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

- (id)_securityStringFromType:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (a3 > 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 localizedStringForKey:off_279EC5D90[a3] value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v6;
}

- (id)_selectedPrivateModeForOption:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC5DE8[a3 - 1];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (unint64_t)_selectedPrivateModeForString:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [v3 isEqualToString:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocRandomMACStaticOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [v3 isEqualToString:v9];

    if (v10)
    {
      v7 = 3;
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"kWFLocRandomMACRotatingOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v13 = [v3 isEqualToString:v12];

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (BOOL)_canShowModes
{
  v2 = [(WFOtherNetworkViewController *)self TLSIdentities];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)_TLSIdentityDescription
{
  v2 = [(WFOtherNetworkViewController *)self TLSIdentity];

  return WFDescriptionFromIdentity(v2);
}

- (id)_WAPIIdentityDescription
{
  v2 = [(WFOtherNetworkViewController *)self WAPIIdentity];
  v3 = WFDescriptionFromIdentity(v2);

  return v3;
}

- (id)_WAPIRootCertificateDescription
{
  v2 = [(WFOtherNetworkViewController *)self WAPIRootCertificate];
  v3 = WFDescriptionFromIdentity(v2);

  return v3;
}

- (int64_t)_returnKeyType
{
  v3 = [(WFOtherNetworkViewController *)self securityMode]!= 4 && [(WFOtherNetworkViewController *)self securityMode]!= 5 && [(WFOtherNetworkViewController *)self securityMode]!= 10;
  if ([(WFOtherNetworkViewController *)self style]&& [(WFOtherNetworkViewController *)self style]!= 3)
  {
    v4 = 4;
    if (v3)
    {
      return v4;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  if (!v3)
  {
LABEL_11:
    mostRecentFirstResponder = self->_mostRecentFirstResponder;
    v6 = [(WFOtherNetworkViewController *)self passwordCell];

    if (mostRecentFirstResponder == v6)
    {
      return 3;
    }
  }

  return v4;
}

- (void)setPasswordRequired:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_passwordRequired != a3)
  {
    v3 = a3;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      v8 = 136315394;
      v9 = "[WFOtherNetworkViewController setPasswordRequired:]";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_273FB9000, v5, v6, "%s: passwordRequired %d", &v8, 0x12u);
    }

    self->_passwordRequired = v3;
    [(WFOtherNetworkViewController *)self _updateSections];
    [(WFOtherNetworkViewController *)self _updateJoinable];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setActivityString:(id)a3
{
  self->_activityString = a3;
  if (a3)
  {
    defaultActivityString = a3;
  }

  else
  {
    defaultActivityString = self->_defaultActivityString;
    v6 = 0;
  }

  v7 = [(OBBaseWelcomeController *)self navigationItem];
  [v7 setPrompt:defaultActivityString];
}

- (void)resetFirstResponder
{
  v3 = [(WFOtherNetworkViewController *)self passwordCell];

  if (v3)
  {
    v4 = [(WFOtherNetworkViewController *)self passwordCell];
    [v4 becomeFirstResponder];
  }

  else
  {

    [(WFOtherNetworkViewController *)self setFirstResponderCell:2];
  }
}

- (WFOtherNetworkViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface WFOtherNetworkViewController
- (BOOL)_canShowModes;
- (WFOtherNetworkViewController)initWithCredentialsProviderContext:(id)context deviceCapability:(int64_t)capability appearanceProxy:(id)proxy;
- (WFOtherNetworkViewController)initWithOtherNetworkProviderContext:(id)context deviceCapability:(int64_t)capability appearanceProxy:(id)proxy;
- (WFOtherNetworkViewController)initWithOtherNetworkStyle:(int64_t)style withTableStyle:(int64_t)tableStyle networkName:(id)name;
- (WFOtherNetworkViewController)initWithStyle:(int64_t)style appearanceProxy:(id)proxy context:(id)context networkName:(id)name deviceCapability:(int64_t)capability;
- (WFOtherNetworkViewControllerDelegate)delegate;
- (id)_TLSIdentityDescription;
- (id)_WAPIIdentityDescription;
- (id)_WAPIRootCertificateDescription;
- (id)_availableProfileModeTitles;
- (id)_availableSecurityModes;
- (id)_availableSecurityTitles;
- (id)_profileModeStringFromType:(int64_t)type;
- (id)_sectionsForStyle:(int64_t)style;
- (id)_securityRowsForStyle:(int64_t)style;
- (id)_securityStringFromType:(int64_t)type;
- (id)_selectedPrivateModeForOption:(unint64_t)option;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)_profileModeFromTitle:(id)title;
- (int64_t)_returnKeyType;
- (int64_t)_securityModeFromTitle:(id)title;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (unint64_t)_selectedPrivateModeForString:(id)string;
- (void)_dismiss:(id)_dismiss;
- (void)_join:(id)_join;
- (void)_scrollToCellAndBecomeFirstResponder:(id)responder;
- (void)_setFirstResponderAfterCell:(id)cell;
- (void)_setTLSIdentity:(id)identity specifier:(id)specifier;
- (void)_setWAPIIdentity:(id)identity specifier:(id)specifier;
- (void)_setWAPIRootCertificate:(id)certificate specifier:(id)specifier;
- (void)_updateJoinable;
- (void)_updateSections;
- (void)dealloc;
- (void)orientationChanged:(id)changed;
- (void)receiveSharedPassword:(id)password;
- (void)resetFirstResponder;
- (void)setActivityString:(id)string;
- (void)setBackgroundColor:(id)color;
- (void)setJoining:(BOOL)joining;
- (void)setNetworkName:(id)name;
- (void)setPasswordRequired:(BOOL)required;
- (void)setProfileMode:(int64_t)mode;
- (void)setSecurityMode:(int64_t)mode;
- (void)setTLSIdentities:(id)identities;
- (void)setTLSIdentity:(__SecIdentity *)identity;
- (void)setUsername:(id)username;
- (void)setWAPIIdentity:(id)identity;
- (void)setWAPIRootCertificate:(id)certificate;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)viewDidLoad;
@end

@implementation WFOtherNetworkViewController

- (WFOtherNetworkViewController)initWithStyle:(int64_t)style appearanceProxy:(id)proxy context:(id)context networkName:(id)name deviceCapability:(int64_t)capability
{
  proxyCopy = proxy;
  contextCopy = context;
  nameCopy = name;
  if (style == 3)
  {
    IsChinaDevice = WFCapabilityIsChinaDevice(capability);
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

    nameCopy = [v16 localizedStringForKey:v18 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v20 = 0;
  }

  else
  {
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"kWFLocOtherNetworksPasswordTitleOBK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    nameCopy = [v21 stringWithFormat:v23, nameCopy];

    LOBYTE(v23) = WFCapabilityIsChinaDevice(capability);
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
  v26 = [(OBTableWelcomeController *)&v33 initWithTitle:nameCopy detailText:v20 symbolName:@"wifi" adoptTableViewScrollView:1];
  [(WFOtherNetworkViewController *)v26 setShouldAdjustScrollViewInsetForKeyboard:1];
  if (v26)
  {
    v26->_style = style;
    objc_storeStrong(&v26->_appearanceProxy, proxy);
    objc_storeStrong(&v26->_context, context);
    v26->_passwordRequired = 1;
    v26->_firstResponderCell = -1;
    v26->_profileMode = -1;
    v26->_WAPIEnabled = 0;
    v26->_wantsModalPresentation = 1;
    v26->_overrideDefaultSecurity = 1;
    v26->_shouldCancelContextWhenViewDisappear = 1;
    v27 = [(WFOtherNetworkViewController *)v26 _sectionsForStyle:style];
    sections = v26->_sections;
    v26->_sections = v27;

    v29 = [(WFOtherNetworkViewController *)v26 _securityRowsForStyle:style];
    securityRows = v26->_securityRows;
    v26->_securityRows = v29;
  }

  return v26;
}

- (WFOtherNetworkViewController)initWithOtherNetworkStyle:(int64_t)style withTableStyle:(int64_t)tableStyle networkName:(id)name
{
  v6 = [(WFOtherNetworkViewController *)self initWithStyle:style appearanceProxy:0 context:0 networkName:name deviceCapability:1];
  v7 = v6;
  if (v6)
  {
    v6->_style = style;
    v6->_passwordRequired = 1;
    v6->_firstResponderCell = -1;
    v6->_profileMode = -1;
    v6->_WAPIEnabled = 0;
    v6->_wantsModalPresentation = 1;
    v6->_overrideDefaultSecurity = 1;
    v8 = [(WFOtherNetworkViewController *)v6 _sectionsForStyle:style];
    sections = v7->_sections;
    v7->_sections = v8;

    v10 = [(WFOtherNetworkViewController *)v7 _securityRowsForStyle:style];
    securityRows = v7->_securityRows;
    v7->_securityRows = v10;

    v7->_shouldCancelContextWhenViewDisappear = 1;
  }

  return v7;
}

- (WFOtherNetworkViewController)initWithOtherNetworkProviderContext:(id)context deviceCapability:(int64_t)capability appearanceProxy:(id)proxy
{
  contextCopy = context;
  proxyCopy = proxy;
  v11 = [(WFOtherNetworkViewController *)self initWithStyle:3 appearanceProxy:proxyCopy context:contextCopy networkName:0 deviceCapability:capability];
  v12 = v11;
  if (v11)
  {
    v11->_deviceCapability = capability;
    objc_storeStrong(&v11->_context, context);
    v12->_isUsingRandomAddress = [contextCopy isUsingRandomMACAddress];
    randomMACAddress = [contextCopy randomMACAddress];
    randomMACAddress = v12->_randomMACAddress;
    v12->_randomMACAddress = randomMACAddress;

    hardwareMACAddress = [contextCopy hardwareMACAddress];
    hardwareMACAddress = v12->_hardwareMACAddress;
    v12->_hardwareMACAddress = hardwareMACAddress;

    v12->_WAPIEnabled = [contextCopy availableAuthTraits] & 1;
    v12->_WPA3PersonalEnabled = ([contextCopy availableAuthTraits] & 2) != 0;
    v12->_WPA3EnterpriseEnabled = ([contextCopy availableAuthTraits] & 4) != 0;
    v12->_WPA2EnterpriseEnabledMFPCapable = ([contextCopy availableAuthTraits] & 8) != 0;
    availableTLSIdentities = [contextCopy availableTLSIdentities];
    TLSIdentities = v12->_TLSIdentities;
    v12->_TLSIdentities = availableTLSIdentities;

    wAPIRootCertificates = [contextCopy WAPIRootCertificates];
    WAPIRootCertificates = v12->_WAPIRootCertificates;
    v12->_WAPIRootCertificates = wAPIRootCertificates;

    wAPIIdentities = [contextCopy WAPIIdentities];
    WAPIIdentities = v12->_WAPIIdentities;
    v12->_WAPIIdentities = wAPIIdentities;

    v12->_overrideDefaultSecurity = 1;
    v12->_profileMode = 0;
    objc_storeStrong(&v12->_appearanceProxy, proxy);
  }

  return v12;
}

- (WFOtherNetworkViewController)initWithCredentialsProviderContext:(id)context deviceCapability:(int64_t)capability appearanceProxy:(id)proxy
{
  v50 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  proxyCopy = proxy;
  isEnterprise = [contextCopy isEnterprise];
  network = [contextCopy network];
  ssid = [network ssid];
  v14 = [(WFOtherNetworkViewController *)self initWithStyle:isEnterprise appearanceProxy:proxyCopy context:contextCopy networkName:ssid deviceCapability:capability];

  if (v14)
  {
    v14->_deviceCapability = capability;
    objc_storeStrong(&v14->_context, context);
    network2 = [contextCopy network];
    ssid2 = [network2 ssid];
    networkName = v14->_networkName;
    v14->_networkName = ssid2;

    objc_storeStrong(&v14->_appearanceProxy, proxy);
    if ([contextCopy isEnterprise])
    {
      username = [contextCopy username];
      username = v14->_username;
      v14->_username = username;

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

    v14->_WAPIEnabled = [contextCopy availableAuthTraits] & 1;
    v14->_WPA3PersonalEnabled = ([contextCopy availableAuthTraits] & 2) != 0;
    v14->_WPA3EnterpriseEnabled = ([contextCopy availableAuthTraits] & 4) != 0;
    v14->_WPA2EnterpriseEnabledMFPCapable = ([contextCopy availableAuthTraits] & 8) != 0;
    requestedFields = [contextCopy requestedFields];
    v14->_passwordRequired = requestedFields & 1;
    if ((requestedFields & 1) == 0)
    {
      v23 = WFLogForCategory(0);
      v24 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v23)
      {
        v25 = v23;
        if (os_log_type_enabled(v25, v24))
        {
          network3 = [contextCopy network];
          *buf = 136315394;
          v47 = "[WFOtherNetworkViewController initWithCredentialsProviderContext:deviceCapability:appearanceProxy:]";
          v48 = 2112;
          v49 = network3;
          _os_log_impl(&dword_273FB9000, v25, v24, "%s: password not required for %@", buf, 0x16u);
        }
      }
    }

    availableTLSIdentities = [contextCopy availableTLSIdentities];
    TLSIdentities = v14->_TLSIdentities;
    v14->_TLSIdentities = availableTLSIdentities;

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
        isPasswordSharingSupported = [contextCopy isPasswordSharingSupported];
        *buf = 136315394;
        v47 = "[WFOtherNetworkViewController initWithCredentialsProviderContext:deviceCapability:appearanceProxy:]";
        v48 = 1024;
        LODWORD(v49) = isPasswordSharingSupported;
        _os_log_impl(&dword_273FB9000, v33, v32, "%s: passwordSharingSupported %d", buf, 0x12u);
      }
    }

    if ([contextCopy isPasswordSharingSupported])
    {
      if (WFCapabilityIsChinaDevice(capability))
      {
        securityIssue2 = [@"kWFLocPasswordSharingDetails" stringByAppendingString:@"_CH"];
      }

      else
      {
        securityIssue2 = @"kWFLocPasswordSharingDetails";
      }

      issueDescription = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v41 = [issueDescription localizedStringForKey:securityIssue2 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    }

    else
    {
      securityIssue = [contextCopy securityIssue];

      if (!securityIssue)
      {
        v41 = 0;
        goto LABEL_35;
      }

      v37 = MEMORY[0x277CCACA8];
      securityIssue2 = [contextCopy securityIssue];
      issueDescription = [(__CFString *)securityIssue2 issueDescription];
      securityIssue3 = [contextCopy securityIssue];
      issueRecommendation = [securityIssue3 issueRecommendation];
      v41 = [v37 stringWithFormat:@"%@\n\n%@", issueDescription, issueRecommendation];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = *MEMORY[0x277D76F30];
  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setRowHeight:v6];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDataSource:self];

  backgroundColor = [(WFOtherNetworkViewController *)self backgroundColor];

  if (backgroundColor)
  {
    backgroundColor2 = [(WFOtherNetworkViewController *)self backgroundColor];
    tableView4 = [(OBTableWelcomeController *)self tableView];
    [tableView4 setBackgroundColor:backgroundColor2];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateJoinable name:*MEMORY[0x277D76C60] object:0];

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

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 registerNib:v18 forCellReuseIdentifier:@"kWFTextFieldCellIdentifier"];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"kWFOtherNetworkHeaderIdentifier"];

  v21 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__dismiss_];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v21];

  v23 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__join_];
  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v23];

  navigationItem3 = [(OBBaseWelcomeController *)self navigationItem];
  rightBarButtonItem = [navigationItem3 rightBarButtonItem];
  [rightBarButtonItem setEnabled:0];

  [(WFOtherNetworkViewController *)self setJoinable:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice beginGeneratingDeviceOrientationNotifications];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v29 = *MEMORY[0x277D76878];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  [defaultCenter2 addObserver:self selector:sel_orientationChanged_ name:v29 object:currentDevice2];

  self->_privateAddressMode = 1;
  v31 = WFLogForCategory(0);
  v32 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v31)
  {
    v33 = v31;
    if (os_log_type_enabled(v33, v32))
    {
      style = [(WFOtherNetworkViewController *)self style];
      securityMode = [(WFOtherNetworkViewController *)self securityMode];
      networkName = [(WFOtherNetworkViewController *)self networkName];
      *buf = 136315906;
      v42 = "[WFOtherNetworkViewController viewDidLoad]";
      v43 = 1024;
      v44 = style;
      v45 = 1024;
      v46 = securityMode;
      v47 = 2112;
      v48 = networkName;
      _os_log_impl(&dword_273FB9000, v33, v32, "%s: style %d security type %d network %@", buf, 0x22u);
    }
  }

  tableView7 = [(OBTableWelcomeController *)self tableView];
  [tableView7 setAlwaysBounceVertical:1];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setKeyboardDismissMode:2];

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_scrollToCellAndBecomeFirstResponder:(id)responder
{
  responderCopy = responder;
  tableView = [(OBTableWelcomeController *)self tableView];
  [(WFTextFieldCell *)responderCopy frame];
  v7 = v6;
  [(WFTextFieldCell *)responderCopy frame];
  v9 = v8 + 20.0;
  [(WFTextFieldCell *)responderCopy frame];
  v11 = v10;
  [(WFTextFieldCell *)responderCopy frame];
  [tableView scrollRectToVisible:0 animated:{v7, v9, v11}];

  textField = [(WFTextFieldCell *)responderCopy textField];
  [textField performSelectorOnMainThread:sel_becomeFirstResponder withObject:0 waitUntilDone:1];

  textField2 = [(WFTextFieldCell *)responderCopy textField];
  [textField2 performSelector:sel_becomeFirstResponder withObject:0 afterDelay:0.1];

  self->_mostRecentFirstResponder = responderCopy;
}

- (void)orientationChanged:(id)changed
{
  object = [changed object];
  if (([object orientation] - 3) <= 1)
  {
    [(WFOtherNetworkViewController *)self _scrollToCellAndBecomeFirstResponder:self->_mostRecentFirstResponder];
  }
}

- (void)_dismiss:(id)_dismiss
{
  v15 = *MEMORY[0x277D85DE8];
  view = [(WFOtherNetworkViewController *)self view];
  firstResponder = [view firstResponder];

  if (firstResponder)
  {
    [firstResponder resignFirstResponder];
  }

  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v13 = 136315138;
    v14 = "[WFOtherNetworkViewController _dismiss:]";
    _os_log_impl(&dword_273FB9000, v6, v7, "%s: user tapped cancel", &v13, 0xCu);
  }

  context = [(WFOtherNetworkViewController *)self context];
  [context cancel];

  delegate = [(WFOtherNetworkViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(WFOtherNetworkViewController *)self delegate];
    [delegate2 otherNetworkViewControllerUserDidTapCancel:self];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_join:(id)_join
{
  v34 = *MEMORY[0x277D85DE8];
  _joinCopy = _join;
  self->_shouldCancelContextWhenViewDisappear = 0;
  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  v6 = activeKeyboard;
  if (activeKeyboard)
  {
    [activeKeyboard deactivate];
  }

  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v7 && os_log_type_enabled(v7, v8))
  {
    *buf = 136315394;
    v31 = "[WFOtherNetworkViewController _join:]";
    v32 = 2112;
    selfCopy = _joinCopy;
    _os_log_impl(&dword_273FB9000, v7, v8, "%s: join with sender %@", buf, 0x16u);
  }

  view = [(WFOtherNetworkViewController *)self view];
  firstResponder = [view firstResponder];

  if (firstResponder)
  {
    [firstResponder resignFirstResponder];
  }

  v11 = WFLogForCategory(0);
  v12 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v11 && os_log_type_enabled(v11, v12))
  {
    *buf = 136315138;
    v31 = "[WFOtherNetworkViewController _join:]";
    _os_log_impl(&dword_273FB9000, v11, v12, "%s: user tapped join", buf, 0xCu);
  }

  context = [(WFOtherNetworkViewController *)self context];
  v14 = [context conformsToProtocol:&unk_288358520];

  if (v14)
  {
    context2 = [(WFOtherNetworkViewController *)self context];
    if (objc_opt_respondsToSelector())
    {
      [context2 savePrivateAddressMode:{-[WFOtherNetworkViewController privateAddressMode](self, "privateAddressMode")}];
    }
  }

  [(WFOtherNetworkViewController *)self setJoining:1];
  objc_initWeak(&location, self);
  context3 = [(WFOtherNetworkViewController *)self context];
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __38__WFOtherNetworkViewController__join___block_invoke;
  v27 = &unk_279EC5CF8;
  objc_copyWeak(&v28, &location);
  [context3 gatherCredentials:&v24];

  v17 = [(WFOtherNetworkViewController *)self delegate:v24];
  LODWORD(context3) = v17 == 0;

  if (context3)
  {
    v18 = WFLogForCategory(0);
    v19 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v18 && os_log_type_enabled(v18, v19))
    {
      *buf = 136315394;
      v31 = "[WFOtherNetworkViewController _join:]";
      v32 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_273FB9000, v18, v19, "%s: %@ delegate is nil", buf, 0x16u);
    }
  }

  delegate = [(WFOtherNetworkViewController *)self delegate];
  v21 = objc_opt_respondsToSelector();

  if (v21)
  {
    delegate2 = [(WFOtherNetworkViewController *)self delegate];
    [delegate2 otherNetworkViewControllerUserDidTapJoin:self];
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
  sections = [(WFOtherNetworkViewController *)self sections];
  v4 = [sections containsObject:&unk_2883226C0];

  securityMode = [(WFOtherNetworkViewController *)self securityMode];
  v6 = securityMode <= 0xA && ((1 << securityMode) & 0x430) != 0 || [(WFOtherNetworkViewController *)self style]== 1;
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

  activeKeyboard = [MEMORY[0x277D75658] activeKeyboard];
  if ([(WFOtherNetworkViewController *)self _returnKeyType]== 4)
  {
    [activeKeyboard setReturnKeyEnabled:1];
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
      context = [(WFOtherNetworkViewController *)self context];
      context2 = [(WFOtherNetworkViewController *)self context];
      validateCredentials = [context2 validateCredentials];
      v30 = 136315650;
      v31 = "[WFOtherNetworkViewController _updateJoinable]";
      v32 = 2112;
      *v33 = context;
      *&v33[8] = 1024;
      *v34 = validateCredentials;
      _os_log_impl(&dword_273FB9000, v18, v17, "%s: self.context %@ [self.context validateCredentials] %d", &v30, 0x1Cu);
    }
  }

  if (v15)
  {
    if (![(NSString *)self->_password length])
    {
      goto LABEL_50;
    }

    context3 = [(WFOtherNetworkViewController *)self context];
    validateCredentials2 = [context3 validateCredentials];

    if ((validateCredentials2 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  if ((!v8 || [(WFOtherNetworkViewController *)self TLSIdentity]) && (!v9 || ([(WFOtherNetworkViewController *)self WAPIIdentity], (v24 = objc_claimAutoreleasedReturnValue()) != 0) && (v25 = v24, [(WFOtherNetworkViewController *)self WAPIRootCertificate], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26)))
  {
    selfCopy2 = self;
    v28 = 1;
  }

  else
  {
LABEL_50:
    selfCopy2 = self;
    v28 = 0;
  }

  [(WFOtherNetworkViewController *)selfCopy2 setJoinable:v28];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)setBackgroundColor:(id)color
{
  objc_storeStrong(&self->_backgroundColor, color);
  colorCopy = color;
  backgroundColor = self->_backgroundColor;
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setBackgroundColor:backgroundColor];
}

- (void)setJoining:(BOOL)joining
{
  joiningCopy = joining;
  self->_joining = joining;
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setEnabled:!joiningCopy];

  joining = self->_joining;
  navigationItem2 = [(OBBaseWelcomeController *)self navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setEnabled:!joining];

  v10 = self->_joining;
  nameCell = [(WFOtherNetworkViewController *)self nameCell];
  textField = [nameCell textField];
  [textField setUserInteractionEnabled:!v10];

  v13 = self->_joining;
  passwordCell = [(WFOtherNetworkViewController *)self passwordCell];
  textField2 = [passwordCell textField];
  [textField2 setUserInteractionEnabled:!v13];

  v16 = self->_joining;
  usernameCell = [(WFOtherNetworkViewController *)self usernameCell];
  textField3 = [usernameCell textField];
  [textField3 setUserInteractionEnabled:!v16];

  if (self->_joining)
  {
    headerView = [(WFOtherNetworkViewController *)self headerView];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"kWFLocOtherNetworksJoiningTitleOBK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    [headerView setTitle:v20];
  }

  else
  {
    style = self->_style;
    headerView2 = [(WFOtherNetworkViewController *)self headerView];
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
      [headerView2 setTitle:v27];
    }

    else
    {
      v28 = MEMORY[0x277CCACA8];
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v25 localizedStringForKey:@"kWFLocOtherNetworksPasswordTitleOBK" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v29 = [v28 stringWithFormat:v27, self->_networkName];
      [headerView2 setTitle:v29];
    }

    [(WFOtherNetworkViewController *)self _updateJoinable];
  }
}

- (void)setTLSIdentities:(id)identities
{
  identitiesCopy = identities;
  objc_storeStrong(&self->_TLSIdentities, identities);
  if ([identitiesCopy count] && self->_profileMode == -1)
  {
    self->_profileMode = 0;
  }

  [(WFOtherNetworkViewController *)self _updateSections];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];
}

- (void)setTLSIdentity:(__SecIdentity *)identity
{
  if (self->_TLSIdentity != identity)
  {
    self->_TLSIdentity = identity;
    [(WFOtherNetworkViewController *)self _updateJoinable];
  }
}

- (void)setWAPIIdentity:(id)identity
{
  if (self->_WAPIIdentity != identity)
  {
    self->_WAPIIdentity = identity;
    [(WFOtherNetworkViewController *)self _updateJoinable];
    [(WFOtherNetworkViewController *)self _updateSections];
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView reloadData];
  }
}

- (void)setWAPIRootCertificate:(id)certificate
{
  if (self->_WAPIRootCertificate != certificate)
  {
    self->_WAPIRootCertificate = certificate;
    [(WFOtherNetworkViewController *)self _updateJoinable];
    [(WFOtherNetworkViewController *)self _updateSections];
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView reloadData];
  }
}

- (void)setSecurityMode:(int64_t)mode
{
  self->_overrideDefaultSecurity = 0;
  if (self->_securityMode != mode)
  {
    self->_securityMode = mode;
    [(WFOtherNetworkViewController *)self _updateSections];
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView reloadData];
  }
}

- (void)setProfileMode:(int64_t)mode
{
  if (self->_profileMode != mode)
  {
    self->_profileMode = mode;
    [(WFOtherNetworkViewController *)self _updateSections];
    tableView = [(OBTableWelcomeController *)self tableView];
    [tableView reloadData];
  }
}

- (void)setNetworkName:(id)name
{
  nameCopy = name;
  if (([nameCopy isEqualToString:self->_networkName] & 1) == 0)
  {
    objc_storeStrong(&self->_networkName, name);
    [(WFOtherNetworkViewController *)self _updateJoinable];
  }
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  if (([usernameCopy isEqualToString:self->_username] & 1) == 0)
  {
    objc_storeStrong(&self->_username, username);
    [(WFOtherNetworkViewController *)self _updateJoinable];
  }
}

- (void)receiveSharedPassword:(id)password
{
  v18 = *MEMORY[0x277D85DE8];
  passwordCopy = password;
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
    [(WFOtherNetworkViewController *)self setPassword:passwordCopy];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"********"];
    passwordCell = [(WFOtherNetworkViewController *)self passwordCell];
    textField = [passwordCell textField];
    [textField setText:v7];

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

- (id)_sectionsForStyle:(int64_t)style
{
  v4 = 0;
  if (style <= 1)
  {
    if (style)
    {
      if (style != 1)
      {
        goto LABEL_15;
      }

      _canShowModes = [(WFOtherNetworkViewController *)self _canShowModes];
      v6 = MEMORY[0x277CBEB70];
      if (_canShowModes)
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

  if (style == 2)
  {
    v6 = MEMORY[0x277CBEB70];
    v7 = &unk_288322708;
    goto LABEL_12;
  }

  if (style != 3)
  {
    goto LABEL_15;
  }

  [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2883226C0, &unk_2883226D8, 0}];
  v4 = LABEL_14:;
LABEL_15:

  return v4;
}

- (id)_securityRowsForStyle:(int64_t)style
{
  v4 = 0;
  if (style > 1)
  {
    if (style == 2)
    {
      [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_288322720, 0, v8}];
    }

    else
    {
      if (style != 3)
      {
        goto LABEL_15;
      }

      [MEMORY[0x277CBEB70] orderedSetWithObjects:{&unk_2883226C0, 0, v8}];
    }
  }

  else if (style)
  {
    if (style != 1)
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

- (void)_setFirstResponderAfterCell:(id)cell
{
  cellCopy = cell;
  if ([(WFOtherNetworkViewController *)self _returnKeyType]== 3)
  {
    goto LABEL_2;
  }

  nameCell = [(WFOtherNetworkViewController *)self nameCell];

  if (nameCell == cellCopy)
  {
    securityRows = [(WFOtherNetworkViewController *)self securityRows];
    if ([securityRows containsObject:&unk_2883226D8])
    {
      usernameCell = [(WFOtherNetworkViewController *)self usernameCell];

      if (usernameCell)
      {
LABEL_12:
        usernameCell2 = [(WFOtherNetworkViewController *)self usernameCell];
LABEL_22:
        securityRows2 = usernameCell2;
        [(WFOtherNetworkViewController *)self _scrollToCellAndBecomeFirstResponder:usernameCell2];
        goto LABEL_23;
      }
    }

    else
    {
    }

    securityRows2 = [(WFOtherNetworkViewController *)self securityRows];
    if (([securityRows2 containsObject:&unk_2883226F0] & 1) == 0)
    {
LABEL_23:

      goto LABEL_24;
    }

    passwordCell = [(WFOtherNetworkViewController *)self passwordCell];

    v8 = cellCopy;
    if (!passwordCell)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  usernameCell3 = [(WFOtherNetworkViewController *)self usernameCell];

  if (usernameCell3 == cellCopy)
  {
    securityRows3 = [(WFOtherNetworkViewController *)self securityRows];
    if (([securityRows3 containsObject:&unk_2883226F0] & 1) == 0)
    {

      goto LABEL_21;
    }

    passwordCell2 = [(WFOtherNetworkViewController *)self passwordCell];

    if (!passwordCell2)
    {
      goto LABEL_21;
    }

LABEL_19:
    usernameCell2 = [(WFOtherNetworkViewController *)self passwordCell];
    goto LABEL_22;
  }

  passwordCell3 = [(WFOtherNetworkViewController *)self passwordCell];

  joinable = cellCopy;
  v8 = cellCopy;
  if (passwordCell3 != cellCopy)
  {
    goto LABEL_25;
  }

  if ([(WFOtherNetworkViewController *)self style])
  {
    sections = [(WFOtherNetworkViewController *)self sections];
    if (([sections containsObject:&unk_2883226C0] & 1) == 0)
    {

LABEL_31:
      securityRows2 = [(WFOtherNetworkViewController *)self securityRows];
      if (([securityRows2 containsObject:&unk_2883226D8] & 1) == 0)
      {
        goto LABEL_23;
      }

      usernameCell4 = [(WFOtherNetworkViewController *)self usernameCell];

      v8 = cellCopy;
      if (!usernameCell4)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    nameCell2 = [(WFOtherNetworkViewController *)self nameCell];

    if (!nameCell2)
    {
      goto LABEL_31;
    }

LABEL_21:
    usernameCell2 = [(WFOtherNetworkViewController *)self nameCell];
    goto LABEL_22;
  }

  joinable = [(WFOtherNetworkViewController *)self joinable];
  v8 = cellCopy;
  if (joinable)
  {
LABEL_2:
    joinable = [(WFOtherNetworkViewController *)self _join:self];
LABEL_24:
    v8 = cellCopy;
  }

LABEL_25:

  MEMORY[0x2821F96F8](joinable, v8);
}

- (void)_setTLSIdentity:(id)identity specifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  [(WFOtherNetworkViewController *)self setTLSIdentity:identity, specifier];
  sections = [(WFOtherNetworkViewController *)self sections];
  v6 = [sections indexOfObject:&unk_2883226D8];

  securityRows = [(WFOtherNetworkViewController *)self securityRows];
  v8 = [securityRows indexOfObject:&unk_288322708];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && tableView && os_log_type_enabled(tableView, v13))
    {
      *buf = 136315650;
      v16 = "[WFOtherNetworkViewController _setTLSIdentity:specifier:]";
      v17 = 2050;
      v18 = v6;
      v19 = 2050;
      v20 = v8;
      _os_log_impl(&dword_273FB9000, tableView, v13, "%s- Unable to find section and row for Identity cell (section %{public}lu, row %{public}lu)", buf, 0x20u);
    }
  }

  else
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v6];
    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [tableView reloadRowsAtIndexPaths:v11 withRowAnimation:5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setWAPIRootCertificate:(id)certificate specifier:(id)specifier
{
  v21 = *MEMORY[0x277D85DE8];
  [(WFOtherNetworkViewController *)self setWAPIRootCertificate:certificate, specifier];
  sections = [(WFOtherNetworkViewController *)self sections];
  v6 = [sections indexOfObject:&unk_2883226D8];

  securityRows = [(WFOtherNetworkViewController *)self securityRows];
  v8 = [securityRows indexOfObject:&unk_288322720];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = WFLogForCategory(0);
    v13 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && tableView && os_log_type_enabled(tableView, v13))
    {
      *buf = 136315650;
      v16 = "[WFOtherNetworkViewController _setWAPIRootCertificate:specifier:]";
      v17 = 2050;
      v18 = v6;
      v19 = 2050;
      v20 = v8;
      _os_log_impl(&dword_273FB9000, tableView, v13, "%s- Unable to find section and row for Identity cell (section %{public}lu, row %{public}lu)", buf, 0x20u);
    }
  }

  else
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    v10 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v6];
    v14 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [tableView reloadRowsAtIndexPaths:v11 withRowAnimation:5];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_setWAPIIdentity:(id)identity specifier:(id)specifier
{
  v22 = *MEMORY[0x277D85DE8];
  [(WFOtherNetworkViewController *)self setWAPIIdentity:identity, specifier];
  sections = [(WFOtherNetworkViewController *)self sections];
  v6 = [sections indexOfObject:&unk_2883226D8];

  securityRows = [(WFOtherNetworkViewController *)self securityRows];
  v8 = [securityRows indexOfObject:&unk_288322738];

  if ([(WFOtherNetworkViewController *)self style]== 2)
  {
    sections2 = [(WFOtherNetworkViewController *)self sections];
    v6 = [sections2 indexOfObject:&unk_288322708];

    v8 = 0;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL || v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    tableView = WFLogForCategory(0);
    v14 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && tableView && os_log_type_enabled(tableView, v14))
    {
      *buf = 136315650;
      v17 = "[WFOtherNetworkViewController _setWAPIIdentity:specifier:]";
      v18 = 2050;
      v19 = v6;
      v20 = 2050;
      v21 = v8;
      _os_log_impl(&dword_273FB9000, tableView, v14, "%s- Unable to find section and row for Identity cell (section %{public}lu, row %{public}lu)", buf, 0x20u);
    }
  }

  else
  {
    tableView = [(OBTableWelcomeController *)self tableView];
    v11 = [MEMORY[0x277CCAA70] indexPathForRow:v8 inSection:v6];
    v15 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [tableView reloadRowsAtIndexPaths:v12 withRowAnimation:5];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  nameCell = [(WFOtherNetworkViewController *)self nameCell];
  textField = [nameCell textField];

  if (textField == editingCopy)
  {
    nameCell2 = [(WFOtherNetworkViewController *)self nameCell];
  }

  else
  {
    usernameCell = [(WFOtherNetworkViewController *)self usernameCell];
    textField2 = [usernameCell textField];

    if (textField2 == editingCopy)
    {
      nameCell2 = [(WFOtherNetworkViewController *)self usernameCell];
    }

    else
    {
      passwordCell = [(WFOtherNetworkViewController *)self passwordCell];
      textField3 = [passwordCell textField];

      if (textField3 != editingCopy)
      {
        goto LABEL_8;
      }

      nameCell2 = [(WFOtherNetworkViewController *)self passwordCell];
    }
  }

  self->_mostRecentFirstResponder = nameCell2;
LABEL_8:
  [editingCopy setReturnKeyType:{-[WFOtherNetworkViewController _returnKeyType](self, "_returnKeyType")}];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![(WFOtherNetworkViewController *)self joining])
  {
    sections = [(WFOtherNetworkViewController *)self sections];
    v12 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];
    integerValue = [v12 integerValue];

    switch(integerValue)
    {
      case 3:
        goto LABEL_14;
      case 2:
        profileModeTitlesValueVC = [(WFOtherNetworkViewController *)self profileModeTitlesValueVC];

        if (profileModeTitlesValueVC)
        {
          profileModeTitlesValueVC2 = [(WFOtherNetworkViewController *)self profileModeTitlesValueVC];
        }

        else
        {
          v29 = [WFValueListViewController alloc];
          _availableProfileModeTitles = [(WFOtherNetworkViewController *)self _availableProfileModeTitles];
          profileModeTitlesValueVC2 = [(WFValueListViewController *)v29 initWithTitles:_availableProfileModeTitles switchTitle:0];

          v31 = [(WFOtherNetworkViewController *)self _profileModeStringFromType:self->_profileMode];
          [(WFValueListViewController *)profileModeTitlesValueVC2 setSelectedTitle:v31];

          v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v33 = [v32 localizedStringForKey:@"kWFLocOtherNetworkSecurityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          [(WFValueListViewController *)profileModeTitlesValueVC2 setTitle:v33];

          objc_initWeak(location, self);
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __66__WFOtherNetworkViewController_tableView_didSelectRowAtIndexPath___block_invoke_3;
          v82[3] = &unk_279EC5D48;
          v82[4] = self;
          objc_copyWeak(&v83, location);
          [(WFValueListViewController *)profileModeTitlesValueVC2 setCompletionHandler:v82];
          navigationItem = [(OBBaseWelcomeController *)self navigationItem];
          prompt = [navigationItem prompt];
          navigationItem2 = [(WFValueListViewController *)profileModeTitlesValueVC2 navigationItem];
          [navigationItem2 setPrompt:prompt];

          [(WFOtherNetworkViewController *)self setProfileModeTitlesValueVC:profileModeTitlesValueVC2];
          objc_destroyWeak(&v83);
          objc_destroyWeak(location);
        }

        self->_shouldCancelContextWhenViewDisappear = 0;
        navigationController = [(WFOtherNetworkViewController *)self navigationController];
        [navigationController pushViewController:profileModeTitlesValueVC2 animated:1];

        goto LABEL_18;
      case 1:
        securityRows = [(WFOtherNetworkViewController *)self securityRows];
        v15 = [securityRows objectAtIndex:{objc_msgSend(pathCopy, "row")}];
        integerValue2 = [v15 integerValue];

        if (integerValue2 <= 2)
        {
          if ((integerValue2 - 1) >= 2)
          {
            if (!integerValue2)
            {
              securityTitlesValueVC = [(WFOtherNetworkViewController *)self securityTitlesValueVC];

              if (securityTitlesValueVC)
              {
                securityTitlesValueVC2 = [(WFOtherNetworkViewController *)self securityTitlesValueVC];
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
                  navigationItem3 = [(WFValueListViewController *)self->_privateAddressModeTitlesValueVC navigationItem];
                  [navigationItem3 setTitle:v63];
                }

                v65 = [(WFOtherNetworkViewController *)self _selectedPrivateModeForOption:self->_privateAddressMode];
                [(WFValueListViewController *)self->_privateAddressModeTitlesValueVC setSelectedTitle:v65];

                v66 = objc_alloc(*(v52 + 2760));
                _availableSecurityTitles = [(WFOtherNetworkViewController *)self _availableSecurityTitles];
                securityTitlesValueVC2 = [v66 initWithTitles:_availableSecurityTitles switchTitle:0 sublist:self->_privateAddressModeTitlesValueVC];

                v68 = [(WFOtherNetworkViewController *)self _securityStringFromType:self->_securityMode];
                [securityTitlesValueVC2 setSelectedTitle:v68];

                v69 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v70 = [v69 localizedStringForKey:@"kWFLocOtherNetworkSecurityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                [securityTitlesValueVC2 setTitle:v70];

                objc_initWeak(location, self);
                v84[0] = MEMORY[0x277D85DD0];
                v84[1] = 3221225472;
                v84[2] = __66__WFOtherNetworkViewController_tableView_didSelectRowAtIndexPath___block_invoke;
                v84[3] = &unk_279EC5D20;
                objc_copyWeak(&v85, location);
                v84[4] = self;
                [securityTitlesValueVC2 setCompletionHandler:v84];
                navigationItem4 = [(OBBaseWelcomeController *)self navigationItem];
                prompt2 = [navigationItem4 prompt];
                navigationItem5 = [securityTitlesValueVC2 navigationItem];
                [navigationItem5 setPrompt:prompt2];

                [(WFOtherNetworkViewController *)self setSecurityTitlesValueVC:securityTitlesValueVC2];
                objc_destroyWeak(&v85);
                objc_destroyWeak(location);
              }

              self->_shouldCancelContextWhenViewDisappear = 0;
              navigationController2 = [(WFOtherNetworkViewController *)self navigationController];
              [navigationController2 pushViewController:securityTitlesValueVC2 animated:1];
            }
          }

          else
          {
            v17 = [viewCopy cellForRowAtIndexPath:pathCopy];
            [v17 becomeFirstResponder];
          }

          break;
        }

        switch(integerValue2)
        {
          case 3:
            profileModeTitlesValueVC2 = objc_alloc_init(WFManagedConfigurationUIClassFromString(@"MCCertificatePickerController"));
            v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v40 localizedStringForKey:@"kWFLocOtherNetworkIdentityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

            v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:sel__setTLSIdentity_specifier_ get:sel__getTLSIdentity_ detail:0 cell:-1 edit:0];
            tLSIdentities = [(WFOtherNetworkViewController *)self TLSIdentities];
            goto LABEL_15;
          case 4:
            profileModeTitlesValueVC2 = objc_alloc_init(WFManagedConfigurationUIClassFromString(@"MCCertificatePickerController"));
            v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v41 localizedStringForKey:@"kWFLocOtherNetworkRootCertWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

            v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:sel__setWAPIRootCertificate_specifier_ get:sel__getWAPIRootCertificate_ detail:0 cell:-1 edit:0];
            tLSIdentities = [(WFOtherNetworkViewController *)self WAPIRootCertificates];
            goto LABEL_15;
          case 5:
LABEL_14:
            profileModeTitlesValueVC2 = objc_alloc_init(WFManagedConfigurationUIClassFromString(@"MCCertificatePickerController"));
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v20 localizedStringForKey:@"kWFLocOtherNetworkIdentityWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

            v22 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v21 target:self set:sel__setWAPIIdentity_specifier_ get:sel__getWAPIIdentity_ detail:0 cell:-1 edit:0];
            tLSIdentities = [(WFOtherNetworkViewController *)self WAPIIdentities];
LABEL_15:
            v24 = tLSIdentities;
            [v22 setValues:tLSIdentities];

            [(WFValueListViewController *)profileModeTitlesValueVC2 setSpecifier:v22];
            navigationItem6 = [(OBBaseWelcomeController *)self navigationItem];
            prompt3 = [navigationItem6 prompt];
            navigationItem7 = [(WFValueListViewController *)profileModeTitlesValueVC2 navigationItem];
            [navigationItem7 setPrompt:prompt3];

            self->_shouldCancelContextWhenViewDisappear = 0;
            navigationController3 = [(WFOtherNetworkViewController *)self navigationController];
            [navigationController3 pushViewController:profileModeTitlesValueVC2 animated:1];

LABEL_18:
            break;
        }

        break;
    }

    v8 = viewCopy;
    v9 = pathCopy;
    v10 = 1;
    goto LABEL_20;
  }

  v8 = viewCopy;
  v9 = pathCopy;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  sections = [(WFOtherNetworkViewController *)self sections];
  v10 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];
  integerValue = [v10 integerValue];

  passwordCell2 = 0;
  if (integerValue > 1)
  {
    if (integerValue == 2)
    {
      passwordCell2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:0];
      v56 = [v8 localizedStringForKey:@"kWFLocOtherNetworkModeTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel = [passwordCell2 textLabel];
      [textLabel setText:v56];

      if ([(WFOtherNetworkViewController *)self profileMode])
      {
        if ([(WFOtherNetworkViewController *)self profileMode]!= 1)
        {
LABEL_39:
          [passwordCell2 setAccessoryType:1];
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
      detailTextLabel = [passwordCell2 detailTextLabel];
      [detailTextLabel setText:v60];

      goto LABEL_39;
    }

    if (integerValue != 3)
    {
      goto LABEL_40;
    }

    goto LABEL_15;
  }

  if (integerValue)
  {
    if (integerValue != 1)
    {
      goto LABEL_40;
    }

    securityRows = [(WFOtherNetworkViewController *)self securityRows];
    v14 = [securityRows objectAtIndex:{objc_msgSend(pathCopy, "row")}];
    integerValue2 = [v14 integerValue];

    passwordCell2 = 0;
    if (integerValue2 <= 2)
    {
      if (integerValue2)
      {
        if (integerValue2 != 1)
        {
          if (integerValue2 == 2)
          {
            objc_initWeak(&location, self);
            passwordCell = [(WFOtherNetworkViewController *)self passwordCell];

            if (!passwordCell)
            {
              v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v18 = [v17 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
              v19 = [v18 objectAtIndex:0];

              v20 = [v8 localizedStringForKey:@"kWFLocOtherNetworkPasswordTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
              label = [v19 label];
              [label setText:v20];

              textField = [v19 textField];
              [textField setSecureTextEntry:1];

              textField2 = [v19 textField];
              [textField2 setDelegate:self];

              textField3 = [v19 textField];
              [textField3 setTextContentType:*MEMORY[0x277D77030]];

              currentDevice = [MEMORY[0x277D75418] currentDevice];
              userInterfaceIdiom = [currentDevice userInterfaceIdiom];

              v27 = 15.0;
              if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1)
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

            passwordCell2 = [(WFOtherNetworkViewController *)self passwordCell];
            _returnKeyType = [(WFOtherNetworkViewController *)self _returnKeyType];
            passwordCell3 = [(WFOtherNetworkViewController *)self passwordCell];
            textField4 = [passwordCell3 textField];
            [textField4 setReturnKeyType:_returnKeyType];

            objc_destroyWeak(&location);
          }

          goto LABEL_40;
        }

        usernameCell = [(WFOtherNetworkViewController *)self usernameCell];

        if (!usernameCell)
        {
          objc_initWeak(&location, self);
          v74 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v75 = [v74 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
          v76 = [v75 objectAtIndex:0];

          v77 = [v8 localizedStringForKey:@"kWFLocOtherNetworkUsernameTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          label2 = [v76 label];
          [label2 setText:v77];

          style = [(WFOtherNetworkViewController *)self style];
          textField5 = [v76 textField];
          [textField5 setReturnKeyType:4 * (style != 0)];

          textField6 = [v76 textField];
          [textField6 setDelegate:self];

          textField7 = [v76 textField];
          [textField7 setTextContentType:*MEMORY[0x277D77090]];

          currentDevice2 = [MEMORY[0x277D75418] currentDevice];
          userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

          v85 = 15.0;
          if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
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
          username = [(WFOtherNetworkViewController *)self username];

          if (username)
          {
            username2 = [(WFOtherNetworkViewController *)self username];
            textField8 = [v76 textField];
            [textField8 setText:username2];
          }

          objc_destroyWeak(&v101);
          objc_destroyWeak(&v103);

          objc_destroyWeak(&location);
        }

        passwordCell2 = [(WFOtherNetworkViewController *)self usernameCell];
        _returnKeyType2 = [(WFOtherNetworkViewController *)self _returnKeyType];
        usernameCell2 = [(WFOtherNetworkViewController *)self usernameCell];
        textField9 = [usernameCell2 textField];
        [textField9 setReturnKeyType:_returnKeyType2];

LABEL_21:
        goto LABEL_40;
      }

      passwordCell2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFOtherNetworkCellGenericIdentifier"];
      [passwordCell2 setPreservesSuperviewLayoutMargins:0];
      currentDevice3 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];

      v65 = 15.0;
      if ((userInterfaceIdiom3 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v65 = 20.0;
      }

      [passwordCell2 setLayoutMargins:{0.0, v65, 0.0, 0.0}];
      v66 = [v8 localizedStringForKey:@"kWFLocOtherNetworkSecurityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel2 = [passwordCell2 textLabel];
      [textLabel2 setText:v66];

      v59 = [(WFOtherNetworkViewController *)self _securityStringFromType:self->_securityMode];
      goto LABEL_38;
    }

    if (integerValue2 == 3)
    {
      passwordCell2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFOtherNetworkCellGenericIdentifier"];
      [passwordCell2 setPreservesSuperviewLayoutMargins:0];
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];

      v70 = 15.0;
      if ((userInterfaceIdiom4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v70 = 20.0;
      }

      [passwordCell2 setLayoutMargins:{0.0, v70, 0.0, 0.0}];
      v71 = [v8 localizedStringForKey:@"kWFLocOtherNetworkIdentityTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel3 = [passwordCell2 textLabel];
      [textLabel3 setText:v71];

      _TLSIdentityDescription = [(WFOtherNetworkViewController *)self _TLSIdentityDescription];
      goto LABEL_18;
    }

    if (integerValue2 == 4)
    {
      passwordCell2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFOtherNetworkCellGenericIdentifier"];
      [passwordCell2 setPreservesSuperviewLayoutMargins:0];
      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom5 = [currentDevice5 userInterfaceIdiom];

      v93 = 15.0;
      if ((userInterfaceIdiom5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
      {
        v93 = 20.0;
      }

      [passwordCell2 setLayoutMargins:{0.0, v93, 0.0, 0.0}];
      v94 = [v8 localizedStringForKey:@"kWFLocOtherNetworkRootCertWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      textLabel4 = [passwordCell2 textLabel];
      [textLabel4 setText:v94];

      _TLSIdentityDescription = [(WFOtherNetworkViewController *)self _WAPIRootCertificateDescription];
      goto LABEL_18;
    }

    if (integerValue2 != 5)
    {
      goto LABEL_40;
    }

LABEL_15:
    passwordCell2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"WFOtherNetworkCellGenericIdentifier"];
    [passwordCell2 setPreservesSuperviewLayoutMargins:0];
    currentDevice6 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom6 = [currentDevice6 userInterfaceIdiom];

    v33 = 15.0;
    if ((userInterfaceIdiom6 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v33 = 20.0;
    }

    [passwordCell2 setLayoutMargins:{0.0, v33, 0.0, 0.0}];
    v34 = [v8 localizedStringForKey:@"kWFLocOtherNetworkIdentityWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    textLabel5 = [passwordCell2 textLabel];
    [textLabel5 setText:v34];

    _TLSIdentityDescription = [(WFOtherNetworkViewController *)self _WAPIIdentityDescription];
LABEL_18:
    usernameCell2 = _TLSIdentityDescription;
    if (_TLSIdentityDescription)
    {
      detailTextLabel2 = [passwordCell2 detailTextLabel];
      [detailTextLabel2 setText:usernameCell2];
    }

    [passwordCell2 setAccessoryType:1];
    goto LABEL_21;
  }

  nameCell = [(WFOtherNetworkViewController *)self nameCell];

  if (!nameCell)
  {
    objc_initWeak(&location, self);
    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v41 = [v40 loadNibNamed:@"WFTextFieldCell" owner:self options:0];
    v42 = [v41 objectAtIndex:0];

    v43 = [v8 localizedStringForKey:@"kWFLocOtherNetworkNameTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    label3 = [v42 label];
    [label3 setText:v43];

    v45 = [v8 localizedStringForKey:@"kWFLocOtherNetworkNamePlaceholder" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    textField10 = [v42 textField];
    [textField10 setPlaceholder:v45];

    textField11 = [v42 textField];
    [textField11 setDelegate:self];

    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom7 = [currentDevice7 userInterfaceIdiom];

    v50 = 15.0;
    if ((userInterfaceIdiom7 & 0xFFFFFFFFFFFFFFFBLL) != 1)
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
    textField12 = [v42 textField];
    [textField12 setText:networkName];

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

  _returnKeyType3 = [(WFOtherNetworkViewController *)self _returnKeyType];
  nameCell2 = [(WFOtherNetworkViewController *)self nameCell];
  textField13 = [nameCell2 textField];
  [textField13 setReturnKeyType:_returnKeyType3];

  passwordCell2 = [(WFOtherNetworkViewController *)self nameCell];
LABEL_40:

  return passwordCell2;
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if ([(WFOtherNetworkViewController *)self firstResponderCell]!= -1)
  {
    nameCell = [(WFOtherNetworkViewController *)self nameCell];
    if (nameCell == cellCopy)
    {
      firstResponderCell = [(WFOtherNetworkViewController *)self firstResponderCell];

      if (!firstResponderCell)
      {
        nameCell2 = [(WFOtherNetworkViewController *)self nameCell];
        goto LABEL_14;
      }
    }

    else
    {
    }

    usernameCell = [(WFOtherNetworkViewController *)self usernameCell];
    if (usernameCell == cellCopy)
    {
      firstResponderCell2 = [(WFOtherNetworkViewController *)self firstResponderCell];

      if (firstResponderCell2 == 1)
      {
        nameCell2 = [(WFOtherNetworkViewController *)self usernameCell];
LABEL_14:
        v13 = nameCell2;
        textField = [nameCell2 textField];
        [textField becomeFirstResponder];

        [(WFOtherNetworkViewController *)self setFirstResponderCell:-1];
        goto LABEL_15;
      }
    }

    else
    {
    }

    passwordCell = [(WFOtherNetworkViewController *)self passwordCell];
    if (passwordCell != cellCopy)
    {

      goto LABEL_15;
    }

    firstResponderCell3 = [(WFOtherNetworkViewController *)self firstResponderCell];

    if (firstResponderCell3 == 2)
    {
      nameCell2 = [(WFOtherNetworkViewController *)self passwordCell];
      goto LABEL_14;
    }
  }

LABEL_15:
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(WFOtherNetworkViewController *)self sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(WFOtherNetworkViewController *)self sections];
  v7 = [sections objectAtIndex:section];
  integerValue = [v7 integerValue];

  result = 0;
  if (integerValue <= 1)
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        securityRows = [(WFOtherNetworkViewController *)self securityRows];
        v11 = [securityRows count];

        return v11;
      }

      return result;
    }

    return 1;
  }

  if (integerValue == 3 || integerValue == 2)
  {
    return 1;
  }

  return result;
}

- (id)_availableProfileModeTitles
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _availableProfileModes = [(WFOtherNetworkViewController *)self _availableProfileModes];
  v5 = [_availableProfileModes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_availableProfileModes);
        }

        v9 = -[WFOtherNetworkViewController _profileModeStringFromType:](self, "_profileModeStringFromType:", [*(*(&v12 + 1) + 8 * i) integerValue]);
        [array addObject:v9];
      }

      v6 = [_availableProfileModes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (int64_t)_profileModeFromTitle:(id)title
{
  titleCopy = title;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocOtherNetworkModeValueAuto" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [titleCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocOtherNetworkModeValueEAPTLS" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [titleCopy isEqualToString:v9];

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

- (id)_profileModeStringFromType:(int64_t)type
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (!type)
  {
    v6 = @"kWFLocOtherNetworkModeValueAuto";
    goto LABEL_5;
  }

  if (type == 1)
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
  wPA3PersonalEnabled = [(WFOtherNetworkViewController *)self WPA3PersonalEnabled];
  v4 = [&unk_288322BB8 mutableCopy];
  v5 = v4;
  if (wPA3PersonalEnabled)
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
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _availableSecurityModes = [(WFOtherNetworkViewController *)self _availableSecurityModes];
  v5 = [_availableSecurityModes countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(_availableSecurityModes);
        }

        v9 = -[WFOtherNetworkViewController _securityStringFromType:](self, "_securityStringFromType:", [*(*(&v12 + 1) + 8 * i) integerValue]);
        [array addObject:v9];
      }

      v6 = [_availableSecurityModes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return array;
}

- (int64_t)_securityModeFromTitle:(id)title
{
  titleCopy = title;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocSecurityNoneTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [titleCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocSecurityWEPTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [titleCopy isEqualToString:v9];

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"kWFLocSecurityWPATitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v13 = [titleCopy isEqualToString:v12];

      if (v13)
      {
        v7 = 2;
      }

      else
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"kWFLocSecurityWPA2Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
        v16 = [titleCopy isEqualToString:v15];

        if (v16)
        {
          v7 = 3;
        }

        else
        {
          v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v18 = [v17 localizedStringForKey:@"kWFLocSecurityWPAEnterpriseTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
          v19 = [titleCopy isEqualToString:v18];

          if (v19)
          {
            v7 = 4;
          }

          else
          {
            v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v21 = [v20 localizedStringForKey:@"kWFLocSecurityWPA2EnterpriseTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
            v22 = [titleCopy isEqualToString:v21];

            if (v22)
            {
              v7 = 5;
            }

            else
            {
              v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
              v24 = [v23 localizedStringForKey:@"kWFLocSecurityWAPITitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
              v25 = [titleCopy isEqualToString:v24];

              if (v25)
              {
                v7 = 6;
              }

              else
              {
                v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                v27 = [v26 localizedStringForKey:@"kWFLocSecurityWAPIEnterpriseTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                v28 = [titleCopy isEqualToString:v27];

                if (v28)
                {
                  v7 = 7;
                }

                else
                {
                  v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                  v30 = [v29 localizedStringForKey:@"kWFLocSecurityWPA3Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                  v31 = [titleCopy isEqualToString:v30];

                  if (v31)
                  {
                    v7 = 8;
                  }

                  else
                  {
                    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                    v33 = [v32 localizedStringForKey:@"kWFLocSecurityWPA2WPA3Title" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                    v34 = [titleCopy isEqualToString:v33];

                    if (v34)
                    {
                      v7 = 9;
                    }

                    else
                    {
                      v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
                      v36 = [v35 localizedStringForKey:@"kWFLocSecurityWPA3EnterpriseTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
                      v37 = [titleCopy isEqualToString:v36];

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

- (id)_securityStringFromType:(int64_t)type
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (type > 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v4 localizedStringForKey:off_279EC5D90[type] value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v6;
}

- (id)_selectedPrivateModeForOption:(unint64_t)option
{
  if (option - 1 > 2)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_279EC5DE8[option - 1];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  return v5;
}

- (unint64_t)_selectedPrivateModeForString:(id)string
{
  stringCopy = string;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"kWFLocRandomMACOffOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v6 = [stringCopy isEqualToString:v5];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"kWFLocRandomMACStaticOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v10 = [stringCopy isEqualToString:v9];

    if (v10)
    {
      v7 = 3;
    }

    else
    {
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"kWFLocRandomMACRotatingOption" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
      v13 = [stringCopy isEqualToString:v12];

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
  tLSIdentities = [(WFOtherNetworkViewController *)self TLSIdentities];
  v3 = [tLSIdentities count] != 0;

  return v3;
}

- (id)_TLSIdentityDescription
{
  tLSIdentity = [(WFOtherNetworkViewController *)self TLSIdentity];

  return WFDescriptionFromIdentity(tLSIdentity);
}

- (id)_WAPIIdentityDescription
{
  wAPIIdentity = [(WFOtherNetworkViewController *)self WAPIIdentity];
  v3 = WFDescriptionFromIdentity(wAPIIdentity);

  return v3;
}

- (id)_WAPIRootCertificateDescription
{
  wAPIRootCertificate = [(WFOtherNetworkViewController *)self WAPIRootCertificate];
  v3 = WFDescriptionFromIdentity(wAPIRootCertificate);

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
    passwordCell = [(WFOtherNetworkViewController *)self passwordCell];

    if (mostRecentFirstResponder == passwordCell)
    {
      return 3;
    }
  }

  return v4;
}

- (void)setPasswordRequired:(BOOL)required
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_passwordRequired != required)
  {
    requiredCopy = required;
    v5 = WFLogForCategory(0);
    v6 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v5 && os_log_type_enabled(v5, v6))
    {
      v8 = 136315394;
      v9 = "[WFOtherNetworkViewController setPasswordRequired:]";
      v10 = 1024;
      v11 = requiredCopy;
      _os_log_impl(&dword_273FB9000, v5, v6, "%s: passwordRequired %d", &v8, 0x12u);
    }

    self->_passwordRequired = requiredCopy;
    [(WFOtherNetworkViewController *)self _updateSections];
    [(WFOtherNetworkViewController *)self _updateJoinable];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setActivityString:(id)string
{
  self->_activityString = string;
  if (string)
  {
    defaultActivityString = string;
  }

  else
  {
    defaultActivityString = self->_defaultActivityString;
    v6 = 0;
  }

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setPrompt:defaultActivityString];
}

- (void)resetFirstResponder
{
  passwordCell = [(WFOtherNetworkViewController *)self passwordCell];

  if (passwordCell)
  {
    passwordCell2 = [(WFOtherNetworkViewController *)self passwordCell];
    [passwordCell2 becomeFirstResponder];
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
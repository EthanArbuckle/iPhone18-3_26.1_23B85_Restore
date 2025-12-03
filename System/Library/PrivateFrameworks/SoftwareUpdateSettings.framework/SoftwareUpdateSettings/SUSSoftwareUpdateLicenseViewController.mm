@interface SUSSoftwareUpdateLicenseViewController
- (SUSSoftwareUpdateLicenseViewController)initWithLicense:(id)license;
- (void)setLicenseText:(id)text;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUSSoftwareUpdateLicenseViewController

- (SUSSoftwareUpdateLicenseViewController)initWithLicense:(id)license
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, license);
  objc_storeStrong(selfCopy + 132, location[0]);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = SUSSoftwareUpdateLicenseViewController;
  v7 = [(SUSSoftwareUpdateLicenseViewController *)&v8 initWithNibName:0 bundle:?];
  selfCopy = v7;
  objc_storeStrong(&selfCopy, v7);
  if (v7)
  {
    view = [selfCopy view];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [view setBackgroundColor:?];
    MEMORY[0x277D82BD8](systemBackgroundColor);
    MEMORY[0x277D82BD8](view);
    v11 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)viewDidLoad
{
  v37[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v35 = a2;
  v34.receiver = self;
  v34.super_class = SUSSoftwareUpdateLicenseViewController;
  [(SUSSoftwareUpdateLicenseViewController *)&v34 viewDidLoad];
  v2 = objc_alloc(MEMORY[0x277D75C40]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  licenseTextView = selfCopy->_licenseTextView;
  selfCopy->_licenseTextView = v3;
  MEMORY[0x277D82BD8](licenseTextView);
  v11 = selfCopy->_licenseTextView;
  v12 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [(UITextView *)v11 setFont:?];
  MEMORY[0x277D82BD8](v12);
  [(UITextView *)selfCopy->_licenseTextView setContentToHTMLString:selfCopy->_licenseTextInfo];
  v13 = selfCopy->_licenseTextView;
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UITextView *)v13 setTextColor:?];
  MEMORY[0x277D82BD8](labelColor);
  [(UITextView *)selfCopy->_licenseTextView setEditable:0];
  [(UITextView *)selfCopy->_licenseTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)selfCopy->_licenseTextView setAccessibilityIdentifier:@"SUSSoftwareUpdateLicenseViewControllerLicenseText"];
  view = [(SUSSoftwareUpdateLicenseViewController *)selfCopy view];
  [view addSubview:selfCopy->_licenseTextView];
  MEMORY[0x277D82BD8](view);
  [(UITextView *)selfCopy->_licenseTextView setContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  view2 = [(SUSSoftwareUpdateLicenseViewController *)selfCopy view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  *&v5 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  view3 = [(SUSSoftwareUpdateLicenseViewController *)selfCopy view];
  layoutMarginsGuide = [view3 layoutMarginsGuide];
  *&v6 = MEMORY[0x277D82BD8](view3).n128_u64[0];
  leadingAnchor = [(UITextView *)selfCopy->_licenseTextView leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:? constant:?];
  MEMORY[0x277D82BD8](leadingAnchor2);
  *&v7 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
  trailingAnchor = [(UITextView *)selfCopy->_licenseTextView trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:1.0 constant:?];
  MEMORY[0x277D82BD8](trailingAnchor2);
  *&v8 = MEMORY[0x277D82BD8](trailingAnchor).n128_u64[0];
  topAnchor = [(UITextView *)selfCopy->_licenseTextView topAnchor];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v29 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  MEMORY[0x277D82BD8](topAnchor2);
  *&v9 = MEMORY[0x277D82BD8](topAnchor).n128_u64[0];
  bottomAnchor = [safeAreaLayoutGuide bottomAnchor];
  bottomAnchor2 = [(UITextView *)selfCopy->_licenseTextView bottomAnchor];
  v28 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  MEMORY[0x277D82BD8](bottomAnchor2);
  *&v10 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
  v26 = MEMORY[0x277CCAAD0];
  v37[0] = v31;
  v37[1] = v30;
  v37[2] = v29;
  v37[3] = v28;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:{4, v10}];
  [v26 activateConstraints:?];
  MEMORY[0x277D82BD8](v27);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&layoutMarginsGuide, 0);
  objc_storeStrong(&safeAreaLayoutGuide, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSSoftwareUpdateLicenseViewController;
  [(SUSSoftwareUpdateLicenseViewController *)&v2 viewWillLayoutSubviews];
}

- (void)setLicenseText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  objc_storeStrong(&selfCopy->_licenseTextInfo, location[0]);
  objc_storeStrong(location, 0);
}

@end
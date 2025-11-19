@interface SUSSoftwareUpdateLicenseViewController
- (SUSSoftwareUpdateLicenseViewController)initWithLicense:(id)a3;
- (void)setLicenseText:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUSSoftwareUpdateLicenseViewController

- (SUSSoftwareUpdateLicenseViewController)initWithLicense:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(v10 + 132, location[0]);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = SUSSoftwareUpdateLicenseViewController;
  v7 = [(SUSSoftwareUpdateLicenseViewController *)&v8 initWithNibName:0 bundle:?];
  v10 = v7;
  objc_storeStrong(&v10, v7);
  if (v7)
  {
    v6 = [v10 view];
    v5 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v6 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v11 = MEMORY[0x277D82BE0](v10);
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v11;
}

- (void)viewDidLoad
{
  v37[4] = *MEMORY[0x277D85DE8];
  v36 = self;
  v35 = a2;
  v34.receiver = self;
  v34.super_class = SUSSoftwareUpdateLicenseViewController;
  [(SUSSoftwareUpdateLicenseViewController *)&v34 viewDidLoad];
  v2 = objc_alloc(MEMORY[0x277D75C40]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  licenseTextView = v36->_licenseTextView;
  v36->_licenseTextView = v3;
  MEMORY[0x277D82BD8](licenseTextView);
  v11 = v36->_licenseTextView;
  v12 = [MEMORY[0x277D74300] systemFontOfSize:13.0];
  [(UITextView *)v11 setFont:?];
  MEMORY[0x277D82BD8](v12);
  [(UITextView *)v36->_licenseTextView setContentToHTMLString:v36->_licenseTextInfo];
  v13 = v36->_licenseTextView;
  v14 = [MEMORY[0x277D75348] labelColor];
  [(UITextView *)v13 setTextColor:?];
  MEMORY[0x277D82BD8](v14);
  [(UITextView *)v36->_licenseTextView setEditable:0];
  [(UITextView *)v36->_licenseTextView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UITextView *)v36->_licenseTextView setAccessibilityIdentifier:@"SUSSoftwareUpdateLicenseViewControllerLicenseText"];
  v15 = [(SUSSoftwareUpdateLicenseViewController *)v36 view];
  [v15 addSubview:v36->_licenseTextView];
  MEMORY[0x277D82BD8](v15);
  [(UITextView *)v36->_licenseTextView setContentOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v16 = [(SUSSoftwareUpdateLicenseViewController *)v36 view];
  v33 = [v16 safeAreaLayoutGuide];
  *&v5 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v17 = [(SUSSoftwareUpdateLicenseViewController *)v36 view];
  v32 = [v17 layoutMarginsGuide];
  *&v6 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v19 = [(UITextView *)v36->_licenseTextView leadingAnchor];
  v18 = [v32 leadingAnchor];
  v31 = [v19 constraintEqualToAnchor:? constant:?];
  MEMORY[0x277D82BD8](v18);
  *&v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v21 = [(UITextView *)v36->_licenseTextView trailingAnchor];
  v20 = [v32 trailingAnchor];
  v30 = [v21 constraintEqualToAnchor:1.0 constant:?];
  MEMORY[0x277D82BD8](v20);
  *&v8 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v23 = [(UITextView *)v36->_licenseTextView topAnchor];
  v22 = [v33 topAnchor];
  v29 = [v23 constraintEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  MEMORY[0x277D82BD8](v22);
  *&v9 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v25 = [v33 bottomAnchor];
  v24 = [(UITextView *)v36->_licenseTextView bottomAnchor];
  v28 = [v25 constraintEqualToSystemSpacingBelowAnchor:1.0 multiplier:?];
  MEMORY[0x277D82BD8](v24);
  *&v10 = MEMORY[0x277D82BD8](v25).n128_u64[0];
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
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  *MEMORY[0x277D85DE8];
}

- (void)viewWillLayoutSubviews
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = SUSSoftwareUpdateLicenseViewController;
  [(SUSSoftwareUpdateLicenseViewController *)&v2 viewWillLayoutSubviews];
}

- (void)setLicenseText:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_licenseTextInfo, location[0]);
  objc_storeStrong(location, 0);
}

@end
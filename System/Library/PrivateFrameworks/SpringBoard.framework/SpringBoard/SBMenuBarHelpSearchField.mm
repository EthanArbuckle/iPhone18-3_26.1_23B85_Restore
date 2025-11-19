@interface SBMenuBarHelpSearchField
- (SBMenuBarHelpSearchField)initWithFrame:(CGRect)a3;
- (void)_userInterfaceStyleDidChange;
@end

@implementation SBMenuBarHelpSearchField

- (SBMenuBarHelpSearchField)initWithFrame:(CGRect)a3
{
  v35[6] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = SBMenuBarHelpSearchField;
  v3 = [(SBMenuBarHelpSearchField *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75BB8]);
    searchTextField = v3->_searchTextField;
    v3->_searchTextField = v4;

    [(SBMenuBarHelpSearchField *)v3 addSubview:v3->_searchTextField];
    [(UITextField *)v3->_searchTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [MEMORY[0x277D755B8] systemImageNamed:@"magnifyingglass"];
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v32];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBMenuBarHelpSearchField *)v3 addSubview:v6];
    v23 = MEMORY[0x277CCAAD0];
    v31 = v6;
    v30 = [v6 centerYAnchor];
    v29 = [(UITextField *)v3->_searchTextField centerYAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v35[0] = v28;
    v27 = [v6 centerXAnchor];
    v26 = [(SBMenuBarHelpSearchField *)v3 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26 constant:34.0];
    v35[1] = v25;
    v24 = [(UITextField *)v3->_searchTextField leadingAnchor];
    v22 = [(SBMenuBarHelpSearchField *)v3 leadingAnchor];
    v21 = [v24 constraintEqualToAnchor:v22 constant:57.0];
    v35[2] = v21;
    v20 = [(UITextField *)v3->_searchTextField trailingAnchor];
    v7 = [(SBMenuBarHelpSearchField *)v3 trailingAnchor];
    v8 = [v20 constraintEqualToAnchor:v7 constant:-20.0];
    v35[3] = v8;
    v9 = [(UITextField *)v3->_searchTextField topAnchor];
    v10 = [(SBMenuBarHelpSearchField *)v3 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:8.0];
    v35[4] = v11;
    v12 = [(UITextField *)v3->_searchTextField bottomAnchor];
    v13 = [(SBMenuBarHelpSearchField *)v3 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:-6.0];
    v35[5] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:6];
    [v23 activateConstraints:v15];

    v16 = objc_opt_self();
    v34 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
    v18 = [(SBMenuBarHelpSearchField *)v3 registerForTraitChanges:v17 withAction:sel__userInterfaceStyleDidChange];

    [(SBMenuBarHelpSearchField *)v3 _userInterfaceStyleDidChange];
  }

  return v3;
}

- (void)_userInterfaceStyleDidChange
{
  v3 = [(SBMenuBarHelpSearchField *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 == 2)
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemBlackColor];
  }
  v5 = ;
  [(SBMenuBarHelpSearchField *)self setTintColor:v5];
}

@end
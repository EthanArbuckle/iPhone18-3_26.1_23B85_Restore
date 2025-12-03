@interface SBMenuBarHelpSearchField
- (SBMenuBarHelpSearchField)initWithFrame:(CGRect)frame;
- (void)_userInterfaceStyleDidChange;
@end

@implementation SBMenuBarHelpSearchField

- (SBMenuBarHelpSearchField)initWithFrame:(CGRect)frame
{
  v35[6] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = SBMenuBarHelpSearchField;
  v3 = [(SBMenuBarHelpSearchField *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    centerYAnchor = [v6 centerYAnchor];
    centerYAnchor2 = [(UITextField *)v3->_searchTextField centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v35[0] = v28;
    centerXAnchor = [v6 centerXAnchor];
    leadingAnchor = [(SBMenuBarHelpSearchField *)v3 leadingAnchor];
    v25 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:34.0];
    v35[1] = v25;
    leadingAnchor2 = [(UITextField *)v3->_searchTextField leadingAnchor];
    leadingAnchor3 = [(SBMenuBarHelpSearchField *)v3 leadingAnchor];
    v21 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:57.0];
    v35[2] = v21;
    trailingAnchor = [(UITextField *)v3->_searchTextField trailingAnchor];
    trailingAnchor2 = [(SBMenuBarHelpSearchField *)v3 trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v35[3] = v8;
    topAnchor = [(UITextField *)v3->_searchTextField topAnchor];
    topAnchor2 = [(SBMenuBarHelpSearchField *)v3 topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    v35[4] = v11;
    bottomAnchor = [(UITextField *)v3->_searchTextField bottomAnchor];
    bottomAnchor2 = [(SBMenuBarHelpSearchField *)v3 bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-6.0];
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
  traitCollection = [(SBMenuBarHelpSearchField *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
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
@interface TUIOBWelcomeController
- (TUIOBWelcomeController)initWithViewModel:(id)a3;
- (void)_addContentViewWithViewModel:(id)a3;
- (void)_addHelpLinkButtonWithViewModel:(id)a3;
- (void)_addPrimaryButtonWithViewModel:(id)a3;
- (void)_addSecondaryButtonWithViewModel:(id)a3;
- (void)_openHelpLink;
- (void)viewDidLoad;
@end

@implementation TUIOBWelcomeController

- (TUIOBWelcomeController)initWithViewModel:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [v4 detailText];
  v7 = [v4 symbolName];
  v10.receiver = self;
  v10.super_class = TUIOBWelcomeController;
  v8 = -[TUIOBWelcomeController initWithTitle:detailText:symbolName:contentLayout:](&v10, sel_initWithTitle_detailText_symbolName_contentLayout_, v5, v6, v7, [v4 contentViewLayout]);

  if (v8)
  {
    [(TUIOBWelcomeController *)v8 _addContentViewWithViewModel:v4];
    [(TUIOBWelcomeController *)v8 _addPrimaryButtonWithViewModel:v4];
    [(TUIOBWelcomeController *)v8 _addSecondaryButtonWithViewModel:v4];
    [(TUIOBWelcomeController *)v8 _addHelpLinkButtonWithViewModel:v4];
  }

  return v8;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TUIOBWelcomeController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  [(TUIOBWelcomeController *)self setModalInPresentation:1];
}

- (void)_addContentViewWithViewModel:(id)a3
{
  v31[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 contentViewController];

  if (v5)
  {
    v6 = [v4 contentViewController];
    [(TUIOBWelcomeController *)self addChildViewController:v6];

    [v4 contentViewController];
    v7 = v30 = v4;
    v8 = [v7 view];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(TUIOBWelcomeController *)self contentView];
    [v9 addSubview:v8];

    v22 = MEMORY[0x277CCAAD0];
    v28 = [v8 leadingAnchor];
    v29 = [(TUIOBWelcomeController *)self contentView];
    v27 = [v29 leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v24 = [v8 trailingAnchor];
    v25 = [(TUIOBWelcomeController *)self contentView];
    v23 = [v25 trailingAnchor];
    v21 = [v24 constraintEqualToAnchor:v23];
    v31[1] = v21;
    v20 = [v8 topAnchor];
    v10 = [(TUIOBWelcomeController *)self contentView];
    v11 = [v10 topAnchor];
    v12 = [v20 constraintEqualToAnchor:v11];
    v31[2] = v12;
    v13 = [v8 bottomAnchor];
    v14 = [(TUIOBWelcomeController *)self contentView];
    v15 = [v14 bottomAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];
    v31[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v22 activateConstraints:v17];

    v4 = v30;
    v18 = [v30 contentViewController];
    [v18 didMoveToParentViewController:self];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_addPrimaryButtonWithViewModel:(id)a3
{
  v10 = a3;
  v4 = [v10 primaryButton];

  if (v4)
  {
    v5 = [MEMORY[0x277D37618] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v5;

    v7 = self->_primaryButton;
    v8 = [v10 primaryButton];
    [(OBTrayButton *)v7 setTitle:v8 forState:0];

    v9 = [(TUIOBWelcomeController *)self buttonTray];
    [v9 addButton:self->_primaryButton];
  }
}

- (void)_addSecondaryButtonWithViewModel:(id)a3
{
  v10 = a3;
  v4 = [v10 secondaryButton];

  if (v4)
  {
    v5 = [MEMORY[0x277D37650] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = v5;

    v7 = self->_secondaryButton;
    v8 = [v10 secondaryButton];
    [(OBTrayButton *)v7 setTitle:v8 forState:0];

    v9 = [(TUIOBWelcomeController *)self buttonTray];
    [v9 addButton:self->_secondaryButton];
  }
}

- (void)_addHelpLinkButtonWithViewModel:(id)a3
{
  v10 = a3;
  v4 = [v10 helpLinkTitle];

  if (v4)
  {
    v5 = [v10 helpLinkURL];
    helpLinkURL = self->_helpLinkURL;
    self->_helpLinkURL = v5;

    v7 = [MEMORY[0x277D37638] accessoryButton];
    v8 = [v10 helpLinkTitle];
    [v7 setTitle:v8 forState:0];

    [v7 addTarget:self action:sel__openHelpLink forControlEvents:64];
    v9 = [(TUIOBWelcomeController *)self headerView];
    [v9 addAccessoryButton:v7];
  }
}

- (void)_openHelpLink
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:self->_helpLinkURL];
  [*MEMORY[0x277D76620] openURL:v2 options:MEMORY[0x277CBEC10] completionHandler:0];
}

@end
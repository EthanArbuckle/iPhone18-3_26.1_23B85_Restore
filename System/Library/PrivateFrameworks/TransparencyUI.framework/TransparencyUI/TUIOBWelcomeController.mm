@interface TUIOBWelcomeController
- (TUIOBWelcomeController)initWithViewModel:(id)model;
- (void)_addContentViewWithViewModel:(id)model;
- (void)_addHelpLinkButtonWithViewModel:(id)model;
- (void)_addPrimaryButtonWithViewModel:(id)model;
- (void)_addSecondaryButtonWithViewModel:(id)model;
- (void)_openHelpLink;
- (void)viewDidLoad;
@end

@implementation TUIOBWelcomeController

- (TUIOBWelcomeController)initWithViewModel:(id)model
{
  modelCopy = model;
  title = [modelCopy title];
  detailText = [modelCopy detailText];
  symbolName = [modelCopy symbolName];
  v10.receiver = self;
  v10.super_class = TUIOBWelcomeController;
  v8 = -[TUIOBWelcomeController initWithTitle:detailText:symbolName:contentLayout:](&v10, sel_initWithTitle_detailText_symbolName_contentLayout_, title, detailText, symbolName, [modelCopy contentViewLayout]);

  if (v8)
  {
    [(TUIOBWelcomeController *)v8 _addContentViewWithViewModel:modelCopy];
    [(TUIOBWelcomeController *)v8 _addPrimaryButtonWithViewModel:modelCopy];
    [(TUIOBWelcomeController *)v8 _addSecondaryButtonWithViewModel:modelCopy];
    [(TUIOBWelcomeController *)v8 _addHelpLinkButtonWithViewModel:modelCopy];
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

- (void)_addContentViewWithViewModel:(id)model
{
  v31[4] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  contentViewController = [modelCopy contentViewController];

  if (contentViewController)
  {
    contentViewController2 = [modelCopy contentViewController];
    [(TUIOBWelcomeController *)self addChildViewController:contentViewController2];

    [modelCopy contentViewController];
    v7 = v30 = modelCopy;
    view = [v7 view];

    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(TUIOBWelcomeController *)self contentView];
    [contentView addSubview:view];

    v22 = MEMORY[0x277CCAAD0];
    leadingAnchor = [view leadingAnchor];
    contentView2 = [(TUIOBWelcomeController *)self contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[0] = v26;
    trailingAnchor = [view trailingAnchor];
    contentView3 = [(TUIOBWelcomeController *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[1] = v21;
    topAnchor = [view topAnchor];
    contentView4 = [(TUIOBWelcomeController *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[2] = v12;
    bottomAnchor = [view bottomAnchor];
    contentView5 = [(TUIOBWelcomeController *)self contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
    [v22 activateConstraints:v17];

    modelCopy = v30;
    contentViewController3 = [v30 contentViewController];
    [contentViewController3 didMoveToParentViewController:self];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_addPrimaryButtonWithViewModel:(id)model
{
  modelCopy = model;
  primaryButton = [modelCopy primaryButton];

  if (primaryButton)
  {
    boldButton = [MEMORY[0x277D37618] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = boldButton;

    v7 = self->_primaryButton;
    primaryButton2 = [modelCopy primaryButton];
    [(OBTrayButton *)v7 setTitle:primaryButton2 forState:0];

    buttonTray = [(TUIOBWelcomeController *)self buttonTray];
    [buttonTray addButton:self->_primaryButton];
  }
}

- (void)_addSecondaryButtonWithViewModel:(id)model
{
  modelCopy = model;
  secondaryButton = [modelCopy secondaryButton];

  if (secondaryButton)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = linkButton;

    v7 = self->_secondaryButton;
    secondaryButton2 = [modelCopy secondaryButton];
    [(OBTrayButton *)v7 setTitle:secondaryButton2 forState:0];

    buttonTray = [(TUIOBWelcomeController *)self buttonTray];
    [buttonTray addButton:self->_secondaryButton];
  }
}

- (void)_addHelpLinkButtonWithViewModel:(id)model
{
  modelCopy = model;
  helpLinkTitle = [modelCopy helpLinkTitle];

  if (helpLinkTitle)
  {
    helpLinkURL = [modelCopy helpLinkURL];
    helpLinkURL = self->_helpLinkURL;
    self->_helpLinkURL = helpLinkURL;

    accessoryButton = [MEMORY[0x277D37638] accessoryButton];
    helpLinkTitle2 = [modelCopy helpLinkTitle];
    [accessoryButton setTitle:helpLinkTitle2 forState:0];

    [accessoryButton addTarget:self action:sel__openHelpLink forControlEvents:64];
    headerView = [(TUIOBWelcomeController *)self headerView];
    [headerView addAccessoryButton:accessoryButton];
  }
}

- (void)_openHelpLink
{
  v2 = [MEMORY[0x277CBEBC0] URLWithString:self->_helpLinkURL];
  [*MEMORY[0x277D76620] openURL:v2 options:MEMORY[0x277CBEC10] completionHandler:0];
}

@end
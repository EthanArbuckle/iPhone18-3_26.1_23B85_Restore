@interface WLFailureViewController
- (WLFailureViewController)initWithWelcomeController:(id)controller context:(id)context;
- (void)_detailTapped:(id)tapped;
- (void)_reset;
@end

@implementation WLFailureViewController

- (WLFailureViewController)initWithWelcomeController:(id)controller context:(id)context
{
  v42[3] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  contextCopy = context;
  v9 = WLLocalizedString();
  v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"FAILURE_DETAIL"];
  v11 = WLLocalizedString();
  v12 = MEMORY[0x277D755B8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v12 imageNamed:@"MoveToiOS" inBundle:v13];
  v41.receiver = self;
  v41.super_class = WLFailureViewController;
  v15 = [(WLFailureViewController *)&v41 initWithTitle:v9 detailText:v11 icon:v14 contentLayout:2];

  if (v15)
  {
    objc_storeStrong(&v15->_welcomeController, controller);
    v40 = contextCopy;
    if ([contextCopy isEnabled])
    {
      objc_storeStrong(&v15->_context, context);
      linkButton = [MEMORY[0x277D37650] linkButton];
      v17 = WLLocalizedString();
      [linkButton setTitle:v17 forState:0];

      [linkButton addTarget:v15 action:sel__detailTapped_ forControlEvents:64];
      contentView = [(WLFailureViewController *)v15 contentView];
      [contentView addSubview:linkButton];

      v34 = MEMORY[0x277CCAAD0];
      topAnchor = [linkButton topAnchor];
      contentView2 = [(WLFailureViewController *)v15 contentView];
      topAnchor2 = [contentView2 topAnchor];
      v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v42[0] = v35;
      bottomAnchor = [linkButton bottomAnchor];
      [(WLFailureViewController *)v15 contentView];
      v19 = v39 = controllerCopy;
      bottomAnchor2 = [v19 bottomAnchor];
      v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v42[1] = v21;
      centerXAnchor = [linkButton centerXAnchor];
      contentView3 = [(WLFailureViewController *)v15 contentView];
      centerXAnchor2 = [contentView3 centerXAnchor];
      v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v42[2] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
      [v34 activateConstraints:v26];

      controllerCopy = v39;
    }

    boldButton = [MEMORY[0x277D37618] boldButton];
    v28 = WLLocalizedString();
    [boldButton setTitle:v28 forState:0];

    [boldButton addTarget:v15 action:sel__reset forControlEvents:64];
    buttonTray = [(WLFailureViewController *)v15 buttonTray];
    [buttonTray addButton:boldButton];

    navigationItem = [(OBBaseWelcomeController *)v15 navigationItem];
    [navigationItem setHidesBackButton:1 animated:0];

    contextCopy = v40;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)_reset
{
  resetBlock = self->_resetBlock;
  if (resetBlock)
  {
    resetBlock[2]();
  }
}

- (void)_detailTapped:(id)tapped
{
  v5 = [[WLDetailViewController alloc] initWithContext:self->_context];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v4 setModalPresentationStyle:2];
  [(WLFailureViewController *)self presentViewController:v4 animated:1 completion:0];
}

@end
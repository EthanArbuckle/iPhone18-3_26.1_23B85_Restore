@interface WLTransferCancellationViewController
- (WLTransferCancellationViewController)initWithWelcomeController:(id)a3 context:(id)a4;
- (void)_detailTapped:(id)a3;
- (void)_reset;
@end

@implementation WLTransferCancellationViewController

- (WLTransferCancellationViewController)initWithWelcomeController:(id)a3 context:(id)a4
{
  v42[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = WLLocalizedString();
  v10 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"CANCELLATION_DETAIL"];
  v11 = WLLocalizedString();
  v12 = MEMORY[0x277D755B8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v12 imageNamed:@"MoveToiOS" inBundle:v13];
  v41.receiver = self;
  v41.super_class = WLTransferCancellationViewController;
  v15 = [(WLTransferCancellationViewController *)&v41 initWithTitle:v9 detailText:v11 icon:v14 contentLayout:2];

  if (v15)
  {
    objc_storeStrong(&v15->_welcomeController, a3);
    v40 = v8;
    if ([v8 isEnabled])
    {
      objc_storeStrong(&v15->_context, a4);
      v16 = [MEMORY[0x277D37650] linkButton];
      v17 = WLLocalizedString();
      [v16 setTitle:v17 forState:0];

      [v16 addTarget:v15 action:sel__detailTapped_ forControlEvents:64];
      v18 = [(WLTransferCancellationViewController *)v15 contentView];
      [v18 addSubview:v16];

      v34 = MEMORY[0x277CCAAD0];
      v37 = [v16 topAnchor];
      v38 = [(WLTransferCancellationViewController *)v15 contentView];
      v36 = [v38 topAnchor];
      v35 = [v37 constraintEqualToAnchor:v36];
      v42[0] = v35;
      v33 = [v16 bottomAnchor];
      [(WLTransferCancellationViewController *)v15 contentView];
      v19 = v39 = v7;
      v20 = [v19 bottomAnchor];
      v21 = [v33 constraintEqualToAnchor:v20];
      v42[1] = v21;
      v22 = [v16 centerXAnchor];
      v23 = [(WLTransferCancellationViewController *)v15 contentView];
      v24 = [v23 centerXAnchor];
      v25 = [v22 constraintEqualToAnchor:v24];
      v42[2] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:3];
      [v34 activateConstraints:v26];

      v7 = v39;
    }

    v27 = [MEMORY[0x277D37618] boldButton];
    v28 = WLLocalizedString();
    [v27 setTitle:v28 forState:0];

    [v27 addTarget:v15 action:sel__reset forControlEvents:64];
    v29 = [(WLTransferCancellationViewController *)v15 buttonTray];
    [v29 addButton:v27];

    v30 = [(OBBaseWelcomeController *)v15 navigationItem];
    [v30 setHidesBackButton:1 animated:0];

    v8 = v40;
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

- (void)_detailTapped:(id)a3
{
  v5 = [[WLDetailViewController alloc] initWithContext:self->_context];
  v4 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v5];
  [v4 setModalPresentationStyle:2];
  [(WLTransferCancellationViewController *)self presentViewController:v4 animated:1 completion:0];
}

@end
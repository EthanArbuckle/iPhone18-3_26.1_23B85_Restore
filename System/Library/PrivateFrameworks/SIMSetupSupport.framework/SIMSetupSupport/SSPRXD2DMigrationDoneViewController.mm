@interface SSPRXD2DMigrationDoneViewController
- (SSPRXD2DMigrationDoneViewController)init;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_launchDisembarkUI:(id)a3;
@end

@implementation SSPRXD2DMigrationDoneViewController

- (SSPRXD2DMigrationDoneViewController)init
{
  v42.receiver = self;
  v42.super_class = SSPRXD2DMigrationDoneViewController;
  v2 = [(SSPRXD2DMigrationDoneViewController *)&v42 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"MIGRATION_COMPLETE_TITLE" value:&stru_28753DF48 table:@"Localizable"];
    [(SSPRXD2DMigrationDoneViewController *)v2 setTitle:v4];

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"MIGRATION_COMPLETE_DETAILS" value:&stru_28753DF48 table:@"Localizable"];
    [(SSPRXD2DMigrationDoneViewController *)v2 setSubtitle:v6];

    v7 = [ExitBuddyIconView alloc];
    v8 = [(ExitBuddyIconView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(ExitBuddyIconView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(SSPRXD2DMigrationDoneViewController *)v2 contentView];
    [v9 addSubview:v8];

    v10 = [(ExitBuddyIconView *)v8 topAnchor];
    v11 = [(SSPRXD2DMigrationDoneViewController *)v2 contentView];
    v12 = [v11 mainContentGuide];
    v13 = [v12 topAnchor];
    v14 = [v10 constraintGreaterThanOrEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [(ExitBuddyIconView *)v8 bottomAnchor];
    v16 = [(SSPRXD2DMigrationDoneViewController *)v2 contentView];
    v17 = [v16 mainContentGuide];
    v18 = [v17 bottomAnchor];
    v19 = [v15 constraintLessThanOrEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(ExitBuddyIconView *)v8 centerXAnchor];
    v21 = [(SSPRXD2DMigrationDoneViewController *)v2 contentView];
    v22 = [v21 mainContentGuide];
    v23 = [v22 centerXAnchor];
    v24 = [v20 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    v25 = [(ExitBuddyIconView *)v8 centerYAnchor];
    v26 = [(SSPRXD2DMigrationDoneViewController *)v2 contentView];
    v27 = [v26 mainContentGuide];
    v28 = [v27 centerYAnchor];
    v29 = [v25 constraintEqualToAnchor:v28];
    [v29 setActive:1];

    objc_initWeak(&location, v2);
    v30 = MEMORY[0x277D432F0];
    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v32 = [v31 localizedStringForKey:@"CONTINUE" value:&stru_28753DF48 table:@"Localizable"];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __43__SSPRXD2DMigrationDoneViewController_init__block_invoke;
    v39 = &unk_279B448A0;
    objc_copyWeak(&v40, &location);
    v33 = [v30 actionWithTitle:v32 style:0 handler:&v36];

    v34 = [(SSPRXD2DMigrationDoneViewController *)v2 addAction:v33, v36, v37, v38, v39];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __43__SSPRXD2DMigrationDoneViewController_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _launchDisembarkUI:v3];
}

- (void)_launchDisembarkUI:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v5 = getDKPresenterClass_softClass;
  v12 = getDKPresenterClass_softClass;
  if (!getDKPresenterClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getDKPresenterClass_block_invoke;
    v8[3] = &unk_279B44778;
    v8[4] = &v9;
    __getDKPresenterClass_block_invoke(v8);
    v5 = v10[3];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);
  [v5 presentInSettings];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface PSGTransferOrResetController
- (id)createListController;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)viewDidLoad;
@end

@implementation PSGTransferOrResetController

- (id)createListController
{
  v2 = objc_alloc_init(PSGResetOrEraseListController);

  return v2;
}

- (void)viewDidLoad
{
  v114[4] = *MEMORY[0x277D85DE8];
  v112.receiver = self;
  v112.super_class = PSGTransferOrResetController;
  [(PSGTransferOrResetController *)&v112 viewDidLoad];
  v3 = PSG_LocalizedStringForGeneral(@"TRANSFER_OR_RESET_TITLE");
  [(PSGTransferOrResetController *)self setTitle:v3];

  v4 = objc_alloc_init(PSGTransferListController);
  transferListController = self->__transferListController;
  self->__transferListController = v4;

  v6 = [(PSGTransferOrResetController *)self _transferListController];
  v7 = [v6 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(PSGTransferOrResetController *)self _transferListController];
  [(PSGTransferOrResetController *)self addChildViewController:v8];

  v9 = [(PSGTransferOrResetController *)self view];
  v10 = [(PSGTransferOrResetController *)self _transferListController];
  v11 = [v10 view];
  [v9 addSubview:v11];

  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __43__PSGTransferOrResetController_viewDidLoad__block_invoke;
  v111[3] = &unk_278324EE0;
  v111[4] = self;
  v52 = MEMORY[0x223D38F60](v111);
  v12 = [(PSGTransferOrResetController *)self createListController];
  resetOrEraseListController = self->__resetOrEraseListController;
  self->__resetOrEraseListController = v12;

  v14 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  v15 = [v14 view];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  [(PSGTransferOrResetController *)self addChildViewController:v16];

  v17 = [(PSGTransferOrResetController *)self view];
  v18 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  v19 = [v18 view];
  [v17 addSubview:v19];

  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __43__PSGTransferOrResetController_viewDidLoad__block_invoke_2;
  v110[3] = &unk_278324EE0;
  v110[4] = self;
  v51 = MEMORY[0x223D38F60](v110);
  if (+[PSGMigrationController isEnabled])
  {
    v20 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
    v21 = [v20 table];
    [v21 _setBottomPadding:0.0];

    v22 = objc_alloc_init(PSGMigrationController);
    migrationController = self->__migrationController;
    self->__migrationController = v22;

    v24 = [(PSGTransferOrResetController *)self _migrationController];
    v25 = [v24 view];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

    v26 = [(PSGTransferOrResetController *)self _migrationController];
    [(PSGTransferOrResetController *)self addChildViewController:v26];

    v27 = [(PSGTransferOrResetController *)self view];
    v28 = [(PSGTransferOrResetController *)self _migrationController];
    v29 = [v28 view];
    [v27 addSubview:v29];

    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __43__PSGTransferOrResetController_viewDidLoad__block_invoke_3;
    v109[3] = &unk_278324EE0;
    v109[4] = self;
    v73 = MEMORY[0x223D38F60](v109);
    v71 = MEMORY[0x277CCAAD0];
    v107 = [(PSGTransferOrResetController *)self _migrationController];
    v105 = [v107 view];
    v99 = [v105 topAnchor];
    v103 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
    v101 = [v103 view];
    v97 = [v101 bottomAnchor];
    v95 = [v99 constraintEqualToAnchor:v97];
    v114[0] = v95;
    v93 = [(PSGTransferOrResetController *)self _migrationController];
    v91 = [v93 view];
    v87 = [v91 leadingAnchor];
    v89 = [(PSGTransferOrResetController *)self view];
    v85 = [v89 leadingAnchor];
    v83 = [v87 constraintEqualToAnchor:v85];
    v114[1] = v83;
    v81 = [(PSGTransferOrResetController *)self _migrationController];
    v79 = [v81 view];
    v75 = [v79 trailingAnchor];
    v77 = [(PSGTransferOrResetController *)self view];
    v30 = [v77 trailingAnchor];
    v31 = [v75 constraintEqualToAnchor:v30];
    v114[2] = v31;
    v32 = [(PSGTransferOrResetController *)self _migrationController];
    v33 = [v32 view];
    v34 = [v33 bottomAnchor];
    v35 = [(PSGTransferOrResetController *)self view];
    v36 = [v35 bottomAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v114[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:4];
    [v71 activateConstraints:v38];

    if (v73)
    {
      v73[2](v73);
    }
  }

  v39 = MEMORY[0x277CCAAD0];
  v108 = [(PSGTransferOrResetController *)self _transferListController];
  v106 = [v108 view];
  v102 = [v106 topAnchor];
  v104 = [(PSGTransferOrResetController *)self view];
  v100 = [v104 topAnchor];
  v98 = [v102 constraintEqualToAnchor:v100];
  v113[0] = v98;
  v96 = [(PSGTransferOrResetController *)self _transferListController];
  v94 = [v96 view];
  v90 = [v94 leadingAnchor];
  v92 = [(PSGTransferOrResetController *)self view];
  v88 = [v92 leadingAnchor];
  v86 = [v90 constraintEqualToAnchor:v88];
  v113[1] = v86;
  v84 = [(PSGTransferOrResetController *)self _transferListController];
  v82 = [v84 view];
  v78 = [v82 trailingAnchor];
  v80 = [(PSGTransferOrResetController *)self view];
  v76 = [v80 trailingAnchor];
  v74 = [v78 constraintEqualToAnchor:v76];
  v113[2] = v74;
  v72 = [(PSGTransferOrResetController *)self _transferListController];
  v70 = [v72 view];
  v67 = [v70 bottomAnchor];
  v69 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  v68 = [v69 view];
  v66 = [v68 topAnchor];
  v65 = [v67 constraintEqualToAnchor:v66];
  v113[3] = v65;
  v64 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  v63 = [v64 view];
  v61 = [v63 leadingAnchor];
  v62 = [(PSGTransferOrResetController *)self view];
  v60 = [v62 leadingAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v113[4] = v59;
  v58 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  v57 = [v58 view];
  v55 = [v57 trailingAnchor];
  v56 = [(PSGTransferOrResetController *)self view];
  v54 = [v56 trailingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v113[5] = v53;
  v40 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  v41 = [v40 view];
  v42 = [v41 bottomAnchor];
  v43 = [(PSGTransferOrResetController *)self _migrationController];
  if (v43)
  {
    v44 = [(PSGTransferOrResetController *)self _migrationController];
    v45 = [v44 view];
    v46 = [v45 topAnchor];
  }

  else
  {
    v44 = [(PSGTransferOrResetController *)self view];
    v46 = [v44 bottomAnchor];
    v45 = v46;
  }

  v47 = [v42 constraintEqualToAnchor:v46];
  v113[6] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:7];
  [v39 activateConstraints:v48];

  if (v43)
  {
  }

  if (v51)
  {
    v51[2](v51);
  }

  v49 = v52;
  if (v52)
  {
    (*(v52 + 2))();
    v49 = v52;
  }

  v50 = *MEMORY[0x277D85DE8];
}

void __43__PSGTransferOrResetController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transferListController];
  [v2 didMoveToParentViewController:*(a1 + 32)];
}

void __43__PSGTransferOrResetController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _resetOrEraseListController];
  [v2 didMoveToParentViewController:*(a1 + 32)];
}

void __43__PSGTransferOrResetController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _migrationController];
  [v2 didMoveToParentViewController:*(a1 + 32)];
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([PSGMigrationController canHandleURL:v9])
  {
    v7 = [(PSGTransferOrResetController *)self _migrationController];
LABEL_5:
    v8 = v7;
    [v7 handleURL:v9 withCompletion:v6];

    goto LABEL_7;
  }

  if ([PSGTransferListController canHandleURL:v9])
  {
    v7 = [(PSGTransferOrResetController *)self _transferListController];
    goto LABEL_5;
  }

  v6[2](v6);
LABEL_7:
}

@end
@interface PSGTransferOrResetController
- (id)createListController;
- (void)handleURL:(id)l withCompletion:(id)completion;
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

  _transferListController = [(PSGTransferOrResetController *)self _transferListController];
  view = [_transferListController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  _transferListController2 = [(PSGTransferOrResetController *)self _transferListController];
  [(PSGTransferOrResetController *)self addChildViewController:_transferListController2];

  view2 = [(PSGTransferOrResetController *)self view];
  _transferListController3 = [(PSGTransferOrResetController *)self _transferListController];
  view3 = [_transferListController3 view];
  [view2 addSubview:view3];

  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __43__PSGTransferOrResetController_viewDidLoad__block_invoke;
  v111[3] = &unk_278324EE0;
  v111[4] = self;
  v52 = MEMORY[0x223D38F60](v111);
  createListController = [(PSGTransferOrResetController *)self createListController];
  resetOrEraseListController = self->__resetOrEraseListController;
  self->__resetOrEraseListController = createListController;

  _resetOrEraseListController = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  view4 = [_resetOrEraseListController view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  _resetOrEraseListController2 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  [(PSGTransferOrResetController *)self addChildViewController:_resetOrEraseListController2];

  view5 = [(PSGTransferOrResetController *)self view];
  _resetOrEraseListController3 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  view6 = [_resetOrEraseListController3 view];
  [view5 addSubview:view6];

  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __43__PSGTransferOrResetController_viewDidLoad__block_invoke_2;
  v110[3] = &unk_278324EE0;
  v110[4] = self;
  v51 = MEMORY[0x223D38F60](v110);
  if (+[PSGMigrationController isEnabled])
  {
    _resetOrEraseListController4 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
    table = [_resetOrEraseListController4 table];
    [table _setBottomPadding:0.0];

    v22 = objc_alloc_init(PSGMigrationController);
    migrationController = self->__migrationController;
    self->__migrationController = v22;

    _migrationController = [(PSGTransferOrResetController *)self _migrationController];
    view7 = [_migrationController view];
    [view7 setTranslatesAutoresizingMaskIntoConstraints:0];

    _migrationController2 = [(PSGTransferOrResetController *)self _migrationController];
    [(PSGTransferOrResetController *)self addChildViewController:_migrationController2];

    view8 = [(PSGTransferOrResetController *)self view];
    _migrationController3 = [(PSGTransferOrResetController *)self _migrationController];
    view9 = [_migrationController3 view];
    [view8 addSubview:view9];

    v109[0] = MEMORY[0x277D85DD0];
    v109[1] = 3221225472;
    v109[2] = __43__PSGTransferOrResetController_viewDidLoad__block_invoke_3;
    v109[3] = &unk_278324EE0;
    v109[4] = self;
    v73 = MEMORY[0x223D38F60](v109);
    v71 = MEMORY[0x277CCAAD0];
    _migrationController4 = [(PSGTransferOrResetController *)self _migrationController];
    view10 = [_migrationController4 view];
    topAnchor = [view10 topAnchor];
    _resetOrEraseListController5 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
    view11 = [_resetOrEraseListController5 view];
    bottomAnchor = [view11 bottomAnchor];
    v95 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v114[0] = v95;
    _migrationController5 = [(PSGTransferOrResetController *)self _migrationController];
    view12 = [_migrationController5 view];
    leadingAnchor = [view12 leadingAnchor];
    view13 = [(PSGTransferOrResetController *)self view];
    leadingAnchor2 = [view13 leadingAnchor];
    v83 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v114[1] = v83;
    _migrationController6 = [(PSGTransferOrResetController *)self _migrationController];
    view14 = [_migrationController6 view];
    trailingAnchor = [view14 trailingAnchor];
    view15 = [(PSGTransferOrResetController *)self view];
    trailingAnchor2 = [view15 trailingAnchor];
    v31 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v114[2] = v31;
    _migrationController7 = [(PSGTransferOrResetController *)self _migrationController];
    view16 = [_migrationController7 view];
    bottomAnchor2 = [view16 bottomAnchor];
    view17 = [(PSGTransferOrResetController *)self view];
    bottomAnchor3 = [view17 bottomAnchor];
    v37 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v114[3] = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:4];
    [v71 activateConstraints:v38];

    if (v73)
    {
      v73[2](v73);
    }
  }

  v39 = MEMORY[0x277CCAAD0];
  _transferListController4 = [(PSGTransferOrResetController *)self _transferListController];
  view18 = [_transferListController4 view];
  topAnchor2 = [view18 topAnchor];
  view19 = [(PSGTransferOrResetController *)self view];
  topAnchor3 = [view19 topAnchor];
  v98 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v113[0] = v98;
  _transferListController5 = [(PSGTransferOrResetController *)self _transferListController];
  view20 = [_transferListController5 view];
  leadingAnchor3 = [view20 leadingAnchor];
  view21 = [(PSGTransferOrResetController *)self view];
  leadingAnchor4 = [view21 leadingAnchor];
  v86 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v113[1] = v86;
  _transferListController6 = [(PSGTransferOrResetController *)self _transferListController];
  view22 = [_transferListController6 view];
  trailingAnchor3 = [view22 trailingAnchor];
  view23 = [(PSGTransferOrResetController *)self view];
  trailingAnchor4 = [view23 trailingAnchor];
  v74 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v113[2] = v74;
  _transferListController7 = [(PSGTransferOrResetController *)self _transferListController];
  view24 = [_transferListController7 view];
  bottomAnchor4 = [view24 bottomAnchor];
  _resetOrEraseListController6 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  view25 = [_resetOrEraseListController6 view];
  topAnchor4 = [view25 topAnchor];
  v65 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4];
  v113[3] = v65;
  _resetOrEraseListController7 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  view26 = [_resetOrEraseListController7 view];
  leadingAnchor5 = [view26 leadingAnchor];
  view27 = [(PSGTransferOrResetController *)self view];
  leadingAnchor6 = [view27 leadingAnchor];
  v59 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v113[4] = v59;
  _resetOrEraseListController8 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  view28 = [_resetOrEraseListController8 view];
  trailingAnchor5 = [view28 trailingAnchor];
  view29 = [(PSGTransferOrResetController *)self view];
  trailingAnchor6 = [view29 trailingAnchor];
  v53 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v113[5] = v53;
  _resetOrEraseListController9 = [(PSGTransferOrResetController *)self _resetOrEraseListController];
  view30 = [_resetOrEraseListController9 view];
  bottomAnchor5 = [view30 bottomAnchor];
  _migrationController8 = [(PSGTransferOrResetController *)self _migrationController];
  if (_migrationController8)
  {
    _migrationController9 = [(PSGTransferOrResetController *)self _migrationController];
    view31 = [_migrationController9 view];
    topAnchor5 = [view31 topAnchor];
  }

  else
  {
    _migrationController9 = [(PSGTransferOrResetController *)self view];
    topAnchor5 = [_migrationController9 bottomAnchor];
    view31 = topAnchor5;
  }

  v47 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5];
  v113[6] = v47;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:7];
  [v39 activateConstraints:v48];

  if (_migrationController8)
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

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if ([PSGMigrationController canHandleURL:lCopy])
  {
    _migrationController = [(PSGTransferOrResetController *)self _migrationController];
LABEL_5:
    v8 = _migrationController;
    [_migrationController handleURL:lCopy withCompletion:completionCopy];

    goto LABEL_7;
  }

  if ([PSGTransferListController canHandleURL:lCopy])
  {
    _migrationController = [(PSGTransferOrResetController *)self _transferListController];
    goto LABEL_5;
  }

  completionCopy[2](completionCopy);
LABEL_7:
}

@end
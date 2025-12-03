@interface PSUIAddNewPlanController
- (BOOL)shouldShowPendingInstallPlan;
- (PSUIAddNewPlanController)init;
- (id)QRCodeGroupSpecifier;
- (id)addOnGroupSpecifier;
- (id)carrierItemGroupSpecifier;
- (id)createAddOnGroupIfNeeded:(id)needed;
- (id)createCarrierItemGroupIfNeeded:(id)needed;
- (id)createCrossPlatformGroupIfNeeded:(id)needed;
- (id)createPendingInstallGroupIfNeeded:(id)needed;
- (id)createQRCodeGroupIfNeeded:(id)needed;
- (id)createTransferablePlanGroupIfNeeded:(id)needed;
- (id)crossPlatformGroupSpecifier;
- (id)pendingInstallGroupSpecifier;
- (id)specifiers;
- (id)transferablePlanGroupSpecifier;
- (void)addCancelButton;
- (void)cellularPlanChanged:(id)changed;
- (void)viewDidLoad;
@end

@implementation PSUIAddNewPlanController

- (PSUIAddNewPlanController)init
{
  v9.receiver = self;
  v9.super_class = PSUIAddNewPlanController;
  v2 = [(PSUIAddNewPlanController *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_dismiss];
    cancelButton = v2->_cancelButton;
    v2->_cancelButton = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_cellularPlanChanged_ name:@"PSUICellularPlanChanged" object:0];

    [(PSUIAddNewPlanController *)v2 setModalInPresentation:1];
    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    planItems = [v6 planItems];
  }

  return v2;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PSUIAddNewPlanController;
  [(PSUIAddNewPlanController *)&v3 viewDidLoad];
  [(PSUIAddNewPlanController *)self addCancelButton];
}

- (void)cellularPlanChanged:(id)changed
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__PSUIAddNewPlanController_cellularPlanChanged___block_invoke;
  block[3] = &unk_279BA9D58;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)addCancelButton
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  navigationItem = [(PSUIAddNewPlanController *)self navigationItem];
  cancelButton = self->_cancelButton;
  v7 = navigationItem;
  if (sf_isiPad)
  {
    [navigationItem setRightBarButtonItem:cancelButton animated:1];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:cancelButton animated:1];
  }
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(PSUIAddNewPlanController *)self shouldShowPendingInstallPlan])
  {
    pendingInstallGroupSpecifier = [(PSUIAddNewPlanController *)self pendingInstallGroupSpecifier];
    pendingInstallGroupSpecifier = self->_pendingInstallGroupSpecifier;
    self->_pendingInstallGroupSpecifier = pendingInstallGroupSpecifier;

    v6 = [(PSUIAddNewPlanController *)self createPendingInstallGroupIfNeeded:self->_pendingInstallGroupSpecifier];
    [(PSUIAddNewPlanController *)self setPendingInstallGroup:v6];

    [v3 addObject:self->_pendingInstallGroupSpecifier];
    pendingInstallGroup = [(PSUIAddNewPlanController *)self pendingInstallGroup];
    specifiers = [pendingInstallGroup specifiers];
    [v3 addObjectsFromArray:specifiers];
  }

  transferablePlanGroupSpecifier = [(PSUIAddNewPlanController *)self transferablePlanGroupSpecifier];
  transferablePlanGroupSpecifier = self->_transferablePlanGroupSpecifier;
  self->_transferablePlanGroupSpecifier = transferablePlanGroupSpecifier;

  v11 = [(PSUIAddNewPlanController *)self createTransferablePlanGroupIfNeeded:self->_transferablePlanGroupSpecifier];
  [(PSUIAddNewPlanController *)self setTransferablePlanGroup:v11];

  [v3 addObject:self->_transferablePlanGroupSpecifier];
  transferablePlanGroup = [(PSUIAddNewPlanController *)self transferablePlanGroup];
  specifiers2 = [transferablePlanGroup specifiers];
  [v3 addObjectsFromArray:specifiers2];

  addOnGroupSpecifier = [(PSUIAddNewPlanController *)self addOnGroupSpecifier];
  addOnGroupSpecifier = self->_addOnGroupSpecifier;
  self->_addOnGroupSpecifier = addOnGroupSpecifier;

  v16 = [(PSUIAddNewPlanController *)self createAddOnGroupIfNeeded:self->_addOnGroupSpecifier];
  [(PSUIAddNewPlanController *)self setAddOnPlanGroup:v16];

  addOnPlanGroup = [(PSUIAddNewPlanController *)self addOnPlanGroup];
  specifiers3 = [addOnPlanGroup specifiers];

  if ([specifiers3 count])
  {
    [v3 addObject:self->_addOnGroupSpecifier];
  }

  [v3 ps_addSpecifiers:specifiers3 toGroup:self->_addOnGroupSpecifier];
  carrierItemGroupSpecifier = [(PSUIAddNewPlanController *)self carrierItemGroupSpecifier];
  carrierItemGroupSpecifier = self->_carrierItemGroupSpecifier;
  self->_carrierItemGroupSpecifier = carrierItemGroupSpecifier;

  v21 = [(PSUIAddNewPlanController *)self createCarrierItemGroupIfNeeded:self->_carrierItemGroupSpecifier];
  [(PSUIAddNewPlanController *)self setCarrierItemGroup:v21];

  carrierItemGroup = [(PSUIAddNewPlanController *)self carrierItemGroup];
  specifiers4 = [carrierItemGroup specifiers];

  if ([specifiers4 count])
  {
    [v3 addObject:self->_carrierItemGroupSpecifier];
  }

  [v3 ps_addSpecifiers:specifiers4 toGroup:self->_carrierItemGroupSpecifier];
  qRCodeGroupSpecifier = [(PSUIAddNewPlanController *)self QRCodeGroupSpecifier];
  QRCodeGroupSpecifier = self->_QRCodeGroupSpecifier;
  self->_QRCodeGroupSpecifier = qRCodeGroupSpecifier;

  v26 = [(PSUIAddNewPlanController *)self createQRCodeGroupIfNeeded:self->_QRCodeGroupSpecifier];
  [(PSUIAddNewPlanController *)self setQRCodeGroup:v26];

  [v3 addObject:self->_QRCodeGroupSpecifier];
  qRCodeGroup = [(PSUIAddNewPlanController *)self QRCodeGroup];
  specifiers5 = [qRCodeGroup specifiers];
  [v3 addObjectsFromArray:specifiers5];

  crossPlatformGroupSpecifier = [(PSUIAddNewPlanController *)self crossPlatformGroupSpecifier];
  crossPlatformGroupSpecifier = self->_crossPlatformGroupSpecifier;
  self->_crossPlatformGroupSpecifier = crossPlatformGroupSpecifier;

  v31 = [(PSUIAddNewPlanController *)self createCrossPlatformGroupIfNeeded:self->_crossPlatformGroupSpecifier];
  [(PSUIAddNewPlanController *)self setCrossPlatformGroup:v31];

  [v3 addObject:self->_crossPlatformGroupSpecifier];
  crossPlatformGroup = [(PSUIAddNewPlanController *)self crossPlatformGroup];
  specifiers6 = [crossPlatformGroup specifiers];
  [v3 addObjectsFromArray:specifiers6];

  v34 = *MEMORY[0x277D3FC48];
  v35 = *(&self->super.super.super.super.super.isa + v34);
  *(&self->super.super.super.super.super.isa + v34) = v3;
  v36 = v3;

  v37 = *(&self->super.super.super.super.super.isa + v34);
  v38 = v37;

  return v37;
}

- (id)pendingInstallGroupSpecifier
{
  pendingInstallGroupSpecifier = self->_pendingInstallGroupSpecifier;
  if (pendingInstallGroupSpecifier)
  {
    v3 = pendingInstallGroupSpecifier;
  }

  else
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PENDING_INSTALL_GROUP"];
  }

  return v3;
}

- (id)transferablePlanGroupSpecifier
{
  transferablePlanGroupSpecifier = self->_transferablePlanGroupSpecifier;
  if (transferablePlanGroupSpecifier)
  {
    v3 = transferablePlanGroupSpecifier;
  }

  else
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TRANSFER_PLAN_GROUP"];
  }

  return v3;
}

- (id)carrierItemGroupSpecifier
{
  carrierItemGroupSpecifier = self->_carrierItemGroupSpecifier;
  if (carrierItemGroupSpecifier)
  {
    v3 = carrierItemGroupSpecifier;
  }

  else
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CARRIER_ITEM_GROUP"];
  }

  return v3;
}

- (id)addOnGroupSpecifier
{
  addOnGroupSpecifier = self->_addOnGroupSpecifier;
  if (addOnGroupSpecifier)
  {
    v3 = addOnGroupSpecifier;
  }

  else
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADD_ON_PLAN_GROUP"];
  }

  return v3;
}

- (id)QRCodeGroupSpecifier
{
  QRCodeGroupSpecifier = self->_QRCodeGroupSpecifier;
  if (QRCodeGroupSpecifier)
  {
    v3 = QRCodeGroupSpecifier;
  }

  else
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"QR_CODE_GROUP"];
  }

  return v3;
}

- (id)crossPlatformGroupSpecifier
{
  crossPlatformGroupSpecifier = self->_crossPlatformGroupSpecifier;
  if (crossPlatformGroupSpecifier)
  {
    v3 = crossPlatformGroupSpecifier;
  }

  else
  {
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"CROSS_PLATFORM_GROUP"];
  }

  return v3;
}

- (id)createPendingInstallGroupIfNeeded:(id)needed
{
  pendingInstallGroup = self->_pendingInstallGroup;
  if (pendingInstallGroup)
  {
    v4 = pendingInstallGroup;
  }

  else
  {
    neededCopy = needed;
    v4 = [[PSUIPendingInstallPlanGroup alloc] initWithListController:self groupSpecifier:neededCopy];
  }

  return v4;
}

- (id)createTransferablePlanGroupIfNeeded:(id)needed
{
  transferablePlanGroup = self->_transferablePlanGroup;
  if (transferablePlanGroup)
  {
    v4 = transferablePlanGroup;
  }

  else
  {
    neededCopy = needed;
    v4 = [[PSUIPlanPendingTransferListGroup alloc] initWithListController:self groupSpecifier:neededCopy];
  }

  return v4;
}

- (id)createCarrierItemGroupIfNeeded:(id)needed
{
  carrierItemGroup = self->_carrierItemGroup;
  if (carrierItemGroup)
  {
    v4 = carrierItemGroup;
  }

  else
  {
    neededCopy = needed;
    v4 = [[PSUICarrierItemGroup alloc] initWithListController:self groupSpecifier:neededCopy showCarrierItems:0];
  }

  return v4;
}

- (id)createAddOnGroupIfNeeded:(id)needed
{
  addOnPlanGroup = self->_addOnPlanGroup;
  if (addOnPlanGroup)
  {
    v4 = addOnPlanGroup;
  }

  else
  {
    neededCopy = needed;
    v4 = [[PSUIAddOnPlanGroup alloc] initWithListController:self groupSpecifier:neededCopy showAddOnPlans:0];
  }

  return v4;
}

- (id)createQRCodeGroupIfNeeded:(id)needed
{
  QRCodeGroup = self->_QRCodeGroup;
  if (QRCodeGroup)
  {
    v4 = QRCodeGroup;
  }

  else
  {
    neededCopy = needed;
    v4 = [[PSUIQRCodeGroup alloc] initWithListController:self groupSpecifier:neededCopy];
  }

  return v4;
}

- (id)createCrossPlatformGroupIfNeeded:(id)needed
{
  crossPlatformGroup = self->_crossPlatformGroup;
  if (crossPlatformGroup)
  {
    v4 = crossPlatformGroup;
  }

  else
  {
    neededCopy = needed;
    v4 = [[PSUICrossPlatformGroup alloc] initWithListController:self groupSpecifier:neededCopy];
  }

  return v4;
}

- (BOOL)shouldShowPendingInstallPlan
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice sf_isiPad])
  {
    v3 = +[PSUICellularPlanManagerCache sharedInstance];
    planItems = [v3 planItems];
    if ([planItems count])
    {
      v5 = +[PSUICellularPlanManagerCache sharedInstance];
      pendingInstallPlans = [v5 pendingInstallPlans];
      plans = [pendingInstallPlans plans];
      v8 = [plans count] != 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
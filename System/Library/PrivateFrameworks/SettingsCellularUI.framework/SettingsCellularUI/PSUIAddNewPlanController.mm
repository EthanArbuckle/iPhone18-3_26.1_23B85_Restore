@interface PSUIAddNewPlanController
- (BOOL)shouldShowPendingInstallPlan;
- (PSUIAddNewPlanController)init;
- (id)QRCodeGroupSpecifier;
- (id)addOnGroupSpecifier;
- (id)carrierItemGroupSpecifier;
- (id)createAddOnGroupIfNeeded:(id)a3;
- (id)createCarrierItemGroupIfNeeded:(id)a3;
- (id)createCrossPlatformGroupIfNeeded:(id)a3;
- (id)createPendingInstallGroupIfNeeded:(id)a3;
- (id)createQRCodeGroupIfNeeded:(id)a3;
- (id)createTransferablePlanGroupIfNeeded:(id)a3;
- (id)crossPlatformGroupSpecifier;
- (id)pendingInstallGroupSpecifier;
- (id)specifiers;
- (id)transferablePlanGroupSpecifier;
- (void)addCancelButton;
- (void)cellularPlanChanged:(id)a3;
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

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_cellularPlanChanged_ name:@"PSUICellularPlanChanged" object:0];

    [(PSUIAddNewPlanController *)v2 setModalInPresentation:1];
    v6 = +[PSUICellularPlanManagerCache sharedInstance];
    v7 = [v6 planItems];
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

- (void)cellularPlanChanged:(id)a3
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
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isiPad];

  v5 = [(PSUIAddNewPlanController *)self navigationItem];
  cancelButton = self->_cancelButton;
  v7 = v5;
  if (v4)
  {
    [v5 setRightBarButtonItem:cancelButton animated:1];
  }

  else
  {
    [v5 setLeftBarButtonItem:cancelButton animated:1];
  }
}

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(PSUIAddNewPlanController *)self shouldShowPendingInstallPlan])
  {
    v4 = [(PSUIAddNewPlanController *)self pendingInstallGroupSpecifier];
    pendingInstallGroupSpecifier = self->_pendingInstallGroupSpecifier;
    self->_pendingInstallGroupSpecifier = v4;

    v6 = [(PSUIAddNewPlanController *)self createPendingInstallGroupIfNeeded:self->_pendingInstallGroupSpecifier];
    [(PSUIAddNewPlanController *)self setPendingInstallGroup:v6];

    [v3 addObject:self->_pendingInstallGroupSpecifier];
    v7 = [(PSUIAddNewPlanController *)self pendingInstallGroup];
    v8 = [v7 specifiers];
    [v3 addObjectsFromArray:v8];
  }

  v9 = [(PSUIAddNewPlanController *)self transferablePlanGroupSpecifier];
  transferablePlanGroupSpecifier = self->_transferablePlanGroupSpecifier;
  self->_transferablePlanGroupSpecifier = v9;

  v11 = [(PSUIAddNewPlanController *)self createTransferablePlanGroupIfNeeded:self->_transferablePlanGroupSpecifier];
  [(PSUIAddNewPlanController *)self setTransferablePlanGroup:v11];

  [v3 addObject:self->_transferablePlanGroupSpecifier];
  v12 = [(PSUIAddNewPlanController *)self transferablePlanGroup];
  v13 = [v12 specifiers];
  [v3 addObjectsFromArray:v13];

  v14 = [(PSUIAddNewPlanController *)self addOnGroupSpecifier];
  addOnGroupSpecifier = self->_addOnGroupSpecifier;
  self->_addOnGroupSpecifier = v14;

  v16 = [(PSUIAddNewPlanController *)self createAddOnGroupIfNeeded:self->_addOnGroupSpecifier];
  [(PSUIAddNewPlanController *)self setAddOnPlanGroup:v16];

  v17 = [(PSUIAddNewPlanController *)self addOnPlanGroup];
  v18 = [v17 specifiers];

  if ([v18 count])
  {
    [v3 addObject:self->_addOnGroupSpecifier];
  }

  [v3 ps_addSpecifiers:v18 toGroup:self->_addOnGroupSpecifier];
  v19 = [(PSUIAddNewPlanController *)self carrierItemGroupSpecifier];
  carrierItemGroupSpecifier = self->_carrierItemGroupSpecifier;
  self->_carrierItemGroupSpecifier = v19;

  v21 = [(PSUIAddNewPlanController *)self createCarrierItemGroupIfNeeded:self->_carrierItemGroupSpecifier];
  [(PSUIAddNewPlanController *)self setCarrierItemGroup:v21];

  v22 = [(PSUIAddNewPlanController *)self carrierItemGroup];
  v23 = [v22 specifiers];

  if ([v23 count])
  {
    [v3 addObject:self->_carrierItemGroupSpecifier];
  }

  [v3 ps_addSpecifiers:v23 toGroup:self->_carrierItemGroupSpecifier];
  v24 = [(PSUIAddNewPlanController *)self QRCodeGroupSpecifier];
  QRCodeGroupSpecifier = self->_QRCodeGroupSpecifier;
  self->_QRCodeGroupSpecifier = v24;

  v26 = [(PSUIAddNewPlanController *)self createQRCodeGroupIfNeeded:self->_QRCodeGroupSpecifier];
  [(PSUIAddNewPlanController *)self setQRCodeGroup:v26];

  [v3 addObject:self->_QRCodeGroupSpecifier];
  v27 = [(PSUIAddNewPlanController *)self QRCodeGroup];
  v28 = [v27 specifiers];
  [v3 addObjectsFromArray:v28];

  v29 = [(PSUIAddNewPlanController *)self crossPlatformGroupSpecifier];
  crossPlatformGroupSpecifier = self->_crossPlatformGroupSpecifier;
  self->_crossPlatformGroupSpecifier = v29;

  v31 = [(PSUIAddNewPlanController *)self createCrossPlatformGroupIfNeeded:self->_crossPlatformGroupSpecifier];
  [(PSUIAddNewPlanController *)self setCrossPlatformGroup:v31];

  [v3 addObject:self->_crossPlatformGroupSpecifier];
  v32 = [(PSUIAddNewPlanController *)self crossPlatformGroup];
  v33 = [v32 specifiers];
  [v3 addObjectsFromArray:v33];

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

- (id)createPendingInstallGroupIfNeeded:(id)a3
{
  pendingInstallGroup = self->_pendingInstallGroup;
  if (pendingInstallGroup)
  {
    v4 = pendingInstallGroup;
  }

  else
  {
    v6 = a3;
    v4 = [[PSUIPendingInstallPlanGroup alloc] initWithListController:self groupSpecifier:v6];
  }

  return v4;
}

- (id)createTransferablePlanGroupIfNeeded:(id)a3
{
  transferablePlanGroup = self->_transferablePlanGroup;
  if (transferablePlanGroup)
  {
    v4 = transferablePlanGroup;
  }

  else
  {
    v6 = a3;
    v4 = [[PSUIPlanPendingTransferListGroup alloc] initWithListController:self groupSpecifier:v6];
  }

  return v4;
}

- (id)createCarrierItemGroupIfNeeded:(id)a3
{
  carrierItemGroup = self->_carrierItemGroup;
  if (carrierItemGroup)
  {
    v4 = carrierItemGroup;
  }

  else
  {
    v6 = a3;
    v4 = [[PSUICarrierItemGroup alloc] initWithListController:self groupSpecifier:v6 showCarrierItems:0];
  }

  return v4;
}

- (id)createAddOnGroupIfNeeded:(id)a3
{
  addOnPlanGroup = self->_addOnPlanGroup;
  if (addOnPlanGroup)
  {
    v4 = addOnPlanGroup;
  }

  else
  {
    v6 = a3;
    v4 = [[PSUIAddOnPlanGroup alloc] initWithListController:self groupSpecifier:v6 showAddOnPlans:0];
  }

  return v4;
}

- (id)createQRCodeGroupIfNeeded:(id)a3
{
  QRCodeGroup = self->_QRCodeGroup;
  if (QRCodeGroup)
  {
    v4 = QRCodeGroup;
  }

  else
  {
    v6 = a3;
    v4 = [[PSUIQRCodeGroup alloc] initWithListController:self groupSpecifier:v6];
  }

  return v4;
}

- (id)createCrossPlatformGroupIfNeeded:(id)a3
{
  crossPlatformGroup = self->_crossPlatformGroup;
  if (crossPlatformGroup)
  {
    v4 = crossPlatformGroup;
  }

  else
  {
    v6 = a3;
    v4 = [[PSUICrossPlatformGroup alloc] initWithListController:self groupSpecifier:v6];
  }

  return v4;
}

- (BOOL)shouldShowPendingInstallPlan
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  if ([v2 sf_isiPad])
  {
    v3 = +[PSUICellularPlanManagerCache sharedInstance];
    v4 = [v3 planItems];
    if ([v4 count])
    {
      v5 = +[PSUICellularPlanManagerCache sharedInstance];
      v6 = [v5 pendingInstallPlans];
      v7 = [v6 plans];
      v8 = [v7 count] != 0;
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
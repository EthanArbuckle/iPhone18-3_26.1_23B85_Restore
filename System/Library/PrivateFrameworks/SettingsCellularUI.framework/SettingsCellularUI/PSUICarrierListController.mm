@interface PSUICarrierListController
- (PSUICarrierListController)init;
- (PSUICarrierListController)initWithOptions:(BOOL)a3 showCarrierItemGroup:(BOOL)a4;
- (id)addOnGroupSpecifier;
- (id)carrierItemGroupSpecifier;
- (id)createAddCellularPlanSpecifierIfNeeded:(id)a3;
- (id)createCarrierItemGroupIfNeeded:(id)a3;
- (id)specifiers;
- (void)addCancelButton;
- (void)cellularPlanChanged:(id)a3;
- (void)loadView;
@end

@implementation PSUICarrierListController

- (PSUICarrierListController)init
{
  v7.receiver = self;
  v7.super_class = PSUICarrierListController;
  v2 = [(PSUICarrierListController *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_dismiss];
    cancelButton = v2->_cancelButton;
    v2->_cancelButton = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel_cellularPlanChanged_ name:@"PSUICellularPlanChanged" object:0];

    [(PSUICarrierListController *)v2 setModalInPresentation:1];
    v2->_showCarrierItemGroup = 1;
    v2->_showAddOnPlanGroup = 1;
  }

  return v2;
}

- (PSUICarrierListController)initWithOptions:(BOOL)a3 showCarrierItemGroup:(BOOL)a4
{
  result = [(PSUICarrierListController *)self init];
  if (result)
  {
    result->_showAddOnPlanGroup = a3;
    result->_showCarrierItemGroup = a4;
  }

  return result;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PSUICarrierListController;
  [(PSUICarrierListController *)&v3 loadView];
  [(PSUICarrierListController *)self addCancelButton];
}

- (void)cellularPlanChanged:(id)a3
{
  v4 = a3;
  carrierItemGroup = self->_carrierItemGroup;
  if (carrierItemGroup && [(PSUICarrierItemGroup *)carrierItemGroup isFlowRunning])
  {
    v6 = [(PSUICarrierListController *)self getLogger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, v6, OS_LOG_TYPE_DEFAULT, "flow is still running", buf, 2u);
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PSUICarrierListController_cellularPlanChanged___block_invoke;
    block[3] = &unk_279BA9D58;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)addCancelButton
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 sf_isiPad];

  v5 = [(PSUICarrierListController *)self navigationItem];
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
  if (self->_showAddOnPlanGroup)
  {
    v4 = [(PSUICarrierListController *)self addOnGroupSpecifier];
    addOnGroupSpecifier = self->_addOnGroupSpecifier;
    self->_addOnGroupSpecifier = v4;

    v6 = [(PSUICarrierListController *)self createAddCellularPlanSpecifierIfNeeded:self->_addOnGroupSpecifier];
    [(PSUICarrierListController *)self setAddOnPlanGroup:v6];

    v7 = [(PSUICarrierListController *)self addOnPlanGroup];
    v8 = [v7 specifiers];

    if ([v8 count])
    {
      [v3 addObject:self->_addOnGroupSpecifier];
      [v3 ps_addSpecifiers:v8 toGroup:self->_addOnGroupSpecifier];
    }
  }

  if (self->_showCarrierItemGroup)
  {
    v9 = [(PSUICarrierListController *)self carrierItemGroupSpecifier];
    carrierItemGroupSpecifier = self->_carrierItemGroupSpecifier;
    self->_carrierItemGroupSpecifier = v9;

    [v3 addObject:self->_carrierItemGroupSpecifier];
    v11 = [(PSUICarrierListController *)self createCarrierItemGroupIfNeeded:self->_carrierItemGroupSpecifier];
    [(PSUICarrierListController *)self setCarrierItemGroup:v11];

    v12 = [(PSUICarrierListController *)self carrierItemGroup];
    v13 = [v12 specifiers];
    [v3 ps_addSpecifiers:v13 toGroup:self->_carrierItemGroupSpecifier];
  }

  v14 = *MEMORY[0x277D3FC48];
  v15 = *(&self->super.super.super.super.super.isa + v14);
  *(&self->super.super.super.super.super.isa + v14) = v3;
  v16 = v3;

  v17 = *(&self->super.super.super.super.super.isa + v14);
  v18 = v17;

  return v17;
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
    v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ADD_NEW_NETWORK_GROUP"];
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
    v4 = [[PSUICarrierItemGroup alloc] initWithListController:self groupSpecifier:v6 showCarrierItems:self->_showCarrierItemGroup];
  }

  return v4;
}

- (id)createAddCellularPlanSpecifierIfNeeded:(id)a3
{
  addOnPlanGroup = self->_addOnPlanGroup;
  if (addOnPlanGroup)
  {
    v4 = addOnPlanGroup;
  }

  else
  {
    v6 = a3;
    v4 = [[PSUIAddOnPlanGroup alloc] initWithListController:self groupSpecifier:v6];
  }

  return v4;
}

@end
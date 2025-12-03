@interface PSUICarrierListController
- (PSUICarrierListController)init;
- (PSUICarrierListController)initWithOptions:(BOOL)options showCarrierItemGroup:(BOOL)group;
- (id)addOnGroupSpecifier;
- (id)carrierItemGroupSpecifier;
- (id)createAddCellularPlanSpecifierIfNeeded:(id)needed;
- (id)createCarrierItemGroupIfNeeded:(id)needed;
- (id)specifiers;
- (void)addCancelButton;
- (void)cellularPlanChanged:(id)changed;
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_cellularPlanChanged_ name:@"PSUICellularPlanChanged" object:0];

    [(PSUICarrierListController *)v2 setModalInPresentation:1];
    v2->_showCarrierItemGroup = 1;
    v2->_showAddOnPlanGroup = 1;
  }

  return v2;
}

- (PSUICarrierListController)initWithOptions:(BOOL)options showCarrierItemGroup:(BOOL)group
{
  result = [(PSUICarrierListController *)self init];
  if (result)
  {
    result->_showAddOnPlanGroup = options;
    result->_showCarrierItemGroup = group;
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

- (void)cellularPlanChanged:(id)changed
{
  changedCopy = changed;
  carrierItemGroup = self->_carrierItemGroup;
  if (carrierItemGroup && [(PSUICarrierItemGroup *)carrierItemGroup isFlowRunning])
  {
    getLogger = [(PSUICarrierListController *)self getLogger];
    if (os_log_type_enabled(getLogger, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2658DE000, getLogger, OS_LOG_TYPE_DEFAULT, "flow is still running", buf, 2u);
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
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isiPad = [currentDevice sf_isiPad];

  navigationItem = [(PSUICarrierListController *)self navigationItem];
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
  if (self->_showAddOnPlanGroup)
  {
    addOnGroupSpecifier = [(PSUICarrierListController *)self addOnGroupSpecifier];
    addOnGroupSpecifier = self->_addOnGroupSpecifier;
    self->_addOnGroupSpecifier = addOnGroupSpecifier;

    v6 = [(PSUICarrierListController *)self createAddCellularPlanSpecifierIfNeeded:self->_addOnGroupSpecifier];
    [(PSUICarrierListController *)self setAddOnPlanGroup:v6];

    addOnPlanGroup = [(PSUICarrierListController *)self addOnPlanGroup];
    specifiers = [addOnPlanGroup specifiers];

    if ([specifiers count])
    {
      [v3 addObject:self->_addOnGroupSpecifier];
      [v3 ps_addSpecifiers:specifiers toGroup:self->_addOnGroupSpecifier];
    }
  }

  if (self->_showCarrierItemGroup)
  {
    carrierItemGroupSpecifier = [(PSUICarrierListController *)self carrierItemGroupSpecifier];
    carrierItemGroupSpecifier = self->_carrierItemGroupSpecifier;
    self->_carrierItemGroupSpecifier = carrierItemGroupSpecifier;

    [v3 addObject:self->_carrierItemGroupSpecifier];
    v11 = [(PSUICarrierListController *)self createCarrierItemGroupIfNeeded:self->_carrierItemGroupSpecifier];
    [(PSUICarrierListController *)self setCarrierItemGroup:v11];

    carrierItemGroup = [(PSUICarrierListController *)self carrierItemGroup];
    specifiers2 = [carrierItemGroup specifiers];
    [v3 ps_addSpecifiers:specifiers2 toGroup:self->_carrierItemGroupSpecifier];
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
    v4 = [[PSUICarrierItemGroup alloc] initWithListController:self groupSpecifier:neededCopy showCarrierItems:self->_showCarrierItemGroup];
  }

  return v4;
}

- (id)createAddCellularPlanSpecifierIfNeeded:(id)needed
{
  addOnPlanGroup = self->_addOnPlanGroup;
  if (addOnPlanGroup)
  {
    v4 = addOnPlanGroup;
  }

  else
  {
    neededCopy = needed;
    v4 = [[PSUIAddOnPlanGroup alloc] initWithListController:self groupSpecifier:neededCopy];
  }

  return v4;
}

@end
@interface WBUSheetAlertController
- (WBUSheetAlertController)initWithAlert:(id)a3 automaticallyDismiss:(BOOL)a4 completionHandler:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setUpAlert;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation WBUSheetAlertController

- (WBUSheetAlertController)initWithAlert:(id)a3 automaticallyDismiss:(BOOL)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = [(WBUSheetAlertController *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_alert, a3);
    v12->_automaticallyDismiss = a4;
    v13 = MEMORY[0x2743DCFC0](v10);
    handler = v12->_handler;
    v12->_handler = v13;

    [(WBUSheetAlertController *)v12 _setUpAlert];
    v15 = v12;
  }

  return v12;
}

- (void)_setUpAlert
{
  objc_initWeak(&location, self);
  v3 = [(WebUIAlert *)self->_alert buttonTitles];
  v4 = [v3 count];
  v5 = [v3 objectAtIndexedSubscript:0];
  if (v4 == 2)
  {
    v6 = [v3 objectAtIndexedSubscript:1];
  }

  else if (v4 == 1 && [(WebUIAlert *)self->_alert defaultAction]!= 4)
  {

    v6 = [v3 objectAtIndexedSubscript:0];
    v5 = 0;
  }

  else
  {
    v6 = 0;
  }

  [(WBUSheetAlertController *)self setPreferredStyle:1];
  v7 = [(WebUIAlert *)self->_alert titles];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:0];
    [(WBUSheetAlertController *)self setContentViewController:v8];
    v9 = [v8 tableView];
    tableView = self->_tableView;
    self->_tableView = v9;

    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    v11 = self->_tableView;
    v12 = [(UITableView *)v11 indexPathForSelectedRow];
    [(UITableView *)v11 deselectRowAtIndexPath:v12 animated:0];
  }

  v13 = [(WebUIAlert *)self->_alert title];
  [(WBUSheetAlertController *)self setTitle:v13];

  v14 = [(WebUIAlert *)self->_alert bodyText];
  [(WBUSheetAlertController *)self setMessage:v14];

  automaticallyDismiss = self->_automaticallyDismiss;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __38__WBUSheetAlertController__setUpAlert__block_invoke;
  v26[3] = &__block_descriptor_33_e5_B8__0l;
  v27 = automaticallyDismiss;
  v16 = MEMORY[0x2743DCFC0](v26);
  if (v5)
  {
    v17 = MEMORY[0x277D750F8];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __38__WBUSheetAlertController__setUpAlert__block_invoke_2;
    v24[3] = &unk_279EB1328;
    objc_copyWeak(&v25, &location);
    v18 = [v17 _actionWithTitle:v5 image:0 style:1 handler:v24 shouldDismissHandler:v16];
    [(WBUSheetAlertController *)self addAction:v18];

    objc_destroyWeak(&v25);
  }

  if (v6)
  {
    v19 = MEMORY[0x277D750F8];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __38__WBUSheetAlertController__setUpAlert__block_invoke_3;
    v21[3] = &unk_279EB1350;
    objc_copyWeak(&v23, &location);
    v22 = v5;
    v20 = [v19 _actionWithTitle:v6 image:0 style:0 handler:v21 shouldDismissHandler:v16];
    [(WBUSheetAlertController *)self addAction:v20];

    objc_destroyWeak(&v23);
  }

  objc_destroyWeak(&location);
}

void __38__WBUSheetAlertController__setUpAlert__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    (*(WeakRetained[169] + 2))(WeakRetained[169], [WeakRetained[166] actionForButtonTag:0]);
    WeakRetained = v2;
  }
}

void __38__WBUSheetAlertController__setUpAlert__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(WeakRetained[169] + 2))(WeakRetained[169], [WeakRetained[166] actionForButtonTag:*(a1 + 32) != 0]);
    WeakRetained = v3;
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WebUIAlert *)self->_alert identities:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WebUIAlert *)self->_alert titles];
  v7 = objc_alloc_init(MEMORY[0x277D75B48]);
  v8 = [v5 row];
  if (v8 < [v6 count])
  {
    v9 = [v6 objectAtIndexedSubscript:{objc_msgSend(v5, "row")}];
    v10 = [v7 textLabel];
    [v10 setText:v9];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WebUIAlert *)self->_alert titles];
  v7 = [v5 row];
  if (v7 < [v6 count])
  {
    -[WebUIAlert setSelectedTableItemIndex:](self->_alert, "setSelectedTableItemIndex:", [v5 row]);
    if (self->_automaticallyDismiss)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __61__WBUSheetAlertController_tableView_didSelectRowAtIndexPath___block_invoke;
      v9[3] = &unk_279EB12E0;
      v9[4] = self;
      [(WBUSheetAlertController *)self dismissViewControllerAnimated:1 completion:v9];
    }

    else
    {
      handler = self->_handler;
      if (handler)
      {
        handler[2](handler, [(WebUIAlert *)self->_alert tableAction]);
      }
    }
  }
}

uint64_t __61__WBUSheetAlertController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 1352);
  if (v2)
  {
    v3 = [*(v1 + 1328) tableAction];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

@end
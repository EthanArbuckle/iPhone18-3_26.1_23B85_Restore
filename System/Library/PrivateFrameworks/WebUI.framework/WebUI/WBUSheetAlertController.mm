@interface WBUSheetAlertController
- (WBUSheetAlertController)initWithAlert:(id)alert automaticallyDismiss:(BOOL)dismiss completionHandler:(id)handler;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setUpAlert;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WBUSheetAlertController

- (WBUSheetAlertController)initWithAlert:(id)alert automaticallyDismiss:(BOOL)dismiss completionHandler:(id)handler
{
  alertCopy = alert;
  handlerCopy = handler;
  v11 = [(WBUSheetAlertController *)self init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_alert, alert);
    v12->_automaticallyDismiss = dismiss;
    v13 = MEMORY[0x2743DCFC0](handlerCopy);
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
  buttonTitles = [(WebUIAlert *)self->_alert buttonTitles];
  v4 = [buttonTitles count];
  v5 = [buttonTitles objectAtIndexedSubscript:0];
  if (v4 == 2)
  {
    v6 = [buttonTitles objectAtIndexedSubscript:1];
  }

  else if (v4 == 1 && [(WebUIAlert *)self->_alert defaultAction]!= 4)
  {

    v6 = [buttonTitles objectAtIndexedSubscript:0];
    v5 = 0;
  }

  else
  {
    v6 = 0;
  }

  [(WBUSheetAlertController *)self setPreferredStyle:1];
  titles = [(WebUIAlert *)self->_alert titles];
  if (titles)
  {
    v8 = [objc_alloc(MEMORY[0x277D75B58]) initWithStyle:0];
    [(WBUSheetAlertController *)self setContentViewController:v8];
    tableView = [v8 tableView];
    tableView = self->_tableView;
    self->_tableView = tableView;

    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    v11 = self->_tableView;
    indexPathForSelectedRow = [(UITableView *)v11 indexPathForSelectedRow];
    [(UITableView *)v11 deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
  }

  title = [(WebUIAlert *)self->_alert title];
  [(WBUSheetAlertController *)self setTitle:title];

  bodyText = [(WebUIAlert *)self->_alert bodyText];
  [(WBUSheetAlertController *)self setMessage:bodyText];

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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WebUIAlert *)self->_alert identities:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  titles = [(WebUIAlert *)self->_alert titles];
  v7 = objc_alloc_init(MEMORY[0x277D75B48]);
  v8 = [pathCopy row];
  if (v8 < [titles count])
  {
    v9 = [titles objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    textLabel = [v7 textLabel];
    [textLabel setText:v9];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  titles = [(WebUIAlert *)self->_alert titles];
  v7 = [pathCopy row];
  if (v7 < [titles count])
  {
    -[WebUIAlert setSelectedTableItemIndex:](self->_alert, "setSelectedTableItemIndex:", [pathCopy row]);
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
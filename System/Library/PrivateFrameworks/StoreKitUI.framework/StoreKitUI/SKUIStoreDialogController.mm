@interface SKUIStoreDialogController
- (SKUIStoreDialogController)init;
- (void)_performActionForDialog:(id)dialog buttonIndex:(int64_t)index;
- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index;
- (void)alertViewCancel:(id)cancel;
- (void)init;
- (void)presentDialog:(id)dialog;
- (void)presentDialog:(id)dialog fromViewController:(id)controller;
@end

@implementation SKUIStoreDialogController

- (SKUIStoreDialogController)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStoreDialogController init];
  }

  v9.receiver = self;
  v9.super_class = SKUIStoreDialogController;
  v3 = [(SKUIStoreDialogController *)&v9 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    alerts = v3->_alerts;
    v3->_alerts = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dialogs = v3->_dialogs;
    v3->_dialogs = v6;
  }

  return v3;
}

- (void)presentDialog:(id)dialog
{
  v20 = *MEMORY[0x277D85DE8];
  dialogCopy = dialog;
  buttons = [dialogCopy buttons];
  if ([buttons count])
  {
    v6 = objc_alloc_init(MEMORY[0x277D75118]);
    [v6 setDelegate:self];
    message = [dialogCopy message];
    [v6 setMessage:message];

    title = [dialogCopy title];
    [v6 setTitle:title];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = buttons;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          title2 = [*(*(&v15 + 1) + 8 * v13) title];
          [v6 addButtonWithTitle:title2];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }

    [(NSMutableArray *)self->_alerts addObject:v6];
    [(NSMutableArray *)self->_dialogs addObject:dialogCopy];
    [v6 show];
  }
}

- (void)presentDialog:(id)dialog fromViewController:(id)controller
{
  dialogCopy = dialog;
  controllerCopy = controller;
  buttons = [dialogCopy buttons];
  if ([buttons count])
  {
    v9 = MEMORY[0x277D75110];
    title = [dialogCopy title];
    message = [dialogCopy message];
    v12 = [v9 alertControllerWithTitle:title message:message preferredStyle:1];

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__SKUIStoreDialogController_presentDialog_fromViewController___block_invoke;
    v15[3] = &unk_2781F83A8;
    v13 = v12;
    v16 = v13;
    objc_copyWeak(&v19, &location);
    selfCopy = self;
    v14 = dialogCopy;
    v18 = v14;
    [buttons enumerateObjectsUsingBlock:v15];
    [(NSMutableArray *)self->_alerts addObject:v13];
    [(NSMutableArray *)self->_dialogs addObject:v14];
    [controllerCopy presentViewController:v13 animated:1 completion:0];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __62__SKUIStoreDialogController_presentDialog_fromViewController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277D750F8];
  v8 = [v5 title];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SKUIStoreDialogController_presentDialog_fromViewController___block_invoke_2;
  v12[3] = &unk_2781F8380;
  objc_copyWeak(v15, (a1 + 56));
  v11 = *(a1 + 32);
  v9 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = *(a1 + 48);
  v15[1] = a3;
  v10 = [v7 actionWithTitle:v8 style:0 handler:v12];
  [v6 addAction:v10];

  objc_destroyWeak(v15);
}

void __62__SKUIStoreDialogController_presentDialog_fromViewController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(*(a1 + 32) + 8) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 16) removeObject:*(a1 + 48)];
  [WeakRetained _performActionForDialog:*(a1 + 48) buttonIndex:*(a1 + 64)];
}

- (void)alertView:(id)view didDismissWithButtonIndex:(int64_t)index
{
  v6 = [(NSMutableArray *)self->_alerts indexOfObjectIdenticalTo:view];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [(NSMutableArray *)self->_dialogs objectAtIndex:v6];
    [(NSMutableArray *)self->_alerts removeObjectAtIndex:v7];
    [(NSMutableArray *)self->_dialogs removeObjectAtIndex:v7];
    [(SKUIStoreDialogController *)self _performActionForDialog:v8 buttonIndex:index];
  }
}

- (void)alertViewCancel:(id)cancel
{
  cancelCopy = cancel;
  cancelButtonIndex = [cancelCopy cancelButtonIndex];
  [cancelCopy dismissWithClickedButtonIndex:cancelButtonIndex animated:0];
  [(SKUIStoreDialogController *)self alertView:cancelCopy didDismissWithButtonIndex:cancelButtonIndex];
}

- (void)_performActionForDialog:(id)dialog buttonIndex:(int64_t)index
{
  v15[1] = *MEMORY[0x277D85DE8];
  buttons = [dialog buttons];
  if ([buttons count] > index)
  {
    v7 = [buttons objectAtIndex:index];
    actionType = [v7 actionType];
    if (actionType == 9)
    {
      [MEMORY[0x277D69AB8] retryAllRestoreDownloads];
    }

    else if (actionType == 3)
    {
      parameter = [v7 parameter];
      v10 = objc_alloc_init(MEMORY[0x277D69C10]);
      [v10 setBuyParameters:parameter];
      v11 = objc_alloc(MEMORY[0x277D69C20]);
      v15[0] = v10;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
      v13 = [v11 initWithPurchases:v12];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65__SKUIStoreDialogController__performActionForDialog_buttonIndex___block_invoke;
      v14[3] = &unk_2781F83D0;
      v14[4] = self;
      [v13 startWithPurchaseResponseBlock:v14 completionBlock:&__block_literal_global];
    }
  }
}

void __65__SKUIStoreDialogController__performActionForDialog_buttonIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKUIItemStateCenter defaultCenter];
  [v4 evaluatePurchaseResponseForRentals:v3];

  v9 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v3, @"SKUIStoreDialogControllerPurchaseNotificationKeyPurchaseResponse", 0}];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"SKUIStoreDialogControllerPurchaseRequestDidSucceedNotification" object:*(a1 + 32) userInfo:v9];

  v6 = objc_alloc(MEMORY[0x277CBEAC0]);
  v7 = [v6 initWithObjectsAndKeys:{v3, *MEMORY[0x277D7FF48], 0}];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:*MEMORY[0x277D7FF50] object:*(a1 + 32) userInfo:v7];
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStoreDialogController init]";
}

@end
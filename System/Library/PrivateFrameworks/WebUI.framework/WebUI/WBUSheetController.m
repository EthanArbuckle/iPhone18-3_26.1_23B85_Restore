@interface WBUSheetController
- (WBUSheetController)initWithDelegate:(id)a3;
- (void)hideSheet;
- (void)showSheetForAlert:(id)a3;
@end

@implementation WBUSheetController

- (WBUSheetController)initWithDelegate:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WBUSheetController;
  v6 = [(WBUSheetController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v8 = v7;
  }

  return v7;
}

- (void)showSheetForAlert:(id)a3
{
  v6 = a3;
  if (self->_alertController)
  {
    if (!self->_alertInvocationQueue)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      alertInvocationQueue = self->_alertInvocationQueue;
      self->_alertInvocationQueue = v7;
    }

    v20 = v6;
    v9 = MEMORY[0x277CBEAE8];
    v10 = [(WBUSheetController *)self methodSignatureForSelector:a2];
    v11 = [v9 invocationWithMethodSignature:v10];

    [v11 setSelector:a2];
    [v11 setTarget:self];
    [v11 setArgument:&v20 atIndex:2];
    [(NSMutableArray *)self->_alertInvocationQueue addObject:v11];
  }

  else
  {
    objc_storeStrong(&self->_alert, a3);
    v12 = objc_opt_class();
    alert = self->_alert;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __40__WBUSheetController_showSheetForAlert___block_invoke;
    v19[3] = &unk_279EB12B8;
    v19[4] = self;
    v14 = [v12 alertControllerForAlert:alert automaticallyDismiss:1 withCompletionHandler:v19];
    alertController = self->_alertController;
    self->_alertController = v14;

    v16 = [self->_delegate sheetController:self viewControllerForAlert:self->_alert];
    v17 = self->_alertController;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __40__WBUSheetController_showSheetForAlert___block_invoke_2;
    v18[3] = &unk_279EB12E0;
    v18[4] = self;
    [v16 presentViewController:v17 animated:1 completion:v18];
  }
}

- (void)hideSheet
{
  alertController = self->_alertController;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__WBUSheetController_hideSheet__block_invoke;
  v3[3] = &unk_279EB12E0;
  v3[4] = self;
  [(UIAlertController *)alertController dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __31__WBUSheetController_hideSheet__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[2] hideAction];

  return [v1 _alertDidDismissWithAction:v2];
}

@end
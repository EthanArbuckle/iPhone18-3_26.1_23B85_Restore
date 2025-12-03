@interface SKUITonePurchaseController
- (SKUITonePurchaseController)initWithItem:(id)item;
- (UIViewController)parentViewController;
- (void)_dismissContactPicker;
- (void)_finishContactPicker:(id)picker withContact:(id)contact;
- (void)_finishWithTonePurchase:(id)purchase;
- (void)_presentViewController:(id)controller;
- (void)_showContactPicker;
- (void)contactPickerDidCancel:(id)cancel;
- (void)dealloc;
- (void)showPurchaseFlowWithCompletionBlock:(id)block;
@end

@implementation SKUITonePurchaseController

- (SKUITonePurchaseController)initWithItem:(id)item
{
  itemCopy = item;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUITonePurchaseController initWithItem:];
  }

  v9.receiver = self;
  v9.super_class = SKUITonePurchaseController;
  v6 = [(SKUITonePurchaseController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_item, item);
  }

  return v7;
}

- (void)dealloc
{
  [(CNContactPickerViewController *)self->_contactPickerController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUITonePurchaseController;
  [(SKUITonePurchaseController *)&v3 dealloc];
}

- (void)showPurchaseFlowWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = __TonePurchaseControllers;
  if (!__TonePurchaseControllers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = __TonePurchaseControllers;
    __TonePurchaseControllers = v6;

    v5 = __TonePurchaseControllers;
  }

  [v5 addObject:self];
  v8 = [blockCopy copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v8;

  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
  clientContext = self->_clientContext;
  if (clientContext)
  {
    [(SKUIClientContext *)clientContext localizedStringForKey:@"BUY_TONE_ALERT_TITLE" inTable:@"Tones"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"BUY_TONE_ALERT_TITLE" inBundles:0 inTable:@"Tones"];
  }
  v12 = ;
  [v10 setTitle:v12];

  title = [(SKUIItem *)self->_item title];
  v14 = [title length];

  if (v14)
  {
    v15 = self->_clientContext;
    if (v15)
    {
      [(SKUIClientContext *)v15 localizedStringForKey:@"BUY_TONE_BODY_FORMAT" inTable:@"Tones"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"BUY_TONE_BODY_FORMAT" inBundles:0 inTable:@"Tones"];
    }
    v16 = ;
    v17 = MEMORY[0x277CCACA8];
    title2 = [(SKUIItem *)self->_item title];
    v19 = [v17 stringWithValidatedFormat:v16 validFormatSpecifiers:@"%@" error:0, title2];
    [v10 setMessage:v19];
  }

  objc_initWeak(location, self);
  if (MGGetBoolAnswer())
  {
    v20 = self->_clientContext;
    v21 = @"Tones";
    if (v20)
    {
      [(SKUIClientContext *)v20 localizedStringForKey:@"BUY_TONE_SET_AS_DEFAULT_RINGTONE" inTable:v21];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"BUY_TONE_SET_AS_DEFAULT_RINGTONE" inBundles:0 inTable:v21];
    }
    v22 = ;

    v23 = MEMORY[0x277D750F8];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __66__SKUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke;
    v46[3] = &unk_2781F9748;
    objc_copyWeak(&v47, location);
    v24 = [v23 actionWithTitle:v22 style:0 handler:v46];
    [v10 addAction:v24];

    objc_destroyWeak(&v47);
  }

  v25 = self->_clientContext;
  v26 = @"Tones";
  if (v25)
  {
    [(SKUIClientContext *)v25 localizedStringForKey:@"BUY_TONE_SET_AS_DEFAULT_TEXT_TONE" inTable:v26];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"BUY_TONE_SET_AS_DEFAULT_TEXT_TONE" inBundles:0 inTable:v26];
  }
  v27 = ;

  v28 = MEMORY[0x277D750F8];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __66__SKUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_2;
  v44[3] = &unk_2781F9748;
  objc_copyWeak(&v45, location);
  v29 = [v28 actionWithTitle:v27 style:0 handler:v44];
  [v10 addAction:v29];

  v30 = self->_clientContext;
  v31 = v26;
  if (v30)
  {
    [(SKUIClientContext *)v30 localizedStringForKey:@"BUY_TONE_ASSIGN_TO_CONTACT" inTable:v31];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"BUY_TONE_ASSIGN_TO_CONTACT" inBundles:0 inTable:v31];
  }
  v32 = ;

  v33 = MEMORY[0x277D750F8];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __66__SKUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_3;
  v42[3] = &unk_2781F9748;
  objc_copyWeak(&v43, location);
  v34 = [v33 actionWithTitle:v32 style:0 handler:v42];
  [v10 addAction:v34];

  v35 = self->_clientContext;
  v36 = v31;
  if (v35)
  {
    [(SKUIClientContext *)v35 localizedStringForKey:@"BUY_TONE_DONE" inTable:v36];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"BUY_TONE_DONE" inBundles:0 inTable:v36];
  }
  v37 = ;

  v38 = MEMORY[0x277D750F8];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __66__SKUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_4;
  v40[3] = &unk_2781F9748;
  objc_copyWeak(&v41, location);
  v39 = [v38 actionWithTitle:v37 style:1 handler:v40];
  [v10 addAction:v39];

  [(SKUITonePurchaseController *)self _presentViewController:v10];
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v43);
  objc_destroyWeak(&v45);

  objc_destroyWeak(location);
}

void __66__SKUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x277D69C80]);
  [v3 setShouldMakeDefaultRingtone:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithTonePurchase:v3];
}

void __66__SKUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x277D69C80]);
  [v3 setShouldMakeDefaultTextTone:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithTonePurchase:v3];
}

void __66__SKUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showContactPicker];
}

void __66__SKUITonePurchaseController_showPurchaseFlowWithCompletionBlock___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithTonePurchase:0];
}

- (void)contactPickerDidCancel:(id)cancel
{
  [(SKUITonePurchaseController *)self _dismissContactPicker];

  [(SKUITonePurchaseController *)self _finishWithTonePurchase:0];
}

- (void)_dismissContactPicker
{
  v4 = self->_contactPickerController;
  [(CNContactPickerViewController *)v4 setDelegate:0];
  contactPickerController = self->_contactPickerController;
  self->_contactPickerController = 0;

  [(CNContactPickerViewController *)v4 dismissViewControllerAnimated:1 completion:0];
}

- (void)_finishContactPicker:(id)picker withContact:(id)contact
{
  pickerCopy = picker;
  contactCopy = contact;
  v8 = objc_alloc_init(MEMORY[0x277D69C80]);
  if (contactCopy)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(contactCopy, "iOSLegacyIdentifier")}];
    [v8 setAssigneeIdentifier:v9];
    identifier = [contactCopy identifier];
    [v8 setAssigneeContactIdentifier:identifier];
  }

  [(SKUITonePurchaseController *)self _dismissContactPicker];
  if (MGGetBoolAnswer())
  {
    v11 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:1];
    objc_initWeak(location, self);
    v12 = self->_clientContext;
    v13 = @"Tones";
    if (v12)
    {
      [(SKUIClientContext *)v12 localizedStringForKey:@"BUY_TONE_SET_AS_RINGTONE" inTable:v13];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"BUY_TONE_SET_AS_RINGTONE" inBundles:0 inTable:v13];
    }
    v14 = ;
    v25 = pickerCopy;

    v15 = MEMORY[0x277D750F8];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __63__SKUITonePurchaseController__finishContactPicker_withContact___block_invoke;
    v31[3] = &unk_2781FB718;
    v16 = v8;
    v32 = v16;
    objc_copyWeak(&v33, location);
    v17 = [v15 actionWithTitle:v14 style:0 handler:v31];
    v18 = self->_clientContext;
    v19 = v13;
    if (v18)
    {
      [(SKUIClientContext *)v18 localizedStringForKey:@"BUY_TONE_SET_AS_TEXT_TONE" inTable:v19];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"BUY_TONE_SET_AS_TEXT_TONE" inBundles:0 inTable:v19];
    }
    v20 = ;

    v21 = MEMORY[0x277D750F8];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __63__SKUITonePurchaseController__finishContactPicker_withContact___block_invoke_2;
    v28[3] = &unk_2781FB718;
    v29 = v16;
    objc_copyWeak(&v30, location);
    v22 = [v21 actionWithTitle:v20 style:0 handler:v28];
    if ([(SKUIItem *)self->_item itemKind]== 16)
    {
      [v11 addAction:v17];
      v23 = v22;
    }

    else
    {
      [v11 addAction:v22];
      v23 = v17;
    }

    [v11 addAction:v23];
    transitionCoordinator = [v25 transitionCoordinator];
    if (transitionCoordinator)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __63__SKUITonePurchaseController__finishContactPicker_withContact___block_invoke_3;
      v26[3] = &unk_2781FB740;
      v26[4] = self;
      v27 = v11;
      [transitionCoordinator animateAlongsideTransition:0 completion:v26];
    }

    else
    {
      [(SKUITonePurchaseController *)self _presentViewController:v11];
    }

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);

    objc_destroyWeak(location);
    pickerCopy = v25;
  }

  else
  {
    [v8 setAssigneeToneStyle:*MEMORY[0x277D6A2B0]];
    [(SKUITonePurchaseController *)self _finishWithTonePurchase:v8];
  }
}

void __63__SKUITonePurchaseController__finishContactPicker_withContact___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAssigneeToneStyle:*MEMORY[0x277D6A2A8]];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishWithTonePurchase:*(a1 + 32)];
}

void __63__SKUITonePurchaseController__finishContactPicker_withContact___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAssigneeToneStyle:*MEMORY[0x277D6A2B0]];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishWithTonePurchase:*(a1 + 32)];
}

- (void)_finishWithTonePurchase:(id)purchase
{
  completionBlock = self->_completionBlock;
  purchaseCopy = purchase;
  v9 = [completionBlock copy];
  v6 = self->_completionBlock;
  self->_completionBlock = 0;

  v7 = +[SKUIItemStateCenter defaultCenter];
  [v7 purchaseTone:self->_item withProperties:purchaseCopy clientContext:self->_clientContext completionBlock:v9];

  [__TonePurchaseControllers removeObject:self];
  if (![__TonePurchaseControllers count])
  {
    v8 = __TonePurchaseControllers;
    __TonePurchaseControllers = 0;
  }
}

- (void)_presentViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(SKUITonePurchaseController *)self parentViewController];
  presentedViewController = [parentViewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [parentViewController presentedViewController];

      v6PresentedViewController = [presentedViewController2 presentedViewController];

      parentViewController = presentedViewController2;
    }

    while (v6PresentedViewController);
  }

  else
  {
    presentedViewController2 = parentViewController;
  }

  [presentedViewController2 presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_showContactPicker
{
  v3 = SKUIContactsUIFramework();
  v4 = SKUIWeakLinkedClassForString(&cfstr_Cncontactpicke.isa, v3);
  if (v4)
  {
    v5 = objc_alloc_init(v4);
    contactPickerController = self->_contactPickerController;
    self->_contactPickerController = v5;

    [(CNContactPickerViewController *)self->_contactPickerController setDelegate:self];
    v7 = self->_contactPickerController;

    [(SKUITonePurchaseController *)self _presentViewController:v7];
  }

  else
  {

    [(SKUITonePurchaseController *)self _finishWithTonePurchase:0];
  }
}

- (UIViewController)parentViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentViewController);

  return WeakRetained;
}

- (void)initWithItem:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUITonePurchaseController initWithItem:]";
}

@end
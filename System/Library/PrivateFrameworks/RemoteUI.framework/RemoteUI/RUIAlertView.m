@interface RUIAlertView
- (RUIAlertView)initWithAttributes:(id)a3 parent:(id)a4;
- (RUIAlertViewDelegate)objectModel;
- (id)alertController;
- (void)_dismissAlertController;
- (void)_setupSourceItem;
- (void)addButtonWithTitle:(id)a3 URL:(id)a4 style:(int64_t)a5 attributes:(id)a6 xmlElement:(id)a7;
- (void)dealloc;
- (void)runAlertInController:(id)a3 completion:(id)a4;
- (void)setMessage:(id)a3;
- (void)setTintColor:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation RUIAlertView

- (RUIAlertView)initWithAttributes:(id)a3 parent:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = RUIAlertView;
  v7 = [(RUIElement *)&v12 initWithAttributes:v6 parent:a4];
  v8 = v7;
  if (v7)
  {
    v7->_buttonIndex = 0;
    v9 = [v6 objectForKey:@"tintColor"];
    if (v9)
    {
      v10 = [MEMORY[0x277D75348] _remoteUI_colorWithString:v9];
      [(RUIAlertView *)v8 setTintColor:v10];
    }
  }

  return v8;
}

- (void)dealloc
{
  [(RUIAlertView *)self _dismissAlertController];
  v3.receiver = self;
  v3.super_class = RUIAlertView;
  [(RUIElement *)&v3 dealloc];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(UIAlertController *)self->_alertController setTitle:v4];
  title = self->_title;
  self->_title = v4;
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  [(UIAlertController *)self->_alertController setMessage:v4];
  message = self->_message;
  self->_message = v4;
}

- (void)setTintColor:(id)a3
{
  v4 = a3;
  v5 = [(UIAlertController *)self->_alertController view];
  [v5 setTintColor:v4];

  tintColor = self->_tintColor;
  self->_tintColor = v4;
}

- (void)addButtonWithTitle:(id)a3 URL:(id)a4 style:(int64_t)a5 attributes:(id)a6 xmlElement:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (a5 == 1)
  {
    buttonIndex = -1;
  }

  else
  {
    buttonIndex = self->_buttonIndex;
    self->_buttonIndex = buttonIndex + 1;
  }

  objc_initWeak(&location, self);
  v17 = [(RUIAlertView *)self alertController];
  v18 = MEMORY[0x277D750F8];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __67__RUIAlertView_addButtonWithTitle_URL_style_attributes_xmlElement___block_invoke;
  v30[3] = &unk_2782E8CA8;
  objc_copyWeak(v33, &location);
  v33[1] = buttonIndex;
  v19 = v14;
  v31 = v19;
  v20 = v15;
  v32 = v20;
  v21 = [v18 actionWithTitle:v12 style:a5 handler:v30];
  [v17 addAction:v21];

  v22 = [(RUIElement *)self attributes];
  v23 = [v22 objectForKeyedSubscript:@"preferredButton"];
  v24 = [v19 objectForKeyedSubscript:@"id"];
  v25 = [v23 isEqualToString:v24];

  if (v25)
  {
    v26 = [(RUIAlertView *)self alertController];
    v27 = [(RUIAlertView *)self alertController];
    v28 = [v27 actions];
    v29 = [v28 lastObject];
    [v26 setPreferredAction:v29];
  }

  objc_destroyWeak(v33);
  objc_destroyWeak(&location);
}

void __67__RUIAlertView_addButtonWithTitle_URL_style_attributes_xmlElement___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 10);
    v4 = [v12 completion];

    if (v4)
    {
      v5 = [v12 completion];
      v5[2](v5, *(a1 + 56));
    }

    [v12 _dismissAlertController];
    v6 = [(RUIElement *)[RUIAlertButton alloc] initWithAttributes:*(a1 + 32) parent:v12];
    [(RUIElement *)v6 setSourceXMLElement:*(a1 + 40)];
    [v3 alertView:v12 pressedButton:v6 completion:0];
    if (*(a1 + 40))
    {
      v7 = [v3 telemetryDelegate];
      v8 = [RUITelemetryElement alloc];
      v9 = *(a1 + 40);
      v10 = [v3 sourceURL];
      v11 = [(RUITelemetryElement *)v8 initWithXMLElement:v9 url:v10];
      [v7 willActivateElement:v11];
    }

    WeakRetained = v12;
  }
}

- (id)alertController
{
  alertController = self->_alertController;
  if (!alertController)
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = [v4 keyWindow];
    v6 = [v5 rootViewController];
    v7 = [v6 traitCollection];

    v8 = [v7 horizontalSizeClass];
    if (v7)
    {
      v9 = v8 == 1;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = [(RUIElement *)self attributes];
      v11 = [v10 objectForKeyedSubscript:@"style"];
      v12 = [v11 isEqualToString:@"sheet"] ^ 1;
    }

    else
    {
      v12 = 1;
    }

    v13 = MEMORY[0x277D75110];
    v14 = [(RUIAlertView *)self title];
    v15 = [(RUIAlertView *)self message];
    v16 = [v13 alertControllerWithTitle:v14 message:v15 preferredStyle:v12];
    v17 = self->_alertController;
    self->_alertController = v16;

    v18 = [(RUIAlertView *)self tintColor];
    v19 = [(UIAlertController *)self->_alertController view];
    [v19 setTintColor:v18];

    alertController = self->_alertController;
  }

  return alertController;
}

- (void)_dismissAlertController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationContext);
  v4 = self->_alertController;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __39__RUIAlertView__dismissAlertController__block_invoke;
  v11 = &unk_2782E84F8;
  v12 = v4;
  v5 = WeakRetained;
  v13 = v5;
  v6 = v4;
  v7 = _Block_copy(&v8);
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v7[2](v7);
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], v7);
  }
}

uint64_t __39__RUIAlertView__dismissAlertController__block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    return [v3 ruiDidDismissAlertController:v4];
  }

  return result;
}

- (void)runAlertInController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__2;
  v28 = __Block_byref_object_dispose__2;
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__2;
  v22[4] = __Block_byref_object_dispose__2;
  v8 = WeakRetained;
  v23 = [v8 delegate];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__RUIAlertView_runAlertInController_completion___block_invoke;
  v18[3] = &unk_2782E8CD0;
  v9 = v7;
  v19 = v9;
  v20 = &v24;
  v21 = v22;
  [(RUIAlertView *)self setCompletion:v18];
  v10 = [v25[5] telemetryDelegate];
  v11 = [RUITelemetryElement alloc];
  v12 = [(RUIElement *)self sourceXMLElement];
  v13 = [v25[5] sourceURL];
  v14 = [(RUITelemetryElement *)v11 initWithXMLElement:v12 url:v13];
  [v10 willDisplayUI:v14];

  [(RUIAlertView *)self _setupSourceItem];
  if ([v6 conformsToProtocol:&unk_282DBDDE8])
  {
    v15 = v6;
    if (objc_opt_respondsToSelector())
    {
      v16 = [(RUIAlertView *)self alertController];
      [v15 ruiPresentAlertController:v16];
    }

    objc_storeWeak(&self->_presentationContext, v15);
  }

  else
  {
    v17 = [(RUIAlertView *)self alertController];
    [v17 dismissViewControllerAnimated:0 completion:0];

    objc_storeWeak(&self->_presentationContext, 0);
    [(RUIAlertView *)self _setupSourceItem];
    v15 = [(RUIAlertView *)self alertController];
    [v6 presentViewController:v15 animated:(_testMode & 1) == 0 completion:0];
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);
}

void __48__RUIAlertView_runAlertInController_completion___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1[5] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)_setupSourceItem
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);
  v4 = [WeakRetained popoverSourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = objc_loadWeakRetained(&self->_objectModel);
  v6 = [v10 popoverSourceItem];
  v7 = [(RUIAlertView *)self alertController];
  v8 = [v7 popoverPresentationController];
  v9 = v8;
  if (isKindOfClass)
  {
    [v8 setSourceView:v6];
  }

  else
  {
    [v8 setSourceItem:v6];
  }
}

- (RUIAlertViewDelegate)objectModel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);

  return WeakRetained;
}

@end
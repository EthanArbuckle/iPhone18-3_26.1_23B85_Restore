@interface UIPrinterPickerController
+ (UIPrinterPickerController)printerPickerControllerWithInitiallySelectedPrinter:(UIPrinter *)printer;
- (BOOL)_delegateFiltersPrinters;
- (BOOL)_setupPickerPanel:(id)a3;
- (BOOL)_shouldShowPrinter:(id)a3;
- (BOOL)presentAnimated:(BOOL)a3 hostingScene:(id)a4 completionHandler:(id)a5;
- (BOOL)presentFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated completionHandler:(UIPrinterPickerCompletionHandler)completion;
- (BOOL)presentFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated completionHandler:(UIPrinterPickerCompletionHandler)completion;
- (UIPrinterPickerController)initWithInitiallySelectedPrinter:(id)a3;
- (id)delegate;
- (void)_printerPickerDidDismiss;
- (void)_printerPickerDidPresent;
- (void)_printerPickerWillDismiss;
- (void)dismissAnimated:(BOOL)animated;
@end

@implementation UIPrinterPickerController

+ (UIPrinterPickerController)printerPickerControllerWithInitiallySelectedPrinter:(UIPrinter *)printer
{
  v3 = printer;
  v4 = [[UIPrinterPickerController alloc] initWithInitiallySelectedPrinter:v3];

  return v4;
}

- (UIPrinterPickerController)initWithInitiallySelectedPrinter:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIPrinterPickerController;
  v3 = a3;
  v4 = [(UIPrinterPickerController *)&v6 init];
  [(UIPrinterPickerController *)v4 setSelectedPrinter:v3, v6.receiver, v6.super_class];

  return v4;
}

- (BOOL)presentAnimated:(BOOL)a3 hostingScene:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    NSLog(&cfstr_WarningCalling.isa);
    if (!v8)
    {
      v12 = [MEMORY[0x277D75128] sharedApplication];
      v8 = [v12 _findUISceneForLegacyInterfaceOrientation];
    }

    v13 = [v8 windows];
    WeakRetained = [v13 firstObject];

    [WeakRetained bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    MidX = CGRectGetMidX(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v20 = [(UIPrinterPickerController *)self presentFromRect:WeakRetained inView:v6 animated:v9 completionHandler:MidX, CGRectGetMidY(v23), 0.0, 0.0];
  }

  else
  {
    if (![(UIPrinterPickerController *)self _setupPickerPanel:v9])
    {
      v20 = 0;
      goto LABEL_10;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained printerPickerControllerWillPresent:self];
    }

    [*(self->_state + 1) presentPrinterPickerPanelAnimated:v6 hostingScene:v8];
    v20 = 1;
  }

LABEL_10:
  return v20;
}

- (BOOL)presentFromRect:(CGRect)rect inView:(UIView *)view animated:(BOOL)animated completionHandler:(UIPrinterPickerCompletionHandler)completion
{
  v7 = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = view;
  v14 = completion;
  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16)
  {
    if (![(UIPrinterPickerController *)self _setupPickerPanel:v14])
    {
      v18 = 0;
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained printerPickerControllerWillPresent:self];
    }

    [*(self->_state + 1) presentPrinterPickerPanelFromRect:v13 inView:v7 animated:{x, y, width, height}];
    v18 = 1;
  }

  else
  {
    NSLog(&cfstr_WarningCalling_0.isa);
    WeakRetained = [(UIView *)v13 window];
    v19 = [WeakRetained windowScene];
    v18 = [(UIPrinterPickerController *)self presentAnimated:v7 hostingScene:v19 completionHandler:v14];
  }

LABEL_9:
  return v18;
}

- (BOOL)presentFromBarButtonItem:(UIBarButtonItem *)item animated:(BOOL)animated completionHandler:(UIPrinterPickerCompletionHandler)completion
{
  v6 = animated;
  v8 = item;
  v9 = completion;
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11)
  {
    if (![(UIPrinterPickerController *)self _setupPickerPanel:v9])
    {
      v13 = 0;
      goto LABEL_9;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained printerPickerControllerWillPresent:self];
    }

    [*(self->_state + 1) presentPrinterPickerPanelFromBarButtonItem:v8 animated:v6];
    v13 = 1;
  }

  else
  {
    NSLog(&cfstr_WarningCalling_1.isa);
    WeakRetained = [(UIBarButtonItem *)v8 _viewForPresenting];
    v14 = [WeakRetained window];
    v15 = [v14 windowScene];
    v13 = [(UIPrinterPickerController *)self presentAnimated:v6 hostingScene:v15 completionHandler:v9];
  }

LABEL_9:
  return v13;
}

- (BOOL)_setupPickerPanel:(id)a3
{
  v4 = a3;
  if (_UIApplicationIsExtension())
  {
    NSLog(&cfstr_PrintingIsUnav.isa);
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  state = self->_state;
  if (state)
  {
    v6 = state[1];
    if (v6)
    {
      [v6 dismissAnimated:1];
    }

    goto LABEL_6;
  }

  v9 = objc_alloc_init(UIPrinterPickerControllerInternals);
  v10 = self->_state;
  self->_state = v9;

  v11 = [v4 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v11;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v14 = [WeakRetained printerPickerControllerParentViewController:self];
  }

  else
  {
    v14 = 0;
  }

  v15 = [[UIPrinterPickerViewController alloc] initWithPrinterPickerController:self inParentController:v14];
  v16 = self->_state;
  v17 = v16[1];
  v16[1] = v15;

  v18 = [(UIPrinterPickerController *)self selectedPrinter];

  if (v18)
  {
    v19 = [(UIPrinterPickerController *)self selectedPrinter];
    v20 = [v19 pkPrinter];
    [*(self->_state + 1) setPrinter:v20];
  }

  v7 = 1;
LABEL_7:

  return v7;
}

- (void)_printerPickerDidPresent
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained printerPickerControllerDidPresent:self];
  }
}

- (void)_printerPickerWillDismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();
  if (v3)
  {
    v3 = [*(self->_state + 1) userSelectedPrinter];
    if (v3)
    {
      v3 = [WeakRetained printerPickerControllerDidSelectPrinter:self];
    }
  }

  if ((*(self->_state + 16) & 1) == 0)
  {
    v3 = objc_opt_respondsToSelector();
    if (v3)
    {
      v3 = [WeakRetained printerPickerControllerWillDismiss:self];
    }
  }

  MEMORY[0x2821F9730](v3);
}

- (void)_printerPickerDidDismiss
{
  state = self->_state;
  if (state)
  {
    v4 = [state[1] printer];

    if (v4)
    {
      v5 = [UIPrinter alloc];
      v6 = [*(self->_state + 1) printer];
      v7 = [(UIPrinter *)v5 _initWithPrinter:v6];
      [(UIPrinterPickerController *)self setSelectedPrinter:v7];
    }

    v8 = [*(self->_state + 1) userSelectedPrinter];
    v9 = self->_state;
    v10 = v9[1];
    v9[1] = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (*(self->_state + 16) & 1) == 0 && (objc_opt_respondsToSelector())
    {
      [WeakRetained printerPickerControllerDidDismiss:self];
    }

    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      completionHandler[2](completionHandler, self, v8, 0);
      v12 = self->_completionHandler;
      self->_completionHandler = 0;
    }

    v13 = self->_state;
    self->_state = 0;

    objc_storeWeak(&self->_delegate, 0);
  }
}

- (BOOL)_delegateFiltersPrinters
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)_shouldShowPrinter:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained printerPickerController:self shouldShowPrinter:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)dismissAnimated:(BOOL)animated
{
  state = self->_state;
  if (state)
  {
    state[16] = 1;
    [*(self->_state + 1) dismissAnimated:animated];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
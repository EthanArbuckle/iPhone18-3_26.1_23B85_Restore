@interface UIPrintingProgress
- (BOOL)progressVisible;
- (NSString)title;
- (UIPrintingProgress)initWithPrinterName:(id)name forceDisplayAsAlert:(BOOL)alert hostingWindowScene:(id)scene cancelHandler:(id)handler;
- (UIWindowScene)hostingWindowScene;
- (double)nextPrintDelay;
- (id)initPDFCreationWithHostingWindowScene:(id)scene cancelHandler:(id)handler;
- (void)_mainQueue_endProgress;
- (void)_mainQueue_hideProgressAnimated:(BOOL)animated;
- (void)_mainQueue_presentProgressAlert;
- (void)_mainQueue_showProgress:(id)progress immediately:(BOOL)immediately;
- (void)_presentProgressAlert;
- (void)endProgress;
- (void)hideProgressAnimated:(BOOL)animated;
- (void)progressCancel;
- (void)setPage:(int64_t)page ofPage:(int64_t)ofPage;
- (void)setPrinterInfoState:(int)state;
- (void)showProgress:(id)progress immediately:(BOOL)immediately;
@end

@implementation UIPrintingProgress

- (UIPrintingProgress)initWithPrinterName:(id)name forceDisplayAsAlert:(BOOL)alert hostingWindowScene:(id)scene cancelHandler:(id)handler
{
  nameCopy = name;
  sceneCopy = scene;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = UIPrintingProgress;
  v13 = [(UIPrintingProgress *)&v19 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    printerName = v13->_printerName;
    v13->_printerName = v14;

    v16 = [handlerCopy copy];
    cancelHandler = v13->_cancelHandler;
    v13->_cancelHandler = v16;

    v13->_forceDisplayAsAlert = alert;
    *&v13->_presentingAlert = 0;
    [(UIPrintingProgress *)v13 setProgressAlertDelay:1.0];
    [(UIPrintingProgress *)v13 setHostingWindowScene:sceneCopy];
  }

  return v13;
}

- (id)initPDFCreationWithHostingWindowScene:(id)scene cancelHandler:(id)handler
{
  sceneCopy = scene;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = UIPrintingProgress;
  v8 = [(UIPrintingProgress *)&v12 init];
  if (v8)
  {
    v9 = [handlerCopy copy];
    cancelHandler = v8->_cancelHandler;
    v8->_cancelHandler = v9;

    v8->_forceDisplayAsAlert = 1;
    v8->_creatingPDF = 1;
    [(UIPrintingProgress *)v8 setProgressAlertDelay:0.0];
    [(UIPrintingProgress *)v8 setHostingWindowScene:sceneCopy];
  }

  return v8;
}

- (BOOL)progressVisible
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {

LABEL_4:
    progressAlertWindow = [(UIPrintingProgress *)self progressAlertWindow];
    _isVisible = [progressAlertWindow _isVisible];

    return _isVisible;
  }

  forceDisplayAsAlert = self->_forceDisplayAsAlert;

  if (forceDisplayAsAlert)
  {
    goto LABEL_4;
  }

  viewController = self->_viewController;

  return [(UIPrintingProgressViewController *)viewController visible];
}

- (NSString)title
{
  if (self->_creatingPDF)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"Creating PDF" value:@"Creating PDF" table:@"Localizable"];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v2 localizedStringForKey:@"Printing to “%@”" value:@"Printing to “%@”" table:@"Localizable"];
    v3 = [v5 stringWithFormat:v6, self->_printerName];
  }

  return v3;
}

- (void)_presentProgressAlert
{
  self->_presentingAlert = 1;
  if (pthread_main_np() == 1)
  {

    [(UIPrintingProgress *)self _mainQueue_presentProgressAlert];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__UIPrintingProgress__presentProgressAlert__block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_mainQueue_presentProgressAlert
{
  hostingWindowScene = [(UIPrintingProgress *)self hostingWindowScene];
  if (!hostingWindowScene)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    hostingWindowScene = [mEMORY[0x277D75128] _findUISceneForLegacyInterfaceOrientation];
  }

  v4 = [objc_alloc(MEMORY[0x277D75DA0]) initWithWindowScene:hostingWindowScene];
  [(UIPrintingProgress *)self setProgressAlertWindow:v4];
  [v4 setOpaque:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:clearColor];

  [v4 setWindowLevel:*MEMORY[0x277D772A8]];
  [v4 setHidden:1];
  [v4 _setRoleHint:*MEMORY[0x277D77688]];
  v6 = objc_opt_new();
  [v4 setRootViewController:v6];
  [v4 makeKeyAndVisible];
  [v6 presentViewController:self->_alertController animated:0 completion:0];
}

- (void)showProgress:(id)progress immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  progressCopy = progress;
  if (pthread_main_np() == 1)
  {
    [(UIPrintingProgress *)self _mainQueue_showProgress:progressCopy immediately:immediatelyCopy];
  }

  else
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_startTime = v7;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__UIPrintingProgress_showProgress_immediately___block_invoke;
    block[3] = &unk_279A9BF50;
    block[4] = self;
    v9 = progressCopy;
    v10 = immediatelyCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_mainQueue_showProgress:(id)progress immediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  progressCopy = progress;
  if ([(UIPrintingProgress *)self progressVisible]&& immediatelyCopy)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_displayTime = v7;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {

LABEL_7:
    alertController = self->_alertController;
    if (alertController)
    {
      [(UIAlertController *)alertController setMessage:progressCopy];
    }

    else
    {
      v11 = MEMORY[0x277D75110];
      title = [(UIPrintingProgress *)self title];
      v13 = [v11 alertControllerWithTitle:title message:progressCopy preferredStyle:1];
      v14 = self->_alertController;
      self->_alertController = v13;

      objc_initWeak(&location, self);
      v15 = MEMORY[0x277D750F8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v17 = [v16 localizedStringForKey:@"PRINT_PROGRESS_CANCEL_BUTTON" value:@"Cancel" table:@"Localizable"];
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __58__UIPrintingProgress__mainQueue_showProgress_immediately___block_invoke;
      v37 = &unk_279A9C3D8;
      objc_copyWeak(&v38, &location);
      v18 = [v15 actionWithTitle:v17 style:1 handler:&v34];

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->_startTime = v19;
      [(UIAlertController *)self->_alertController addAction:v18];

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    actions = [(UIAlertController *)self->_alertController actions];
    firstObject = [actions firstObject];
    donePrinting = self->_donePrinting;
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = v23;
    if (donePrinting)
    {
      v25 = @"PRINT_PROGRESS_OK_BUTTON";
      v26 = @"OK";
    }

    else
    {
      v25 = @"PRINT_PROGRESS_CANCEL_BUTTON";
      v26 = @"Cancel";
    }

    v27 = [v23 localizedStringForKey:v25 value:v26 table:@"Localizable"];
    [firstObject setTitle:v27];

    if (immediatelyCopy && !self->_presentingAlert && ![*MEMORY[0x277D76620] applicationState])
    {
      [(UIPrintingProgress *)self _presentProgressAlert];
    }

    goto LABEL_21;
  }

  forceDisplayAsAlert = self->_forceDisplayAsAlert;

  if (forceDisplayAsAlert)
  {
    goto LABEL_7;
  }

  viewController = self->_viewController;
  if (viewController)
  {
    [(UIPrintingProgressViewController *)viewController setMessage:progressCopy];
  }

  else
  {
    v29 = [UIPrintingProgressViewController alloc];
    title2 = [(UIPrintingProgress *)self title];
    v31 = [(UIPrintingProgressViewController *)v29 initWithTitle:title2 message:progressCopy printingProgress:self];
    v32 = self->_viewController;
    self->_viewController = v31;

    [(UIPrintingProgressViewController *)self->_viewController show];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_displayTime = v33;
  }

  [(UIPrintingProgressViewController *)self->_viewController setDonePrinting:self->_donePrinting];
LABEL_21:
}

void __58__UIPrintingProgress__mainQueue_showProgress_immediately___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__UIPrintingProgress__mainQueue_showProgress_immediately___block_invoke_2;
  block[3] = &unk_279A9BEE0;
  block[4] = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__58__UIPrintingProgress__mainQueue_showProgress_immediately___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result progressCancel];
  }

  return result;
}

- (void)hideProgressAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (pthread_main_np() == 1)
  {

    [(UIPrintingProgress *)self _mainQueue_hideProgressAnimated:animatedCopy];
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __43__UIPrintingProgress_hideProgressAnimated___block_invoke;
    v5[3] = &unk_279A9C400;
    v5[4] = self;
    v6 = animatedCopy;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

- (void)_mainQueue_hideProgressAnimated:(BOOL)animated
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_endProgress object:0];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {

LABEL_4:
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__UIPrintingProgress__mainQueue_hideProgressAnimated___block_invoke;
    v8[3] = &unk_279A9BEE0;
    v8[4] = self;
    v6 = MEMORY[0x25F8E54A0](v8);
    [(UIAlertController *)self->_alertController dismissViewControllerAnimated:1 completion:v6];

    return;
  }

  forceDisplayAsAlert = self->_forceDisplayAsAlert;

  if (forceDisplayAsAlert)
  {
    goto LABEL_4;
  }

  viewController = self->_viewController;

  [(UIPrintingProgressViewController *)viewController dismissProgress];
}

uint64_t __54__UIPrintingProgress__mainQueue_hideProgressAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressAlertWindow];
  [v2 setHidden:1];

  result = [*(a1 + 32) setProgressAlertWindow:0];
  *(*(a1 + 32) + 58) = 0;
  return result;
}

- (void)progressCancel
{
  if (self->_donePrinting)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_startTime = v3 + 100.0;
  }

  else
  {
    _UIPrinterInfoCancelRequests();
    v4 = *(self->_cancelHandler + 2);

    v4();
  }
}

- (void)endProgress
{
  if (pthread_main_np() == 1)
  {

    [(UIPrintingProgress *)self _mainQueue_endProgress];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__UIPrintingProgress_endProgress__block_invoke;
    block[3] = &unk_279A9BEE0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_mainQueue_endProgress
{
  applicationState = [*MEMORY[0x277D76620] applicationState];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4;
  displayTime = self->_displayTime;
  if ([(UIPrintingProgress *)self progressVisible]&& !applicationState && ((v7 = v5 - displayTime, v5 - displayTime > 0.0) ? (v8 = v7 < 1.0) : (v8 = 0), v8))
  {

    [(UIPrintingProgress *)self performSelector:sel_endProgress withObject:0 afterDelay:v7];
  }

  else
  {
    progressVisible = [(UIPrintingProgress *)self progressVisible];
    if (applicationState)
    {
      v10 = 0;
    }

    else
    {
      v10 = progressVisible;
    }

    [(UIPrintingProgress *)self hideProgressAnimated:v10];
  }
}

- (void)setPrinterInfoState:(int)state
{
  if (state == 2)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Failed to Contact Printer" value:@"Failed to Contact Printer" table:@"Localizable"];
    [(UIPrintingProgress *)self showProgress:v6 immediately:1];

    [(UIPrintingProgress *)self progressCancel];
    self->_donePrinting = 1;
  }

  else if (!state)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v7 localizedStringForKey:@"Contacting Printer…" value:@"Contacting Printer…" table:@"Localizable"];
    [(UIPrintingProgress *)self showProgress:v4 immediately:1];
  }
}

- (void)setPage:(int64_t)page ofPage:(int64_t)ofPage
{
  if (page == -2)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v5 localizedStringForKey:@"Preparing…" value:@"Preparing…" table:@"Localizable"];
LABEL_16:

    goto LABEL_17;
  }

  if (page != -1)
  {
    pageCopy2 = ofPage - 1;
    if (ofPage - 1 >= page)
    {
      pageCopy2 = page;
    }

    if (ofPage <= 0)
    {
      pageCopy2 = page;
    }

    v8 = MEMORY[0x277CCABB8];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:pageCopy2 + 1];
    v5 = [v8 localizedStringFromNumber:v9 numberStyle:0];

    if (ofPage < 1)
    {
      v17 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v12 localizedStringForKey:@"Preparing page %@…" value:@"Preparing page %@…" table:@"Localizable"];
      v21 = [v17 stringWithFormat:v14, v5];
    }

    else
    {
      v10 = MEMORY[0x277CCABB8];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:ofPage];
      v12 = [v10 localizedStringFromNumber:v11 numberStyle:0];

      v13 = MEMORY[0x277CCACA8];
      v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v15 = [v14 localizedStringForKey:@"Preparing page %@ of %@…" value:@"Preparing page %@ of %@…" table:@"Localizable"];
      v21 = [v13 stringWithFormat:v15, v5, v12];
    }

    goto LABEL_16;
  }

  if (self->_creatingPDF)
  {
    v21 = &stru_2871AE610;
  }

  else
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v16 localizedStringForKey:@"Sending to Printer…" value:@"Sending to Printer…" table:@"Localizable"];
  }

  self->_donePrinting = 1;
LABEL_17:
  if (self->_donePrinting && [*MEMORY[0x277D76620] applicationState])
  {
    [(UIPrintingProgress *)self endProgress];
  }

  else
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v19 = v18;
    [(UIPrintingProgress *)self lastPageUpdate];
    if (v19 > v20 + 2.0)
    {
      [(UIPrintingProgress *)self showProgress:v21 immediately:0];
      [(UIPrintingProgress *)self setLastPageUpdate:v19];
    }
  }
}

- (double)nextPrintDelay
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
  }

  else
  {
    forceDisplayAsAlert = self->_forceDisplayAsAlert;

    v5 = 0.0;
    if (!forceDisplayAsAlert)
    {
      goto LABEL_8;
    }
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = 0.0;
  if (!self->_presentingAlert)
  {
    v7 = v6;
    startTime = self->_startTime;
    [(UIPrintingProgress *)self progressAlertDelay];
    if (v7 >= startTime + v9 && ![*MEMORY[0x277D76620] applicationState])
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->_displayTime = v10;
      [(UIPrintingProgress *)self _presentProgressAlert];
      v5 = 0.5;
    }
  }

LABEL_8:
  viewController = self->_viewController;
  if (viewController)
  {
    [(UIPrintingProgressViewController *)viewController rotationDelay];
    if (v12 > 0.0)
    {
      [(UIPrintingProgressViewController *)self->_viewController rotationDelay];
      v14 = v13 + 0.1;
      if (v5 < v14)
      {
        return v14;
      }
    }
  }

  return v5;
}

- (UIWindowScene)hostingWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingWindowScene);

  return WeakRetained;
}

@end
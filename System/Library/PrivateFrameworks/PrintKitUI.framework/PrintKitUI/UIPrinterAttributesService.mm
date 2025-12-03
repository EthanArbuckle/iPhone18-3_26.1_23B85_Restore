@interface UIPrinterAttributesService
+ (id)instance;
- (UIPrinterAttributesService)init;
- (void)_updatePolledPrinterState:(id)state forPrinter:(id)printer;
- (void)dealloc;
- (void)pollForPrinterWarningStatus;
- (void)startPollForPrinterWarningStatus:(id)status completionHandler:(id)handler;
@end

@implementation UIPrinterAttributesService

+ (id)instance
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (UIPrinterAttributesService)init
{
  v3.receiver = self;
  v3.super_class = UIPrinterAttributesService;
  result = [(UIPrinterAttributesService *)&v3 init];
  if (result)
  {
    result->_printerWarningPollTime = -1;
  }

  return result;
}

- (void)dealloc
{
  self->_printerWarningPollTime = -1;
  v2.receiver = self;
  v2.super_class = UIPrinterAttributesService;
  [(UIPrinterAttributesService *)&v2 dealloc];
}

- (void)startPollForPrinterWarningStatus:(id)status completionHandler:(id)handler
{
  statusCopy = status;
  handlerCopy = handler;
  if (!statusCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  if (self->_printerWarningPollTime < 0)
  {
    self->_printerWarningPollTime = 3;
    v8 = MEMORY[0x25F8E54A0](handlerCopy);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v8;

    objc_storeStrong(&self->_printer, status);
    [(UIPrinterAttributesService *)self pollForPrinterWarningStatus];
  }
}

- (void)pollForPrinterWarningStatus
{
  if (self->_printer)
  {
    objc_initWeak(&location, self);
    v3 = self->_printer;
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__UIPrinterAttributesService_pollForPrinterWarningStatus__block_invoke;
    v7[3] = &unk_279A9C938;
    objc_copyWeak(&v9, &location);
    v6 = v3;
    v8 = v6;
    [(PKPrinter *)v6 pollForPrinterStatusQueue:v4 completionHandler:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __57__UIPrinterAttributesService_pollForPrinterWarningStatus__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updatePolledPrinterState:v3 forPrinter:*(a1 + 32)];
}

- (void)_updatePolledPrinterState:(id)state forPrinter:(id)printer
{
  stateCopy = state;
  printerCopy = printer;
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    printer = self->_printer;
    if (printer == printerCopy)
    {
      if (stateCopy)
      {
        v10 = [stateCopy objectForKeyedSubscript:*MEMORY[0x277D41218]];
        v11 = [v10 componentsJoinedByString:@"\n"];

        (*(self->_completionHandler + 2))();
        if (self->_printerWarningPollTime >= 1)
        {
          objc_initWeak(&location, self);
          v12 = dispatch_time(0, 1000000000 * self->_printerWarningPollTime);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __67__UIPrinterAttributesService__updatePolledPrinterState_forPrinter___block_invoke;
          block[3] = &unk_279A9C210;
          objc_copyWeak(&v14, &location);
          dispatch_after(v12, MEMORY[0x277D85CD0], block);
          objc_destroyWeak(&v14);
          objc_destroyWeak(&location);
        }
      }

      else
      {
        (*(completionHandler + 2))(completionHandler, 0, 0);
      }
    }

    else
    {
      NSLog(&cfstr_PolledStateFor_0.isa, printerCopy, printer);
    }
  }

  else
  {
    NSLog(&cfstr_PolledStateFor.isa, printerCopy);
  }
}

void __67__UIPrinterAttributesService__updatePolledPrinterState_forPrinter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pollForPrinterWarningStatus];
}

@end
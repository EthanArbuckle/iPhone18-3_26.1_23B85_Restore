@interface UIPrinterInfoRequest
+ (id)requestInfoForPrinter:(id)a3;
- (void)requestPrinterInfo;
@end

@implementation UIPrinterInfoRequest

+ (id)requestInfoForPrinter:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UIPrinterInfoRequest);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_printer, a3);
    v6->_requestState = 0;
    [(UIPrinterInfoRequest *)v6 requestPrinterInfo];
  }

  return v6;
}

- (void)requestPrinterInfo
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__UIPrinterInfoRequest_requestPrinterInfo__block_invoke;
  block[3] = &unk_279A9BEE0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __42__UIPrinterInfoRequest_requestPrinterInfo__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) printInfoSupported];
  [*(a1 + 32) setPrinterInfo:v2];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__UIPrinterInfoRequest_requestPrinterInfo__block_invoke_2;
  block[3] = &unk_279A9BEE0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __42__UIPrinterInfoRequest_requestPrinterInfo__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) printerInfo];
  if ([v2 count])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *(*(a1 + 32) + 16) = v3;

  result = *(a1 + 32);
  v5 = *(result + 24);
  if (v5)
  {
    v6 = *(result + 16);
    v7 = [result printerInfo];
    (*(v5 + 16))(v5, v6, v7);

    v8 = *(a1 + 32);

    return [v8 setCompletionHandler:0];
  }

  return result;
}

@end
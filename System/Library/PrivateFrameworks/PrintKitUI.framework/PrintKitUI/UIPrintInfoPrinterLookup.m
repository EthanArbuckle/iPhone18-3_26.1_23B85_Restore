@interface UIPrintInfoPrinterLookup
@end

@implementation UIPrintInfoPrinterLookup

void ___UIPrintInfoPrinterLookup_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = ___UIPrintInfoPrinterLookup_block_invoke_2;
  v6[3] = &unk_279A9C608;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t ___UIPrintInfoPrinterLookup_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) != 0);
  }

  return result;
}

@end
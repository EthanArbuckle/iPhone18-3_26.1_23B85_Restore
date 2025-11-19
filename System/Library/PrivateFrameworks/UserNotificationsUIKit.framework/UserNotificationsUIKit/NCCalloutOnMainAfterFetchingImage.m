@interface NCCalloutOnMainAfterFetchingImage
@end

@implementation NCCalloutOnMainAfterFetchingImage

void ___NCCalloutOnMainAfterFetchingImage_block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ___NCCalloutOnMainAfterFetchingImage_block_invoke_2;
  v5[3] = &unk_278370CF8;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

@end
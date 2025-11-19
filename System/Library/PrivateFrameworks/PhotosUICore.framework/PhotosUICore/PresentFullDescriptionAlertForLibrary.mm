@interface PresentFullDescriptionAlertForLibrary
@end

@implementation PresentFullDescriptionAlertForLibrary

void ___PresentFullDescriptionAlertForLibrary_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___PresentFullDescriptionAlertForLibrary_block_invoke_2;
  block[3] = &unk_1E774A1B8;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void ___PresentFullDescriptionAlertForLibrary_block_invoke_2(uint64_t a1)
{
  v4 = [PXGenerativeStoryFeatureEligibilityDataSource fullDescriptionWithFeatureEligibilityState:*(a1 + 32) photoLibrary:*(a1 + 40)];
  v2 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Library State" message:0 preferredStyle:1];
  [v2 _setAttributedMessage:v4];
  v3 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v2 addAction:v3];

  [*(a1 + 48) presentViewController:v2 animated:1 completion:0];
}

void ___PresentFullDescriptionAlertForLibrary_block_invoke_220150(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___PresentFullDescriptionAlertForLibrary_block_invoke_2_220151;
  v5[3] = &unk_1E774C620;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void ___PresentFullDescriptionAlertForLibrary_block_invoke_2_220151(uint64_t a1)
{
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Library State" message:0 preferredStyle:1];
  [v3 _setAttributedMessage:*(a1 + 32)];
  v2 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:0 handler:0];
  [v3 addAction:v2];

  [*(a1 + 40) presentViewController:v3 animated:1 completion:0];
}

@end
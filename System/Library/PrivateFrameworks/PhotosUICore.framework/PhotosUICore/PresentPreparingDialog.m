@interface PresentPreparingDialog
@end

@implementation PresentPreparingDialog

uint64_t ___PresentPreparingDialog_block_invoke()
{
  v0 = objc_alloc_init(PXActivityProgressController);
  [(PXActivityProgressController *)v0 setTitle:@"Preparing..."];
  [(PXActivityProgressController *)v0 showAnimated:1 allowDelay:0];
  [(PXActivityProgressController *)v0 setCancellationHandler:&__block_literal_global_327];
  v1 = displayedController;
  displayedController = v0;

  return 1;
}

void ___PresentPreparingDialog_block_invoke_2()
{
  [displayedController hideAnimated:1 allowDelay:0];
  v0 = displayedController;
  displayedController = 0;
}

@end
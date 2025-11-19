@interface UIArchiveListingController
@end

@implementation UIArchiveListingController

void __68___UIArchiveListingController_enumerateLogicalItemsWithBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) _shouldVisitItem:?])
  {
    (*(*(a1 + 40) + 16))();
  }
}

@end
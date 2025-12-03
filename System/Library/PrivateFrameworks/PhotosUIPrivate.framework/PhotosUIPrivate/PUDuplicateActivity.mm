@interface PUDuplicateActivity
- (BOOL)canPerformWithActivityItems:(id)items;
@end

@implementation PUDuplicateActivity

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  isPreparingIndividualItems = [itemSourceController isPreparingIndividualItems];

  if (!isPreparingIndividualItems)
  {
    return 0;
  }

  v6 = MEMORY[0x1E69C34A8];
  itemSourceController2 = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController2 assets];
  LOBYTE(v6) = [v6 canPerformOnAllAssets:assets];

  return v6;
}

@end
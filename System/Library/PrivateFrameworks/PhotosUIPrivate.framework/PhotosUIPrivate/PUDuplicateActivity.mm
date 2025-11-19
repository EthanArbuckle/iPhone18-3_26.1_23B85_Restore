@interface PUDuplicateActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
@end

@implementation PUDuplicateActivity

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = [(PXActivity *)self itemSourceController];
  v5 = [v4 isPreparingIndividualItems];

  if (!v5)
  {
    return 0;
  }

  v6 = MEMORY[0x1E69C34A8];
  v7 = [(PXActivity *)self itemSourceController];
  v8 = [v7 assets];
  LOBYTE(v6) = [v6 canPerformOnAllAssets:v8];

  return v6;
}

@end
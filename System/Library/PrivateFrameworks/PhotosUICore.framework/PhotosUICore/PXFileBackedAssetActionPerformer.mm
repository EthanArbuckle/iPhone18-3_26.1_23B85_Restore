@interface PXFileBackedAssetActionPerformer
+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error;
@end

@implementation PXFileBackedAssetActionPerformer

+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error
{
  v5 = [manager _selectionSnapshotForPerformerClass:{self, error}];
  if (v5)
  {
    v6 = [self canPerformWithSelectionSnapshot:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
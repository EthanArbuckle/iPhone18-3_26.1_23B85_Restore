@interface PXFileBackedAssetActionPerformer
+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4;
@end

@implementation PXFileBackedAssetActionPerformer

+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4
{
  v5 = [a3 _selectionSnapshotForPerformerClass:{a1, a4}];
  if (v5)
  {
    v6 = [a1 canPerformWithSelectionSnapshot:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
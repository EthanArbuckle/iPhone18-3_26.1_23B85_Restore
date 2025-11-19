@interface PXStoryAssetActionPerformer
+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4;
- (PXStoryViewActionPerformer)storyViewActionPerformer;
@end

@implementation PXStoryAssetActionPerformer

+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 performerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 performerDelegate];
    v9 = [v8 hostViewControllerForActionPerformer:0];
  }

  else
  {
    v9 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 conformsToProtocol:&unk_1F1B44518])
  {
    v12.receiver = a1;
    v12.super_class = &OBJC_METACLASS___PXStoryAssetActionPerformer;
    v10 = objc_msgSendSuper2(&v12, sel_canPerformWithActionManager_error_, v6, a4);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PXStoryViewActionPerformer)storyViewActionPerformer
{
  WeakRetained = objc_loadWeakRetained(&self->_storyViewActionPerformer);
  if (!WeakRetained)
  {
    v4 = [(PXActionPerformer *)self hostViewController];
    v5 = [v4 conformsToProtocol:&unk_1F1B44518];

    if (!v5)
    {
      goto LABEL_5;
    }

    WeakRetained = [(PXActionPerformer *)self hostViewController];
    objc_storeWeak(&self->_storyViewActionPerformer, WeakRetained);
  }

LABEL_5:
  v6 = objc_loadWeakRetained(&self->_storyViewActionPerformer);

  return v6;
}

@end
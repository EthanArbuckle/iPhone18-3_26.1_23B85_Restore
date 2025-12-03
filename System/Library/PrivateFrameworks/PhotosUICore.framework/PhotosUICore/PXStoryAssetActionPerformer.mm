@interface PXStoryAssetActionPerformer
+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error;
- (PXStoryViewActionPerformer)storyViewActionPerformer;
@end

@implementation PXStoryAssetActionPerformer

+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error
{
  managerCopy = manager;
  performerDelegate = [managerCopy performerDelegate];
  if (objc_opt_respondsToSelector())
  {
    performerDelegate2 = [managerCopy performerDelegate];
    v9 = [performerDelegate2 hostViewControllerForActionPerformer:0];
  }

  else
  {
    v9 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 conformsToProtocol:&unk_1F1B44518])
  {
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___PXStoryAssetActionPerformer;
    v10 = objc_msgSendSuper2(&v12, sel_canPerformWithActionManager_error_, managerCopy, error);
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
    hostViewController = [(PXActionPerformer *)self hostViewController];
    v5 = [hostViewController conformsToProtocol:&unk_1F1B44518];

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
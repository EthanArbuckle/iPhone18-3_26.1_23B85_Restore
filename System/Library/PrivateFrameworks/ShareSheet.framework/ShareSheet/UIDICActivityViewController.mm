@interface UIDICActivityViewController
@end

@implementation UIDICActivityViewController

void __71___UIDICActivityViewController_setDocumentInteractionActivityDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleDidFinishPerformingActivityType:v11 completed:a3 resultItems:v10 activityError:v9];
}

@end
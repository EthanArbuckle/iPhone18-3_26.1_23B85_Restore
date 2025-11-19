@interface UIPlatterMenuDynamicsController
@end

@implementation UIPlatterMenuDynamicsController

void __86___UIPlatterMenuDynamicsController__animateToPlatterDismissedWithDuration_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) platterView];
  [v4 setCenter:{v2, v3}];

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) menuView];
  [v7 setCenter:{v5, v6}];
}

uint64_t __86___UIPlatterMenuDynamicsController__animateToPlatterDismissedWithDuration_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __109___UIPlatterMenuDynamicsController_beginTransitionWithAnimatorUsingBehaviors_observedItems_stateIfCompleted___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopObservingBehavior];
  [WeakRetained performActionsAndEnterState:*(a1 + 40) velocity:objc_msgSend(WeakRetained underDirectManipulation:{"isCurrentlyUnderDirectManipulation"), 0.0, 0.0}];
  if ([WeakRetained isCurrentlyUnderDirectManipulation])
  {
    v2 = [WeakRetained platterView];
    [v2 center];
    v4 = v3;
    v6 = v5;
    v7 = [WeakRetained gestureAttachmentBehavior];
    [v7 setAnchorPoint:{v4, v6}];

    v8 = [WeakRetained gestureAttachmentBehavior];
    [WeakRetained addBehaviorIfNotPresent:v8];
  }
}

void __67___UIPlatterMenuDynamicsController_resetAnimatorToDefaultBehaviors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isDefaultAnimatorBehavior:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __67___UIPlatterMenuDynamicsController_resetAnimatorToDefaultBehaviors__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 animator];
  [v4 removeBehavior:v3];
}

@end
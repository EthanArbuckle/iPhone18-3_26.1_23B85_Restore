@interface UICollectionViewDragDestinationController
@end

@implementation UICollectionViewDragDestinationController

void __95___UICollectionViewDragDestinationController_dropInteraction_item_willAnimateDropWithAnimator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  v3 = WeakRetained;
  [_UICollectionViewDragAndDropController dragDestinationController:? didCompleteDropAnimationForDragItem:?];
}

void __123___UICollectionViewDragDestinationController__computeNextItemAttributesStartingFromItemAttributes_withCurrentDragLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = v5;
  if (!v5 || (v6 = v5, (*(v5 + 288) & 1) == 0))
  {
    [*(a1 + 32) addIndex:a3];
    v6 = v7;
  }

  if ([*(a1 + 40) isEqual:v6])
  {
    [*(a1 + 32) addIndex:a3];
  }
}

uint64_t __123___UICollectionViewDragDestinationController__computeNextItemAttributesStartingFromItemAttributes_withCurrentDragLocation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 center];
  v8 = sqrt((v6 - *(a1 + 32)) * (v6 - *(a1 + 32)) + (v7 - *(a1 + 40)) * (v7 - *(a1 + 40)));
  [v5 center];
  v10 = v9;
  v12 = v11;

  v13 = sqrt((v10 - *(a1 + 32)) * (v10 - *(a1 + 32)) + (v12 - *(a1 + 40)) * (v12 - *(a1 + 40)));
  if (v8 >= v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = -1;
  }

  if (v8 > v13)
  {
    return 1;
  }

  else
  {
    return v14;
  }
}

@end
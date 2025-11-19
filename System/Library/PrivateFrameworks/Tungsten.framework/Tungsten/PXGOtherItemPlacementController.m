@interface PXGOtherItemPlacementController
- (PXGOtherItemPlacementController)init;
- (PXGOtherItemPlacementController)initWithOriginalItemPlacementController:(id)a3 originalItemReference:(id)a4;
- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4;
@end

@implementation PXGOtherItemPlacementController

- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v5 = a3;
  v8 = [(PXGOtherItemPlacementController *)self originalItemPlacementController];
  v6 = [v5 otherItemsPlacement];

  v7 = [(PXGOtherItemPlacementController *)self originalItemReference];
  [v8 setPlacementOverride:v6 forItemReference:v7];
}

- (PXGOtherItemPlacementController)initWithOriginalItemPlacementController:(id)a3 originalItemReference:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXGOtherItemPlacementController;
  v9 = [(PXGOtherItemPlacementController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalItemPlacementController, a3);
    objc_storeStrong(&v10->_originalItemReference, a4);
  }

  return v10;
}

- (PXGOtherItemPlacementController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGItemPlacementController.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXGOtherItemPlacementController init]"}];

  abort();
}

@end
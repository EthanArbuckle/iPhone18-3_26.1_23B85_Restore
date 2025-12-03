@interface PXGOtherItemPlacementController
- (PXGOtherItemPlacementController)init;
- (PXGOtherItemPlacementController)initWithOriginalItemPlacementController:(id)controller originalItemReference:(id)reference;
- (void)setPlacementOverride:(id)override forItemReference:(id)reference;
@end

@implementation PXGOtherItemPlacementController

- (void)setPlacementOverride:(id)override forItemReference:(id)reference
{
  overrideCopy = override;
  originalItemPlacementController = [(PXGOtherItemPlacementController *)self originalItemPlacementController];
  otherItemsPlacement = [overrideCopy otherItemsPlacement];

  originalItemReference = [(PXGOtherItemPlacementController *)self originalItemReference];
  [originalItemPlacementController setPlacementOverride:otherItemsPlacement forItemReference:originalItemReference];
}

- (PXGOtherItemPlacementController)initWithOriginalItemPlacementController:(id)controller originalItemReference:(id)reference
{
  controllerCopy = controller;
  referenceCopy = reference;
  v12.receiver = self;
  v12.super_class = PXGOtherItemPlacementController;
  v9 = [(PXGOtherItemPlacementController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalItemPlacementController, controller);
    objc_storeStrong(&v10->_originalItemReference, reference);
  }

  return v10;
}

- (PXGOtherItemPlacementController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGItemPlacementController.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXGOtherItemPlacementController init]"}];

  abort();
}

@end
@interface PXUISnappingController
- (PXUISnappingController)initWithSnappingTarget:(double)a3;
- (void)didSnapByAttraction;
- (void)interactionBegan;
@end

@implementation PXUISnappingController

- (void)didSnapByAttraction
{
  v4.receiver = self;
  v4.super_class = PXUISnappingController;
  [(PXSnappingController *)&v4 didSnapByAttraction];
  v3 = [(PXUISnappingController *)self _selectionBehavior];
  [v3 selectionChanged];
}

- (void)interactionBegan
{
  v4.receiver = self;
  v4.super_class = PXUISnappingController;
  [(PXSnappingController *)&v4 interactionBegan];
  v3 = [(PXUISnappingController *)self _selectionBehavior];
  [v3 prepare];
}

- (PXUISnappingController)initWithSnappingTarget:(double)a3
{
  v7.receiver = self;
  v7.super_class = PXUISnappingController;
  v3 = [(PXSnappingController *)&v7 initWithSnappingTarget:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    selectionBehavior = v3->__selectionBehavior;
    v3->__selectionBehavior = v4;
  }

  return v3;
}

@end
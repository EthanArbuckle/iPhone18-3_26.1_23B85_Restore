@interface PXUISnappingController
- (PXUISnappingController)initWithSnappingTarget:(double)target;
- (void)didSnapByAttraction;
- (void)interactionBegan;
@end

@implementation PXUISnappingController

- (void)didSnapByAttraction
{
  v4.receiver = self;
  v4.super_class = PXUISnappingController;
  [(PXSnappingController *)&v4 didSnapByAttraction];
  _selectionBehavior = [(PXUISnappingController *)self _selectionBehavior];
  [_selectionBehavior selectionChanged];
}

- (void)interactionBegan
{
  v4.receiver = self;
  v4.super_class = PXUISnappingController;
  [(PXSnappingController *)&v4 interactionBegan];
  _selectionBehavior = [(PXUISnappingController *)self _selectionBehavior];
  [_selectionBehavior prepare];
}

- (PXUISnappingController)initWithSnappingTarget:(double)target
{
  v7.receiver = self;
  v7.super_class = PXUISnappingController;
  v3 = [(PXSnappingController *)&v7 initWithSnappingTarget:target];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    selectionBehavior = v3->__selectionBehavior;
    v3->__selectionBehavior = v4;
  }

  return v3;
}

@end
@interface PXDraggingItemLocalObject
- (PXDraggingItemLocalObject)init;
- (PXDraggingItemLocalObject)initWithAssetReference:(id)reference;
@end

@implementation PXDraggingItemLocalObject

- (PXDraggingItemLocalObject)initWithAssetReference:(id)reference
{
  referenceCopy = reference;
  v9.receiver = self;
  v9.super_class = PXDraggingItemLocalObject;
  v6 = [(PXDraggingItemLocalObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetReference, reference);
  }

  return v7;
}

- (PXDraggingItemLocalObject)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDraggingItemLocalObject.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXDraggingItemLocalObject init]"}];

  abort();
}

@end
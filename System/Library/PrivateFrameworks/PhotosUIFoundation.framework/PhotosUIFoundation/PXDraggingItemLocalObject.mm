@interface PXDraggingItemLocalObject
- (PXDraggingItemLocalObject)init;
- (PXDraggingItemLocalObject)initWithAssetReference:(id)a3;
@end

@implementation PXDraggingItemLocalObject

- (PXDraggingItemLocalObject)initWithAssetReference:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXDraggingItemLocalObject;
  v6 = [(PXDraggingItemLocalObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetReference, a3);
  }

  return v7;
}

- (PXDraggingItemLocalObject)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXDraggingItemLocalObject.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXDraggingItemLocalObject init]"}];

  abort();
}

@end
@interface PXBarSpec
- (PXBarSpec)init;
- (PXBarSpec)initWithExtendedTraitCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sortedBarItemsByPlacement:(id)placement;
@end

@implementation PXBarSpec

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (id)sortedBarItemsByPlacement:(id)placement
{
  placementCopy = placement;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBarSpec.m" lineNumber:80 description:{@"Method %s is a responsibility of subclass %@", "-[PXBarSpec sortedBarItemsByPlacement:]", v8}];

  abort();
}

- (PXBarSpec)initWithExtendedTraitCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PXBarSpec;
  v6 = [(PXBarSpec *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extendedTraitCollection, collection);
  }

  return v7;
}

- (PXBarSpec)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBarSpec.m" lineNumber:68 description:{@"%@ not supported", v5}];

  abort();
}

@end
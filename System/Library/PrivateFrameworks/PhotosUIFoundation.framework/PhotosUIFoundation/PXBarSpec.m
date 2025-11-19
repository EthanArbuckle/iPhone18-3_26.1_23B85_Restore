@interface PXBarSpec
- (PXBarSpec)init;
- (PXBarSpec)initWithExtendedTraitCollection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sortedBarItemsByPlacement:(id)a3;
@end

@implementation PXBarSpec

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (id)sortedBarItemsByPlacement:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXBarSpec.m" lineNumber:80 description:{@"Method %s is a responsibility of subclass %@", "-[PXBarSpec sortedBarItemsByPlacement:]", v8}];

  abort();
}

- (PXBarSpec)initWithExtendedTraitCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXBarSpec;
  v6 = [(PXBarSpec *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extendedTraitCollection, a3);
  }

  return v7;
}

- (PXBarSpec)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:@"PXBarSpec.m" lineNumber:68 description:{@"%@ not supported", v5}];

  abort();
}

@end
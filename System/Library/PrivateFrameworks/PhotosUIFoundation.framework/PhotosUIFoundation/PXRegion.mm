@interface PXRegion
- (CGPath)createPathInRect:(CGRect)rect;
- (double)valueAtPoint:(CGPoint)point;
- (id)denormalizedWithBasisRect:(CGRect)rect;
- (id)normalizedWithBasisRect:(CGRect)rect;
- (id)transformedWithAffineTransform:(CGAffineTransform *)transform;
@end

@implementation PXRegion

- (CGPath)createPathInRect:(CGRect)rect
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXRegion.m" lineNumber:38 description:{@"Method %s is a responsibility of subclass %@", "-[PXRegion createPathInRect:]", v7}];

  abort();
}

- (double)valueAtPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXRegion.m" lineNumber:34 description:{@"Method %s is a responsibility of subclass %@", "-[PXRegion valueAtPoint:]", v7}];

  abort();
}

- (id)transformedWithAffineTransform:(CGAffineTransform *)transform
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXRegion.m" lineNumber:26 description:{@"Method %s is a responsibility of subclass %@", "-[PXRegion transformedWithAffineTransform:]", v7}];

  abort();
}

- (id)denormalizedWithBasisRect:(CGRect)rect
{
  v3 = [(PXRegion *)self transformedWithAffineTransform:v5, PXAffineTransformMakeFromRects(v5, 0.0, 0.0, 1.0, 1.0, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)];

  return v3;
}

- (id)normalizedWithBasisRect:(CGRect)rect
{
  v3 = [(PXRegion *)self transformedWithAffineTransform:v5, PXAffineTransformMakeFromRects(v5, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, 0.0, 0.0, 1.0, 1.0)];

  return v3;
}

@end
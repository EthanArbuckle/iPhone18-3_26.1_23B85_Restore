@interface PXRegion
- (CGPath)createPathInRect:(CGRect)a3;
- (double)valueAtPoint:(CGPoint)a3;
- (id)denormalizedWithBasisRect:(CGRect)a3;
- (id)normalizedWithBasisRect:(CGRect)a3;
- (id)transformedWithAffineTransform:(CGAffineTransform *)a3;
@end

@implementation PXRegion

- (CGPath)createPathInRect:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXRegion.m" lineNumber:38 description:{@"Method %s is a responsibility of subclass %@", "-[PXRegion createPathInRect:]", v7}];

  abort();
}

- (double)valueAtPoint:(CGPoint)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXRegion.m" lineNumber:34 description:{@"Method %s is a responsibility of subclass %@", "-[PXRegion valueAtPoint:]", v7}];

  abort();
}

- (id)transformedWithAffineTransform:(CGAffineTransform *)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 handleFailureInMethod:a2 object:self file:@"PXRegion.m" lineNumber:26 description:{@"Method %s is a responsibility of subclass %@", "-[PXRegion transformedWithAffineTransform:]", v7}];

  abort();
}

- (id)denormalizedWithBasisRect:(CGRect)a3
{
  v3 = [(PXRegion *)self transformedWithAffineTransform:v5, PXAffineTransformMakeFromRects(v5, 0.0, 0.0, 1.0, 1.0, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height)];

  return v3;
}

- (id)normalizedWithBasisRect:(CGRect)a3
{
  v3 = [(PXRegion *)self transformedWithAffineTransform:v5, PXAffineTransformMakeFromRects(v5, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, 0.0, 0.0, 1.0, 1.0)];

  return v3;
}

@end
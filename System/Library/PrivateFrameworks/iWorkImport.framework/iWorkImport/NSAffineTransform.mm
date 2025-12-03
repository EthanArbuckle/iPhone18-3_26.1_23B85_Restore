@interface NSAffineTransform
- (void)gqu_transformRect:(CGRect)rect upperLeft:(CGPoint *)left lowerLeft:(CGPoint *)lowerLeft lowerRight:(CGPoint *)right upperRight:(CGPoint *)upperRight;
@end

@implementation NSAffineTransform

- (void)gqu_transformRect:(CGRect)rect upperLeft:(CGPoint *)left lowerLeft:(CGPoint *)lowerLeft lowerRight:(CGPoint *)right upperRight:(CGPoint *)upperRight
{
  x = rect.origin.x;
  y = rect.origin.y;
  v14 = rect.origin.x + rect.size.width;
  v15 = rect.origin.y + rect.size.height;
  left->x = x;
  left->y = y;
  v16 = v15;
  lowerLeft->x = x;
  lowerLeft->y = v16;
  v17 = v14;
  right->x = v17;
  right->y = v16;
  upperRight->x = v17;
  upperRight->y = y;
  [(NSAffineTransform *)self transformPoint:left->x, left->y];
  left->x = v18;
  left->y = v19;
  [(NSAffineTransform *)self transformPoint:lowerLeft->x, lowerLeft->y];
  lowerLeft->x = v20;
  lowerLeft->y = v21;
  [(NSAffineTransform *)self transformPoint:right->x, right->y];
  right->x = v22;
  right->y = v23;
  [(NSAffineTransform *)self transformPoint:upperRight->x, upperRight->y];
  upperRight->x = v24;
  upperRight->y = v25;
}

@end
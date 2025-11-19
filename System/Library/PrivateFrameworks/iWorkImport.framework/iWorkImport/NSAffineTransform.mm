@interface NSAffineTransform
- (void)gqu_transformRect:(CGRect)a3 upperLeft:(CGPoint *)a4 lowerLeft:(CGPoint *)a5 lowerRight:(CGPoint *)a6 upperRight:(CGPoint *)a7;
@end

@implementation NSAffineTransform

- (void)gqu_transformRect:(CGRect)a3 upperLeft:(CGPoint *)a4 lowerLeft:(CGPoint *)a5 lowerRight:(CGPoint *)a6 upperRight:(CGPoint *)a7
{
  x = a3.origin.x;
  y = a3.origin.y;
  v14 = a3.origin.x + a3.size.width;
  v15 = a3.origin.y + a3.size.height;
  a4->x = x;
  a4->y = y;
  v16 = v15;
  a5->x = x;
  a5->y = v16;
  v17 = v14;
  a6->x = v17;
  a6->y = v16;
  a7->x = v17;
  a7->y = y;
  [(NSAffineTransform *)self transformPoint:a4->x, a4->y];
  a4->x = v18;
  a4->y = v19;
  [(NSAffineTransform *)self transformPoint:a5->x, a5->y];
  a5->x = v20;
  a5->y = v21;
  [(NSAffineTransform *)self transformPoint:a6->x, a6->y];
  a6->x = v22;
  a6->y = v23;
  [(NSAffineTransform *)self transformPoint:a7->x, a7->y];
  a7->x = v24;
  a7->y = v25;
}

@end
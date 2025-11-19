@interface NSScanner
- (BOOL)tsu_scanCGFloat:(double *)a3;
@end

@implementation NSScanner

- (BOOL)tsu_scanCGFloat:(double *)a3
{
  v5 = 0;
  result = [(NSScanner *)self scanDouble:&v5];
  *a3 = v5;
  return result;
}

@end
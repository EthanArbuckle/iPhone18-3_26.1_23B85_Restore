@interface NSNumber
- (BOOL)tsu_isAlmostEqual:(id)a3;
@end

@implementation NSNumber

- (BOOL)tsu_isAlmostEqual:(id)a3
{
  [(NSNumber *)self doubleValue];
  v5 = v4;
  [a3 doubleValue];
  return vabdd_f64(v5, v6) < 0.01 || v5 == v6;
}

@end
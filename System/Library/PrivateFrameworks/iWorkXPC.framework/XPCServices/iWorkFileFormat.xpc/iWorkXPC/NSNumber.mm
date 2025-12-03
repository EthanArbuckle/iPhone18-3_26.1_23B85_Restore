@interface NSNumber
- (BOOL)tsu_isAlmostEqual:(id)equal;
@end

@implementation NSNumber

- (BOOL)tsu_isAlmostEqual:(id)equal
{
  [(NSNumber *)self doubleValue];
  v5 = v4;
  [equal doubleValue];
  return vabdd_f64(v5, v6) < 0.01 || v5 == v6;
}

@end
@interface NSValue(TUIKBHandwritingPoint)
+ (id)valueWithTUIKBHandwritingPoint:()TUIKBHandwritingPoint;
- (double)TUIKBHandwritingPointValue;
@end

@implementation NSValue(TUIKBHandwritingPoint)

- (double)TUIKBHandwritingPointValue
{
  memset(v2, 0, sizeof(v2));
  [a1 getValue:v2];
  return *v2;
}

+ (id)valueWithTUIKBHandwritingPoint:()TUIKBHandwritingPoint
{
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  v4 = [a1 valueWithBytes:v6 objCType:"{?={CGPoint=dd}d}"];

  return v4;
}

@end
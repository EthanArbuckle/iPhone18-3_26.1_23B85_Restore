@interface NSValue(UIKBHandwritingPoint)
+ (id)valueWithUIKBHandwritingPoint:()UIKBHandwritingPoint;
- (double)UIKBHandwritingPointValue;
@end

@implementation NSValue(UIKBHandwritingPoint)

+ (id)valueWithUIKBHandwritingPoint:()UIKBHandwritingPoint
{
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  v4 = [a1 valueWithBytes:v6 objCType:"{?={CGPoint=dd}d}"];

  return v4;
}

- (double)UIKBHandwritingPointValue
{
  memset(v2, 0, sizeof(v2));
  [a1 getValue:v2];
  return *v2;
}

@end
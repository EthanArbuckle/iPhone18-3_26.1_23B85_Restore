@interface NSValue(CACGestureLivePreviewHandwritingPoint)
+ (id)valueWithCACGestureLivePreviewHandwritingPoint:()CACGestureLivePreviewHandwritingPoint;
- (double)CACGestureLivePreviewHandwritingPointValue;
@end

@implementation NSValue(CACGestureLivePreviewHandwritingPoint)

+ (id)valueWithCACGestureLivePreviewHandwritingPoint:()CACGestureLivePreviewHandwritingPoint
{
  *v6 = a2;
  *&v6[1] = a3;
  *&v6[2] = a4;
  v4 = [self valueWithBytes:v6 objCType:"{?={CGPoint=dd}d}"];

  return v4;
}

- (double)CACGestureLivePreviewHandwritingPointValue
{
  memset(v2, 0, sizeof(v2));
  [self getValue:v2];
  return *v2;
}

@end
@interface NSValue(WFCoreGraphicsSupport)
+ (id)wf_valueWithCGAffineTransform:()WFCoreGraphicsSupport;
@end

@implementation NSValue(WFCoreGraphicsSupport)

+ (id)wf_valueWithCGAffineTransform:()WFCoreGraphicsSupport
{
  v3 = a3[1];
  v6[0] = *a3;
  v6[1] = v3;
  v6[2] = a3[2];
  v4 = [self valueWithCGAffineTransform:v6];

  return v4;
}

@end
@interface NSUUID(RTPredictedContextManagerExtensions)
- (id)initWithData:()RTPredictedContextManagerExtensions;
@end

@implementation NSUUID(RTPredictedContextManagerExtensions)

- (id)initWithData:()RTPredictedContextManagerExtensions
{
  v3 = a3;
  v4 = a1;
  if (a3)
  {
    v4 = [a1 initWithUUIDBytes:{objc_msgSend(a3, "bytes")}];
    v3 = v4;
  }

  return v3;
}

@end
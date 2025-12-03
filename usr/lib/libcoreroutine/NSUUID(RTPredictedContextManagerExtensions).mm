@interface NSUUID(RTPredictedContextManagerExtensions)
- (id)initWithData:()RTPredictedContextManagerExtensions;
@end

@implementation NSUUID(RTPredictedContextManagerExtensions)

- (id)initWithData:()RTPredictedContextManagerExtensions
{
  v3 = a3;
  selfCopy = self;
  if (a3)
  {
    selfCopy = [self initWithUUIDBytes:{objc_msgSend(a3, "bytes")}];
    v3 = selfCopy;
  }

  return v3;
}

@end
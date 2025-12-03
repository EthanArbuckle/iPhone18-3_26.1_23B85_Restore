@interface SiriTTSWordTimingInfo
- (_NSRange)textRange;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriTTSWordTimingInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B1AC5444(coderCopy);
}

- (_NSRange)textRange
{
  v2 = sub_1B1B0ADF4();
  result.length = v3;
  result.location = v2;
  return result;
}

@end
@interface SiriTTSWordTimingInfo
- (_NSRange)textRange;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriTTSWordTimingInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1AC5444(v4);
}

- (_NSRange)textRange
{
  v2 = sub_1B1B0ADF4();
  result.length = v3;
  result.location = v2;
  return result;
}

@end
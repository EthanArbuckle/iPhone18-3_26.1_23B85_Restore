@interface SCMLPeopleDetectionSpan
- (SCMLPeopleDetectionSpan)init;
- (_NSRange)range;
@end

@implementation SCMLPeopleDetectionSpan

- (SCMLPeopleDetectionSpan)init
{
  v5.receiver = self;
  v5.super_class = SCMLPeopleDetectionSpan;
  v2 = [(SCMLPeopleDetectionSpan *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCMLPeopleDetectionSpan *)v2 setRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(SCMLPeopleDetectionSpan *)v3 setIsGeneric:0];
    [(SCMLPeopleDetectionSpan *)v3 setIsGroup:0];
    [(SCMLPeopleDetectionSpan *)v3 setHasAge:0];
    [(SCMLPeopleDetectionSpan *)v3 setHasGender:0];
    [(SCMLPeopleDetectionSpan *)v3 setHasEthnicity:0];
  }

  return v3;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

@end
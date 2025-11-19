@interface SCMLPeopleDetectionAttributeSpan
- (SCMLPeopleDetectionAttributeSpan)init;
- (_NSRange)range;
@end

@implementation SCMLPeopleDetectionAttributeSpan

- (SCMLPeopleDetectionAttributeSpan)init
{
  v5.receiver = self;
  v5.super_class = SCMLPeopleDetectionAttributeSpan;
  v2 = [(SCMLPeopleDetectionAttributeSpan *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SCMLPeopleDetectionAttributeSpan *)v2 setRange:0x7FFFFFFFFFFFFFFFLL, 0];
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
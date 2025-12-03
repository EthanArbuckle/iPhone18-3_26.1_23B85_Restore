@interface SRCSCommandSegmentInfo
+ (id)segmentInfoWith:(_NSRange)with text:(id)text;
- (_NSRange)range;
@end

@implementation SRCSCommandSegmentInfo

+ (id)segmentInfoWith:(_NSRange)with text:(id)text
{
  length = with.length;
  location = with.location;
  textCopy = text;
  v7 = objc_opt_new();
  [v7 setRange:{location, length}];
  [v7 setText:textCopy];

  return v7;
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
@interface SRCSCommandSegmentInfo
+ (id)segmentInfoWith:(_NSRange)a3 text:(id)a4;
- (_NSRange)range;
@end

@implementation SRCSCommandSegmentInfo

+ (id)segmentInfoWith:(_NSRange)a3 text:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setRange:{location, length}];
  [v7 setText:v6];

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
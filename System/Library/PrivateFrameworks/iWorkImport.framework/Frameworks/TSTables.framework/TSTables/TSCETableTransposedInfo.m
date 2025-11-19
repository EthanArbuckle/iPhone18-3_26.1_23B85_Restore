@interface TSCETableTransposedInfo
- (TSCERangeCoordinate)transposedBodyRange;
@end

@implementation TSCETableTransposedInfo

- (TSCERangeCoordinate)transposedBodyRange
{
  bottomRight = self->_transposedBodyRange._bottomRight;
  topLeft = self->_transposedBodyRange._topLeft;
  result._bottomRight = bottomRight;
  result._topLeft = topLeft;
  return result;
}

@end
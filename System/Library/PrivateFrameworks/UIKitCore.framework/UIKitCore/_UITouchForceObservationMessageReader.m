@interface _UITouchForceObservationMessageReader
- (CGPoint)centroid;
@end

@implementation _UITouchForceObservationMessageReader

- (CGPoint)centroid
{
  x = self->_centroid.x;
  y = self->_centroid.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
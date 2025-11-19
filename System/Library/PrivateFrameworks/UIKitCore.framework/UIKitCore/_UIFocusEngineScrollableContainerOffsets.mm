@interface _UIFocusEngineScrollableContainerOffsets
- (CGPoint)lastContentOffset;
- (CGPoint)lastRoundedOffset;
- (CGPoint)lastVelocity;
- (CGPoint)startContentOffset;
- (CGPoint)targetContentOffset;
@end

@implementation _UIFocusEngineScrollableContainerOffsets

- (CGPoint)startContentOffset
{
  x = self->_startContentOffset.x;
  y = self->_startContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastContentOffset
{
  x = self->_lastContentOffset.x;
  y = self->_lastContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastRoundedOffset
{
  x = self->_lastRoundedOffset.x;
  y = self->_lastRoundedOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)targetContentOffset
{
  x = self->_targetContentOffset.x;
  y = self->_targetContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)lastVelocity
{
  x = self->_lastVelocity.x;
  y = self->_lastVelocity.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
@interface _TVRCTouchInfo
- (CGPoint)initialLocation;
- (CGPoint)initialProportionalLocation;
- (CGRect)boundingBox;
- (id)description;
@end

@implementation _TVRCTouchInfo

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = TVRCTouchPhaseDescription();
  [v3 appendFormat:@"; virtualPhase = %@", v4];

  if (self->_pendingCancellation)
  {
    [v3 appendString:@"; pending cancellation"];
  }

  v5 = NSStringFromCGPoint(self->_initialLocation);
  [v3 appendFormat:@"; initialLocation = %@", v5];

  v6 = NSStringFromCGPoint(self->_initialProportionalLocation);
  [v3 appendFormat:@"; initialProportionalLocation = %@", v6];

  if (self->_isLikelyLongListScrollingEdgeGesture)
  {
    [v3 appendString:@"; isLikelyLongListScrollingEdgeGesture = YES"];
  }

  if (self->_virtualPhase)
  {
    v11 = CGRectIntegral(self->_boundingBox);
    v7 = NSStringFromCGRect(v11);
    [v3 appendFormat:@"; boundingBox = %@", v7];
  }

  [v3 appendString:@">"];
  v8 = [v3 copy];

  return v8;
}

- (CGPoint)initialLocation
{
  x = self->_initialLocation.x;
  y = self->_initialLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)initialProportionalLocation
{
  x = self->_initialProportionalLocation.x;
  y = self->_initialProportionalLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
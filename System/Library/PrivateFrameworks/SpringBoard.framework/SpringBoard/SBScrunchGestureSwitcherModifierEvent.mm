@interface SBScrunchGestureSwitcherModifierEvent
- (CGPoint)centroid;
- (CGPoint)initialCentroid;
- (CGPoint)translationWithoutScale;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBScrunchGestureSwitcherModifierEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = SBScrunchGestureSwitcherModifierEvent;
  result = [(SBGestureSwitcherModifierEvent *)&v5 copyWithZone:zone];
  *(result + 11) = self->_initialCentroid;
  *(result + 12) = self->_centroid;
  *(result + 21) = *&self->_absoluteScale;
  *(result + 13) = self->_translationWithoutScale;
  return result;
}

- (CGPoint)initialCentroid
{
  x = self->_initialCentroid.x;
  y = self->_initialCentroid.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)centroid
{
  x = self->_centroid.x;
  y = self->_centroid.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)translationWithoutScale
{
  x = self->_translationWithoutScale.x;
  y = self->_translationWithoutScale.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
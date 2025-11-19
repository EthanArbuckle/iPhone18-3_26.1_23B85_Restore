@interface SBWindowDragSwitcherModifierEvent
- (CGPoint)locationInSelectedDisplayItem;
- (CGSize)sizeOfSelectedDisplayItem;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBWindowDragSwitcherModifierEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = SBWindowDragSwitcherModifierEvent;
  result = [(SBGestureSwitcherModifierEvent *)&v5 copyWithZone:a3];
  *(result + 168) = self->_draggingFromContinuousExposeStrips;
  *(result + 184) = self->_locationInSelectedDisplayItem;
  *(result + 200) = self->_sizeOfSelectedDisplayItem;
  *(result + 22) = self->_selectedEdge;
  *(result + 169) = self->_unstashingFromHome;
  return result;
}

- (CGPoint)locationInSelectedDisplayItem
{
  x = self->_locationInSelectedDisplayItem.x;
  y = self->_locationInSelectedDisplayItem.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)sizeOfSelectedDisplayItem
{
  width = self->_sizeOfSelectedDisplayItem.width;
  height = self->_sizeOfSelectedDisplayItem.height;
  result.height = height;
  result.width = width;
  return result;
}

@end
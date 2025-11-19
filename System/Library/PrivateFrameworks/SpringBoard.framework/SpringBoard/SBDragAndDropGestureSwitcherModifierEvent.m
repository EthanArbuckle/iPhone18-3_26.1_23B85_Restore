@interface SBDragAndDropGestureSwitcherModifierEvent
- (CGRect)platterViewFrame;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBDragAndDropGestureSwitcherModifierEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = SBDragAndDropGestureSwitcherModifierEvent;
  v4 = [(SBGestureSwitcherModifierEvent *)&v9 copyWithZone:a3];
  *(v4 + 22) = self->_dropAction;
  v5 = [(NSString *)self->_draggedSceneIdentifier copy];
  v6 = *(v4 + 23);
  *(v4 + 23) = v5;

  size = self->_platterViewFrame.size;
  *(v4 + 216) = self->_platterViewFrame.origin;
  *(v4 + 232) = size;
  *(v4 + 25) = *&self->_platterScale;
  return v4;
}

- (CGRect)platterViewFrame
{
  x = self->_platterViewFrame.origin.x;
  y = self->_platterViewFrame.origin.y;
  width = self->_platterViewFrame.size.width;
  height = self->_platterViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
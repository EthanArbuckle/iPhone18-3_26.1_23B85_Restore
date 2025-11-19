@interface UIKeyboardTouchInfo
- (CGPoint)initialDragPoint;
- (CGPoint)initialPoint;
- (UIKeyboardTouchInfo)init;
@end

@implementation UIKeyboardTouchInfo

- (UIKeyboardTouchInfo)init
{
  v6.receiver = self;
  v6.super_class = UIKeyboardTouchInfo;
  v2 = [(UIKeyboardTouchInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    touchHistory = v2->_touchHistory;
    v2->_touchHistory = v3;

    v2->_processedTouchCount = 0;
  }

  return v2;
}

- (CGPoint)initialPoint
{
  x = self->_initialPoint.x;
  y = self->_initialPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)initialDragPoint
{
  x = self->_initialDragPoint.x;
  y = self->_initialDragPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end
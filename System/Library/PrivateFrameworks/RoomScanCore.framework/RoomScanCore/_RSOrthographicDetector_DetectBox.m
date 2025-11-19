@interface _RSOrthographicDetector_DetectBox
- (id)description;
@end

@implementation _RSOrthographicDetector_DetectBox

- (id)description
{
  x = self->_box.origin.x;
  y = self->_box.origin.y;
  width = self->_box.size.width;
  height = self->_box.size.height;
  return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"<_RSOrthographicDetector_DetectBox %p> { origin = < %.2f , %.2f > size = < %.2f x %.2f> }", self, x, y, width, height);
}

@end
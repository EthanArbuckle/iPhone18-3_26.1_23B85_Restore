@interface NRFPrepareDescriptor
- (NRFPrepareDescriptor)init;
- (id)description;
@end

@implementation NRFPrepareDescriptor

- (NRFPrepareDescriptor)init
{
  v3.receiver = self;
  v3.super_class = NRFPrepareDescriptor;
  return [(NRFPrepareDescriptor *)&v3 init];
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p> width=%d, height=%d, pixelFormat=%c%c%c%c, allowModifyingInputBuffers=%d", v6, v4, self, self->_width, self->_height, HIBYTE(self->_pixelFormat), BYTE2(self->_pixelFormat), BYTE1(self->_pixelFormat), self->_pixelFormat, self->_allowModifyingInputBuffers);
}

@end
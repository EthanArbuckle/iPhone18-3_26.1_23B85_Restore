@interface PLSCameraStreamFormat
- (id)description;
@end

@implementation PLSCameraStreamFormat

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v7 = *&self->_width;
  frameRate = self->_frameRate;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c%c", HIBYTE(self->_pixelFormat), BYTE2(self->_pixelFormat), BYTE1(self->_pixelFormat), self->_pixelFormat];
  v5 = [v2 stringWithFormat:@"%lux%lu(wxh)@%lufps format:%@", v7, frameRate, v4];

  return v5;
}

@end
@interface TSDMutableInfoGeometry
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCenter:(CGPoint)center;
- (void)setHeightValid:(BOOL)valid;
- (void)setHorizontalFlip:(BOOL)flip;
- (void)setPosition:(CGPoint)position;
- (void)setSize:(CGSize)size;
- (void)setTransformedBoundsOrigin:(CGPoint)origin;
- (void)setVerticalFlip:(BOOL)flip;
@end

@implementation TSDMutableInfoGeometry

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDInfoGeometry alloc];
  flags = self->super._flags;
  angle = self->super._angle;
  x = self->super._position.x;
  y = self->super._position.y;
  width = self->super._size.width;
  height = self->super._size.height;

  return objc_msgSend_initWithPosition_size_widthValid_heightValid_horizontalFlip_verticalFlip_angle_(v4, v5, *&flags & 1, (*&flags >> 1) & 1, (*&flags >> 2) & 1, (*&flags >> 3) & 1, x, y, width, height, angle);
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  if ((TSUPointIsFinite() & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDMutableInfoGeometry setPosition:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfoGeometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 542, 0, "Attempted to set the position of a TSDInfoGeometry with a non-finite position");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13);
    x = *MEMORY[0x277CBF348];
    y = *(MEMORY[0x277CBF348] + 8);
  }

  self->super._position.x = x;
  self->super._position.y = y;
}

- (void)setSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (TSUSizeHasNaNComponents())
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDMutableInfoGeometry setSize:]");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfoGeometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 550, 0, "Attempted to set the size of a TSDInfoGeometry with NaNs");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13);
    width = 1.0;
    height = 1.0;
  }

  if (width < 0.0 || height < 0.0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSDMutableInfoGeometry setSize:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDInfoGeometry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 554, 0, "Attempted to set the size of a TSDInfoGeometry with a negative width or height (%f, %f)", *&width, *&height);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v19, v20);
  }

  self->super._size.width = width;
  self->super._size.height = height;
}

- (void)setHeightValid:(BOOL)valid
{
  if (valid)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xFD | v3;
}

- (void)setHorizontalFlip:(BOOL)flip
{
  if (flip)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xFB | v3;
}

- (void)setVerticalFlip:(BOOL)flip
{
  if (flip)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->super._flags = *&self->super._flags & 0xF7 | v3;
}

- (void)setCenter:(CGPoint)center
{
  __asm { FMOV            V3.2D, #-0.5 }

  y = center.y;
  self->super._position = vaddq_f64(center, vmulq_f64(self->super._size, _Q3));
}

- (void)setTransformedBoundsOrigin:(CGPoint)origin
{
  objc_msgSend_transformedBoundsOrigin(self, a2, v3);
  TSUSubtractPoints();
  TSUAddPoints();
  self->super._position.x = v5;
  self->super._position.y = v6;
}

@end
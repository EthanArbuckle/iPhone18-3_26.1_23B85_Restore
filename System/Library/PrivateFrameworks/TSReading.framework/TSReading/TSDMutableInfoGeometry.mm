@interface TSDMutableInfoGeometry
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setHeightValid:(BOOL)a3;
- (void)setHorizontalFlip:(BOOL)a3;
- (void)setSize:(CGSize)a3;
- (void)setTransformedBoundsOrigin:(CGPoint)a3;
- (void)setVerticalFlip:(BOOL)a3;
@end

@implementation TSDMutableInfoGeometry

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDInfoGeometry alloc];
  mFlags = self->super.mFlags;
  mAngle = self->super.mAngle;
  x = self->super.mPosition.x;
  y = self->super.mPosition.y;
  width = self->super.mSize.width;
  height = self->super.mSize.height;

  return [(TSDInfoGeometry *)v4 initWithPosition:*&mFlags & 1 size:(*&mFlags >> 1) & 1 widthValid:(*&mFlags >> 2) & 1 heightValid:(*&mFlags >> 3) & 1 horizontalFlip:x verticalFlip:y angle:width, height, mAngle];
}

- (void)setSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.width < 0.0 || a3.height < 0.0)
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableInfoGeometry setSize:]"];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInfoGeometry.m"), 539, @"Attempted to set the size of a TSDInfoGeometry with a negative width or height"}];
  }

  self->super.mSize.width = width;
  self->super.mSize.height = height;
}

- (void)setHeightValid:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->super.mFlags = *&self->super.mFlags & 0xFD | v3;
}

- (void)setHorizontalFlip:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->super.mFlags = *&self->super.mFlags & 0xFB | v3;
}

- (void)setVerticalFlip:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->super.mFlags = *&self->super.mFlags & 0xF7 | v3;
}

- (void)setCenter:(CGPoint)a3
{
  __asm { FMOV            V3.2D, #-0.5 }

  y = a3.y;
  self->super.mPosition = vaddq_f64(a3, vmulq_f64(self->super.mSize, _Q3));
}

- (void)setTransformedBoundsOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(TSDInfoGeometry *)self transformedBoundsOrigin];
  v7 = TSDSubtractPoints(self->super.mPosition.x, self->super.mPosition.y, v6);
  self->super.mPosition.x = TSDAddPoints(x, y, v7);
  self->super.mPosition.y = v8;
}

@end
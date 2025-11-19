@interface TSDMutableDropShadow
- (id)copyWithZone:(_NSZone *)a3;
- (void)setColor:(CGColor *)a3;
- (void)setTSUColor:(id)a3;
@end

@implementation TSDMutableDropShadow

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TSDDropShadow allocWithZone:a3];
  [(TSDShadow *)self angle];
  v6 = v5;
  [(TSDShadow *)self offset];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDShadow *)self opacity];
  v12 = v11;
  v13 = [(TSDShadow *)self color];
  v14 = [(TSDShadow *)self isEnabled];

  return [(TSDDropShadow *)v4 initWithAngle:v13 offset:v14 radius:v6 opacity:v8 color:v10 enabled:v12];
}

- (void)setColor:(CGColor *)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableDropShadow setColor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDropShadow.m"), 314, @"invalid nil value for '%s'", "color"}];
  }

  mColor = self->super.super.mColor;
  if (mColor != a3)
  {
    CGColorRelease(mColor);
    self->super.super.mColor = CGColorRetain(a3);
  }
}

- (void)setTSUColor:(id)a3
{
  v4 = [a3 CGColor];

  [(TSDMutableDropShadow *)self setColor:v4];
}

@end
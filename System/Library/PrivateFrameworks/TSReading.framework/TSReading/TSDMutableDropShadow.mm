@interface TSDMutableDropShadow
- (id)copyWithZone:(_NSZone *)zone;
- (void)setColor:(CGColor *)color;
- (void)setTSUColor:(id)color;
@end

@implementation TSDMutableDropShadow

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSDDropShadow allocWithZone:zone];
  [(TSDShadow *)self angle];
  v6 = v5;
  [(TSDShadow *)self offset];
  v8 = v7;
  [(TSDShadow *)self radius];
  v10 = v9;
  [(TSDShadow *)self opacity];
  v12 = v11;
  color = [(TSDShadow *)self color];
  isEnabled = [(TSDShadow *)self isEnabled];

  return [(TSDDropShadow *)v4 initWithAngle:color offset:isEnabled radius:v6 opacity:v8 color:v10 enabled:v12];
}

- (void)setColor:(CGColor *)color
{
  if (!color)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableDropShadow setColor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDDropShadow.m"), 314, @"invalid nil value for '%s'", "color"}];
  }

  mColor = self->super.super.mColor;
  if (mColor != color)
  {
    CGColorRelease(mColor);
    self->super.super.mColor = CGColorRetain(color);
  }
}

- (void)setTSUColor:(id)color
{
  cGColor = [color CGColor];

  [(TSDMutableDropShadow *)self setColor:cGColor];
}

@end
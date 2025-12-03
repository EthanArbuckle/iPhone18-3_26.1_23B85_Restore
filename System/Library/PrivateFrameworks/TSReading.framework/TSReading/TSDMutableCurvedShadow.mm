@interface TSDMutableCurvedShadow
- (void)setColor:(CGColor *)color;
- (void)setTSUColor:(id)color;
@end

@implementation TSDMutableCurvedShadow

- (void)setColor:(CGColor *)color
{
  if (!color)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableCurvedShadow setColor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDCurvedShadow.m"), 376, @"invalid nil value for '%s'", "color"}];
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

  [(TSDMutableCurvedShadow *)self setColor:cGColor];
}

@end
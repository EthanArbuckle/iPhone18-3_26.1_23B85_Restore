@interface TSDMutableContactShadow
- (void)setColor:(CGColor *)a3;
- (void)setTSUColor:(id)a3;
@end

@implementation TSDMutableContactShadow

- (void)setColor:(CGColor *)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableContactShadow setColor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDContactShadow.m"), 497, @"invalid nil value for '%s'", "color"}];
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

  [(TSDMutableContactShadow *)self setColor:v4];
}

@end
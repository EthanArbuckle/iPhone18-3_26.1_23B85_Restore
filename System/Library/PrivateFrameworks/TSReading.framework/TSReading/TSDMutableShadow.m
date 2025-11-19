@interface TSDMutableShadow
- (id)copyWithZone:(_NSZone *)a3;
- (void)setColor:(CGColor *)a3;
- (void)setTSUColor:(id)a3;
@end

@implementation TSDMutableShadow

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableShadow copyWithZone:]"];
  [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 663, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMutableShadow copyWithZone:]"), 0}]);
}

- (void)setColor:(CGColor *)a3
{
  if (!a3)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableShadow setColor:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 689, @"invalid nil value for '%s'", "color"}];
  }

  mColor = self->super.mColor;
  if (mColor != a3)
  {
    CGColorRelease(mColor);
    self->super.mColor = CGColorRetain(a3);
  }
}

- (void)setTSUColor:(id)a3
{
  v4 = [a3 CGColor];

  [(TSDMutableShadow *)self setColor:v4];
}

@end
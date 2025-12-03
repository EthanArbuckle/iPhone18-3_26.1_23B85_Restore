@interface TSDMutableShadow
- (id)copyWithZone:(_NSZone *)zone;
- (void)setColor:(CGColor *)color;
- (void)setTSUColor:(id)color;
@end

@implementation TSDMutableShadow

- (id)copyWithZone:(_NSZone *)zone
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableShadow copyWithZone:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 663, @"Abstract method"}];
  objc_exception_throw([MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:objc_msgSend(MEMORY[0x277CCACA8] userInfo:{"stringWithFormat:", @"%@: %s", @"Abstract method", "-[TSDMutableShadow copyWithZone:]"), 0}]);
}

- (void)setColor:(CGColor *)color
{
  if (!color)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMutableShadow setColor:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDShadow.m"), 689, @"invalid nil value for '%s'", "color"}];
  }

  mColor = self->super.mColor;
  if (mColor != color)
  {
    CGColorRelease(mColor);
    self->super.mColor = CGColorRetain(color);
  }
}

- (void)setTSUColor:(id)color
{
  cGColor = [color CGColor];

  [(TSDMutableShadow *)self setColor:cGColor];
}

@end
@interface TSDFill
- (int)fillType;
- (void)applyToCALayer:(id)layer withScale:(double)scale;
- (void)applyToCAShapeLayer:(id)layer withScale:(double)scale;
- (void)paintRect:(CGRect)rect inContext:(CGContext *)context;
- (void)removeInterest;
@end

@implementation TSDFill

- (void)paintRect:(CGRect)rect inContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  Mutable = CGPathCreateMutable();
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPathAddRect(Mutable, 0, v12);
  [(TSDFill *)self paintPath:Mutable inContext:context];

  CGPathRelease(Mutable);
}

- (void)applyToCALayer:(id)layer withScale:(double)scale
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFill applyToCALayer:withScale:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFill.m"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:79 description:@"called -applyToCALayer:withScale: on a TSDFill that can't"];
}

- (void)applyToCAShapeLayer:(id)layer withScale:(double)scale
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFill applyToCAShapeLayer:withScale:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFill.m"];

  [currentHandler handleFailureInFunction:v5 file:v6 lineNumber:89 description:@"called -applyToCAShapeLayer:withScale: on a TSDFill that can't"];
}

- (void)removeInterest
{
  if (atomic_fetch_add_explicit(&self->mInterest, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    [(TSDFill *)self i_flushCaches];
  }
}

- (int)fillType
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFill fillType]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFill.m"), 145, @"subclasses must override"}];
  return 4;
}

@end
@interface TSDFill
- (int)fillType;
- (void)applyToCALayer:(id)a3 withScale:(double)a4;
- (void)applyToCAShapeLayer:(id)a3 withScale:(double)a4;
- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4;
- (void)removeInterest;
@end

@implementation TSDFill

- (void)paintRect:(CGRect)a3 inContext:(CGContext *)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPathAddRect(Mutable, 0, v12);
  [(TSDFill *)self paintPath:Mutable inContext:a4];

  CGPathRelease(Mutable);
}

- (void)applyToCALayer:(id)a3 withScale:(double)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFill applyToCALayer:withScale:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFill.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:79 description:@"called -applyToCALayer:withScale: on a TSDFill that can't"];
}

- (void)applyToCAShapeLayer:(id)a3 withScale:(double)a4
{
  v4 = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFill applyToCAShapeLayer:withScale:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFill.m"];

  [v4 handleFailureInFunction:v5 file:v6 lineNumber:89 description:@"called -applyToCAShapeLayer:withScale: on a TSDFill that can't"];
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
  v2 = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDFill fillType]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFill.m"), 145, @"subclasses must override"}];
  return 4;
}

@end
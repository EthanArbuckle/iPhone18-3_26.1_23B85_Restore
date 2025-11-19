@interface SXCanvasLayer
- (void)layoutSublayers;
@end

@implementation SXCanvasLayer

- (void)layoutSublayers
{
  v5.receiver = self;
  v5.super_class = [-[SXCanvasLayer superclass](self "superclass")];
  objc_msgSendSuper(&v5, a2);
  v4.receiver = self;
  v4.super_class = SXCanvasLayer;
  [(TSDCanvasLayer *)&v4 layoutSublayers];
}

@end
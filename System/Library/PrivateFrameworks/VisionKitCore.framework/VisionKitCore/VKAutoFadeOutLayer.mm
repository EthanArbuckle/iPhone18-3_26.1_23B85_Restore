@interface VKAutoFadeOutLayer
- (void)setPosition:(CGPoint)a3;
@end

@implementation VKAutoFadeOutLayer

- (void)setPosition:(CGPoint)a3
{
  v5.receiver = self;
  v5.super_class = VKAutoFadeOutLayer;
  [(VKAutoFadeOutLayer *)&v5 setPosition:a3.x, a3.y];
  v4 = [(VKAutoFadeOutLayer *)self superlayer];
  [v4 setNeedsDisplay];
}

@end
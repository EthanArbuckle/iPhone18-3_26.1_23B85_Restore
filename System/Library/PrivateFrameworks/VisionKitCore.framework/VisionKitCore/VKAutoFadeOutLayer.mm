@interface VKAutoFadeOutLayer
- (void)setPosition:(CGPoint)position;
@end

@implementation VKAutoFadeOutLayer

- (void)setPosition:(CGPoint)position
{
  v5.receiver = self;
  v5.super_class = VKAutoFadeOutLayer;
  [(VKAutoFadeOutLayer *)&v5 setPosition:position.x, position.y];
  superlayer = [(VKAutoFadeOutLayer *)self superlayer];
  [superlayer setNeedsDisplay];
}

@end
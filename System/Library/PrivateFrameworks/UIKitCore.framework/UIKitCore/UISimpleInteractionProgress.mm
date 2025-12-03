@interface UISimpleInteractionProgress
- (void)endInteraction:(BOOL)interaction;
@end

@implementation UISimpleInteractionProgress

- (void)endInteraction:(BOOL)interaction
{
  v3.receiver = self;
  v3.super_class = UISimpleInteractionProgress;
  [(UIInteractionProgress *)&v3 endInteraction:interaction];
}

@end
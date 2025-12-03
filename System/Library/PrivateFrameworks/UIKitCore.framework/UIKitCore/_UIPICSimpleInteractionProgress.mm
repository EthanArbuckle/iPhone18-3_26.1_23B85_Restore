@interface _UIPICSimpleInteractionProgress
- (void)endInteraction:(BOOL)interaction;
@end

@implementation _UIPICSimpleInteractionProgress

- (void)endInteraction:(BOOL)interaction
{
  v4.receiver = self;
  v4.super_class = _UIPICSimpleInteractionProgress;
  [(UISimpleInteractionProgress *)&v4 endInteraction:interaction];
  [(_UIPICSimpleInteractionProgress *)self setDidEnd:1];
}

@end
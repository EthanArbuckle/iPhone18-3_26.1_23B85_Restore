@interface _UIPICSimpleInteractionProgress
- (void)endInteraction:(BOOL)a3;
@end

@implementation _UIPICSimpleInteractionProgress

- (void)endInteraction:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIPICSimpleInteractionProgress;
  [(UISimpleInteractionProgress *)&v4 endInteraction:a3];
  [(_UIPICSimpleInteractionProgress *)self setDidEnd:1];
}

@end
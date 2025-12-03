@interface _UIPencilInteractionSqueeze
- (_UIPencilInteractionSqueeze)init;
@end

@implementation _UIPencilInteractionSqueeze

- (_UIPencilInteractionSqueeze)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPencilInteraction.m" lineNumber:583 description:{@"%s: init is not allowed on %@", "-[_UIPencilInteractionSqueeze init]", objc_opt_class()}];

  return 0;
}

@end
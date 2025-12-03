@interface _UIPencilInteractionTap
- (_UIPencilInteractionTap)init;
@end

@implementation _UIPencilInteractionTap

- (_UIPencilInteractionTap)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPencilInteraction.m" lineNumber:455 description:{@"%s: init is not allowed on %@", "-[_UIPencilInteractionTap init]", objc_opt_class()}];

  return 0;
}

@end
@interface UIInputViewSetPlacement_DragToDismissApplicator
- (void)resetConstantsIfNeeded;
@end

@implementation UIInputViewSetPlacement_DragToDismissApplicator

- (void)resetConstantsIfNeeded
{
  if (!self->super._isInteractiveStateTransition)
  {
    [(NSLayoutConstraint *)self->super._horizontalConstraint setConstant:0.0];
  }
}

@end
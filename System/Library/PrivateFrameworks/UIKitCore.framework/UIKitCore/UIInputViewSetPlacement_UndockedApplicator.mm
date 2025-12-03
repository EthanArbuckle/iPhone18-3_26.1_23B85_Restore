@interface UIInputViewSetPlacement_UndockedApplicator
- (void)applyChanges:(id)changes;
- (void)resetConstantsIfNeeded;
@end

@implementation UIInputViewSetPlacement_UndockedApplicator

- (void)applyChanges:(id)changes
{
  v11.receiver = self;
  v11.super_class = UIInputViewSetPlacement_UndockedApplicator;
  [(UIInputViewSetPlacement_GenericApplicator *)&v11 applyChanges:changes];
  WeakRetained = objc_loadWeakRetained(&self->super._owner);
  containerView = [WeakRetained containerView];
  _window = [containerView _window];

  [_window slideOverWindowVerticalOffset];
  v8 = v7;
  verticalConstraint = self->super._verticalConstraint;
  [(NSLayoutConstraint *)verticalConstraint constant];
  [(NSLayoutConstraint *)verticalConstraint setConstant:v8 + v10];
}

- (void)resetConstantsIfNeeded
{
  if (!self->super._isInteractiveStateTransition)
  {
    [(NSLayoutConstraint *)self->super._horizontalConstraint setConstant:0.0];
  }
}

@end
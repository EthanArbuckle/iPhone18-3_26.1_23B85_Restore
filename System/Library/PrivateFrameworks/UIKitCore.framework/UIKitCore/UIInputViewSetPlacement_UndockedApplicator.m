@interface UIInputViewSetPlacement_UndockedApplicator
- (void)applyChanges:(id)a3;
- (void)resetConstantsIfNeeded;
@end

@implementation UIInputViewSetPlacement_UndockedApplicator

- (void)applyChanges:(id)a3
{
  v11.receiver = self;
  v11.super_class = UIInputViewSetPlacement_UndockedApplicator;
  [(UIInputViewSetPlacement_GenericApplicator *)&v11 applyChanges:a3];
  WeakRetained = objc_loadWeakRetained(&self->super._owner);
  v5 = [WeakRetained containerView];
  v6 = [v5 _window];

  [v6 slideOverWindowVerticalOffset];
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
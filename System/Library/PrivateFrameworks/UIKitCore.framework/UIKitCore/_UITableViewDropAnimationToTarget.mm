@interface _UITableViewDropAnimationToTarget
- (_UITableViewDropAnimationToTarget)initWithDragItem:(id)item target:(id)target;
- (id)cellForTargetContainerInTableView:(id)view;
@end

@implementation _UITableViewDropAnimationToTarget

- (_UITableViewDropAnimationToTarget)initWithDragItem:(id)item target:(id)target
{
  targetCopy = target;
  v11.receiver = self;
  v11.super_class = _UITableViewDropAnimationToTarget;
  v8 = [(_UITableViewDropAnimation *)&v11 initWithDragItem:item];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_target, target);
  }

  return v9;
}

- (id)cellForTargetContainerInTableView:(id)view
{
  viewCopy = view;
  if (![(_UITableViewDropAnimationToTarget *)self didSearchForCell])
  {
    objc_opt_class();
    target = [(_UITableViewDropAnimationToTarget *)self target];
    container = [target container];

    while ((objc_opt_isKindOfClass() & 1) == 0 || ![(UIView *)container isDescendantOfView:viewCopy])
    {
      superview = [(UIView *)container superview];

      container = superview;
      if (!superview)
      {
        goto LABEL_8;
      }
    }

    cell = self->_cell;
    self->_cell = container;
    v9 = container;

LABEL_8:
    [(_UITableViewDropAnimationToTarget *)self setDidSearchForCell:1];
  }

  v10 = self->_cell;
  v11 = v10;

  return v10;
}

@end
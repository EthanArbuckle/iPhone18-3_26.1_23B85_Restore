@interface _UITableViewDropAnimationToTarget
- (_UITableViewDropAnimationToTarget)initWithDragItem:(id)a3 target:(id)a4;
- (id)cellForTargetContainerInTableView:(id)a3;
@end

@implementation _UITableViewDropAnimationToTarget

- (_UITableViewDropAnimationToTarget)initWithDragItem:(id)a3 target:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UITableViewDropAnimationToTarget;
  v8 = [(_UITableViewDropAnimation *)&v11 initWithDragItem:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_target, a4);
  }

  return v9;
}

- (id)cellForTargetContainerInTableView:(id)a3
{
  v4 = a3;
  if (![(_UITableViewDropAnimationToTarget *)self didSearchForCell])
  {
    objc_opt_class();
    v5 = [(_UITableViewDropAnimationToTarget *)self target];
    v6 = [v5 container];

    while ((objc_opt_isKindOfClass() & 1) == 0 || ![(UIView *)v6 isDescendantOfView:v4])
    {
      v7 = [(UIView *)v6 superview];

      v6 = v7;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    cell = self->_cell;
    self->_cell = v6;
    v9 = v6;

LABEL_8:
    [(_UITableViewDropAnimationToTarget *)self setDidSearchForCell:1];
  }

  v10 = self->_cell;
  v11 = v10;

  return v10;
}

@end
@interface _UITableViewDropAnimationToCell
- (UITableViewCell)cell;
- (_UITableViewDropAnimationToCell)initWithDragItem:(id)item cell:(id)cell previewParameters:(id)parameters;
@end

@implementation _UITableViewDropAnimationToCell

- (_UITableViewDropAnimationToCell)initWithDragItem:(id)item cell:(id)cell previewParameters:(id)parameters
{
  cellCopy = cell;
  parametersCopy = parameters;
  v13.receiver = self;
  v13.super_class = _UITableViewDropAnimationToCell;
  v10 = [(_UITableViewDropAnimation *)&v13 initWithDragItem:item];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_cell, cellCopy);
    objc_storeStrong(&v11->_previewParameters, parameters);
  }

  return v11;
}

- (UITableViewCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end
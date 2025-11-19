@interface _UITableViewDropAnimationToCell
- (UITableViewCell)cell;
- (_UITableViewDropAnimationToCell)initWithDragItem:(id)a3 cell:(id)a4 previewParameters:(id)a5;
@end

@implementation _UITableViewDropAnimationToCell

- (_UITableViewDropAnimationToCell)initWithDragItem:(id)a3 cell:(id)a4 previewParameters:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = _UITableViewDropAnimationToCell;
  v10 = [(_UITableViewDropAnimation *)&v13 initWithDragItem:a3];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_cell, v8);
    objc_storeStrong(&v11->_previewParameters, a5);
  }

  return v11;
}

- (UITableViewCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end
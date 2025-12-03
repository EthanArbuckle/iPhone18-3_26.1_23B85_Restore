@interface UICollectionViewReorderedItem
- (UICollectionViewReorderedItem)initWithCell:(id)cell indexPath:(id)path;
- (id)description;
- (id)expectedCellIndexPath;
- (void)commitTargetIndexPath;
- (void)setTargetIndexPath:(id)path;
@end

@implementation UICollectionViewReorderedItem

- (UICollectionViewReorderedItem)initWithCell:(id)cell indexPath:(id)path
{
  cellCopy = cell;
  v11.receiver = self;
  v11.super_class = UICollectionViewReorderedItem;
  v8 = [(UICollectionViewReorderedItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cell, cell);
    objc_storeStrong(&v9->_originalIndexPath, path);
    objc_storeStrong(&v9->_lastCommittedIndexPath, path);
    objc_storeStrong(&v9->_targetIndexPath, path);
  }

  return v9;
}

- (id)expectedCellIndexPath
{
  if ([(UICollectionViewReorderedItem *)self isUncommitted])
  {
    [(UICollectionViewReorderedItem *)self lastCommittedIndexPath];
  }

  else
  {
    [(UICollectionViewReorderedItem *)self targetIndexPath];
  }
  v3 = ;

  return v3;
}

- (void)setTargetIndexPath:(id)path
{
  pathCopy = path;
  targetIndexPath = self->_targetIndexPath;
  v6 = pathCopy;
  v7 = targetIndexPath;
  v8 = v7;
  if (v7 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v7)
  {

    goto LABEL_8;
  }

  v9 = [(NSIndexPath *)v6 isEqual:v7];

  if ((v9 & 1) == 0)
  {
LABEL_8:
    self->_isUncommitted = 1;
  }

LABEL_9:
  v10 = self->_targetIndexPath;
  self->_targetIndexPath = v6;
}

- (void)commitTargetIndexPath
{
  targetIndexPath = [(UICollectionViewReorderedItem *)self targetIndexPath];
  lastCommittedIndexPath = self->_lastCommittedIndexPath;
  self->_lastCommittedIndexPath = targetIndexPath;

  self->_isUncommitted = 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  cell = self->_cell;
  _ui_shortDescription = [(NSIndexPath *)self->_originalIndexPath _ui_shortDescription];
  _ui_shortDescription2 = [(NSIndexPath *)self->_targetIndexPath _ui_shortDescription];
  _ui_shortDescription3 = [(NSIndexPath *)self->_lastCommittedIndexPath _ui_shortDescription];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isUncommitted];
  v11 = [v3 stringWithFormat:@"<%@ %p: cell== %p %@ -> %@; lastCommittedIndexPath: %@; isUncomitted: %@>", v5, self, cell, _ui_shortDescription, _ui_shortDescription2, _ui_shortDescription3, v10];;

  return v11;
}

@end
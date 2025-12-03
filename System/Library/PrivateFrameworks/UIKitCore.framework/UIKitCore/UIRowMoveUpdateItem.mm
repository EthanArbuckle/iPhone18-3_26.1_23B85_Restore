@interface UIRowMoveUpdateItem
- (id)_moveDestinationDescription;
- (id)collectionViewUpdateItem;
- (id)initWithOldIndexPath:(void *)path newIndexPath:;
- (id)newIndexPath;
@end

@implementation UIRowMoveUpdateItem

- (id)initWithOldIndexPath:(void *)path newIndexPath:
{
  pathCopy = path;
  if (self)
  {
    v7 = a2;
    _UIAssertValidUpdateIndexPath(v7);
    _UIAssertValidUpdateIndexPath(pathCopy);
    self = [(UIUpdateItem *)self initWithAction:v7 forIndexPath:5 animation:?];

    if (self)
    {
      objc_storeStrong(self + 5, path);
    }
  }

  return self;
}

- (id)collectionViewUpdateItem
{
  if (self)
  {
    action = self->super._action;
    if (action >= 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = action;
    }

    v5 = [UICollectionViewUpdateItem alloc];
    indexPath = self->super._indexPath;
  }

  else
  {
    v5 = [UICollectionViewUpdateItem alloc];
    v4 = 0;
    indexPath = 0;
  }

  v7 = indexPath;
  newIndexPath = [(UIRowMoveUpdateItem *)&self->super.super.isa newIndexPath];
  v9 = [(UICollectionViewUpdateItem *)v5 initWithInitialIndexPath:v7 finalIndexPath:newIndexPath updateAction:v4];

  return v9;
}

- (id)newIndexPath
{
  if (self)
  {
    self = self[5];
    v1 = vars8;
  }

  return self;
}

- (id)_moveDestinationDescription
{
  if (self && (*&self->super._updateItemFlags & 1) != 0)
  {
    v4 = MEMORY[0x1E696AEC0];
    _ui_shortDescription = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_newIndexPath, "section")}];
    [v4 stringWithFormat:@"->(%@)", _ui_shortDescription];
  }

  else
  {
    v2 = MEMORY[0x1E696AEC0];
    _ui_shortDescription = [(NSIndexPath *)self->_newIndexPath _ui_shortDescription];
    [v2 stringWithFormat:@"->%@", _ui_shortDescription];
  }
  v5 = ;

  return v5;
}

@end
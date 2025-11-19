@interface UIRowMoveUpdateItem
- (id)_moveDestinationDescription;
- (id)collectionViewUpdateItem;
- (id)initWithOldIndexPath:(void *)a3 newIndexPath:;
- (id)newIndexPath;
@end

@implementation UIRowMoveUpdateItem

- (id)initWithOldIndexPath:(void *)a3 newIndexPath:
{
  v6 = a3;
  if (a1)
  {
    v7 = a2;
    _UIAssertValidUpdateIndexPath(v7);
    _UIAssertValidUpdateIndexPath(v6);
    a1 = [(UIUpdateItem *)a1 initWithAction:v7 forIndexPath:5 animation:?];

    if (a1)
    {
      objc_storeStrong(a1 + 5, a3);
    }
  }

  return a1;
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
  v8 = [(UIRowMoveUpdateItem *)&self->super.super.isa newIndexPath];
  v9 = [(UICollectionViewUpdateItem *)v5 initWithInitialIndexPath:v7 finalIndexPath:v8 updateAction:v4];

  return v9;
}

- (id)newIndexPath
{
  if (a1)
  {
    a1 = a1[5];
    v1 = vars8;
  }

  return a1;
}

- (id)_moveDestinationDescription
{
  if (self && (*&self->super._updateItemFlags & 1) != 0)
  {
    v4 = MEMORY[0x1E696AEC0];
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSIndexPath section](self->_newIndexPath, "section")}];
    [v4 stringWithFormat:@"->(%@)", v3];
  }

  else
  {
    v2 = MEMORY[0x1E696AEC0];
    v3 = [(NSIndexPath *)self->_newIndexPath _ui_shortDescription];
    [v2 stringWithFormat:@"->%@", v3];
  }
  v5 = ;

  return v5;
}

@end